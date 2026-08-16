package com.ardor3d.renderer.state.record;

import com.ardor3d.renderer.state.GLSLShaderObjectsState;
import com.google.common.collect.D2;
import java.util.Set;

public class ShaderObjectsStateRecord extends StateRecord {
    GLSLShaderObjectsState reference = null;
    public Set<Integer> enabledAttributes = D2.u();

    public GLSLShaderObjectsState getReference() {
        return this.reference;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.reference = null;
        this.enabledAttributes.clear();
    }

    public void setReference(GLSLShaderObjectsState gLSLShaderObjectsState) {
        this.reference = gLSLShaderObjectsState;
    }
}
