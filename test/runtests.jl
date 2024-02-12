using Aqua, LuxAMDGPU, Test

@testset "LuxAMDGPU" begin
    @test LuxAMDGPU.USE_AMD_GPU[] === nothing

    @test LuxAMDGPU.functional() isa Bool

    Aqua.test_all(LuxAMDGPU; ambiguities=false)
    Aqua.test_ambiguities(LuxAMDGPU)
end
