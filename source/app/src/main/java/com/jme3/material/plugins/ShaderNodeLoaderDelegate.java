package com.jme3.material.plugins;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.ShaderNodeDefinitionKey;
import com.jme3.material.MatParam;
import com.jme3.material.MaterialDef;
import com.jme3.material.ShaderGenerationInfo;
import com.jme3.material.TechniqueDef;
import com.jme3.shader.Shader;
import com.jme3.shader.ShaderGenerator;
import com.jme3.shader.ShaderNode;
import com.jme3.shader.ShaderNodeDefinition;
import com.jme3.shader.ShaderNodeVariable;
import com.jme3.shader.ShaderUtils;
import com.jme3.shader.UniformBinding;
import com.jme3.shader.VarType;
import com.jme3.shader.VariableMapping;
import com.jme3.util.blockparser.Statement;
import com.tonyodev.fetch2core.server.FileRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.doclint.DocLint;

public class ShaderNodeLoaderDelegate {
    private static final boolean[] IM_HAS_NAME_SPACE = {false, true};
    private static final boolean[] OM_HAS_NAME_SPACE = {true, false};
    protected AssetManager assetManager;
    protected MaterialDef materialDef;
    protected Map<String, ShaderNodeDefinition> nodeDefinitions;
    protected Map<String, ShaderNode> nodes;
    protected String shaderLanguage;
    protected String shaderName;
    protected ShaderNode shaderNode;
    protected ShaderNodeDefinition shaderNodeDefinition;
    protected TechniqueDef techniqueDef;
    protected Map<String, DeclaredVariable> attributes = new HashMap();
    protected Map<String, DeclaredVariable> vertexDeclaredUniforms = new HashMap();
    protected Map<String, DeclaredVariable> fragmentDeclaredUniforms = new HashMap();
    protected Map<String, DeclaredVariable> varyings = new HashMap();
    protected Set<String> varNames = new HashSet();
    protected ConditionParser conditionParser = new ConditionParser();
    protected List<String> nulledConditions = new ArrayList();

    public class DeclaredVariable {
        List<ShaderNode> nodes = new ArrayList();
        ShaderNodeVariable var;

        public DeclaredVariable(ShaderNodeVariable shaderNodeVariable) {
            this.var = shaderNodeVariable;
        }

        public final void addNode(ShaderNode shaderNode) {
            if (this.nodes.contains(shaderNode)) {
                return;
            }
            this.nodes.add(shaderNode);
        }
    }

    private Map<String, ShaderNodeDefinition> getNodeDefinitions() {
        if (this.nodeDefinitions == null) {
            this.nodeDefinitions = new HashMap();
        }
        return this.nodeDefinitions;
    }

    private void updateMaterialTextureType(Statement statement, VariableMapping variableMapping, ShaderNodeVariable shaderNodeVariable, MatParam matParam) throws MatParseException {
        if (variableMapping.getRightVariable().getType().contains("|")) {
            String fixSamplerType = fixSamplerType(shaderNodeVariable.getType(), variableMapping.getRightVariable().getType());
            if (fixSamplerType != null) {
                variableMapping.getRightVariable().setType(fixSamplerType);
                return;
            }
            throw new MatParseException(matParam.getVarType().toString() + " can only be matched to one of " + matParam.getVarType().getGlslType().replaceAll("\\|", DocLint.SEPARATOR) + " found " + shaderNodeVariable.getType(), statement);
        }
    }

    public void addDefine(String str, VarType varType) {
        if (this.techniqueDef.getShaderParamDefine(str) == null) {
            this.techniqueDef.addShaderParamDefine(str, varType, str.toUpperCase());
        }
    }

    public void checkMappingFormat(String[] strArr, Statement statement) throws MatParseException {
        if (strArr.length != 2) {
            throw new MatParseException("Not a valid expression should be '<varName>[.<swizzling>] = <nameSpace>.<varName>[.<swizzling>][:Condition]'", statement);
        }
    }

