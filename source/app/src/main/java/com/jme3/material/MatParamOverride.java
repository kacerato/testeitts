package com.jme3.material;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.shader.VarType;
import java.io.IOException;

public final class MatParamOverride extends MatParam {
    private boolean enabled;

    public MatParamOverride() {
        this.enabled = true;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj) && this.enabled == ((MatParamOverride) obj).enabled;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 59) + (this.enabled ? 1 : 0);
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        if (capsule.readBoolean("isNull", false)) {
            setValue(null);
        }
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        if (this.value == null) {
            capsule.write(true, "isNull", false);
        }
    }

    public MatParamOverride(VarType varType, String str, Object obj) {
        super(varType, str, obj);
        this.enabled = true;
    }
}
