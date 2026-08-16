package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class AbstractC6333Zs0 {

    public static final boolean f46363a = true;

    public C6162Ws0 a() {
        return null;
    }

    public C6276Ys0 b() {
        return null;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public static AbstractC6333Zs0 a(boolean z10) {
        return !z10 ? C6276Ys0.f46097c : C6162Ws0.f45559c;
    }

    public final AbstractC6333Zs0 a(Function function) {
        return d() ? (AbstractC6333Zs0) function.apply(b()) : this;
    }

    public static C6162Ws0 a(Object obj) {
        return new C6162Ws0(obj);
    }
}
