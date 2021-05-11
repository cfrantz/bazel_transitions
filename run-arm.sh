#!/bin/bash

# Simple script to run an ARM binary under qemu.  Because the arm binary
# gets built as the result of a transition, it will have a destination
# filename like `bazel-out/k8-fastbuild-ST-2c8344372b33/bin/arm/demo`

echo "====================================================="
echo "Use C-a X to exit qemu"
echo "====================================================="
qemu/qemu-system-arm -M lm3s811evb -m 8K -nographic -kernel $*
