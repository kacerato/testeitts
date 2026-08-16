package com.android.tools.r8.internal;

import java.util.function.Predicate;

public class C7838ix extends C10340xw0 {

    public static final boolean f49121q = true;

    public final int f49122p;

    public C7838ix(int i10, AbstractC8999pu0 abstractC8999pu0) {
        super(-1, abstractC8999pu0, null);
        a(true);
        this.f49122p = i10;
    }

    @Override
    public final boolean M() {
        return false;
    }

    @Override
    public final EnumC5477Kw0 Y() {
        AbstractC8999pu0 u10 = u();
        if (!u10.x()) {
            if (f49121q || u10.y()) {
                return EnumC5477Kw0.f41824b;
            }
            throw new AssertionError();
        }
        if (u10.z()) {
            if (u10 instanceof C9736uI) {
                return EnumC5477Kw0.f41825c;
            }
            if (u10 instanceof C5188Fx) {
                return EnumC5477Kw0.f41826d;
            }
        } else {
            if (!f49121q && !u10.A()) {
                throw new AssertionError();
            }
            if (u10 instanceof C8160kt) {
                return EnumC5477Kw0.f41828f;
            }
            if (u10 instanceof C9593tU) {
                return EnumC5477Kw0.f41827e;
            }
        }
        throw new C5417Jv0("Unexpected imprecise type: " + ((Object) u10));
    }

    public final boolean a(C7838ix c7838ix) {
        if (this.f49122p == c7838ix.c0()) {
            return true;
        }
        if (u().A() && this.f49122p + 1 == c7838ix.c0()) {
            return true;
        }
        return c7838ix.u().A() && this.f49122p == c7838ix.c0() + 1;
    }

    @Override
    public final C7838ix c() {
        return this;
    }

    public int c0() {
        return this.f49122p;
    }

    @Override
    public final boolean d(Predicate predicate) {
        return false;
    }

    @Override
    public final String toString() {
        return com.itsmagic.engine.Engines.Engine.Animation.a.f72595c + this.f49122p;
    }
}
