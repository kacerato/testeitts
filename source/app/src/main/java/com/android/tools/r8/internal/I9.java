package com.android.tools.r8.internal;

public abstract class I9 {

    public static final boolean f40985a = true;

    public static void a(int i10, InterfaceC8008jy interfaceC8008jy, C10564zF c10564zF) {
        boolean z10 = f40985a;
        if (!z10 && interfaceC8008jy.c()) {
            throw new AssertionError();
        }
        InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) c10564zF.a(i10, interfaceC8008jy);
        if (interfaceC8008jy2 != null && interfaceC8008jy2.r()) {
            int i11 = InterfaceC8008jy.f49436a;
            InterfaceC8008jy interfaceC8008jy3 = (InterfaceC8008jy) c10564zF.a(i10 - 1, C7028e40.f47586c);
            if (!z10 && interfaceC8008jy3 != interfaceC8008jy2.e().J()) {
                throw new AssertionError();
            }
        }
        if (interfaceC8008jy.C()) {
            if (!z10 && !interfaceC8008jy.g()) {
                throw new AssertionError();
            }
            interfaceC8008jy2 = (InterfaceC8008jy) c10564zF.a(i10 + 1, interfaceC8008jy.e().I());
        }
        if (interfaceC8008jy2 == null || !interfaceC8008jy2.g()) {
            return;
        }
        int v10 = interfaceC8008jy.v() + i10;
        int i12 = InterfaceC8008jy.f49436a;
        InterfaceC8008jy interfaceC8008jy4 = (InterfaceC8008jy) c10564zF.a(v10, C7028e40.f47586c);
        if (!z10 && interfaceC8008jy4 != interfaceC8008jy2.e().I()) {
            throw new AssertionError();
        }
    }

    public static void a(InterfaceC7896jG interfaceC7896jG) {
        InterfaceC9861v30 it = interfaceC7896jG.b().iterator();
        while (it.hasNext()) {
            EF ef2 = (EF) it.next();
            int a10 = ef2.a();
            InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) ef2.getValue();
            if (interfaceC8008jy.g()) {
                if (!f40985a && interfaceC7896jG.get(a10 + 1) != interfaceC8008jy.e().I()) {
                    throw new AssertionError();
                }
            } else if (interfaceC8008jy.r()) {
                if (!f40985a && interfaceC7896jG.get(a10 - 1) != interfaceC8008jy.e().J()) {
                    throw new AssertionError();
                }
            } else if (!f40985a && interfaceC8008jy.c()) {
                throw new AssertionError();
            }
        }
    }
}
