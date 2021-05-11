load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "demo",
    srcs = [
        "demo.c",
    ],
    deps = [
        "//lib:sieve",
    ],
    target_compatible_with = [
        "@platforms//cpu:x86_64",
    ]
)
