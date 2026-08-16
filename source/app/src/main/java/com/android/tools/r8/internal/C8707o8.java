package com.android.tools.r8.internal;

public class C8707o8 {

    public static final boolean f51173a = true;

    public static int a(int i10, int i11) {
        return i10 | (1 << (i11 - 1));
    }

    public static boolean a(int i10) {
        return i10 >= 0 && i10 <= 65535;
    }

    public static void a(int i10, InterfaceC9041q8 interfaceC9041q8) {
        interfaceC9041q8.a((i10 >> 24) & 255);
        interfaceC9041q8.a((i10 >> 16) & 255);
        interfaceC9041q8.a((i10 >> 8) & 255);
        interfaceC9041q8.a(i10 & 255);
    }

    public static void a(long j10, InterfaceC9041q8 interfaceC9041q8) {
        interfaceC9041q8.a(((int) (j10 >> 56)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 48)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 40)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 32)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 24)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 16)) & 255);
        interfaceC9041q8.a(((int) (j10 >> 8)) & 255);
        interfaceC9041q8.a(((int) j10) & 255);
    }
}
