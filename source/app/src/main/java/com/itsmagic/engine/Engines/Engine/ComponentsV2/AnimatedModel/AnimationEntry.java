package com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Animation.d;
import java.io.Serializable;

public class AnimationEntry implements Serializable {

    public transient String f72923b;

    public transient d f72924c;

    @Expose
    private boolean compilled;

    @Expose
    private String file;

    @Expose
    private String origName;

    public AnimationEntry() {
    }

    public AnimationEntry clone() {
        AnimationEntry animationEntry = new AnimationEntry();
        animationEntry.file = this.file;
        animationEntry.origName = this.origName;
        animationEntry.compilled = this.compilled;
        return animationEntry;
    }

    public d b() {
        return this.f72924c;
    }

    public String c() {
        return this.origName;
    }

    public boolean d() {
        return this.compilled;
    }

    public void e(d animationInstance) {
        this.f72924c = animationInstance;
    }

    public void f(boolean compilled) {
        this.compilled = compilled;
    }

    public void g(String file) {
        this.file = file;
    }

    public String getFile() {
        return this.file;
    }

    public void h(String origName) {
        this.origName = origName;
    }

    public AnimationEntry(String file) {
        this.file = file;
    }

    public AnimationEntry(d data) {
        data.getClass();
        this.f72924c = new d(data.h(), data.getFile());
        this.file = data.getFile();
        this.origName = data.getName();
        this.f72923b = this.file;
    }
}