    public void checkTypes(VariableMapping variableMapping, Statement statement) throws MatParseException {
        String str;
        if (ShaderUtils.typesMatch(variableMapping)) {
            if (ShaderUtils.multiplicityMatch(variableMapping)) {
                return;
            }
            throw new MatParseException("Type mismatch, cannot convert " + (variableMapping.getLeftVariable().getType() + "[" + variableMapping.getLeftVariable().getMultiplicity() + "]") + " to " + (variableMapping.getRightVariable().getType() + "[" + variableMapping.getRightVariable().getMultiplicity() + "]"), statement);
        }
        String str2 = "";
        if (variableMapping.getLeftSwizzling().length() == 0) {
            str = "";
        } else {
            str = "." + variableMapping.getLeftSwizzling();
        }
        if (variableMapping.getRightSwizzling().length() != 0) {
            str2 = "." + variableMapping.getRightSwizzling();
        }
        throw new MatParseException("Type mismatch, cannot convert " + variableMapping.getRightVariable().getType() + str2 + " to " + variableMapping.getLeftVariable().getType() + str, statement);
    }

    public void clear() {
        this.nodeDefinitions.clear();
        this.nodes.clear();
        this.shaderNodeDefinition = null;
        this.shaderNode = null;
        this.techniqueDef = null;
        this.attributes.clear();
        this.vertexDeclaredUniforms.clear();
        this.fragmentDeclaredUniforms.clear();
        this.varyings.clear();
        this.materialDef = null;
        this.shaderLanguage = "";
        this.shaderName = "";
        this.varNames.clear();
        this.assetManager = null;
        this.nulledConditions.clear();
    }

    public void extractCondition(String str, Statement statement) throws MatParseException {
        Iterator<String> it = this.conditionParser.extractDefines(str).iterator();
        while (it.hasNext()) {
            MatParam findMatParam = findMatParam(it.next());
            if (findMatParam == null) {
                throw new MatParseException("Invalid condition, condition must match a Material Parameter named " + str, statement);
            }
            addDefine(findMatParam.getName(), findMatParam.getVarType());
        }
    }

    public ShaderNodeDefinition findDefinition(Statement statement) throws IOException {
        String[] split = statement.getLine().split(s.f32937c);
        if (split.length != 3) {
            throw new MatParseException("Can't find shader node definition for: ", statement);
        }
        Map<String, ShaderNodeDefinition> nodeDefinitions = getNodeDefinitions();
        String trim = split[1].trim();
        String trim2 = split[2].trim();
        ShaderNodeDefinition shaderNodeDefinition = nodeDefinitions.get(trim + s.f32937c + trim2);
        if (shaderNodeDefinition != null) {
            return shaderNodeDefinition;
        }
        try {
            for (ShaderNodeDefinition shaderNodeDefinition2 : (List) this.assetManager.loadAsset(new ShaderNodeDefinitionKey(trim2))) {
                if (trim.equals(shaderNodeDefinition2.getName())) {
                    shaderNodeDefinition = shaderNodeDefinition2;
                }
                String str = shaderNodeDefinition2.getName() + s.f32937c + trim2;
                if (!nodeDefinitions.containsKey(str)) {
                    nodeDefinitions.put(str, shaderNodeDefinition2);
                }
            }
            if (shaderNodeDefinition != null) {
                return shaderNodeDefinition;
            }
            throw new MatParseException(trim + " is not a declared as Shader Node Definition", statement);
        } catch (AssetNotFoundException e10) {
            throw new MatParseException("Couldn't find " + trim2, statement, e10);
        }
    }

    public MatParam findMatParam(String str) {
        for (MatParam matParam : this.materialDef.getMaterialParams()) {
            if (str.equals(matParam.getName())) {
                return matParam;
            }
        }
        return null;
    }

    public ShaderNodeVariable findNodeOutput(List<ShaderNodeVariable> list, String str) {
        ShaderNodeVariable shaderNodeVariable = null;
        for (ShaderNodeVariable shaderNodeVariable2 : list) {
            if (shaderNodeVariable2.getName().equals(str)) {
                shaderNodeVariable = shaderNodeVariable2;
            }
        }
        return shaderNodeVariable;
    }

