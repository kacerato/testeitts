package com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject;

import K8.f;
import Tc.b;
import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class GUID extends f implements Serializable {

    @Expose
    public String DUPLICABLE_GUID;

    @Expose
    private String SINGLE_GUID;

    public transient String f79284b;

    public JAVARuntime.GUID f79285c;

    public GUID() {
        this.DUPLICABLE_GUID = b.L();
        this.SINGLE_GUID = b.L();
        this.f79284b = b.L();
    }

    public GUID clone() {
        return new GUID(this.DUPLICABLE_GUID);
    }

    public boolean e(Ac.b other) {
        if (other == null) {
            return false;
        }
        return other.X(j());
    }

    public boolean f(String other) {
        return j().equals(other);
    }

    public boolean h(String other) {
        return k().equals(other);
    }

    public boolean i(String other) {
        return l().equals(other);
    }

    public String j() {
        String str = this.DUPLICABLE_GUID;
        if (str == null || str.isEmpty()) {
            this.DUPLICABLE_GUID = b.L();
        }
        return this.DUPLICABLE_GUID;
    }

    public String k() {
        String str = this.f79284b;
        if (str == null || str.isEmpty()) {
            this.f79284b = b.L();
        }
        return this.f79284b;
    }

    public String l() {
        String str = this.SINGLE_GUID;
        if (str == null || str.isEmpty()) {
            this.SINGLE_GUID = b.L();
        }
        return this.SINGLE_GUID;
    }

    public void m(GUID guid) {
        this.DUPLICABLE_GUID = guid.j();
        this.SINGLE_GUID = guid.l();
    }

    public void n(String DUPLICABLE_GUID) {
        this.DUPLICABLE_GUID = DUPLICABLE_GUID;
    }

    public void o(String INSTANCE_GUID) {
        this.f79284b = INSTANCE_GUID;
    }

    public JAVARuntime.GUID p() {
        JAVARuntime.GUID guid = this.f79285c;
        if (guid != null) {
            return guid;
        }
        JAVARuntime.GUID guid2 = new JAVARuntime.GUID(this);
        this.f79285c = guid2;
        return guid2;
    }

    public GUID(String DUPLICABLE_GUID) {
        this.DUPLICABLE_GUID = b.L();
        this.SINGLE_GUID = b.L();
        this.f79284b = b.L();
        this.DUPLICABLE_GUID = DUPLICABLE_GUID;
    }
}
