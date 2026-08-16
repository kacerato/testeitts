package com.itsmagic.engine.Engines.Engine.Vector;

import Ic.C2634m;
import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class IVector2 extends C2634m implements Serializable {

    @Expose
    public int f79834x;

    @Expose
    public int f79835y;

    public IVector2() {
        this.f79835y = 0;
        this.f79834x = 0;
    }

    public IVector2(int a10) {
        this.f79835y = a10;
        this.f79834x = a10;
    }

    public IVector2(int x10, int y10) {
        this.f79834x = x10;
        this.f79835y = y10;
    }
}