    public UniformBinding findWorldParam(String str) {
        for (UniformBinding uniformBinding : this.techniqueDef.getWorldBindings()) {
            if (str.equals(uniformBinding.toString())) {
                return uniformBinding;
            }
        }
        return null;
    }

    public String fixSamplerType(String str, String str2) {
        for (String str3 : str2.split("\\|")) {
            if (str.equals(str3)) {
                return str3;
            }
        }
        return null;
    }

    public String mergeConditions(String str, String str2, String str3) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return "(" + str + ") " + str3 + " (" + str2 + ")";
    }

    public VariableMapping parseMapping(Statement statement, boolean[] zArr) throws MatParseException {
        VariableMapping variableMapping = new VariableMapping();
        String[] split = statement.getLine().split(s.f32937c);
        char c10 = 0;
        String[] split2 = split[0].split("=");
        checkMappingFormat(split2, statement);
        ShaderNodeVariable[] shaderNodeVariableArr = new ShaderNodeVariable[2];
        String[] strArr = new String[2];
        String str = null;
        int i10 = 0;
        while (true) {
            if (i10 >= split2.length) {
                break;
            }
            String trim = split2[i10].trim();
            if (trim.contains("%%")) {
                str = trim.substring(2, trim.length() - 2);
            } else {
                String[] split3 = trim.split("\\.");
                if (zArr[i10]) {
                    if (split3.length <= 3) {
                        shaderNodeVariableArr[i10] = new ShaderNodeVariable("", split3[c10].trim(), split3[1].trim());
                    }
                    if (split3.length == 3) {
                        strArr[i10] = split3[2].trim();
                    }
                } else {
                    if (split3.length <= 2) {
                        shaderNodeVariableArr[i10] = new ShaderNodeVariable("", split3[0].trim());
                    }
                    if (split3.length == 2) {
                        strArr[i10] = split3[1].trim();
                    }
                }
            }
            i10++;
            c10 = 0;
        }
        variableMapping.setLeftVariable(shaderNodeVariableArr[c10]);
        String str2 = strArr[c10];
        if (str2 == null) {
            str2 = "";
        }
        variableMapping.setLeftSwizzling(str2);
        if (str != null) {
            variableMapping.setRightExpression(str);
        } else {
            variableMapping.setRightVariable(shaderNodeVariableArr[1]);
            String str3 = strArr[1];
            variableMapping.setRightSwizzling(str3 != null ? str3 : "");
        }
        if (split.length > 1) {
            extractCondition(split[1], statement);
            variableMapping.setCondition(this.conditionParser.getFormattedExpression());
        }
        return variableMapping;
    }

    public void readFragmentShaderNodes(List<Statement> list) throws IOException {
        readNodes(list);
    }

    public VariableMapping readInputMapping(Statement statement) throws MatParseException {
        try {
            VariableMapping parseMapping = parseMapping(statement, IM_HAS_NAME_SPACE);
            ShaderNodeDefinition definition = this.shaderNode.getDefinition();
            ShaderNodeVariable leftVariable = parseMapping.getLeftVariable();
            ShaderNodeVariable rightVariable = parseMapping.getRightVariable();
            String rightExpression = parseMapping.getRightExpression();
            if (!updateVariableFromList(leftVariable, definition.getInputs())) {
                throw new MatParseException(leftVariable.getName() + " is not an input variable of " + definition.getName(), statement);
            }
            if (leftVariable.getType().startsWith("sampler") && (rightVariable == null || !rightVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_MAT_PARAM))) {
                throw new MatParseException("Samplers can only be assigned to MatParams", statement);
            }
            if (rightVariable == null && rightExpression == null) {
                throw new MatParseException("The mapping doesn't have a right variable or a right expression.", statement);
            }
            if (rightVariable == null) {
                return parseMapping;
            }
            if (rightVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_GLOBAL)) {
                rightVariable.setType("vec4");
                storeGlobal(rightVariable, statement);
            } else if (rightVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_VERTEX_ATTRIBUTE)) {
                if (definition.getType() == Shader.ShaderType.Fragment) {
                    throw new MatParseException("Cannot have an attribute as input in a fragment shader" + rightVariable.getName(), statement);
                }
                updateVarFromAttributes(parseMapping.getRightVariable(), parseMapping);
                storeAttribute(parseMapping.getRightVariable());
            } else if (rightVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_MAT_PARAM)) {
                MatParam findMatParam = findMatParam(rightVariable.getName());
                if (findMatParam == null) {
                    throw new MatParseException("Could not find a Material Parameter named " + rightVariable.getName(), statement);
                }
                if (definition.getType() == Shader.ShaderType.Vertex) {
                    if (updateRightFromUniforms(findMatParam, parseMapping, this.vertexDeclaredUniforms, statement)) {
                        updateMaterialTextureType(statement, parseMapping, leftVariable, findMatParam);
                        storeVertexUniform(parseMapping.getRightVariable());
                    }
                } else if (updateRightFromUniforms(findMatParam, parseMapping, this.fragmentDeclaredUniforms, statement)) {
                    updateMaterialTextureType(statement, parseMapping, leftVariable, findMatParam);
                    storeFragmentUniform(parseMapping.getRightVariable());
                }
            } else if (rightVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_WORLD_PARAM)) {
                UniformBinding findWorldParam = findWorldParam(rightVariable.getName());
                if (findWorldParam == null) {
                    throw new MatParseException("Could not find a World Parameter named " + rightVariable.getName(), statement);
                }
                if (definition.getType() == Shader.ShaderType.Vertex) {
                    if (updateRightFromUniforms(findWorldParam, parseMapping, this.vertexDeclaredUniforms)) {
                        storeVertexUniform(parseMapping.getRightVariable());
                    }
                } else if (updateRightFromUniforms(findWorldParam, parseMapping, this.fragmentDeclaredUniforms)) {
                    storeFragmentUniform(parseMapping.getRightVariable());
                }
            } else {
                ShaderNode shaderNode = this.nodes.get(rightVariable.getNameSpace());
                if (shaderNode == null) {
                    throw new MatParseException("Undeclared node" + rightVariable.getNameSpace() + ". Make sure this node is declared before the current node", statement);
                }
                ShaderNodeVariable findNodeOutput = findNodeOutput(shaderNode.getDefinition().getOutputs(), rightVariable.getName());
                if (findNodeOutput == null) {
                    throw new MatParseException("Cannot find output variable" + rightVariable.getName() + " form ShaderNode " + shaderNode.getName(), statement);
                }
                rightVariable.setNameSpace(shaderNode.getName());
                rightVariable.setType(findNodeOutput.getType());
                rightVariable.setMultiplicity(findNodeOutput.getMultiplicity());
                parseMapping.setRightVariable(rightVariable);
                storeVaryings(shaderNode, parseMapping.getRightVariable());
            }
            checkTypes(parseMapping, statement);
            return parseMapping;
        } catch (Exception e10) {
            throw new MatParseException("Unexpected mapping format", statement, e10);
        }
    }

    public void readNodes(List<Statement> list) throws IOException {
        if (this.techniqueDef.getShaderNodes() == null) {
            this.techniqueDef.setShaderNodes(new ArrayList());
            this.techniqueDef.setShaderGenerationInfo(new ShaderGenerationInfo());
        }
        for (Statement statement : list) {
            String[] split = statement.getLine().split("[ \\{]");
            if (!statement.getLine().startsWith("ShaderNode ")) {
                throw new MatParseException("ShaderNode", split[0], statement);
            }
            String trim = statement.getLine().substring(10).trim();
            if (this.nodes == null) {
                this.nodes = new HashMap();
            }
            if (this.nodes.containsKey(trim)) {
                throw new MatParseException("ShaderNode " + trim + " is already defined", statement);
            }
            ShaderNode shaderNode = new ShaderNode();
            this.shaderNode = shaderNode;
            shaderNode.setName(trim);
            this.techniqueDef.getShaderGenerationInfo().getUnusedNodes().add(trim);
            readShaderNode(statement.getContents());
            this.nodes.put(trim, this.shaderNode);
            this.techniqueDef.getShaderNodes().add(this.shaderNode);
        }
    }

    public List<ShaderNodeDefinition> readNodesDefinitions(List<Statement> list, ShaderNodeDefinitionKey shaderNodeDefinitionKey) throws IOException {
        for (Statement statement : list) {
            String[] split = statement.getLine().split("[ \\{]");
            if (statement.getLine().startsWith("ShaderNodeDefinition")) {
                String trim = statement.getLine().substring(20).trim();
                if (!getNodeDefinitions().containsKey(trim)) {
                    this.shaderNodeDefinition = new ShaderNodeDefinition();
                    getNodeDefinitions().put(trim, this.shaderNodeDefinition);
                    this.shaderNodeDefinition.setName(trim);
                    this.shaderNodeDefinition.setPath(shaderNodeDefinitionKey.getName());
                    readShaderNodeDefinition(statement.getContents(), shaderNodeDefinitionKey);
                }
            } else {
                throw new MatParseException("ShaderNodeDefinition", split[0], statement);
            }
        }
        return new ArrayList(getNodeDefinitions().values());
    }

    public VariableMapping readOutputMapping(Statement statement) throws MatParseException {
        try {
            VariableMapping parseMapping = parseMapping(statement, OM_HAS_NAME_SPACE);
            ShaderNodeDefinition definition = this.shaderNode.getDefinition();
            ShaderNodeVariable leftVariable = parseMapping.getLeftVariable();
            ShaderNodeVariable rightVariable = parseMapping.getRightVariable();
            if (leftVariable.getType().startsWith("sampler") || rightVariable.getType().startsWith("sampler")) {
                throw new MatParseException("Samplers can only be inputs", statement);
            }
            if (!leftVariable.getNameSpace().equals(ShaderGenerator.NAME_SPACE_GLOBAL)) {
                throw new MatParseException("Only Global nameSpace is allowed for outputMapping, got" + leftVariable.getNameSpace(), statement);
            }
            leftVariable.setType("vec4");
            storeGlobal(leftVariable, statement);
            if (updateVariableFromList(rightVariable, definition.getOutputs())) {
                checkTypes(parseMapping, statement);
                return parseMapping;
            }
            throw new MatParseException(rightVariable.getName() + " is not an output variable of " + definition.getName(), statement);
        } catch (Exception e10) {
            throw new MatParseException("Unexpected mapping format", statement, e10);
        }
    }

    public void readShaderNode(List<Statement> list) throws IOException {
        List<String> unusedNodes = this.techniqueDef.getShaderGenerationInfo().getUnusedNodes();
        for (Statement statement : list) {
            String line = statement.getLine();
            String[] split = statement.getLine().split("[ \\{]");
            if (line.startsWith("Definition")) {
                ShaderNodeDefinition findDefinition = findDefinition(statement);
                this.shaderNode.setDefinition(findDefinition);
                if (findDefinition.isNoOutput()) {
                    unusedNodes.remove(this.shaderNode.getName());
                }
            } else if (line.startsWith("Condition")) {
                extractCondition(line.substring(line.lastIndexOf(s.f32937c) + 1).trim(), statement);
                this.shaderNode.setCondition(this.conditionParser.getFormattedExpression());
            } else if (line.startsWith("InputMappings")) {
                Iterator<Statement> it = statement.getContents().iterator();
                while (it.hasNext()) {
                    VariableMapping readInputMapping = readInputMapping(it.next());
                    ShaderNodeVariable rightVariable = readInputMapping.getRightVariable();
                    if (rightVariable != null) {
                        unusedNodes.remove(rightVariable.getNameSpace());
                    }
                    this.shaderNode.getInputMapping().add(readInputMapping);
                }
            } else {
                if (!line.startsWith("OutputMappings")) {
                    throw new MatParseException("ShaderNodeDefinition", split[0], statement);
                }
                Iterator<Statement> it2 = statement.getContents().iterator();
                while (it2.hasNext()) {
                    VariableMapping readOutputMapping = readOutputMapping(it2.next());
                    unusedNodes.remove(this.shaderNode.getName());
                    this.shaderNode.getOutputMapping().add(readOutputMapping);
                }
            }
        }
    }

    public void readShaderNodeDefinition(List<Statement> list, ShaderNodeDefinitionKey shaderNodeDefinitionKey) throws IOException {
        boolean z10 = shaderNodeDefinitionKey != null && shaderNodeDefinitionKey.isLoadDocumentation();
        for (Statement statement : list) {
            try {
                String[] split = statement.getLine().split("[ \\{]");
                String line = statement.getLine();
                if (line.startsWith(FileRequest.FIELD_TYPE)) {
                    this.shaderNodeDefinition.setType(Shader.ShaderType.valueOf(line.substring(line.lastIndexOf(58) + 1).trim()));
                } else if (line.startsWith("Shader ")) {
                    readShaderStatement(statement);
                    this.shaderNodeDefinition.getShadersLanguage().add(this.shaderLanguage);
                    this.shaderNodeDefinition.getShadersPath().add(this.shaderName);
                } else if (line.startsWith("Documentation")) {
                    if (z10) {
                        String str = "";
                        Iterator<Statement> it = statement.getContents().iterator();
                        while (it.hasNext()) {
                            str = str + "\n" + it.next().getLine();
                        }
                        this.shaderNodeDefinition.setDocumentation(str);
                    }
                } else if (line.startsWith("Input")) {
                    this.varNames.clear();
                    for (Statement statement2 : statement.getContents()) {
                        try {
                            this.shaderNodeDefinition.getInputs().add(readVariable(statement2));
                        } catch (RuntimeException e10) {
                            throw new MatParseException(e10.getMessage(), statement2, e10);
                        }
                    }
                } else {
                    if (!line.startsWith("Output")) {
                        throw new MatParseException("one of Type, Shader, Documentation, Input, Output", split[0], statement);
                    }
                    this.varNames.clear();
                    for (Statement statement3 : statement.getContents()) {
                        try {
                            if (statement3.getLine().trim().equals("None")) {
                                this.shaderNodeDefinition.setNoOutput(true);
                            } else {
                                this.shaderNodeDefinition.getOutputs().add(readVariable(statement3));
                            }
                        } catch (RuntimeException e11) {
                            throw new MatParseException(e11.getMessage(), statement3, e11);
                        }
                    }
                }
            } catch (RuntimeException e12) {
                throw new MatParseException(e12.getMessage(), statement, e12);
            }
        }
    }

    public void readShaderStatement(Statement statement) throws IOException {
        String[] split = statement.getLine().split(s.f32937c);
        if (split.length != 2) {
            throw new MatParseException("Shader statement syntax incorrect", statement);
        }
        String[] split2 = split[0].split("\\p{javaWhitespace}+");
        if (split2.length != 2) {
            throw new MatParseException("Shader statement syntax incorrect", statement);
        }
        this.shaderName = split[1].trim();
        this.shaderLanguage = split2[1];
    }

    public ShaderNodeVariable readVariable(Statement statement) throws IOException {
        String[] split = statement.getLine().trim().replaceAll("\\s*\\[", "[").split("\\s");
        if (split.length > 3) {
            throw new MatParseException("More than 3 arguments", split.length + "", statement);
        }
        String str = null;
        String str2 = split.length > 2 ? split[2] : null;
        String str3 = split[1];
        String str4 = split[0];
        if (str3.contains("[")) {
            String[] split2 = split[1].split("\\[");
            str3 = split2[0].trim();
            str = split2[1].replaceAll("\\]", "").trim();
        }
        if (this.varNames.contains(str3)) {
            throw new MatParseException("Duplicate variable name " + str3, statement);
        }
        this.varNames.add(str3);
        ShaderNodeVariable shaderNodeVariable = new ShaderNodeVariable(str4, "", str3, str);
        shaderNodeVariable.setDefaultValue(str2);
        return shaderNodeVariable;
    }

    public void readVertexShaderNodes(List<Statement> list) throws IOException {
        this.attributes.clear();
        readNodes(list);
    }

    public void setAssetManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    public void setMaterialDef(MaterialDef materialDef) {
        this.materialDef = materialDef;
    }

    public void setTechniqueDef(TechniqueDef techniqueDef) {
        this.techniqueDef = techniqueDef;
    }

    public void storeAttribute(ShaderNodeVariable shaderNodeVariable) {
        storeVariable(shaderNodeVariable, this.techniqueDef.getShaderGenerationInfo().getAttributes());
    }

    public void storeFragmentUniform(ShaderNodeVariable shaderNodeVariable) {
        storeVariable(shaderNodeVariable, this.techniqueDef.getShaderGenerationInfo().getFragmentUniforms());
    }

    public void storeGlobal(ShaderNodeVariable shaderNodeVariable, Statement statement) throws MatParseException {
        shaderNodeVariable.setShaderOutput(true);
        ShaderGenerationInfo shaderGenerationInfo = this.techniqueDef.getShaderGenerationInfo();
        ShaderNodeDefinition definition = this.shaderNode.getDefinition();
        if (definition.getType() != Shader.ShaderType.Vertex) {
            if (definition.getType() == Shader.ShaderType.Fragment) {
                storeVariable(shaderNodeVariable, shaderGenerationInfo.getFragmentGlobals());
                return;
            }
            return;
        }
        ShaderNodeVariable vertexGlobal = shaderGenerationInfo.getVertexGlobal();
        if (vertexGlobal == null) {
            shaderGenerationInfo.setVertexGlobal(shaderNodeVariable);
        } else {
            if (vertexGlobal.getName().equals(shaderNodeVariable.getName())) {
                return;
            }
            throw new MatParseException("A global output is already defined for the vertex shader: " + vertexGlobal.getName() + ". vertex shader can only have one global output", statement);
        }
    }

    public void storeVariable(ShaderNodeVariable shaderNodeVariable, List<ShaderNodeVariable> list) {
        Iterator<ShaderNodeVariable> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getName().equals(shaderNodeVariable.getName())) {
                return;
            }
        }
        list.add(shaderNodeVariable);
    }

    public void storeVaryings(ShaderNode shaderNode, ShaderNodeVariable shaderNodeVariable) {
        shaderNodeVariable.setShaderOutput(true);
        ShaderNodeDefinition definition = shaderNode.getDefinition();
        ShaderNodeDefinition definition2 = this.shaderNode.getDefinition();
        if (definition.getType() == Shader.ShaderType.Vertex && definition2.getType() == Shader.ShaderType.Fragment) {
            String str = shaderNode.getName() + "." + shaderNodeVariable.getName();
            DeclaredVariable declaredVariable = this.varyings.get(str);
            if (declaredVariable == null) {
                this.techniqueDef.getShaderGenerationInfo().getVaryings().add(shaderNodeVariable);
                declaredVariable = new DeclaredVariable(shaderNodeVariable);
                this.varyings.put(str, declaredVariable);
            }
            declaredVariable.addNode(this.shaderNode);
            Iterator<VariableMapping> it = shaderNode.getInputMapping().iterator();
            while (it.hasNext()) {
                ShaderNodeVariable leftVariable = it.next().getLeftVariable();
                if (leftVariable.getName().equals(shaderNodeVariable.getName())) {
                    leftVariable.setShaderOutput(true);
                }
            }
        }
    }

    public void storeVertexUniform(ShaderNodeVariable shaderNodeVariable) {
        storeVariable(shaderNodeVariable, this.techniqueDef.getShaderGenerationInfo().getVertexUniforms());
    }

    public boolean updateRightFromUniforms(UniformBinding uniformBinding, VariableMapping variableMapping, Map<String, DeclaredVariable> map) {
        ShaderNodeVariable rightVariable = variableMapping.getRightVariable();
        String obj = uniformBinding.toString();
        DeclaredVariable declaredVariable = map.get(obj);
        if (declaredVariable == null) {
            rightVariable.setType(uniformBinding.getGlslType());
            rightVariable.setName(obj);
            rightVariable.setPrefix("g_");
            DeclaredVariable declaredVariable2 = new DeclaredVariable(rightVariable);
            map.put(rightVariable.getName(), declaredVariable2);
            declaredVariable2.addNode(this.shaderNode);
            variableMapping.setRightVariable(rightVariable);
            return true;
        }
        declaredVariable.addNode(this.shaderNode);
        variableMapping.setRightVariable(declaredVariable.var);
        return false;
    }

    public void updateRightTypeFromLeftType(VariableMapping variableMapping) {
        String type = variableMapping.getLeftVariable().getType();
        int cardinality = ShaderUtils.getCardinality(type, variableMapping.getRightSwizzling());
        if (cardinality > 0) {
            if (cardinality == 1) {
                type = TypedValues.Custom.S_FLOAT;
            } else {
                type = "vec" + cardinality;
            }
        }
        variableMapping.getRightVariable().setType(type);
    }

    public void updateVarFromAttributes(ShaderNodeVariable shaderNodeVariable, VariableMapping variableMapping) {
        DeclaredVariable declaredVariable = this.attributes.get(shaderNodeVariable.getName());
        if (declaredVariable == null) {
            declaredVariable = new DeclaredVariable(shaderNodeVariable);
            this.attributes.put(shaderNodeVariable.getName(), declaredVariable);
            updateRightTypeFromLeftType(variableMapping);
        } else {
            variableMapping.setRightVariable(declaredVariable.var);
        }
        declaredVariable.addNode(this.shaderNode);
    }

    public boolean updateVariableFromList(ShaderNodeVariable shaderNodeVariable, List<ShaderNodeVariable> list) {
        for (ShaderNodeVariable shaderNodeVariable2 : list) {
            if (shaderNodeVariable2.getName().equals(shaderNodeVariable.getName())) {
                shaderNodeVariable.setType(shaderNodeVariable2.getType());
                shaderNodeVariable.setMultiplicity(shaderNodeVariable2.getMultiplicity());
                shaderNodeVariable.setNameSpace(this.shaderNode.getName());
                return true;
            }
        }
        return false;
    }

    public void readNodesDefinitions(List<Statement> list) throws IOException {
        readNodesDefinitions(list, new ShaderNodeDefinitionKey());
    }

    public boolean updateRightFromUniforms(MatParam matParam, VariableMapping variableMapping, Map<String, DeclaredVariable> map, Statement statement) throws MatParseException {
        ShaderNodeVariable leftVariable = variableMapping.getLeftVariable();
        ShaderNodeVariable rightVariable = variableMapping.getRightVariable();
        DeclaredVariable declaredVariable = map.get(matParam.getName());
        if (declaredVariable == null) {
            rightVariable.setType(matParam.getVarType().getGlslType());
            rightVariable.setName(matParam.getName());
            rightVariable.setPrefix("m_");
            if (leftVariable.getMultiplicity() != null) {
                if (matParam.getVarType().name().endsWith(Array.f73819J)) {
                    String multiplicity = leftVariable.getMultiplicity();
                    try {
                        Integer.parseInt(multiplicity);
                    } catch (NumberFormatException unused) {
                        if (findMatParam(multiplicity) != null) {
                            addDefine(multiplicity, VarType.Int);
                            multiplicity = multiplicity.toUpperCase();
                            leftVariable.setMultiplicity(multiplicity);
                            leftVariable.setCondition(mergeConditions(leftVariable.getCondition(), "defined(" + multiplicity + ")", "||"));
                        } else {
                            throw new MatParseException("Wrong multiplicity for variable" + leftVariable.getName() + ". " + multiplicity + " should be an int or a declared material parameter.", statement);
                        }
                    }
                    rightVariable.setMultiplicity(multiplicity);
                    rightVariable.setCondition(leftVariable.getCondition());
                } else {
                    throw new MatParseException(matParam.getName() + " is not of Array type", statement);
                }
            }
            DeclaredVariable declaredVariable2 = new DeclaredVariable(rightVariable);
            map.put(rightVariable.getName(), declaredVariable2);
            declaredVariable2.addNode(this.shaderNode);
            variableMapping.setRightVariable(rightVariable);
            return true;
        }
        declaredVariable.addNode(this.shaderNode);
        variableMapping.setRightVariable(declaredVariable.var);
        return false;
    }
}
