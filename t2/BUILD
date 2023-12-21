package(features = ["fox"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

# gazelle:resolve go google.golang.org/genproto/googleapis/iam/v1 @org_golang_google_genproto//googleapis/iam/v1
# gazelle:prefix bitbucket.org/foxbots/foxbots
go_binary(
    name = "main",
    embed = [":foxbots_lib"],
    visibility = ["//visibility:public"],
)

go_library(
    name = "lib",
    srcs = ["main.go"],
    importpath = "",
    visibility = ["//visibility:private"],
    deps = ["@com_google_cloud_go//storage"],
)

go_library(
    name = "t2_lib",
    srcs = ["main.go"],
    importpath = "bitbucket.org/foxbots/foxbots/t2",
    visibility = ["//visibility:private"],
    deps = ["@com_google_cloud_go//storage"],
)

go_library(
    name = "foxbots_lib",
    srcs = ["main.go"],
    importpath = "bitbucket.org/foxbots/foxbots",
    visibility = ["//visibility:private"],
    deps = ["@com_google_cloud_go//storage"],
)
