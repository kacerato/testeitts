package com.google.android.gms.internal.auth;

import javax.annotation.CheckForNull;

public final class R0 implements O0 {

    public static final O0 f61658d = new O0() {
        @Override
        public final Object N1() {
            throw new IllegalStateException();
        }
    };

    public volatile O0 f61659b;

    @CheckForNull
    public Object f61660c;

    public R0(O0 o02) {
        this.f61659b = o02;
    }

    @Override
    public final Object N1() {
        O0 o02 = this.f61659b;
        O0 o03 = f61658d;
        if (o02 != o03) {
            synchronized (this) {
                try {
                    if (this.f61659b != o03) {
                        Object N12 = this.f61659b.N1();
                        this.f61660c = N12;
                        this.f61659b = o03;
                        return N12;
                    }
                } finally {
                }
            }
        }
        return this.f61660c;
    }

    public final String toString() {
        Object obj = this.f61659b;
        if (obj == f61658d) {
            obj = "<supplier that returned " + String.valueOf(this.f61660c) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }
}
