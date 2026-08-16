package com.itsmagic.engine.Engines.Engine.GC;

import Ic.C2634m;
import M9.a;
import M9.b;
import androidx.annotation.Keep;
import t3.C15377a;

public class SGCListenerObject extends C2634m {

    @Keep
    private b[] destroyListeners;

    public a destroyChannel() {
        return a.CPU;
    }

    public int destroyPriority() {
        return 0;
    }

    public b[] getDestroyListeners() {
        return this.destroyListeners;
    }

    public void setDestroyListeners(b[] destroyListeners) {
        if (!C15377a.f109719g.booleanValue() && this.destroyListeners != null) {
            throw new RuntimeException("Double define of destroy listeners");
        }
        this.destroyListeners = destroyListeners;
    }
}
