load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "bazel_embedded",
    commit = "f3770c9ab68c0b0ad4c2a78dd61e28e1acba86f5",
    remote = "https://github.com/cfrantz/bazel-embedded.git",
#    shallow_since = "1585022166 +0800",
)
#local_repository(
#    name = "bazel_embedded",
#    path = "/home/cfrantz/src/cross_compile/bazel-embedded",
#)

load("@bazel_embedded//:bazel_embedded_deps.bzl", "bazel_embedded_deps")

bazel_embedded_deps()

load("@bazel_embedded//platforms:execution_platforms.bzl", "register_platforms")

register_platforms()

load(
    "@bazel_embedded//toolchains/compilers/gcc_arm_none_eabi:gcc_arm_none_repository.bzl",
    "gcc_arm_none_compiler",
)
gcc_arm_none_compiler()

load("@bazel_embedded//toolchains/gcc_arm_none_eabi:gcc_arm_none_toolchain.bzl", "register_gcc_arm_none_toolchain")
register_gcc_arm_none_toolchain()


load(
    "@bazel_embedded//toolchains/compilers/lowrisc_toolchain_rv32imc:lowrisc_toolchain_rv32imc_repository.bzl",
    "lowrisc_toolchain_rv32imc_compiler",
)
lowrisc_toolchain_rv32imc_compiler()

load("@bazel_embedded//toolchains/lowrisc_toolchain_rv32imc:lowrisc_toolchain_rv32imc.bzl", "register_lowrisc_toolchain_rv32imc_toolchain")
register_lowrisc_toolchain_rv32imc_toolchain()

load("@bazel_embedded//tools/openocd:openocd_repository.bzl", "openocd_deps")

openocd_deps()
