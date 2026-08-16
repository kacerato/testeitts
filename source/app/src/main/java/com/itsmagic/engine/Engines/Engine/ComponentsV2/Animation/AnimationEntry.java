package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation;

import T8.a;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Animation.d;
import java.io.Serializable;

public class AnimationEntry implements Serializable {

    public transient String f72959b;

    public transient d f72960c;

    @Expose
    public boolean compilled;

    @Expose
    public String file;

    @Expose
    public String origName;

    @Expose
    public a startState = a.Off;

    public AnimationEntry() {
    }

    public AnimationEntry clone() {
        AnimationEntry animationEntry = new AnimationEntry();
        animationEntry.file = this.file;
        animationEntry.origName = this.origName;
        animationEntry.compilled = this.compilled;
        animationEntry.startState = this.startState;
        return animationEntry;
    }

    public d b() {
        return this.f72960c;
    }

    public String c() {
        return this.origName;
    }

    public boolean d() {
        return this.compilled;
    }

    public void e(d animationInstance) {
        this.f72960c = animationInstance;
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
        this.f72960c = new d(data.h(), data.getFile());
        this.file = data.getFile();
        this.origName = data.getName();
        this.f72959b = this.file;
    }
}
