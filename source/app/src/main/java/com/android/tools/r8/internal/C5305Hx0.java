package com.android.tools.r8.internal;

public class C5305Hx0 extends D70 {

    public static final C5305Hx0 f40934c = new C5305Hx0();

    @Override
    public boolean A() {
        return true;
    }

    @Override
    public int C() {
        return 2;
    }

    @Override
    public String D() {
        throw new C5417Jv0("Unexpected attempt to get descriptor of " + ((Object) this));
    }

    @Override
    public String E() {
        throw new C5417Jv0("Unexpected attempt to get type name of " + ((Object) this));
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public int hashCode() {
        return System.identityHashCode(f40934c);
    }

    @Override
    public String toString() {
        return "WIDE";
    }
}
