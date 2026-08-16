package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7377g90 extends AbstractC6001Ty {

    public static final C7377g90 f48196h;

    public static final C7043e90 f48197i = new C7043e90();

    public final AbstractC8206l8 f48198c;

    public int f48199d;

    public int f48200e;

    public byte f48201f;

    public int f48202g;

    static {
        C7377g90 c7377g90 = new C7377g90();
        f48196h = c7377g90;
        c7377g90.f48200e = 0;
    }

    public C7377g90(C7210f90 c7210f90) {
        super(c7210f90);
        this.f48201f = (byte) -1;
        this.f48202g = -1;
        this.f48198c = c7210f90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f48199d & 1) == 1) {
            int i10 = this.f48200e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        c5943Sy.a(200, c5264He);
        c5264He.a(this.f48198c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C7210f90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C7210f90().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f48196h;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48201f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (d()) {
            this.f48201f = (byte) 1;
            return true;
        }
        this.f48201f = (byte) 0;
        return false;
    }

    public C7377g90() {
        this.f48201f = (byte) -1;
        this.f48202g = -1;
        this.f48198c = AbstractC8206l8.f49897b;
    }

    @Override
    public final int a() {
        int i10 = this.f48202g;
        if (i10 != -1) {
            return i10;
        }
        int size = this.f48198c.size() + e() + ((this.f48199d & 1) == 1 ? C5264He.a(1, this.f48200e) : 0);
        this.f48202g = size;
        return size;
    }

    public C7377g90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f48201f = (byte) -1;
        this.f48202g = -1;
        boolean z10 = false;
        this.f48200e = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 != 8) {
                            if (!a(c4858Ae, c5264He, c10503yv, i10)) {
                            }
                        } else {
                            this.f48199d |= 1;
                            this.f48200e = c4858Ae.f();
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    try {
                        if (c5264He.f40814d != null) {
                            c5264He.a();
                        }
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f48198c = c7872j8.c();
                        throw th3;
                    }
                    this.f48198c = c7872j8.c();
                    this.f44631b.a();
                    throw th2;
                }
            } catch (LJ e10) {
                e10.f41938b = this;
                throw e10;
            } catch (IOException e11) {
                LJ lj2 = new LJ(e11.getMessage());
                lj2.f41938b = this;
                throw lj2;
            }
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f48198c = c7872j8.c();
            throw th4;
        }
        this.f48198c = c7872j8.c();
        this.f44631b.a();
    }
}
