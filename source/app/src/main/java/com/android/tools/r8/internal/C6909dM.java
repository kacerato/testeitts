package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6909dM extends AbstractC6287Yy {

    public static final C6909dM f47376h;

    public static final C6576bM f47377i = new C6576bM();

    public final AbstractC8206l8 f47378b;

    public int f47379c;

    public int f47380d;

    public int f47381e;

    public byte f47382f;

    public int f47383g;

    static {
        C6909dM c6909dM = new C6909dM();
        f47376h = c6909dM;
        c6909dM.f47380d = 0;
        c6909dM.f47381e = 0;
    }

    public C6909dM(C6742cM c6742cM) {
        super(0);
        this.f47382f = (byte) -1;
        this.f47383g = -1;
        this.f47378b = c6742cM.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f47379c & 1) == 1) {
            int i10 = this.f47380d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f47379c & 2) == 2) {
            int i11 = this.f47381e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        c5264He.a(this.f47378b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C6742cM();
    }

    @Override
    public final AbstractC5827Qy c() {
        return a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f47382f == 1) {
            return true;
        }
        this.f47382f = (byte) 1;
        return true;
    }

    public C6909dM() {
        this.f47382f = (byte) -1;
        this.f47383g = -1;
        this.f47378b = AbstractC8206l8.f49897b;
    }

    public C6909dM(C4858Ae c4858Ae) {
        this.f47382f = (byte) -1;
        this.f47383g = -1;
        boolean z10 = false;
        this.f47380d = 0;
        this.f47381e = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 8) {
                                this.f47379c |= 1;
                                this.f47380d = c4858Ae.f();
                            } else if (i10 != 16) {
                                if (!c4858Ae.a(i10, c5264He)) {
                                }
                            } else {
                                this.f47379c |= 2;
                                this.f47381e = c4858Ae.f();
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
            this.f47378b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f47383g;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f47379c & 1) == 1 ? C5264He.a(1, this.f47380d) : 0;
        if ((this.f47379c & 2) == 2) {
            a10 += C5264He.a(2, this.f47381e);
        }
        int size = this.f47378b.size() + a10;
        this.f47383g = size;
        return size;
    }

    public static C6742cM a(C6909dM c6909dM) {
        return new C6742cM().a(c6909dM);
    }
}
