package com.itsmagic.engine.Engines.Engine.ObjectOriented.Components;

import H6.g;
import com.google.gson.annotations.Expose;
import java.util.HashMap;
import java.util.Map;

public class InspectorMemory {

    @g
    @Expose
    private transient Map<String, String> dataBase = new HashMap();

    @g
    public void a() {
        if (this.dataBase == null) {
            this.dataBase = new HashMap();
        }
        this.dataBase.clear();
    }

    public InspectorMemory b() {
        InspectorMemory inspectorMemory = new InspectorMemory();
        inspectorMemory.dataBase = new HashMap(this.dataBase);
        return inspectorMemory;
    }

    @g
    public String c(String key) {
        if (this.dataBase == null) {
            this.dataBase = new HashMap();
        }
        return this.dataBase.get(key);
    }

    @g
    public void d(String key, String json) {
        if (this.dataBase == null) {
            this.dataBase = new HashMap();
        }
        if (this.dataBase.containsKey(key)) {
            this.dataBase.replace(key, json);
        } else {
            this.dataBase.put(key, json);
        }
    }
}
