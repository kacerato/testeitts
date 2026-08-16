package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.io.Serializable;

@Deprecated
public class Vector2Pair implements Serializable {

    @Expose
    private String key;

    @Expose
    private Vector2 value;

    public Vector2Pair(String key, Vector2 value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public Vector2 b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(Vector2 value) {
        this.value = value;
    }
}
