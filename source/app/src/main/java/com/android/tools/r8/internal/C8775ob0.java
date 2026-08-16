package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Set;

public final class C8775ob0 extends AbstractC9109qb0 {

    public static final boolean f51284i = true;

    public final Set f51285b;

    public final Set f51286c;

    public AbstractC8194l4 f51287d;

    public C6300Zd f51288e;

    public ArrayList f51289f;

    public ArrayList f51290g;

    public AbstractC9148qo0 f51291h;

    public C8775ob0(Set set, Set set2, C8659ns0 c8659ns0) {
        super(c8659ns0);
        this.f51285b = set;
        this.f51286c = set2;
    }

    @Override
    public final C8775ob0 a() {
        return this;
    }

    public final FW a(C4798y c4798y, com.android.tools.r8.graph.D5 d52) {
        com.android.tools.r8.graph.M2 S10 = d52.S();
        if (this.f51285b.contains(S10)) {
            return FW.f40237c;
        }
        if (this.f51286c.contains(S10)) {
            return FW.f40236b;
        }
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        boolean z10 = f51284i;
        if (!z10) {
            com.android.tools.r8.graph.H2 a10 = d52.a();
            g10.getClass();
            if (!g10.g(a10.f36245e)) {
                throw new AssertionError();
            }
        }
        AbstractC7552hC b10 = g10.b(d52.S());
        if (!z10 && b10.size() != 1) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) b10.iterator().next();
        if (this.f51285b.contains(m22)) {
            return FW.f40237c;
        }
        if (z10 || this.f51286c.contains(m22)) {
            return FW.f40236b;
        }
        throw new AssertionError();
    }
}
