package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import java.io.Serializable;

@Deprecated
public class ColorPair implements Serializable {

    @Expose
    private String key;

    @Expose
    private ColorINT value;

    public ColorPair(String key, ColorINT value) {
        this.key = key;
        this.value = value;
    }

    public String a() {
        return this.key;
    }

    public ColorINT b() {
        return this.value;
    }

    public void c(String key) {
        this.key = key;
    }

    public void d(ColorINT value) {
        this.value = value;
    }
}
