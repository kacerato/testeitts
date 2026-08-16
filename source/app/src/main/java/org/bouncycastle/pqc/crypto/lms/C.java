package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class C {
    public static void a(byte[] bArr, int i10, int i11, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.update(bArr, i10, i11);
    }

    public static void b(byte[] bArr, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.update(bArr, 0, bArr.length);
    }

    public static int c(u uVar) {
        if (uVar == null) {
            throw new NullPointerException("lmsParameters cannot be null");
        }
        A b10 = uVar.b();
        return (1 << b10.c()) * b10.d();
    }

    public static void d(short s10, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.update((byte) (s10 >>> 8));
        interfaceC2392y.update((byte) s10);
    }

    public static void e(int i10, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.update((byte) (i10 >>> 24));
        interfaceC2392y.update((byte) (i10 >>> 16));
        interfaceC2392y.update((byte) (i10 >>> 8));
        interfaceC2392y.update((byte) i10);
    }
}
