package(default_visibility = ["//visibility:public"])
load("@rules_cc//cc:defs.bzl", "cc_binary")
load("//rules:defs.bzl", "target_platform")

target_platform(
    name = "demo_rv32",
    platform = "@bazel_embedded//platforms:rv32imc",
    target = ":demo",
)

cc_binary(
    name = "demo",
    srcs = [
        "main.c"
#        "vectors.s",
#        "notmain.c",
    ],
    copts = [
        "-nostdlib",
        "-ffreestanding",
    ],
    linkopts = [
#        "-T $(location memmap.ld)",
        "-nostartfiles",
        "-nostdlib",
        "-lgcc",
    ],
    deps = [
#        "//lib:sieve",
#        "memmap.ld",
    ],
    target_compatible_with = [
        "@bazel_embedded//constraints/cpu:rv32imc",
    ]
)
