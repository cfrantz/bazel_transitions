package(default_visibility = ["//visibility:public"])
load("@rules_cc//cc:defs.bzl", "cc_binary")
load("//rules:defs.bzl", "target_platform")

target_platform(
    name = "demo_arm",
    platform = "@bazel_embedded//platforms:cortex_m0",
    target = ":demo",
)

cc_binary(
    name = "demo",
    srcs = [
        "vectors.s",
        "notmain.c",
    ],
    copts = [
        "-nostdlib",
        "-ffreestanding",
        "-mcpu=cortex-m0",
        "-mthumb",
    ],
    linkopts = [
        "-T $(location memmap.ld)",
        "-nostartfiles",
        "-nostdlib",
        "-lgcc",
    ],
    deps = [
        "//lib:sieve",
        "memmap.ld",
    ],
    target_compatible_with = [
        "@platforms//cpu:armv6-m",
    ]
)
