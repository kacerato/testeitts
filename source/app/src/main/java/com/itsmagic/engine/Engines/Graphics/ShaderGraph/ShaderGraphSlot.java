package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.annotations.Expose;

public class ShaderGraphSlot {

    @Expose
    public String name;

    @Expose
    public w stageOverride;

    @Expose
    public C type;

    public ShaderGraphSlot() {
    }

    public w a(w fallback) {
        w wVar = this.stageOverride;
        return wVar != null ? wVar : fallback;
    }

    public ShaderGraphSlot(String name, C type) {
        this.name = name;
        this.type = type;
    }

    public ShaderGraphSlot(String name, C type, w stageOverride) {
        this.name = name;
        this.type = type;
        this.stageOverride = stageOverride;
    }
}
