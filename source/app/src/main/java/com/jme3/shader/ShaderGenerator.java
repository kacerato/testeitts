package com.jme3.shader;

import com.jme3.asset.AssetManager;
import com.jme3.material.ShaderGenerationInfo;
import com.jme3.material.TechniqueDef;
import com.jme3.shader.Shader;
import com.jme3.shader.plugins.ShaderAssetKey;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class ShaderGenerator {
    public static final String NAME_SPACE_GLOBAL = "Global";
    public static final String NAME_SPACE_MAT_PARAM = "MatParam";
    public static final String NAME_SPACE_VERTEX_ATTRIBUTE = "Attr";
    public static final String NAME_SPACE_WORLD_PARAM = "WorldParam";
    protected AssetManager assetManager;
    protected int indent;
    protected TechniqueDef techniqueDef = null;
    Pattern extensions = Pattern.compile("(#extension.*\\s+)");
    private final Map<String, String> imports = new LinkedHashMap();

    public ShaderGenerator(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    private String moveExtensionsUp(StringBuilder sb2) {
        Matcher matcher = this.extensions.matcher(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        while (matcher.find()) {
            sb3.append(matcher.group());
        }
        sb3.append(matcher.replaceAll(""));
        return sb3.toString();
    }

    public void appendNodeDeclarationAndMain(String str, StringBuilder sb2, StringBuilder sb3, ShaderNode shaderNode, ShaderGenerationInfo shaderGenerationInfo, String str2) {
        if (str.length() <= 1) {
            generateNodeMainSection(sb3, shaderNode, str, shaderGenerationInfo);
            return;
        }
        String substring = str.substring(0, str.lastIndexOf(VectorFormat.DEFAULT_SUFFIX));
        String[] split = substring.split("\\s*void\\s*main\\s*\\(\\s*\\)\\s*\\{");
        if (split.length >= 2) {
            generateDeclarativeSection(sb2, shaderNode, split[0], shaderGenerationInfo);
            generateNodeMainSection(sb3, shaderNode, split[1], shaderGenerationInfo);
            return;
        }
        throw new IllegalArgumentException("Syntax error in " + str2 + ". Cannot find 'void main(){' in \n" + substring);
    }

    public String buildShader(List<ShaderNode> list, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        if (shaderType == Shader.ShaderType.TessellationControl || shaderType == Shader.ShaderType.TessellationEvaluation || shaderType == Shader.ShaderType.Geometry) {
            return null;
        }
        this.imports.clear();
        this.indent = 0;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        generateUniforms(sb2, shaderGenerationInfo, shaderType);
        if (shaderType == Shader.ShaderType.Vertex) {
            generateAttributes(sb2, shaderGenerationInfo);
        }
        generateVaryings(sb2, shaderGenerationInfo, shaderType);
        generateStartOfMainSection(sb3, shaderGenerationInfo, shaderType);
        generateDeclarationAndMainBody(list, sb2, sb3, shaderGenerationInfo, shaderType);
        generateEndOfMainSection(sb3, shaderGenerationInfo, shaderType);
        int length = sb2.length();
        Iterator<String> it = this.imports.values().iterator();
        while (it.hasNext()) {
            sb2.insert(length, it.next());
        }
        sb2.append((CharSequence) sb3);
        return moveExtensionsUp(sb2);
    }

    public int findShaderIndexFromVersion(ShaderNode shaderNode, Shader.ShaderType shaderType) throws NumberFormatException {
        List<String> shadersLanguage = shaderNode.getDefinition().getShadersLanguage();
        int parseInt = Integer.parseInt(getLanguageAndVersion(shaderType).substring(4));
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < shadersLanguage.size(); i12++) {
            int parseInt2 = Integer.parseInt(shadersLanguage.get(i12).substring(4));
            if (parseInt2 > i11 && parseInt2 <= parseInt) {
                i10 = i12;
                i11 = parseInt2;
            }
        }
        return i10;
    }

    public abstract void generateAttributes(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo);

    public void generateDeclarationAndMainBody(List<ShaderNode> list, StringBuilder sb2, StringBuilder sb3, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        for (ShaderNode shaderNode : list) {
            if (!shaderGenerationInfo.getUnusedNodes().contains(shaderNode.getName()) && shaderNode.getDefinition().getType() == shaderType) {
                String str = shaderNode.getDefinition().getShadersPath().get(findShaderIndexFromVersion(shaderNode, shaderType));
                Map map = (Map) this.assetManager.loadAsset(new ShaderAssetKey(str, false));
                String str2 = (String) map.get("[main]");
                for (String str3 : map.o()) {
                    if (!str3.equals("[main]")) {
                        this.imports.put(str3, (String) map.get(str3));
                    }
                }
                appendNodeDeclarationAndMain(str2, sb2, sb3, shaderNode, shaderGenerationInfo, str);
            }
        }
    }

    public abstract void generateDeclarativeSection(StringBuilder sb2, ShaderNode shaderNode, String str, ShaderGenerationInfo shaderGenerationInfo);

    public abstract void generateEndOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType);

    public abstract void generateNodeMainSection(StringBuilder sb2, ShaderNode shaderNode, String str, ShaderGenerationInfo shaderGenerationInfo);

    public Shader generateShader(String str) {
        TechniqueDef techniqueDef = this.techniqueDef;
        if (techniqueDef == null) {
            throw new UnsupportedOperationException("The shaderGenerator was not properly initialized, call initialize(TechniqueDef) before any generation");
        }
        String name = techniqueDef.getName();
        ShaderGenerationInfo shaderGenerationInfo = this.techniqueDef.getShaderGenerationInfo();
        Shader shader = new Shader();
        for (Shader.ShaderType shaderType : Shader.ShaderType.values()) {
            String extension = shaderType.getExtension();
            String languageAndVersion = getLanguageAndVersion(shaderType);
            String buildShader = buildShader(this.techniqueDef.getShaderNodes(), shaderGenerationInfo, shaderType);
            if (buildShader != null) {
                shader.addSource(shaderType, name + "." + extension, buildShader, str, languageAndVersion);
            }
        }
        this.techniqueDef = null;
        return shader;
    }

    public abstract void generateStartOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType);

    public abstract void generateUniforms(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType);

    public abstract void generateVaryings(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType);

    public abstract String getLanguageAndVersion(Shader.ShaderType shaderType);

    public void initialize(TechniqueDef techniqueDef) {
        this.techniqueDef = techniqueDef;
    }
}
