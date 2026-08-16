package com.android.tools.r8.internal;

public final class Y90 extends AbstractC5885Ry {

    public int f45943e;

    public int f45944f;

    public int f45945g;

    public M90 f45946h;

    public int f45947i;

    public M90 f45948j;

    public int f45949k;

    public Y90() {
        M90 m90 = M90.f42196u;
        this.f45946h = m90;
        this.f45948j = m90;
    }

    @Override
    public final Y90 a(Z90 z90) {
        M90 m90;
        M90 m902;
        if (z90 == Z90.f46173m) {
            return this;
        }
        int i10 = z90.f46176d;
        if ((i10 & 1) == 1) {
            int i11 = z90.f46177e;
            this.f45943e = 1 | this.f45943e;
            this.f45944f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = z90.f46178f;
            this.f45943e = 2 | this.f45943e;
            this.f45945g = i12;
        }
        if ((i10 & 4) == 4) {
            M90 m903 = z90.f46179g;
            if ((this.f45943e & 4) == 4 && (m902 = this.f45946h) != M90.f42196u) {
                this.f45946h = M90.a(m902).a(m903).d();
            } else {
                this.f45946h = m903;
            }
            this.f45943e |= 4;
        }
        int i13 = z90.f46176d;
        if ((i13 & 8) == 8) {
            int i14 = z90.f46180h;
            this.f45943e = 8 | this.f45943e;
            this.f45947i = i14;
        }
        if ((i13 & 16) == 16) {
            M90 m904 = z90.f46181i;
            if ((this.f45943e & 16) == 16 && (m90 = this.f45948j) != M90.f42196u) {
                this.f45948j = M90.a(m90).a(m904).d();
            } else {
                this.f45948j = m904;
            }
            this.f45943e |= 16;
        }
        if ((z90.f46176d & 32) == 32) {
            int i15 = z90.f46182j;
            this.f45943e = 32 | this.f45943e;
            this.f45949k = i15;
        }
        a((AbstractC6001Ty) z90);
        this.f43766b = this.f43766b.a(z90.f46175c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return Z90.f46173m;
    }

    public final Z90 c() {
        Z90 z90 = new Z90(this);
        int i10 = this.f45943e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        z90.f46177e = this.f45944f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        z90.f46178f = this.f45945g;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        z90.f46179g = this.f45946h;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        z90.f46180h = this.f45947i;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        z90.f46181i = this.f45948j;
        if ((i10 & 32) == 32) {
            i11 |= 32;
        }
        z90.f46182j = this.f45949k;
        z90.f46176d = i11;
        return z90;
    }

    public final Object clone() {
        return new Y90().a(c());
    }

    @Override
    public final O0 a() {
        Z90 c10 = c();
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
        Z90 z90 = null;
        try {
            try {
                Z90.f46174n.getClass();
                a(new Z90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                Z90 z902 = (Z90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    z90 = z902;
                    if (z90 != null) {
                        a(z90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (z90 != null) {
            }
            throw th;
        }
    }
}
