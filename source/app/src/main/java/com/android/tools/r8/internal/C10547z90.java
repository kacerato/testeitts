package com.android.tools.r8.internal;

public final class C10547z90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f54296c;

    public int f54298e;

    public int f54297d = -1;

    public A90 f54299f = A90.f38549d;

    @Override
    public final C10547z90 a(B90 b90) {
        if (b90 == B90.f38834i) {
            return this;
        }
        int i10 = b90.f38837c;
        if ((i10 & 1) == 1) {
            int i11 = b90.f38838d;
            this.f54296c = 1 | this.f54296c;
            this.f54297d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = b90.f38839e;
            this.f54296c = 2 | this.f54296c;
            this.f54298e = i12;
        }
        if ((i10 & 4) == 4) {
            A90 a90 = b90.f38840f;
            a90.getClass();
            this.f54296c = 4 | this.f54296c;
            this.f54299f = a90;
        }
        this.f43766b = this.f43766b.a(b90.f38836b);
        return this;
    }

    public final B90 c() {
        B90 b90 = new B90(this);
        int i10 = this.f54296c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        b90.f38838d = this.f54297d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        b90.f38839e = this.f54298e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        b90.f38840f = this.f54299f;
        b90.f38837c = i11;
        return b90;
    }

    public final Object clone() {
        return new C10547z90().a(c());
    }

    @Override
    public final O0 a() {
        B90 c10 = c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        B90 b90 = null;
        try {
            try {
                B90.f38835j.getClass();
                a(new B90(c4858Ae));
                return this;
            } catch (LJ e10) {
                B90 b902 = (B90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    b90 = b902;
                    if (b90 != null) {
                        a(b90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (b90 != null) {
            }
            throw th;
        }
    }
}
