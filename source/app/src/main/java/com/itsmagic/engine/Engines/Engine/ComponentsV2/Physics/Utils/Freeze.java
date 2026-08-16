package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Utils;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class Freeze implements Serializable {

    @Expose
    public boolean PX;

    @Expose
    public boolean PY;

    @Expose
    public boolean PZ;

    @Expose
    public boolean RX;

    @Expose
    public boolean RY;

    @Expose
    public boolean RZ;

    public Freeze() {
        this.PX = false;
        this.PY = false;
        this.PZ = false;
        this.RX = false;
        this.RY = false;
        this.RZ = false;
    }

    public Freeze clone() {
        return new Freeze(this.PX, this.PY, this.PZ, this.RX, this.RY, this.RZ);
    }

    @NonNull
    public String toString() {
        return "PX:" + this.PX + ", PY:" + this.PY + ", PZ:" + this.PZ + ", RX:" + this.RX + ", RY:" + this.RY + ", RZ:" + this.RZ;
    }

    public Freeze(boolean PX, boolean PY, boolean PZ, boolean RX, boolean RY, boolean RZ) {
        this.PX = PX;
        this.PY = PY;
        this.PZ = PZ;
        this.RX = RX;
        this.RY = RY;
        this.RZ = RZ;
    }
}
