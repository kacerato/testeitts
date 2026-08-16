package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import java.io.Serializable;

@Deprecated
public class QuaternionPair implements Serializable {

    @Expose
    private String key;

    @Expose
    private Quaternion value;

    public QuaternionPair(String key, Quaternion value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public Quaternion b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(Quaternion value) {
        this.value = value;
    }
}
