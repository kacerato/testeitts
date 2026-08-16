package com.ardor3d.renderer.state.record;

import com.ardor3d.renderer.state.VertexProgramState;

public class VertexProgramStateRecord extends StateRecord {
    VertexProgramState reference = null;

    public VertexProgramState getReference() {
        return this.reference;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.reference = null;
    }

    public void setReference(VertexProgramState vertexProgramState) {
        this.reference = vertexProgramState;
    }
}
