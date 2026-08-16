package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.annotations.Expose;

public class ShaderGraphNodeConnection {

    @Expose
    public String fromNodeId;

    @Expose
    public int fromSlot;

    @Expose
    public String toNodeId;

    @Expose
    public int toSlot;

    public ShaderGraphNodeConnection() {
    }

    public ShaderGraphNodeConnection(String fromNodeId, int fromSlot, String toNodeId, int toSlot) {
        this.fromNodeId = fromNodeId;
        this.fromSlot = fromSlot;
        this.toNodeId = toNodeId;
        this.toSlot = toSlot;
    }
}
