import Danger 
let danger = Danger()
let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles
//print("Github - \(danger.github)")
//print("Pull Request - \(danger.github.pullRequest)")
//print("Pull Request Body - \(danger.github.pullRequest.body)")

let changelogChanged = allSourceFiles.contains("CHANGELOG.md")
let sourceChanges = allSourceFiles.first(where: { $0.hasPrefix("Sources") })

if !changelogChanged && sourceChanges != nil {
  warn("No CHANGELOG entry added.")
}
