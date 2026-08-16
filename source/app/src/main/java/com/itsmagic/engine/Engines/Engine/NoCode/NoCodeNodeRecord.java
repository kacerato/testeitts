package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;

public class NoCodeNodeRecord {

    @Expose
    public JsonObject data;

    @Expose
    public String serializedType;

    public NoCodeNodeRecord() {
    }

    public NoCodeNodeRecord(String serializedType, JsonObject data) {
        this.serializedType = serializedType;
        this.data = data;
    }
}
