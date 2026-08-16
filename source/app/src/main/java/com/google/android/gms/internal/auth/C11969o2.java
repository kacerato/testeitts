package com.google.android.gms.internal.auth;

public final class C11969o2 implements InterfaceC11913a2 {

    public final InterfaceC11925d2 f61808a;

    public final String f61809b = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a";

    public final Object[] f61810c;

    public final int f61811d;

    public C11969o2(InterfaceC11925d2 interfaceC11925d2, String str, Object[] objArr) {
        this.f61808a = interfaceC11925d2;
        this.f61810c = objArr;
        char charAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0);
        if (charAt < '\ud800') {
            this.f61811d = charAt;
            return;
        }
        int i10 = charAt & '\u1fff';
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char charAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i11);
            if (charAt2 < '\ud800') {
                this.f61811d = (charAt2 << i12) | i10;
                return;
            } else {
                i10 |= (charAt2 & '\u1fff') << i12;
                i12 += 13;
                i11 = i13;
            }
        }
    }

    @Override
    public final InterfaceC11925d2 N1() {
        return this.f61808a;
    }

    @Override
    public final boolean O1() {
        return (this.f61811d & 2) == 2;
    }

    @Override
    public final int P1() {
        return (this.f61811d & 1) != 0 ? 1 : 2;
    }

    public final String a() {
        return this.f61809b;
    }

    public final Object[] b() {
        return this.f61810c;
    }
}
