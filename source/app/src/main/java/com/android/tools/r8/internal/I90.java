package com.android.tools.r8.internal;

public final class I90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f40986c;

    public J90 f40987d = J90.INV;

    public M90 f40988e = M90.f42196u;

    public int f40989f;

    @Override
    public final I90 a(K90 k90) {
        M90 m90;
        if (k90 == K90.f41601i) {
            return this;
        }
        if ((k90.f41604c & 1) == 1) {
            J90 j90 = k90.f41605d;
            j90.getClass();
            this.f40986c = 1 | this.f40986c;
            this.f40987d = j90;
        }
        if ((k90.f41604c & 2) == 2) {
            M90 m902 = k90.f41606e;
            if ((this.f40986c & 2) == 2 && (m90 = this.f40988e) != M90.f42196u) {
                this.f40988e = M90.a(m90).a(m902).d();
            } else {
                this.f40988e = m902;
            }
            this.f40986c |= 2;
        }
        if ((k90.f41604c & 4) == 4) {
            int i10 = k90.f41607f;
            this.f40986c = 4 | this.f40986c;
            this.f40989f = i10;
        }
        this.f43766b = this.f43766b.a(k90.f41603b);
        return this;
    }

    public final K90 c() {
        K90 k90 = new K90(this);
        int i10 = this.f40986c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        k90.f41605d = this.f40987d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        k90.f41606e = this.f40988e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        k90.f41607f = this.f40989f;
        k90.f41604c = i11;
        return k90;
    }

    public final Object clone() {
        return new I90().a(c());
    }

    @Override
    public final O0 a() {
        K90 c10 = c();
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
        K90 k90 = null;
        try {
            try {
                K90.f41602j.getClass();
                a(new K90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                K90 k902 = (K90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    k90 = k902;
                    if (k90 != null) {
                        a(k90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (k90 != null) {
            }
            throw th;
        }
    }
}
