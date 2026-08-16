package com.jme3.shader;

import android.service.notification.Condition;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShaderNode implements Savable, Cloneable {
    private String condition;
    private ShaderNodeDefinition definition;
    private String name;
    private List<VariableMapping> inputMapping = new ArrayList();
    private List<VariableMapping> outputMapping = new ArrayList();

    public ShaderNode(String str, ShaderNodeDefinition shaderNodeDefinition, String str2) {
        this.name = str;
        this.definition = shaderNodeDefinition;
        this.condition = str2;
    }

    public String getCondition() {
        return this.condition;
    }

    public ShaderNodeDefinition getDefinition() {
        return this.definition;
    }

    public List<VariableMapping> getInputMapping() {
        return this.inputMapping;
    }

    public String getName() {
        return this.name;
    }

    public List<VariableMapping> getOutputMapping() {
        return this.outputMapping;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", "");
        this.definition = (ShaderNodeDefinition) capsule.readSavable("definition", null);
        this.condition = capsule.readString(Condition.SCHEME, null);
        this.inputMapping = capsule.readSavableArrayList("inputMapping", new ArrayList());
        this.outputMapping = capsule.readSavableArrayList("outputMapping", new ArrayList());
    }

    public void setCondition(String str) {
        this.condition = str;
    }

    public void setDefinition(ShaderNodeDefinition shaderNodeDefinition) {
        this.definition = shaderNodeDefinition;
    }

    public void setInputMapping(List<VariableMapping> list) {
        this.inputMapping = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOutputMapping(List<VariableMapping> list) {
        this.outputMapping = list;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ShaderNode:");
        sb2.append("\n\tname=");
        sb2.append(this.name);
        sb2.append("\n\tdefinition=");
        sb2.append(this.definition.getName());
        sb2.append("\n\tcondition=");
        sb2.append(this.condition);
        if (!this.inputMapping.isEmpty()) {
            sb2.append("\n\tinputMapping:\n");
            for (VariableMapping variableMapping : this.inputMapping) {
                sb2.append("\t\t");
                sb2.append((Object) variableMapping);
                sb2.append('\n');
            }
        }
        if (!this.outputMapping.isEmpty()) {
            sb2.append("\n\toutputMapping:\n");
            for (VariableMapping variableMapping2 : this.outputMapping) {
                sb2.append("\t\t");
                sb2.append((Object) variableMapping2);
                sb2.append('\n');
            }
        }
        if (sb2.charAt(sb2.length() - 1) == '\n') {
            sb2.delete(sb2.length() - 1, sb2.length());
        }
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", "");
        capsule.write(this.definition, "definition", (Savable) null);
        capsule.write(this.condition, Condition.SCHEME, (String) null);
        capsule.writeSavableArrayList((ArrayList) this.inputMapping, "inputMapping", new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.outputMapping, "outputMapping", new ArrayList());
    }

    public ShaderNode m1298clone() throws CloneNotSupportedException {
        ShaderNode shaderNode = (ShaderNode) super.clone();
        shaderNode.definition = this.definition;
        shaderNode.inputMapping = new ArrayList();
        Iterator<VariableMapping> it = this.inputMapping.iterator();
        while (it.hasNext()) {
            shaderNode.inputMapping.add(it.next().m1300clone());
        }
        shaderNode.outputMapping = new ArrayList();
        Iterator<VariableMapping> it2 = this.outputMapping.iterator();
        while (it2.hasNext()) {
            shaderNode.outputMapping.add(it2.next().m1300clone());
        }
        return shaderNode;
    }

    public ShaderNode() {
    }
}
