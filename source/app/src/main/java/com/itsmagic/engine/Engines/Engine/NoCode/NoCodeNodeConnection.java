package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.annotations.Expose;

public class NoCodeNodeConnection {

    @Expose
    public String fromNodeId;

    @Expose
    public int fromSlot;

    @Expose
    public String toNodeId;

    @Expose
    public int toSlot;

    public NoCodeNodeConnection() {
    }

    public NoCodeNodeConnection(String fromNodeId, int fromSlot, String toNodeId, int toSlot) {
        this.fromNodeId = fromNodeId;
        this.fromSlot = fromSlot;
        this.toNodeId = toNodeId;
        this.toSlot = toSlot;
    }
}
