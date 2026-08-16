package com.google.protobuf;

@B
public final class D1 implements Z0 {

    public final InterfaceC12659b1 f67940a;

    public final String f67941b;

    public final Object[] f67942c;

    public final int f67943d;

    public D1(InterfaceC12659b1 defaultInstance, String info, Object[] objects) {
        this.f67940a = defaultInstance;
        this.f67941b = info;
        this.f67942c = objects;
        char charAt = info.charAt(0);
        if (charAt < '\ud800') {
            this.f67943d = charAt;
            return;
        }
        int i10 = charAt & '\u1fff';
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char charAt2 = info.charAt(i12);
            if (charAt2 < '\ud800') {
                this.f67943d = i10 | (charAt2 << i11);
                return;
            } else {
                i10 |= (charAt2 & '\u1fff') << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override
    public boolean a() {
        return (this.f67943d & 2) == 2;
    }

    @Override
    public InterfaceC12659b1 b() {
        return this.f67940a;
    }

    public Object[] c() {
        return this.f67942c;
    }

    public String d() {
        return this.f67941b;
    }

    @Override
    public EnumC12729y1 m() {
        return (this.f67943d & 1) == 1 ? EnumC12729y1.PROTO2 : EnumC12729y1.PROTO3;
    }
}
