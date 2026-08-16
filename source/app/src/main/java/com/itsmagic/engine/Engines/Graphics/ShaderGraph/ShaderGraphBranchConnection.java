package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.annotations.Expose;

public class ShaderGraphBranchConnection {

    @Expose
    public String fromNodeId;

    @Expose
    public int fromSlot;

    @Expose
    public String toNodeId;

    public ShaderGraphBranchConnection() {
    }

    public ShaderGraphBranchConnection(String fromNodeId, int fromSlot, String toNodeId) {
        this.fromNodeId = fromNodeId;
        this.fromSlot = fromSlot;
        this.toNodeId = toNodeId;
    }
}
