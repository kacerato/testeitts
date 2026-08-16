package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

@Deprecated
public class FloatPair implements Serializable {

    @Expose
    private String key;

    @Expose
    private float value;

    public FloatPair(String key, float value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public float b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(float value) {
        this.value = value;
    }
}
