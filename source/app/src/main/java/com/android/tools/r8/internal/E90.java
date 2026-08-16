package com.android.tools.r8.internal;

public final class E90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f39771c;

    public InterfaceC10422yR f39772d = C10088wR.f53502c;

    @Override
    public final E90 a(F90 f90) {
        if (f90 == F90.f40120f) {
            return this;
        }
        if (!f90.f40123c.isEmpty()) {
            if (this.f39772d.isEmpty()) {
                this.f39772d = f90.f40123c;
                this.f39771c &= -2;
            } else {
                if ((this.f39771c & 1) != 1) {
                    this.f39772d = new C10088wR(this.f39772d);
                    this.f39771c |= 1;
                }
                this.f39772d.addAll(f90.f40123c);
            }
        }
        this.f43766b = this.f43766b.a(f90.f40122b);
        return this;
    }

    public final F90 c() {
        F90 f90 = new F90(this);
        if ((this.f39771c & 1) == 1) {
            this.f39772d = this.f39772d.e();
            this.f39771c &= -2;
        }
        f90.f40123c = this.f39772d;
        return f90;
    }

    public final Object clone() {
        return new E90().a(c());
    }

    @Override
    public final O0 a() {
        F90 c10 = c();
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
        F90 f90 = null;
        try {
            try {
                F90.f40121g.getClass();
                a(new F90(c4858Ae));
                return this;
            } catch (LJ e10) {
                F90 f902 = (F90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    f90 = f902;
                    if (f90 != null) {
                        a(f90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (f90 != null) {
            }
            throw th;
        }
    }
}
