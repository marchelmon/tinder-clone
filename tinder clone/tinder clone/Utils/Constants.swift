//
//  Constants.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-07.
//

import Foundation
import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_SWIPES = Firestore.firestore().collection("swipes")
let COLLECTION_MATCHES_MESSAGES = Firestore.firestore().collection("matches_messages")
