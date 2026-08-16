package com.jme3.shader;

import android.service.notification.Condition;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.Objects;
import w2.C15883c;

public class VariableMapping implements Savable, Cloneable {
    private String condition;
    private String leftSwizzling;
    private ShaderNodeVariable leftVariable;
    private String rightExpression;
    private String rightSwizzling;
    private ShaderNodeVariable rightVariable;

    public VariableMapping() {
        this.leftSwizzling = "";
        this.rightSwizzling = "";
    }

    public String getCondition() {
        return this.condition;
    }

    public String getLeftSwizzling() {
        return this.leftSwizzling;
    }

    public ShaderNodeVariable getLeftVariable() {
        return this.leftVariable;
    }

    public String getRightExpression() {
        return this.rightExpression;
    }

    public String getRightSwizzling() {
        return this.rightSwizzling;
    }

    public ShaderNodeVariable getRightVariable() {
        return this.rightVariable;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.leftVariable = (ShaderNodeVariable) capsule.readSavable("leftVariable", null);
        this.rightVariable = (ShaderNodeVariable) capsule.readSavable("rightVariable", null);
        this.rightExpression = capsule.readString("rightExpression", null);
        this.condition = capsule.readString(Condition.SCHEME, "");
        this.leftSwizzling = capsule.readString("leftSwizzling", "");
        this.rightSwizzling = capsule.readString("rightSwizzling", "");
    }

    public void setCondition(String str) {
        this.condition = str;
    }

    public void setLeftSwizzling(String str) {
        Objects.requireNonNull(str);
        this.leftSwizzling = str;
    }

    public void setLeftVariable(ShaderNodeVariable shaderNodeVariable) {
        this.leftVariable = shaderNodeVariable;
    }

    public void setRightExpression(String str) {
        this.rightExpression = str;
    }

    public void setRightSwizzling(String str) {
        Objects.requireNonNull(str);
        this.rightSwizzling = str;
    }

    public void setRightVariable(ShaderNodeVariable shaderNodeVariable) {
        this.rightVariable = shaderNodeVariable;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.leftVariable.toString());
        if (!this.leftSwizzling.isEmpty()) {
            sb2.append('.');
            sb2.append(this.leftSwizzling);
        }
        sb2.append(" = ");
        ShaderNodeVariable shaderNodeVariable = this.rightVariable;
        if (shaderNodeVariable != null) {
            sb2.append(shaderNodeVariable.getType());
            sb2.append(C15883c.f126249O);
            sb2.append(this.rightVariable.getNameSpace());
            sb2.append('.');
            sb2.append(this.rightVariable.getName());
            if (!this.rightSwizzling.isEmpty()) {
                sb2.append('.');
                sb2.append(this.rightSwizzling);
            }
        } else {
            String str = this.rightExpression;
            if (str != null) {
                sb2.append(str);
            }
        }
        String str2 = this.condition;
        if (str2 != null && !str2.isEmpty()) {
            sb2.append(" : ");
            sb2.append(this.condition);
        }
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.leftVariable, "leftVariable", (Savable) null);
        capsule.write(this.rightVariable, "rightVariable", (Savable) null);
        capsule.write(this.rightExpression, "rightExpression", (String) null);
        capsule.write(this.condition, Condition.SCHEME, "");
        capsule.write(this.leftSwizzling, "leftSwizzling", "");
        capsule.write(this.rightSwizzling, "rightSwizzling", "");
    }

    public VariableMapping m1300clone() throws CloneNotSupportedException {
        VariableMapping variableMapping = (VariableMapping) super.clone();
        variableMapping.leftVariable = this.leftVariable.m1299clone();
        ShaderNodeVariable shaderNodeVariable = this.rightVariable;
        if (shaderNodeVariable != null) {
            variableMapping.rightVariable = shaderNodeVariable.m1299clone();
        }
        return variableMapping;
    }

    public VariableMapping(ShaderNodeVariable shaderNodeVariable, String str, ShaderNodeVariable shaderNodeVariable2, String str2, String str3) {
        this.leftSwizzling = "";
        this.rightSwizzling = "";
        this.leftVariable = shaderNodeVariable;
        this.rightVariable = shaderNodeVariable2;
        this.condition = str3;
        Objects.requireNonNull(str);
        this.leftSwizzling = str;
        Objects.requireNonNull(str2);
        this.rightSwizzling = str2;
    }
}
