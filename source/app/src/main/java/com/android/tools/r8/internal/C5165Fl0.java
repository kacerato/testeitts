package com.android.tools.r8.internal;

public final class C5165Fl0 extends AbstractC7015e0 {

    public int f40302d = -1;

    public final C5223Gl0 f40303e;

    public C5165Fl0(C5223Gl0 c5223Gl0) {
        this.f40303e = c5223Gl0;
    }

    @Override
    public final Object a() {
        int nextSetBit = this.f40303e.f40581b.nextSetBit(this.f40302d + 1);
        this.f40302d = nextSetBit;
        if (nextSetBit != -1) {
            return this.f40303e.f40582c.f40865e.f41203c.keySet().a().get(this.f40302d);
        }
        this.f47569b = 3;
        return null;
    }
}
