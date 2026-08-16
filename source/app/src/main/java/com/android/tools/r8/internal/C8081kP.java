package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C8081kP {

    public static final C8081kP f49607b = new C8081kP('*');

    public static final C8081kP f49608c;

    public static final C8081kP f49609d;

    public static final C8081kP f49610e;

    public static final C8081kP f49611f;

    public static final C8081kP f49612g;

    public static final C8081kP f49613h;

    public static final C8081kP f49614i;

    public static final C8081kP f49615j;

    public static final AbstractC8552nC f49616k;

    public static final boolean f49617l = true;

    public final char f49618a;

    static {
        C8081kP c8081kP = new C8081kP('Z');
        f49608c = c8081kP;
        C8081kP c8081kP2 = new C8081kP('B');
        f49609d = c8081kP2;
        C8081kP c8081kP3 = new C8081kP('C');
        f49610e = c8081kP3;
        C8081kP c8081kP4 = new C8081kP('S');
        f49611f = c8081kP4;
        C8081kP c8081kP5 = new C8081kP('I');
        f49612g = c8081kP5;
        C8081kP c8081kP6 = new C8081kP('J');
        f49613h = c8081kP6;
        C8081kP c8081kP7 = new C8081kP('F');
        f49614i = c8081kP7;
        C8081kP c8081kP8 = new C8081kP('D');
        f49615j = c8081kP8;
        C8081kP[] c8081kPArr = {c8081kP, c8081kP2, c8081kP3, c8081kP4, c8081kP5, c8081kP6, c8081kP7, c8081kP8};
        C8051kC c8051kC = new C8051kC(4);
        for (int i10 = 0; i10 < 8; i10++) {
            C8081kP c8081kP9 = c8081kPArr[i10];
            c8051kC.a(Character.toString(c8081kP9.a()), c8081kP9);
        }
        f49616k = c8051kC.b();
    }

    public C8081kP(char c10) {
        this.f49618a = c10;
    }

    public final char a() {
        if (this != f49607b) {
            return this.f49618a;
        }
        throw new FN("No descriptor exists for 'any' primitive");
    }

    public static void a(Consumer consumer) {
        f49616k.values().forEach(consumer);
    }
}
