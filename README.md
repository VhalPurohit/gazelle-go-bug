Repo containing code using bazel, bazel-gazelle and rules_go that doesn't funciton as expected.
There are 2 problems with it:
1. 1. The go_repository rule is not automatically fetching the transitive dependencies for the repo its created for, and these dependencies need to all be manually imported as part of the build
2. 2. Even when the transitive dependencies are all manually specified, the build fails due to "missing strict dependencies" in spite of using bazel resolve directives both in the go_repository rule and the BUILD file for the rule that fails.
