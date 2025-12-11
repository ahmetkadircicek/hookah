//
//  FirestoreService.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 11.12.2025.
//
//


import Foundation
import FirebaseFirestore

final class FirestoreService {
    
    static let shared = FirestoreService()
    private init() {}
    
    private let db = Firestore.firestore()
}

// MARK: - CRUD OPERATIONS
extension FirestoreService {
    
    // MARK: ADD DOCUMENT (Auto-ID)
    func addDocument<T: Encodable>(
        to collection: String,
        data: T
    ) throws {
        _ = try db.collection(collection).addDocument(from: data)
    }
    
    // MARK: SET DOCUMENT (Custom Document ID)
    func setDocument<T: Encodable>(
        at path: String,
        data: T
    ) throws {
        try db.document(path).setData(from: data)
    }
    
    // MARK: UPDATE DOCUMENT (Merge)
    func updateDocument<T: Encodable>(
        at path: String,
        data: T
    ) throws {
        try db.document(path).setData(from: data, merge: true)
    }

    // MARK: DELETE DOCUMENT
    func deleteDocument(at path: String) async throws {
        try await db.document(path).delete()
    }
}

// MARK: - READ OPERATIONS
extension FirestoreService {
    
    // MARK: GET SINGLE DOCUMENT
    func getDocument<T: Decodable>(
        at path: String,
        as type: T.Type
    ) async throws -> T {
        let snapshot = try await db.document(path).getDocument()
        
        // If the document does not exist, throw a not-found error.
        guard snapshot.exists else {
            throw NSError(
                domain: "FirestoreService",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Document not found"]
            )
        }
        
        // data(as:) throws if decoding fails; it returns a non-optional T.
        return try snapshot.data(as: T.self)
    }
    
    // MARK: GET COLLECTION
    func getCollection<T: Decodable>(
        from collection: String,
        as type: T.Type
    ) async throws -> [T] {
        let snapshot = try await db.collection(collection).getDocuments()
        
        return snapshot.documents.compactMap { doc in
            return try? doc.data(as: T.self)
        }
    }
}
