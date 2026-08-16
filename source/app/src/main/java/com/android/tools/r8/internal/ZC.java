package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.function.Function;

public interface ZC {
    default FB B() {
        return null;
    }

    default C6431aX C() {
        return null;
    }

    default C5765Pw D() {
        return null;
    }

    default K8 E() {
        return null;
    }

    default XD F() {
        return null;
    }

    int a(ZC zc2, C6555bD c6555bD);

    AbstractC6333Zs0 a(Function function);

    default boolean a() {
        return false;
    }

    default Q5 b() {
        return null;
    }

    default InterfaceC6078Vf c() {
        return null;
    }

    default boolean d() {
        return false;
    }

    r f();

    int getKind();

    default boolean isUnknown() {
        return false;
    }

    default boolean n() {
        return false;
    }

    default boolean o() {
        return false;
    }

    default boolean t() {
        return false;
    }

    default boolean v() {
        return false;
    }

    default boolean x() {
        return false;
    }

    default int b(ZC zc2, C6555bD c6555bD) {
        if (getKind() == zc2.getKind()) {
            return a(zc2, c6555bD);
        }
        return AbstractC4291c.b(getKind()) - AbstractC4291c.b(zc2.getKind());
    }
}
