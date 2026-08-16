package com.android.tools.r8.internal;

import java.util.List;

public abstract class AbstractC5409Jr0 {
    public static void a(InterfaceC5351Ir0 interfaceC5351Ir0) {
        C8659ns0 c10 = C8659ns0.c();
        interfaceC5351Ir0.getClass();
        try {
            interfaceC5351Ir0.a(c10);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void a(final InterfaceC5351Ir0 interfaceC5351Ir0, C10325xr0 c10325xr0) {
        c10325xr0.b(new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                AbstractC5409Jr0.a(InterfaceC5351Ir0.this);
            }
        });
    }

    public static void a(final C8570nJ c8570nJ, final InterfaceC5351Ir0 interfaceC5351Ir0, final int i10, C10325xr0 c10325xr0, final List list) {
        c10325xr0.b(new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                AbstractC5409Jr0.a(C8570nJ.this, interfaceC5351Ir0, i10, list);
            }
        });
    }

    public static void a(C8570nJ c8570nJ, InterfaceC5351Ir0 interfaceC5351Ir0, int i10, List list) {
        C8659ns0 a10 = C8659ns0.a(c8570nJ, "Timing");
        list.set(i10, a10);
        a10.b("Task " + (i10 + 1));
        interfaceC5351Ir0.getClass();
        try {
            interfaceC5351Ir0.a(a10);
            a10.d();
            a10.d();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
