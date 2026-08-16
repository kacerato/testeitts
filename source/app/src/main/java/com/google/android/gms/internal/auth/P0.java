package com.google.android.gms.internal.auth;

import java.io.Serializable;
import javax.annotation.CheckForNull;

public final class P0 implements Serializable, O0 {

    public final O0 f61646b;

    public volatile transient boolean f61647c;

    @CheckForNull
    public transient Object f61648d;

    public P0(O0 o02) {
        this.f61646b = o02;
    }

    @Override
    public final Object N1() {
        if (!this.f61647c) {
            synchronized (this) {
                try {
                    if (!this.f61647c) {
                        Object N12 = this.f61646b.N1();
                        this.f61648d = N12;
                        this.f61647c = true;
                        return N12;
                    }
                } finally {
                }
            }
        }
        return this.f61648d;
    }

    public final String toString() {
        Object obj;
        if (this.f61647c) {
            obj = "<supplier that returned " + String.valueOf(this.f61648d) + ">";
        } else {
            obj = this.f61646b;
        }
        return "Suppliers.memoize(" + obj.toString() + ")";
    }
}
