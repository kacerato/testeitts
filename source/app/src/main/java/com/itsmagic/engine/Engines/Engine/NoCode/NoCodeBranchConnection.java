package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.annotations.Expose;

public class NoCodeBranchConnection {

    public static final int f78943a = -1;

    public static final int f78944b = -1;

    @Expose
    public String fromNodeId;

    @Expose
    public int fromSlot;

    @Expose
    public String toNodeId;

    @Expose
    public int toSlot;

    public NoCodeBranchConnection() {
        this.toSlot = -1;
    }

    public NoCodeBranchConnection(String fromNodeId, int fromSlot, String toNodeId) {
        this(fromNodeId, fromSlot, toNodeId, -1);
    }

    public NoCodeBranchConnection(String fromNodeId, int fromSlot, String toNodeId, int toSlot) {
        this.fromNodeId = fromNodeId;
        this.fromSlot = fromSlot;
        this.toNodeId = toNodeId;
        this.toSlot = toSlot;
    }
}
