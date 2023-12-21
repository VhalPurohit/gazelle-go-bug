load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():

    go_repository(
        name = "com_google_cloud_go",
        build_file_proto_mode = "disable_global",
        build_directives = [
                "gazelle:resolve go google.golang.org/genproto/googleapis/iam/v1 @org_golang_google_genproto//googleapis/iam/v1",  # keep
            ],
        importpath = "cloud.google.com/go",
        strip_prefix = "google-cloud-go-storage-v1.36.0",
        build_file_generation = "on",
        urls = ["https://github.com/googleapis/google-cloud-go/archive/storage/v1.36.0.zip"],
    )

    go_repository(
            name = "org_golang_google_genproto_googleapis_api",
            importpath = "google.golang.org/genproto/googleapis/api",
            build_file_proto_mode = "disable_global",
            sum = "h1:s1w3X6gQxwrLEpxnLd/qXTVLgQE2yXwaOaoa6IlY/+o=",
            version = "v0.0.0-20231212172506-995d672761c0",
    )

    go_repository(
        name= "org_golang_google_grpc",
        importpath= "google.golang.org/grpc",
        build_directives= [
        "gazelle:proto disable"
        ],
        build_file_generation= "auto",
        sum="h1:fPVVDxY9w++VjTZsYvXWqEf9Rqar/e+9zYfxKK+W+YU=",
        version= "v1.50.0"
    )

    go_repository(
    name = "com_github_googleapis_gax_go",
    build_file_proto_mode = "disable",
    importpath = "github.com/googleapis/gax-go",
    strip_prefix = "gax-go-2.0.5",
    urls = ["https://github.com/googleapis/gax-go/archive/v2.0.5.zip"],
)

    go_repository(
        name = "org_golang_google_api",
        build_file_proto_mode = "disable",
        importpath = "google.golang.org/api",
        strip_prefix = "google-api-go-client-0.129.0",
        urls = ["https://github.com/googleapis/google-api-go-client/archive/v0.129.0.zip"],
    )

    go_repository(
        name = "com_github_golang_groupcache",
        build_file_proto_mode = "disable",
        commit = "215e87163ea771ffa998a96c611387313bb5a403",
        importpath = "github.com/golang/groupcache",
    )

    go_repository(
        name = "com_github_google_s2a_go",
        importpath = "github.com/google/s2a-go",
        sum = "h1:1kZ/sQM3srePvKs3tXAvQzo66XfcReoqFpIpIccE7Oc=",
        version = "v0.1.4",
    )


    go_repository(
        name = "com_google_cloud_go_compute_metadata",
        importpath = "cloud.google.com/go/compute/metadata",
        sum = "h1:mg4jlk7mCAj6xXp9UJ4fjI9VUI5rubuGBW5aJ7UnBMY=",
        version = "v0.2.3",
    )


    go_repository(
            name = "org_golang_google_genproto_googleapis_rpc",
            importpath = "google.golang.org/genproto/googleapis/rpc",
            sum = "h1:/jFB8jK5R3Sq3i/lmeZO0cATSzFfZaJq1J2Euan3XKU=",
            version = "v0.0.0-20231212172506-995d672761c0",
        )

    go_repository(
            name = "com_github_googleapis_gax_go_v2",
            build_file_proto_mode = "disable",
            importpath = "github.com/googleapis/gax-go/v2",
            sum = "h1:A+gCJKdRfqXkr+BIRGtZLibNXf0m1f9E4HG56etFpas=",
            version = "v2.12.0",
        )


    go_repository(
        name = "org_golang_x_net",
        build_file_proto_mode = "disable",
        commit = "0ba52f642ac2f9371a88bfdde41f4b4e195a37c0",
        importpath = "golang.org/x/net",
    )

    go_repository(
        name = "io_opencensus_go",
        build_file_proto_mode = "disable",
        importpath = "go.opencensus.io",
        strip_prefix = "opencensus-go-0.22.2",
        urls = ["https://github.com/census-instrumentation/opencensus-go/archive/v0.22.2.zip"],
    )

    go_repository(
        name = "com_github_google_uuid",
        build_file_proto_mode = "disable",
        importpath = "github.com/google/uuid",
        tag = "v1.1.1",
    )

    go_repository(
        name = "com_github_googleapis_enterprise_certificate_proxy",
        importpath = "github.com/googleapis/enterprise-certificate-proxy",
        sum = "h1:yk9/cqRKtT9wXZSsRH9aurXEpJX+U6FLtpYTdC3R06k=",
        version = "v0.2.3",
    )

    
