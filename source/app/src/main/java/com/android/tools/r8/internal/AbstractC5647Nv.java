package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4610o0;

public abstract class AbstractC5647Nv {

    public static final boolean f42734a = true;

    public static boolean a(InterfaceC4610o0 interfaceC4610o0, com.android.tools.r8.graph.D5 d52, C4798y c4798y) {
        if (!c4798y.E().I() || !interfaceC4610o0.h()) {
            return true;
        }
        com.android.tools.r8.graph.D5 g10 = interfaceC4610o0.g();
        if (!f42734a && !c4798y.E().I()) {
            throw new AssertionError();
        }
        C6300Zd c6300Zd = ((C4514j) c4798y.f()).f37255b;
        c6300Zd.getClass();
        com.android.tools.r8.synthesis.J g11 = c4798y.f38408a.g();
        if (c6300Zd.a(g10.getReference(), g11) == c6300Zd.a(d52.getReference(), g11)) {
            return true;
        }
        if (!c6300Zd.a(g10.getReference(), c4798y.f38408a.g()).isBase()) {
            return false;
        }
        if (!c4798y.E().f50718s.f43762b) {
            return true;
        }
        if (g10.isClass()) {
            return g10.getAccessFlags().l();
        }
        if (g10.getAccessFlags().g()) {
            return !g10.getAccessFlags().f() && ((C4514j) c4798y.f()).b(d52.a(), g10.a());
        }
        return true;
    }
}
