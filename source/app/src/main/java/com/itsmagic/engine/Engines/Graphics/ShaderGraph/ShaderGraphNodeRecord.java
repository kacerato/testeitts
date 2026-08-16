package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;

public class ShaderGraphNodeRecord {

    @Expose
    public JsonObject data;

    @Expose
    public String serializedType;

    public ShaderGraphNodeRecord() {
    }

    public ShaderGraphNodeRecord(String serializedType, JsonObject data) {
        this.serializedType = serializedType;
        this.data = data;
    }
}
