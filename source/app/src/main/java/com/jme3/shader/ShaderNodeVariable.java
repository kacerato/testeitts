package com.jme3.shader;

import android.service.notification.Condition;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import w2.C15883c;

public class ShaderNodeVariable implements Savable, Cloneable {
    private String condition;
    private String defaultValue;
    private String multiplicity;
    private String name;
    private String nameSpace;
    private String prefix;
    private boolean shaderOutput;
    private String type;

    public ShaderNodeVariable(String str, String str2) {
        this.prefix = "";
        this.shaderOutput = false;
        this.name = str2;
        this.type = str;
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ShaderNodeVariable shaderNodeVariable = (ShaderNodeVariable) obj;
        String str = this.name;
        if (str != null ? !str.equals(shaderNodeVariable.name) : shaderNodeVariable.name != null) {
            return false;
        }
        String str2 = this.type;
        if (str2 != null ? !str2.equals(shaderNodeVariable.type) : shaderNodeVariable.type != null) {
            return false;
        }
        String str3 = this.prefix;
        if (str3 != null ? !str3.equals(shaderNodeVariable.prefix) : shaderNodeVariable.prefix != null) {
            return false;
        }
        String str4 = this.nameSpace;
        if (str4 != null ? !str4.equals(shaderNodeVariable.nameSpace) : shaderNodeVariable.nameSpace != null) {
            return false;
        }
        String str5 = this.condition;
        if (str5 != null ? !str5.equals(shaderNodeVariable.condition) : shaderNodeVariable.condition != null) {
            return false;
        }
        String str6 = this.multiplicity;
        String str7 = shaderNodeVariable.multiplicity;
        if (str6 == null) {
            if (str7 == null) {
                return true;
            }
        } else if (str6.equals(str7)) {
            return true;
        }
        return false;
    }

    public String getCondition() {
        return this.condition;
    }

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public String getMultiplicity() {
        return this.multiplicity;
    }

    public String getName() {
        return this.name;
    }

    public String getNameSpace() {
        return this.nameSpace;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (203 + (str != null ? str.hashCode() : 0)) * 29;
        String str2 = this.type;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 29;
        String str3 = this.prefix;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 29;
        String str4 = this.nameSpace;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 29;
        String str5 = this.condition;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 29;
        String str6 = this.multiplicity;
        return hashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public boolean isShaderOutput() {
        return this.shaderOutput;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", "");
        this.type = capsule.readString("type", "");
        this.prefix = capsule.readString("prefix", "");
        this.nameSpace = capsule.readString("nameSpace", "");
        this.condition = capsule.readString(Condition.SCHEME, null);
        this.shaderOutput = capsule.readBoolean("shaderOutput", false);
        this.multiplicity = capsule.readString("multiplicity", null);
        this.defaultValue = capsule.readString("defaultValue", null);
    }

    public void setCondition(String str) {
        this.condition = str;
    }

    public void setDefaultValue(String str) {
        this.defaultValue = str;
    }

    public void setMultiplicity(String str) {
        this.multiplicity = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNameSpace(String str) {
        this.nameSpace = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setShaderOutput(boolean z10) {
        this.shaderOutput = z10;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.type);
        sb2.append(C15883c.f126249O);
        if (this.nameSpace != null) {
            str = this.nameSpace + '.';
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(this.name);
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", "");
        capsule.write(this.type, "type", "");
        capsule.write(this.prefix, "prefix", "");
        capsule.write(this.nameSpace, "nameSpace", "");
        capsule.write(this.condition, Condition.SCHEME, (String) null);
        capsule.write(this.shaderOutput, "shaderOutput", false);
        capsule.write(this.multiplicity, "multiplicity", (String) null);
        capsule.write(this.defaultValue, "defaultValue", (String) null);
    }

    public ShaderNodeVariable m1299clone() throws CloneNotSupportedException {
        return (ShaderNodeVariable) super.clone();
    }

    public ShaderNodeVariable(String str, String str2, String str3, String str4) {
        this.prefix = "";
        this.shaderOutput = false;
        this.name = str3;
        this.nameSpace = str2;
        this.type = str;
        this.multiplicity = str4;
    }

    public ShaderNodeVariable(String str, String str2, String str3, String str4, String str5) {
        this(str, str2, str3, str4);
        this.prefix = str5;
    }

    public ShaderNodeVariable(String str, String str2, String str3) {
        this.prefix = "";
        this.shaderOutput = false;
        this.name = str3;
        this.nameSpace = str2;
        this.type = str;
    }
}
