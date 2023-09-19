# LuxAMDGPU

[![Join the chat at https://julialang.zulipchat.com #machine-learning](https://img.shields.io/static/v1?label=Zulip&message=chat&color=9558b2&labelColor=389826)](https://julialang.zulipchat.com/#narrow/stream/machine-learning)
[![Latest Docs](https://img.shields.io/badge/docs-latest-blue.svg)](http://lux.csail.mit.edu/dev/api/)
[![Stable Docs](https://img.shields.io/badge/docs-stable-blue.svg)](http://lux.csail.mit.edu/stable/api/)

[![CI](https://github.com/LuxDL/LuxAMDGPU.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/LuxDL/LuxAMDGPU.jl/actions/workflows/CI.yml)
[![Buildkite NVIDIA GPU CI](https://img.shields.io/buildkite/13e78cb0485192627b1f26fecbe74ff4b93ee10a0ef4866261.svg?label=gpu&logo=amd)](https://buildkite.com/julialang/luxamdgpu-dot-jl/)
[![codecov](https://codecov.io/gh/LuxDL/LuxAMDGPU.jl/branch/main/graph/badge.svg?token=1ZY0A2NPEM)](https://codecov.io/gh/LuxDL/LuxAMDGPU.jl)
[![Package Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/LuxAMDGPU)](https://pkgs.genieframework.com?packages=LuxAMDGPU)

[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)
[![SciML Code Style](https://img.shields.io/static/v1?label=code%20style&message=SciML&color=9558b2&labelColor=389826)](https://github.com/SciML/SciMLStyle)

`LuxAMDGPU` is meant to be used as a trigger package for all AMDGPU dependencies in `Lux`.
Users requiring AMDGPU support should install `LuxAMDGPU` and load it alongside `Lux`.

## Installation

`LuxAMDGPU` is a registered package, and can be installed using the Julia package manager:

```julia
] add LuxAMDGPU
```
