package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6409aM extends AbstractC6287Yy {

    public static final C6409aM f46493h;

    public static final YL f46494i = new YL();

    public final AbstractC8206l8 f46495b;

    public int f46496c;

    public int f46497d;

    public int f46498e;

    public byte f46499f;

    public int f46500g;

    static {
        C6409aM c6409aM = new C6409aM();
        f46493h = c6409aM;
        c6409aM.f46497d = 0;
        c6409aM.f46498e = 0;
    }

    public C6409aM(ZL zl2) {
        super(0);
        this.f46499f = (byte) -1;
        this.f46500g = -1;
        this.f46495b = zl2.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f46496c & 1) == 1) {
            int i10 = this.f46497d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f46496c & 2) == 2) {
            int i11 = this.f46498e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        c5264He.a(this.f46495b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new ZL();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new ZL().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f46499f == 1) {
            return true;
        }
        this.f46499f = (byte) 1;
        return true;
    }

    public C6409aM() {
        this.f46499f = (byte) -1;
        this.f46500g = -1;
        this.f46495b = AbstractC8206l8.f49897b;
    }

    public C6409aM(C4858Ae c4858Ae) {
        this.f46499f = (byte) -1;
        this.f46500g = -1;
        boolean z10 = false;
        this.f46497d = 0;
        this.f46498e = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 8) {
                                this.f46496c |= 1;
                                this.f46497d = c4858Ae.f();
                            } else if (i10 != 16) {
                                if (!c4858Ae.a(i10, c5264He)) {
                                }
                            } else {
                                this.f46496c |= 2;
                                this.f46498e = c4858Ae.f();
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        LJ lj2 = new LJ(e10.getMessage());
                        lj2.f41938b = this;
                        throw lj2;
                    }
                } catch (LJ e11) {
                    e11.f41938b = this;
                    throw e11;
                }
            } catch (Throwable th2) {
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
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f46495b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f46500g;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f46496c & 1) == 1 ? C5264He.a(1, this.f46497d) : 0;
        if ((this.f46496c & 2) == 2) {
            a10 += C5264He.a(2, this.f46498e);
        }
        int size = this.f46495b.size() + a10;
        this.f46500g = size;
        return size;
    }
}
