package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;

@Deprecated
public class Vector3Pair implements Serializable {

    @Expose
    private String key;

    @Expose
    private Vector3 value;

    public Vector3Pair(String key, Vector3 value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public Vector3 b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(Vector3 value) {
        this.value = value;
    }
}
