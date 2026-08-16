package com.jme3.shader;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.shader.Shader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class ShaderNodeDefinition implements Savable {
    private String documentation;
    private String name;
    private Shader.ShaderType type;
    private List<String> shadersLanguage = new ArrayList();
    private List<String> shadersPath = new ArrayList();
    private List<ShaderNodeVariable> inputs = new ArrayList();
    private List<ShaderNodeVariable> outputs = new ArrayList();
    private String path = null;
    private boolean noOutput = false;

    public ShaderNodeDefinition(String str, Shader.ShaderType shaderType, String str2, String str3) {
        this.name = str;
        this.type = shaderType;
        this.shadersLanguage.add(str3);
        this.shadersPath.add(str2);
    }

    public String getDocumentation() {
        return this.documentation;
    }

    public List<ShaderNodeVariable> getInputs() {
        return this.inputs;
    }

    public String getName() {
        return this.name;
    }

    public List<ShaderNodeVariable> getOutputs() {
        return this.outputs;
    }

    public String getPath() {
        return this.path;
    }

    public List<String> getShadersLanguage() {
        return this.shadersLanguage;
    }

    public List<String> getShadersPath() {
        return this.shadersPath;
    }

    public Shader.ShaderType getType() {
        return this.type;
    }

    public boolean isNoOutput() {
        return this.noOutput;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", "");
        String[] readStringArray = capsule.readStringArray("shadersLanguage", null);
        if (readStringArray != null) {
            this.shadersLanguage = Arrays.asList(readStringArray);
        } else {
            this.shadersLanguage = new ArrayList();
        }
        String[] readStringArray2 = capsule.readStringArray("shadersPath", null);
        if (readStringArray2 != null) {
            this.shadersPath = Arrays.asList(readStringArray2);
        } else {
            this.shadersPath = new ArrayList();
        }
        this.type = (Shader.ShaderType) capsule.readEnum("type", Shader.ShaderType.class, null);
        this.inputs = capsule.readSavableArrayList("inputs", new ArrayList());
        this.outputs = capsule.readSavableArrayList("outputs", new ArrayList());
    }

    public void setDocumentation(String str) {
        this.documentation = str;
    }

    public void setInputs(List<ShaderNodeVariable> list) {
        this.inputs = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNoOutput(boolean z10) {
        this.noOutput = z10;
    }

    public void setOutputs(List<ShaderNodeVariable> list) {
        this.outputs = list;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setType(Shader.ShaderType shaderType) {
        this.type = shaderType;
    }

    public String toString() {
        return "\nShaderNodeDefinition{\nname=" + this.name + "\ntype=" + ((Object) this.type) + "\nshaderPath=" + ((Object) this.shadersPath) + "\nshaderLanguage=" + ((Object) this.shadersLanguage) + "\ndocumentation=" + this.documentation + "\ninputs=" + ((Object) this.inputs) + ",\noutputs=" + ((Object) this.outputs) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", "");
        String[] strArr = new String[this.shadersLanguage.size()];
        capsule.write((String[]) this.shadersLanguage.toArray(strArr), "shadersLanguage", (String[]) null);
        capsule.write((String[]) this.shadersPath.toArray(strArr), "shadersPath", (String[]) null);
        capsule.write(this.type, "type", (Enum) null);
        capsule.writeSavableArrayList((ArrayList) this.inputs, "inputs", new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.outputs, "outputs", new ArrayList());
    }

    public ShaderNodeDefinition() {
    }
}
