package com.google.android.gms.internal.measurement;

public final class C12074g6 implements T5 {

    public final W5 f62293a;

    public final String f62294b;

    public final Object[] f62295c;

    public final int f62296d;

    public C12074g6(W5 w52, String str, Object[] objArr) {
        this.f62293a = w52;
        this.f62294b = str;
        this.f62295c = objArr;
        char charAt = str.charAt(0);
        if (charAt < '\ud800') {
            this.f62296d = charAt;
            return;
        }
        int i10 = charAt & '\u1fff';
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char charAt2 = str.charAt(i11);
            if (charAt2 < '\ud800') {
                this.f62296d = i10 | (charAt2 << i12);
                return;
            } else {
                i10 |= (charAt2 & '\u1fff') << i12;
                i12 += 13;
                i11 = i13;
            }
        }
    }

    @Override
    public final boolean N1() {
        return (this.f62296d & 2) == 2;
    }

    @Override
    public final W5 O1() {
        return this.f62293a;
    }

    @Override
    public final int P1() {
        int i10 = this.f62296d;
        if ((i10 & 1) != 0) {
            return 1;
        }
        return (i10 & 4) == 4 ? 3 : 2;
    }

    public final String a() {
        return this.f62294b;
    }

    public final Object[] b() {
        return this.f62295c;
    }
}
