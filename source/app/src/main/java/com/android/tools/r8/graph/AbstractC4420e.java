package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5647Nv;
import com.android.tools.r8.internal.AbstractC9530t40;

public abstract class AbstractC4420e {

    public static final boolean f37139a = true;

    public static AbstractC9530t40 a(E0 e02, InterfaceC4610o0 interfaceC4610o0, C4798y c4798y, C4514j c4514j) {
        if (!f37139a && c4514j == null) {
            throw new AssertionError();
        }
        if (!e02.w1()) {
            if (!e02.getType().z0().equals(interfaceC4610o0.S().z0())) {
                return AbstractC9530t40.f52518b;
            }
        }
        if (c4798y.f().h() && interfaceC4610o0.h() && !AbstractC5647Nv.a(e02, interfaceC4610o0.g(), c4798y.L())) {
            return AbstractC9530t40.f52519c;
        }
        return AbstractC9530t40.f52517a;
    }

    public static AbstractC9530t40 a(G0 g02, InterfaceC4610o0 interfaceC4610o0, InterfaceC4610o0 interfaceC4610o02, C4798y c4798y, C4514j c4514j) {
        boolean a10;
        AbstractC4458g accessFlags = g02.d().getAccessFlags();
        AbstractC9530t40 a11 = a(interfaceC4610o0.a(), interfaceC4610o02, c4798y, c4514j);
        if (a11.a()) {
            return AbstractC9530t40.f52518b;
        }
        if (!accessFlags.l()) {
            if (accessFlags.h()) {
                E0 holder = g02.getHolder();
                E0 a12 = interfaceC4610o02.a();
                if (holder == a12) {
                    a10 = true;
                } else {
                    if (a12 == null) {
                        if (!f37139a) {
                            throw new AssertionError((Object) "context should not be null");
                        }
                    } else if (holder.q1() && a12.q1()) {
                        a10 = holder.T0().a(a12.T0());
                    }
                    a10 = false;
                }
                if (!a10) {
                    return AbstractC9530t40.f52518b;
                }
            } else {
                if (!g02.p().z0().equals(interfaceC4610o02.S().z0()) && (accessFlags.f() || !c4514j.c(interfaceC4610o02.S(), g02.p()))) {
                    return AbstractC9530t40.f52518b;
                }
                if (c4798y.f().h() && interfaceC4610o02.h() && !AbstractC5647Nv.a(g02, interfaceC4610o02.g(), c4798y.L())) {
                    return AbstractC9530t40.f52519c;
                }
            }
        }
        return a11;
    }
}
