package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

@Deprecated
public class StringPair implements Serializable {

    @Expose
    private String key;

    @Expose
    private String value;

    public StringPair(String key, String value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public String b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(String value) {
        this.value = value;
    }
}
