#include "Packages/jp.keijiro.noiseshader/Shader/SimplexNoise3D.hlsl"

void Stars_float(float3 ViewDir, float Freq, float Power, float Amplify, out float Out)
{
    float n = SimplexNoise(ViewDir * Freq);
    Out = pow(saturate(n), Power) * Amplify;
}
