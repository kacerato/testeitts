package com.android.tools.r8.internal;

import java.io.IOException;

public final class F90 extends AbstractC6287Yy {

    public static final F90 f40120f;

    public static final D90 f40121g = new D90();

    public final AbstractC8206l8 f40122b;

    public InterfaceC10422yR f40123c;

    public byte f40124d;

    public int f40125e;

    static {
        F90 f90 = new F90();
        f40120f = f90;
        f90.f40123c = C10088wR.f53502c;
    }

    public F90(E90 e90) {
        super(0);
        this.f40124d = (byte) -1;
        this.f40125e = -1;
        this.f40122b = e90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f40123c.size(); i10++) {
            c5264He.a(1, this.f40123c.b(i10));
        }
        c5264He.a(this.f40122b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new E90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new E90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f40124d == 1) {
            return true;
        }
        this.f40124d = (byte) 1;
        return true;
    }

    @Override
    public final int a() {
        int i10 = this.f40125e;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f40123c.size(); i12++) {
            AbstractC8206l8 b10 = this.f40123c.b(i12);
            i11 += b10.size() + C5264He.b(b10.size());
        }
        int size = this.f40122b.size() + this.f40123c.size() + i11;
        this.f40125e = size;
        return size;
    }

    public F90() {
        this.f40124d = (byte) -1;
        this.f40125e = -1;
        this.f40122b = AbstractC8206l8.f49897b;
    }

    public F90(C4858Ae c4858Ae) {
        this.f40124d = (byte) -1;
        this.f40125e = -1;
        this.f40123c = C10088wR.f53502c;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 != 10) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            ET b10 = c4858Ae.b();
                            if (!z11) {
                                this.f40123c = new C10088wR();
                                z11 = true;
                            }
                            this.f40123c.a(b10);
                        }
                    }
                    z10 = true;
                } catch (LJ e10) {
                    e10.f41938b = this;
                    throw e10;
                } catch (IOException e11) {
                    LJ lj2 = new LJ(e11.getMessage());
                    lj2.f41938b = this;
                    throw lj2;
                }
            } catch (Throwable th2) {
                if (z11) {
                    this.f40123c = this.f40123c.e();
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    throw th3;
                }
                throw th2;
            }
        }
        if (z11) {
            this.f40123c = this.f40123c.e();
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f40122b = c7872j8.c();
        }
    }
}
