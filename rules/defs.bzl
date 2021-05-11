# Use a transition to rewrite the `--platforms` flags, thus giving us
# multiple target architecures from a single `bazel` invocation.

def _transition_impl(settings, attr):
    return {"//command_line_option:platforms": attr.platform}

_platforms_transition = transition(
    implementation = _transition_impl,
    inputs = [],
    outputs = ["//command_line_option:platforms"],
)

def _impl(ctx):
    info = ctx.attr.target[0][DefaultInfo]
    # TODO: figure out what should be provided by the DefaultInfo provider.
    return [
        DefaultInfo(
            files = info.files,
            data_runfiles = info.data_runfiles,
        ),
    ]

target_platform = rule(
    implementation = _impl,
    attrs = {
        # TODO: make this a label_list so multiple targets can be specified
        # by a single `target_platform` rule.
        "target": attr.label(cfg = _platforms_transition),
        "platform": attr.string(),
        "_allowlist_function_transition": attr.label(
            default = "@bazel_tools//tools/allowlists/function_transition_allowlist"
        ),
    },
)
