package com.jme3.shader;

import com.jme3.asset.AssetManager;
import com.jme3.shader.Shader;

public class Glsl300ShaderGenerator extends Glsl150ShaderGenerator {
    public Glsl300ShaderGenerator(AssetManager assetManager) {
        super(assetManager);
    }

    @Override
    public String getLanguageAndVersion(Shader.ShaderType shaderType) {
        return "GLSL300";
    }
}
