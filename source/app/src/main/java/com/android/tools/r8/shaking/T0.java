package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC7500gv;
import java.util.Objects;

public final class T0 extends AbstractC7500gv {
    @Override
    public final boolean a(Object obj, Object obj2) {
        G3 g32 = (G3) obj;
        G3 g33 = (G3) obj2;
        return g32.b().equals(g33.b()) && g32.a().equals(g33.a()) && g32.h().equals(g33.h()) && g32.d() == g33.d() && g32.f57283g == g33.f57283g && g32.f() == g33.f() && g32.f57286j.equals(g33.f57286j) && Objects.equals(g32.e(), g33.e()) && g32.c().equals(g33.c());
    }

    @Override
    public final int a(Object obj) {
        G3 g32 = (G3) obj;
        return ((((g32.f57286j.hashCode() + ((g32.c().hashCode() + (((((((((g32.b().hashCode() * 3) + g32.a().f56965a) * 3) + g32.h().f56965a) * 3) + (g32.f57283g ? 1 : 0)) * 3) + (g32.d() != null ? g32.d().hashCode() : 0)) * 3)) * 3)) * 3) + (g32.e() != null ? g32.e().hashCode() : 0)) * 3) + (!g32.f57288l ? 1 : 0);
    }
}
