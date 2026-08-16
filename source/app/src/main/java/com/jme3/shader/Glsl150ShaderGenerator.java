package com.jme3.shader;

import com.jme3.asset.AssetManager;
import com.jme3.material.ShaderGenerationInfo;
import com.jme3.shader.Shader;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;

public class Glsl150ShaderGenerator extends Glsl100ShaderGenerator {
    public Glsl150ShaderGenerator(AssetManager assetManager) {
        super(assetManager);
    }

    private void generateCompatibilityDefines(StringBuilder sb2, Shader.ShaderType shaderType) {
        if (shaderType == Shader.ShaderType.Fragment) {
            sb2.append("\n");
            sb2.append("#ifdef GL_ES\n");
            sb2.append("precision highp float;\n");
            sb2.append("precision highp int;\n");
            sb2.append("#if __VERSION__ >= 130\n");
            sb2.append("precision highp sampler2DArray;\n");
            sb2.append("#endif\n");
            sb2.append("precision highp sampler2DShadow;\n");
            sb2.append("precision highp samplerCube;\n");
            sb2.append("precision highp sampler3D;\n");
            sb2.append("precision highp sampler2D;\n");
            sb2.append("#if __VERSION__ >= 310\n");
            sb2.append("precision highp sampler2DMS;\n");
            sb2.append("#endif\n");
            sb2.append("#endif\n");
            sb2.append("#define texture1D texture\n");
            sb2.append("#define texture2D texture\n");
            sb2.append("#define texture3D texture\n");
            sb2.append("#define textureCube texture\n");
            sb2.append("#define texture2DLod textureLod\n");
            sb2.append("#define textureCubeLod textureLod\n");
        }
    }

    @Override
    public void declareAttribute(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable) {
        declareVariable(sb2, shaderNodeVariable, false, "in");
    }

    @Override
    public void declareVarying(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, boolean z10) {
        declareVariable(sb2, shaderNodeVariable, true, z10 ? "in" : "out");
    }

    @Override
    public void generateEndOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        if (shaderType == Shader.ShaderType.Vertex) {
            appendOutput(sb2, "gl_Position", shaderGenerationInfo.getVertexGlobal());
        }
        unIndent();
        appendIndent(sb2);
        sb2.append("}\n");
    }

    @Override
    public void generateStartOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        sb2.append("\n");
        if (shaderType == Shader.ShaderType.Fragment) {
            Iterator<ShaderNodeVariable> it = shaderGenerationInfo.getFragmentGlobals().iterator();
            while (it.hasNext()) {
                declareVariable(sb2, it.next(), null, true, "out");
            }
        }
        sb2.append("\n");
        appendIndent(sb2);
        sb2.append("void main(){\n");
        indent();
        if (shaderType == Shader.ShaderType.Vertex) {
            declareGlobalPosition(shaderGenerationInfo, sb2);
        } else if (shaderType == Shader.ShaderType.Fragment) {
            Iterator<ShaderNodeVariable> it2 = shaderGenerationInfo.getFragmentGlobals().iterator();
            while (it2.hasNext()) {
                initVariable(sb2, it2.next(), "vec4(1.0)");
            }
        }
    }

    @Override
    public void generateUniforms(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        generateCompatibilityDefines(sb2, shaderType);
        super.generateUniforms(sb2, shaderGenerationInfo, shaderType);
    }

    @Override
    public String getLanguageAndVersion(Shader.ShaderType shaderType) {
        return "GLSL150";
    }

    public void initVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, String str) {
        appendIndent(sb2);
        sb2.append(shaderNodeVariable.getNameSpace());
        sb2.append(ConstantDescs.DEFAULT_NAME);
        sb2.append(shaderNodeVariable.getName());
        sb2.append(" = ");
        sb2.append(str);
        sb2.append(";\n");
    }
}
