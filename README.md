# Bazel Transition Demo

Use a starlark transition to permit building for multiple target architectures
from a single `bazel` invocation.

## Problem

Normally, when setting up a project with cross-compilation under bazel, one
must specify the desired target via a bazel flag such as `--platforms`.  If
one wants to build binaries for multiple target architectures, one has to
invoke bazel several times with different `--platforms` flags.

Bazel transitions permit changing these flags via a transition, which
causes bazel to create a new subtree of the build graph with different
flags settings.  By using transitions, one can have common libraries or
binaries which can be built for multiple architectures and manage the build
process from a single bazel invocation.

# Solution

See the transition implementation in `rules` and a practical use in the
`arm` subdirectory.

There are `arm` and `host` demo programs which use a common library.  All
binaries can be created via

```
bazel build //...
```


