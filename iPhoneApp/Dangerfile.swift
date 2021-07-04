//
//  File.swift
//  
//
//  Created by Ganesh Somani on 04/07/21.
//

import Danger

let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")
