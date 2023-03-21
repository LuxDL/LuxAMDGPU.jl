using LuxAMDGPU, Test

@testset "LuxAMDGPU" begin
    @test LuxAMDGPU.USE_AMD_GPU[] === nothing

    @test LuxAMDGPU.functional() isa Bool
end
