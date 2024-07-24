module LuxAMDGPU

if ccall(:jl_generating_output, Cint, ()) == 1
    @warn """
    DEPRECATION NOTICE

    `LuxAMDPU.jl` was used previously as a means to load `AMDGPU` specific extensions in
    `Lux.jl`. However in most recent versions of `Lux.jl`, these functionalities can be
    directly accessed by simply loading `AMDGPU.jl`. This package is now deprecated.

    To use the `LuxAMDGPU.functional()` functionality, use
    `MLDataDevices.functional(LuxAMDGPUDevice)`.

    If you are not using `LuxAMDGPU.jl` as a direct dependency, please consider
    opening an issue on any packages you are using that do use it as a dependency.
    From Julia 1.9 onwards, you can query `]why LuxAMDGPU` to figure out which
    package originally brings it in as a dependency.
    """
end

using Reexport

@reexport using AMDGPU, AMDGPU.ROCKernels

const USE_AMD_GPU = Ref{Union{Nothing, Bool}}(nothing)

function _check_use_amdgpu!()
    USE_AMD_GPU[] === nothing || return

    USE_AMD_GPU[] = AMDGPU.functional()
    if USE_AMD_GPU[]
        if !AMDGPU.functional(:MIOpen)
            @warn "MIOpen is not functional in AMDGPU.jl, some functionality will not be \
                   available." maxlog=1
        end
    else
        @warn "LuxAMDGPU is loaded but the AMDGPU is not functional." maxlog=1
    end
    return
end

"""
    functional()

Check if LuxAMDGPU is functional.
"""
function functional()::Bool
    _check_use_amdgpu!()
    return USE_AMD_GPU[]
end

end
