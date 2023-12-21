package(features = ["fox"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

# gazelle:resolve go google.golang.org/genproto/googleapis/iam/v1 @org_golang_google_genproto//googleapis/iam/v1
# gazelle:prefix bitbucket.org/non_existent/non_existent
go_binary(
    name = "main",
    embed = [":non_existent_lib"],
    visibility = ["//visibility:public"],
)

go_library(
    name = "non_existent_lib",
    srcs = ["main.go"],
    importpath = "bitbucket.org/non_existent/non_existent",
    visibility = ["//visibility:private"],
    deps = ["@com_google_cloud_go//storage"],
)
