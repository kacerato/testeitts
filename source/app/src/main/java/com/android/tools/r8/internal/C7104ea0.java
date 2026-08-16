package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7104ea0 extends AbstractC6287Yy {

    public static final C7104ea0 f47709l;

    public static final C6438aa0 f47710m = new C6438aa0();

    public final AbstractC8206l8 f47711b;

    public int f47712c;

    public int f47713d;

    public int f47714e;

    public EnumC6771ca0 f47715f;

    public int f47716g;

    public int f47717h;

    public EnumC6938da0 f47718i;

    public byte f47719j;

    public int f47720k;

    static {
        C7104ea0 c7104ea0 = new C7104ea0();
        f47709l = c7104ea0;
        c7104ea0.f47713d = 0;
        c7104ea0.f47714e = 0;
        c7104ea0.f47715f = EnumC6771ca0.f47090d;
        c7104ea0.f47716g = 0;
        c7104ea0.f47717h = 0;
        c7104ea0.f47718i = EnumC6938da0.LANGUAGE_VERSION;
    }

    public C7104ea0(C6605ba0 c6605ba0) {
        super(0);
        this.f47719j = (byte) -1;
        this.f47720k = -1;
        this.f47711b = c6605ba0.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f47712c & 1) == 1) {
            int i10 = this.f47713d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f47712c & 2) == 2) {
            int i11 = this.f47714e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f47712c & 4) == 4) {
            int i12 = this.f47715f.f47092b;
            c5264He.b(3, 0);
            c5264He.d(i12);
        }
        if ((this.f47712c & 8) == 8) {
            int i13 = this.f47716g;
            c5264He.b(4, 0);
            c5264He.d(i13);
        }
        if ((this.f47712c & 16) == 16) {
            int i14 = this.f47717h;
            c5264He.b(5, 0);
            c5264He.d(i14);
        }
        if ((this.f47712c & 32) == 32) {
            int i15 = this.f47718i.f47432b;
            c5264He.b(6, 0);
            c5264He.d(i15);
        }
        c5264He.a(this.f47711b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C6605ba0();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C6605ba0().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f47719j == 1) {
            return true;
        }
        this.f47719j = (byte) 1;
        return true;
    }

    public C7104ea0() {
        this.f47719j = (byte) -1;
        this.f47720k = -1;
        this.f47711b = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0070 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C7104ea0(C4858Ae c4858Ae) {
        EnumC6938da0 enumC6938da0;
        EnumC6771ca0 enumC6771ca0;
        this.f47719j = (byte) -1;
        this.f47720k = -1;
        boolean z10 = false;
        this.f47713d = 0;
        this.f47714e = 0;
        this.f47715f = EnumC6771ca0.f47090d;
        this.f47716g = 0;
        this.f47717h = 0;
        this.f47718i = EnumC6938da0.LANGUAGE_VERSION;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 8) {
                                this.f47712c |= 1;
                                this.f47713d = c4858Ae.f();
                            } else if (i10 != 16) {
                                EnumC6938da0 enumC6938da02 = null;
                                EnumC6771ca0 enumC6771ca02 = null;
                                if (i10 == 24) {
                                    int f10 = c4858Ae.f();
                                    if (f10 == 0) {
                                        enumC6771ca0 = EnumC6771ca0.f47089c;
                                    } else if (f10 == 1) {
                                        enumC6771ca0 = EnumC6771ca0.f47090d;
                                    } else if (f10 == 2) {
                                        enumC6771ca0 = EnumC6771ca0.f47091e;
                                    } else if (enumC6771ca02 != null) {
                                        c5264He.g(i10);
                                        c5264He.g(f10);
                                    } else {
                                        this.f47712c |= 4;
                                        this.f47715f = enumC6771ca02;
                                    }
                                    enumC6771ca02 = enumC6771ca0;
                                    if (enumC6771ca02 != null) {
                                    }
                                } else if (i10 == 32) {
                                    this.f47712c |= 8;
                                    this.f47716g = c4858Ae.f();
                                } else if (i10 == 40) {
                                    this.f47712c |= 16;
                                    this.f47717h = c4858Ae.f();
                                } else if (i10 != 48) {
                                    if (!c4858Ae.a(i10, c5264He)) {
                                    }
                                } else {
                                    int f11 = c4858Ae.f();
                                    if (f11 == 0) {
                                        enumC6938da0 = EnumC6938da0.LANGUAGE_VERSION;
                                    } else if (f11 == 1) {
                                        enumC6938da0 = EnumC6938da0.COMPILER_VERSION;
                                    } else if (f11 == 2) {
                                        enumC6938da0 = EnumC6938da0.API_VERSION;
                                    } else if (enumC6938da02 != null) {
                                        c5264He.g(i10);
                                        c5264He.g(f11);
                                    } else {
                                        this.f47712c |= 32;
                                        this.f47718i = enumC6938da02;
                                    }
                                    enumC6938da02 = enumC6938da0;
                                    if (enumC6938da02 != null) {
                                    }
                                }
                            } else {
                                this.f47712c |= 2;
                                this.f47714e = c4858Ae.f();
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
            this.f47711b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f47720k;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f47712c & 1) == 1 ? C5264He.a(1, this.f47713d) : 0;
        if ((this.f47712c & 2) == 2) {
            a10 += C5264He.a(2, this.f47714e);
        }
        if ((this.f47712c & 4) == 4) {
            a10 += C5264He.a(this.f47715f.f47092b) + C5264He.c(3);
        }
        if ((this.f47712c & 8) == 8) {
            a10 += C5264He.a(4, this.f47716g);
        }
        if ((this.f47712c & 16) == 16) {
            a10 += C5264He.a(5, this.f47717h);
        }
        if ((this.f47712c & 32) == 32) {
            a10 += C5264He.a(this.f47718i.f47432b) + C5264He.c(6);
        }
        int size = this.f47711b.size() + a10;
        this.f47720k = size;
        return size;
    }
}
