# Versioning and Release Guidelines

Whenever I ask you to "create a new release" or "bump the version", you must automatically perform the following steps in order:

1. **Analyze:** Review the code changes made since the last git tag.
2. **Calculate Version:** Apply [SemVer / CalVer] logic to determine the next version number (for SemVer: breaking change = MAJOR, new feature = MINOR, bugfix = PATCH).
3. **Update Files:** Update the version number in the project's configuration files.
4. **Commit:** Stage the changes and create a commit using the Conventional Commits standard.
5. **Tag:** Create an annotated Git tag in the format "v[VersionNumber]".
6. **Push:** Push the commit and the tag to the remote repository.
7. **Constraint:** You must ask for my explicit confirmation before executing any shell commands, especially `git commit` and `git push`.

Also do these, when you think updating the GitHub Repository is necessary, because of a version jump. I want a very clean working space and version controll.