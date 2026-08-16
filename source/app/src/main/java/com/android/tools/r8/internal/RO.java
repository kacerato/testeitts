package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

public final class RO {

    public static final RO f43886b = new RO(C9917vP.f53090d);

    public static final RO f43887c = new RO(C9917vP.a(ConstantDescs.INIT_NAME));

    public static final RO f43888d = new RO(C9917vP.a(ConstantDescs.CLASS_INIT_NAME));

    public static final boolean f43889e = true;

    public final C9917vP f43890a;

    public RO(C9917vP c9917vP) {
        if (!f43889e && c9917vP == null) {
            throw new AssertionError();
        }
        this.f43890a = c9917vP;
    }

    public static RO a(C9917vP c9917vP) {
        if (c9917vP.b()) {
            return f43886b;
        }
        if (c9917vP.c()) {
            String str = c9917vP.f53091a;
            if (ConstantDescs.INIT_NAME.equals(str)) {
                return f43887c;
            }
            if (ConstantDescs.CLASS_INIT_NAME.equals(str)) {
                return f43888d;
            }
        }
        return new RO(c9917vP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RO) {
            return this.f43890a.equals(((RO) obj).f43890a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f43890a.hashCode();
    }

    public final String toString() {
        return this.f43890a.toString();
    }
}
