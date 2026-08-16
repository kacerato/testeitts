package com.jme3.shader;

import com.jme3.asset.AssetManager;
import com.jme3.material.ShaderGenerationInfo;
import com.jme3.material.plugins.ConditionParser;
import com.jme3.shader.Shader;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class Glsl100ShaderGenerator extends ShaderGenerator {
    private static final String INDENTCHAR = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
    protected ShaderNodeVariable inPosTmp;

    public Glsl100ShaderGenerator(AssetManager assetManager) {
        super(assetManager);
    }

    public void appendIndent(StringBuilder sb2) {
        sb2.append(INDENTCHAR.substring(0, this.indent));
    }

    public void appendOutput(StringBuilder sb2, String str, ShaderNodeVariable shaderNodeVariable) {
        appendIndent(sb2);
        sb2.append(str);
        sb2.append(" = ");
        sb2.append(shaderNodeVariable.getNameSpace());
        sb2.append(ConstantDescs.DEFAULT_NAME);
        sb2.append(shaderNodeVariable.getName());
        sb2.append(";\n");
    }

    public void comment(StringBuilder sb2, ShaderNode shaderNode, String str) {
        appendIndent(sb2);
        sb2.append("//");
        sb2.append(shaderNode.getName());
        sb2.append(" : ");
        sb2.append(str);
        sb2.append("\n");
    }

    public void declareAttribute(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable) {
        declareVariable(sb2, shaderNodeVariable, false, ClasspathEntry.TAG_ATTRIBUTE);
    }

    public void declareGlobalPosition(ShaderGenerationInfo shaderGenerationInfo, StringBuilder sb2) {
        if (this.inPosTmp.getType().equals(shaderGenerationInfo.getVertexGlobal().getType())) {
            declareVariable(sb2, shaderGenerationInfo.getVertexGlobal(), "inPosition");
        } else {
            declareVariable(sb2, shaderGenerationInfo.getVertexGlobal(), "vec4(inPosition,1.0)");
        }
    }

    public void declareVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, boolean z10) {
        declareVariable(sb2, shaderNodeVariable, z10, null);
    }

    public void declareVarying(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, boolean z10) {
        declareVariable(sb2, shaderNodeVariable, true, "varying");
    }

    public void endCondition(String str, StringBuilder sb2) {
        if (str != null) {
            unIndent();
            appendIndent(sb2);
            sb2.append("#endif\n");
        }
    }

    public void fixInPositionType(ShaderNodeVariable shaderNodeVariable) {
        if (shaderNodeVariable.getType().equals("vec3") && shaderNodeVariable.getType().equals("vec4")) {
            return;
        }
        shaderNodeVariable.setType("vec3");
    }

    @Override
    public void generateAttributes(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo) {
        sb2.append("\n");
        boolean z10 = false;
        for (ShaderNodeVariable shaderNodeVariable : shaderGenerationInfo.getAttributes()) {
            if (shaderNodeVariable.getName().equals("inPosition")) {
                shaderNodeVariable.setCondition(null);
                fixInPositionType(shaderNodeVariable);
                this.inPosTmp = shaderNodeVariable;
                z10 = true;
            }
            declareAttribute(sb2, shaderNodeVariable);
        }
        if (z10) {
            return;
        }
        ShaderNodeVariable shaderNodeVariable2 = new ShaderNodeVariable("vec3", "inPosition");
        this.inPosTmp = shaderNodeVariable2;
        declareAttribute(sb2, shaderNodeVariable2);
    }

    @Override
    public void generateDeclarativeSection(StringBuilder sb2, ShaderNode shaderNode, String str, ShaderGenerationInfo shaderGenerationInfo) {
        if (str.replaceAll("\\n", "").trim().length() > 0) {
            String updateDefinesName = updateDefinesName(str, shaderNode);
            sb2.append("\n");
            unIndent();
            startCondition(shaderNode.getCondition(), sb2);
            sb2.append(updateDefinesName);
            sb2.append("\n");
            endCondition(shaderNode.getCondition(), sb2);
            indent();
        }
    }

    @Override
    public void generateEndOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        sb2.append("\n");
        if (shaderType == Shader.ShaderType.Vertex) {
            appendOutput(sb2, "gl_Position", shaderGenerationInfo.getVertexGlobal());
        } else if (shaderType == Shader.ShaderType.Fragment) {
            List<ShaderNodeVariable> fragmentGlobals = shaderGenerationInfo.getFragmentGlobals();
            int i10 = 0;
            if (fragmentGlobals.size() == 1) {
                appendOutput(sb2, "gl_FragColor", fragmentGlobals.get(0));
            } else {
                Iterator<ShaderNodeVariable> it = fragmentGlobals.iterator();
                while (it.hasNext()) {
                    appendOutput(sb2, "gl_FragData[" + i10 + "]", it.next());
                    i10++;
                }
            }
        }
        unIndent();
        appendIndent(sb2);
        sb2.append("}\n");
    }

    @Override
    public void generateNodeMainSection(StringBuilder sb2, ShaderNode shaderNode, String str, ShaderGenerationInfo shaderGenerationInfo) {
        String updateDefinesName = updateDefinesName(str, shaderNode);
        sb2.append("\n");
        comment(sb2, shaderNode, "Begin");
        startCondition(shaderNode.getCondition(), sb2);
        ArrayList arrayList = new ArrayList();
        ShaderNodeDefinition definition = shaderNode.getDefinition();
        String str2 = updateDefinesName;
        for (ShaderNodeVariable shaderNodeVariable : definition.getInputs()) {
            if (!shaderNodeVariable.getType().startsWith("sampler")) {
                String str3 = shaderNode.getName() + ConstantDescs.DEFAULT_NAME + shaderNodeVariable.getName();
                ShaderNodeVariable shaderNodeVariable2 = new ShaderNodeVariable(shaderNodeVariable.getType(), shaderNode.getName(), shaderNodeVariable.getName(), shaderNodeVariable.getMultiplicity());
                if (!isVarying(shaderGenerationInfo, shaderNodeVariable2)) {
                    declareVariable(sb2, shaderNodeVariable2, shaderNodeVariable.getDefaultValue(), true, null);
                }
                str2 = replaceVariableName(str2, shaderNodeVariable2);
                arrayList.add(str3);
            }
        }
        for (VariableMapping variableMapping : shaderNode.getInputMapping()) {
            ShaderNodeVariable rightVariable = variableMapping.getRightVariable();
            ShaderNodeVariable leftVariable = variableMapping.getLeftVariable();
            String str4 = shaderNode.getName() + ConstantDescs.DEFAULT_NAME + leftVariable.getName();
            boolean contains = arrayList.contains(str4);
            if (rightVariable != null && isWorldOrMaterialParam(rightVariable) && rightVariable.getType().startsWith("sampler")) {
                str2 = replace(str2, leftVariable, rightVariable.getPrefix() + rightVariable.getName());
            } else {
                if (leftVariable.getType().startsWith("sampler")) {
                    throw new IllegalArgumentException("a Sampler must be a uniform");
                }
                map(variableMapping, sb2, !contains);
            }
            if (!contains) {
                String replace = replace(str2, leftVariable, str4);
                arrayList.add(str4);
                str2 = replace;
            }
        }
        for (ShaderNodeVariable shaderNodeVariable3 : definition.getOutputs()) {
            ShaderNodeVariable shaderNodeVariable4 = new ShaderNodeVariable(shaderNodeVariable3.getType(), shaderNode.getName(), shaderNodeVariable3.getName(), shaderNodeVariable3.getMultiplicity());
            if (!arrayList.contains(shaderNode.getName() + ConstantDescs.DEFAULT_NAME + shaderNodeVariable3.getName())) {
                if (!isVarying(shaderGenerationInfo, shaderNodeVariable4)) {
                    declareVariable(sb2, shaderNodeVariable4);
                }
                str2 = replaceVariableName(str2, shaderNodeVariable4);
            }
        }
        sb2.append(str2);
        Iterator<VariableMapping> it = shaderNode.getOutputMapping().iterator();
        while (it.hasNext()) {
            map(it.next(), sb2, true);
        }
        endCondition(shaderNode.getCondition(), sb2);
        comment(sb2, shaderNode, "End");
    }

    @Override
    public void generateStartOfMainSection(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        sb2.append("\n");
        sb2.append("void main() {\n");
        indent();
        appendIndent(sb2);
        if (shaderType == Shader.ShaderType.Vertex) {
            declareGlobalPosition(shaderGenerationInfo, sb2);
        } else if (shaderType == Shader.ShaderType.Fragment) {
            Iterator<ShaderNodeVariable> it = shaderGenerationInfo.getFragmentGlobals().iterator();
            while (it.hasNext()) {
                declareVariable(sb2, it.next(), "vec4(1.0)");
            }
        }
        sb2.append("\n");
    }

    @Override
    public void generateUniforms(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        generateUniforms(sb2, shaderType == Shader.ShaderType.Vertex ? shaderGenerationInfo.getVertexUniforms() : shaderGenerationInfo.getFragmentUniforms());
    }

    @Override
    public void generateVaryings(StringBuilder sb2, ShaderGenerationInfo shaderGenerationInfo, Shader.ShaderType shaderType) {
        sb2.append("\n");
        Iterator<ShaderNodeVariable> it = shaderGenerationInfo.getVaryings().iterator();
        while (it.hasNext()) {
            declareVarying(sb2, it.next(), shaderType != Shader.ShaderType.Vertex);
        }
    }

    public String getAppendableNameSpace(ShaderNodeVariable shaderNodeVariable) {
        String str = shaderNodeVariable.getNameSpace() + ConstantDescs.DEFAULT_NAME;
        return (str.equals("Attr_") || str.equals("WorldParam_") || str.equals("MatParam_")) ? "" : str;
    }

    @Override
    public String getLanguageAndVersion(Shader.ShaderType shaderType) {
        return "GLSL100";
    }

    public void indent() {
        int i10 = this.indent + 1;
        this.indent = i10;
        this.indent = Math.min(10, i10);
    }

    public boolean isVarying(ShaderGenerationInfo shaderGenerationInfo, ShaderNodeVariable shaderNodeVariable) {
        Iterator<ShaderNodeVariable> it = shaderGenerationInfo.getVaryings().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (it.next().equals(shaderNodeVariable)) {
                z10 = true;
            }
        }
        return z10;
    }

    public boolean isWorldOrMaterialParam(ShaderNodeVariable shaderNodeVariable) {
        return shaderNodeVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_MAT_PARAM) || shaderNodeVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_WORLD_PARAM);
    }

    public void map(VariableMapping variableMapping, StringBuilder sb2, boolean z10) {
        ShaderNodeVariable leftVariable = variableMapping.getLeftVariable();
        ShaderNodeVariable rightVariable = variableMapping.getRightVariable();
        String rightExpression = variableMapping.getRightExpression();
        startCondition(variableMapping.getCondition(), sb2);
        appendIndent(sb2);
        if (!leftVariable.isShaderOutput() && z10) {
            sb2.append(leftVariable.getType());
            sb2.append(" ");
        }
        sb2.append(leftVariable.getNameSpace());
        sb2.append(ConstantDescs.DEFAULT_NAME);
        sb2.append(leftVariable.getName());
        if (leftVariable.getMultiplicity() != null) {
            sb2.append("[");
            sb2.append(leftVariable.getMultiplicity());
            sb2.append("]");
        }
        if (variableMapping.getLeftSwizzling().length() > 0) {
            sb2.append(" = ");
            sb2.append(leftVariable.getType());
            sb2.append("(0.0);\n");
            appendIndent(sb2);
            sb2.append(leftVariable.getNameSpace());
            sb2.append(ConstantDescs.DEFAULT_NAME);
            sb2.append(leftVariable.getName());
            sb2.append(".");
            sb2.append(variableMapping.getLeftSwizzling());
        }
        sb2.append(" = ");
        if (rightVariable != null) {
            sb2.append(getAppendableNameSpace(rightVariable));
            sb2.append(rightVariable.getPrefix());
            sb2.append(rightVariable.getName());
            if (variableMapping.getRightSwizzling().length() > 0) {
                sb2.append(".");
                sb2.append(variableMapping.getRightSwizzling());
            }
        } else {
            sb2.append(rightExpression);
        }
        sb2.append(";\n");
        endCondition(variableMapping.getCondition(), sb2);
    }

    public String replace(String str, ShaderNodeVariable shaderNodeVariable, String str2) {
        return str.replaceAll("(?<=\\W)" + shaderNodeVariable.getName() + "(?=\\W)", str2);
    }

    public String replaceVariableName(String str, ShaderNodeVariable shaderNodeVariable) {
        return replace(str, shaderNodeVariable, getAppendableNameSpace(shaderNodeVariable) + shaderNodeVariable.getName());
    }

    public void startCondition(String str, StringBuilder sb2) {
        if (str != null) {
            appendIndent(sb2);
            sb2.append("#if ");
            sb2.append(str);
            sb2.append("\n");
            indent();
        }
    }

    public void unIndent() {
        int i10 = this.indent - 1;
        this.indent = i10;
        this.indent = Math.max(0, i10);
    }

    public String updateDefinesName(String str, ShaderNode shaderNode) {
        String str2 = str;
        String[] split = str2.split("\\n");
        ConditionParser conditionParser = new ConditionParser();
        for (String str3 : split) {
            if (str3.trim().startsWith("#if")) {
                List<String> extractDefines = conditionParser.extractDefines(str3.trim());
                String replaceAll = str3.trim().replaceAll("defined", "").replaceAll("#if ", "").replaceAll("#ifdef", "");
                boolean z10 = false;
                for (String str4 : extractDefines) {
                    for (VariableMapping variableMapping : shaderNode.getInputMapping()) {
                        if (variableMapping.getLeftVariable().getName().equals(str4) && variableMapping.getCondition() != null) {
                            replaceAll = replaceAll.replaceAll(str4, variableMapping.getCondition());
                            z10 = true;
                        }
                    }
                }
                if (z10) {
                    str2 = str2.replace(str3.trim(), "#if " + replaceAll);
                }
            }
        }
        return str2;
    }

    public void declareVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable) {
        declareVariable(sb2, shaderNodeVariable, true, null);
    }

    public void generateUniforms(StringBuilder sb2, List<ShaderNodeVariable> list) {
        sb2.append("\n");
        Iterator<ShaderNodeVariable> it = list.iterator();
        while (it.hasNext()) {
            declareVariable(sb2, it.next(), false, "uniform");
        }
    }

    public void declareVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, String str) {
        declareVariable(sb2, shaderNodeVariable, str, true, null);
    }

    public void declareVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, boolean z10, String str) {
        declareVariable(sb2, shaderNodeVariable, null, z10, str);
    }

    public void declareVariable(StringBuilder sb2, ShaderNodeVariable shaderNodeVariable, String str, boolean z10, String str2) {
        startCondition(shaderNodeVariable.getCondition(), sb2);
        appendIndent(sb2);
        if (str2 != null) {
            sb2.append(str2);
            sb2.append(" ");
        }
        sb2.append(shaderNodeVariable.getType());
        sb2.append(" ");
        if (z10) {
            sb2.append(shaderNodeVariable.getNameSpace());
            sb2.append(ConstantDescs.DEFAULT_NAME);
        }
        sb2.append(shaderNodeVariable.getPrefix());
        sb2.append(shaderNodeVariable.getName());
        if (shaderNodeVariable.getMultiplicity() != null) {
            sb2.append("[");
            sb2.append(shaderNodeVariable.getMultiplicity().toUpperCase());
            sb2.append("]");
        }
        if (str != null) {
            sb2.append(" = ");
            sb2.append(str);
        }
        sb2.append(";\n");
        endCondition(shaderNodeVariable.getCondition(), sb2);
    }
}
