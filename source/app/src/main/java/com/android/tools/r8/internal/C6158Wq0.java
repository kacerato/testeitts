package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C6158Wq0 implements InterfaceC6044Uq0, Serializable {

    public final InterfaceC6044Uq0 f45553b;

    public volatile transient boolean f45554c;

    public transient Object f45555d;

    public C6158Wq0(InterfaceC6044Uq0 interfaceC6044Uq0) {
        interfaceC6044Uq0.getClass();
        this.f45553b = interfaceC6044Uq0;
    }

    @Override
    public final Object get() {
        if (!this.f45554c) {
            synchronized (this) {
                try {
                    if (!this.f45554c) {
                        Object obj = this.f45553b.get();
                        this.f45555d = obj;
                        this.f45554c = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f45555d;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder("Suppliers.memoize(");
        if (this.f45554c) {
            obj = "<supplier that returned " + this.f45555d + ">";
        } else {
            obj = this.f45553b;
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }
}
