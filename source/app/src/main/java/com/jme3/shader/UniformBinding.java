package com.jme3.shader;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public enum UniformBinding {
    WorldMatrix("mat4"),
    ViewMatrix("mat4"),
    ProjectionMatrix("mat4"),
    WorldViewMatrix("mat4"),
    NormalMatrix("mat3"),
    WorldViewProjectionMatrix("mat4"),
    ViewProjectionMatrix("mat4"),
    WorldMatrixInverseTranspose("mat3"),
    WorldMatrixInverse("mat4"),
    ViewMatrixInverse("mat4"),
    ProjectionMatrixInverse("mat4"),
    ViewProjectionMatrixInverse("mat4"),
    WorldViewMatrixInverse("mat4"),
    NormalMatrixInverse("mat3"),
    WorldViewProjectionMatrixInverse("mat4"),
    ViewPort("vec4"),
    FrustumNearFar("vec2"),
    Resolution("vec2"),
    ResolutionInverse("vec2"),
    Aspect(TypedValues.Custom.S_FLOAT),
    CameraPosition("vec3"),
    CameraDirection("vec3"),
    CameraLeft("vec3"),
    CameraUp("vec3"),
    Time(TypedValues.Custom.S_FLOAT),
    Tpf(TypedValues.Custom.S_FLOAT),
    FrameRate(TypedValues.Custom.S_FLOAT),
    LightDirection("vec4"),
    LightPosition("vec4"),
    AmbientLightColor("vec4"),
    LightColor("vec4"),
    WorldNormalMatrix("mat3");

    String glslType;

    public String getGlslType() {
        return this.glslType;
    }

    UniformBinding(String str) {
        this.glslType = str;
    }
}
