package com.itsmagic.engine.Utils.ProjectFile;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class PFileSettings implements Serializable {

    public transient int f81541b;

    public transient boolean f81542c;

    @Expose
    public boolean open;

    public PFileSettings(int depth, boolean open) {
        this.f81541b = depth;
        this.open = open;
    }

    public PFileSettings clone() {
        return new PFileSettings(this.f81541b, this.open, this.f81542c);
    }

    public PFileSettings(int depth, boolean open, boolean shadowFile) {
        this.f81541b = depth;
        this.open = open;
        this.f81542c = shadowFile;
    }
}
