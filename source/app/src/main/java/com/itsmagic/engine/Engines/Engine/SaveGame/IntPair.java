package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

@Deprecated
public class IntPair implements Serializable {

    @Expose
    private String key;

    @Expose
    private int value;

    public IntPair(String key, int value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public int b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(int value) {
        this.value = value;
    }
}
