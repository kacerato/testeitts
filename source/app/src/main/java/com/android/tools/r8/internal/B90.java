package com.android.tools.r8.internal;

import java.io.IOException;

public final class B90 extends AbstractC6287Yy {

    public static final B90 f38834i;

    public static final C10380y90 f38835j = new C10380y90();

    public final AbstractC8206l8 f38836b;

    public int f38837c;

    public int f38838d;

    public int f38839e;

    public A90 f38840f;

    public byte f38841g;

    public int f38842h;

    static {
        B90 b90 = new B90();
        f38834i = b90;
        b90.f38838d = -1;
        b90.f38839e = 0;
        b90.f38840f = A90.f38549d;
    }

    public B90(C10547z90 c10547z90) {
        super(0);
        this.f38841g = (byte) -1;
        this.f38842h = -1;
        this.f38836b = c10547z90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f38837c & 1) == 1) {
            int i10 = this.f38838d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f38837c & 2) == 2) {
            int i11 = this.f38839e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f38837c & 4) == 4) {
            int i12 = this.f38840f.f38551b;
            c5264He.b(3, 0);
            c5264He.d(i12);
        }
        c5264He.a(this.f38836b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C10547z90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C10547z90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f38841g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f38837c & 2) == 2) {
            this.f38841g = (byte) 1;
            return true;
        }
        this.f38841g = (byte) 0;
        return false;
    }

    public B90() {
        this.f38841g = (byte) -1;
        this.f38842h = -1;
        this.f38836b = AbstractC8206l8.f49897b;
    }

    public B90(C4858Ae c4858Ae) {
        A90 a90;
        this.f38841g = (byte) -1;
        this.f38842h = -1;
        this.f38838d = -1;
        boolean z10 = false;
        this.f38839e = 0;
        this.f38840f = A90.f38549d;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 == 8) {
                            this.f38837c |= 1;
                            this.f38838d = c4858Ae.f();
                        } else if (i10 == 16) {
                            this.f38837c |= 2;
                            this.f38839e = c4858Ae.f();
                        } else if (i10 != 24) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            int f10 = c4858Ae.f();
                            if (f10 == 0) {
                                a90 = A90.f38548c;
                            } else if (f10 != 1) {
                                a90 = f10 != 2 ? null : A90.f38550e;
                            } else {
                                a90 = A90.f38549d;
                            }
                            if (a90 == null) {
                                c5264He.g(i10);
                                c5264He.g(f10);
                            } else {
                                this.f38837c |= 4;
                                this.f38840f = a90;
                            }
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
            this.f38836b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f38842h;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f38837c & 1) == 1 ? C5264He.a(1, this.f38838d) : 0;
        if ((this.f38837c & 2) == 2) {
            a10 += C5264He.a(2, this.f38839e);
        }
        if ((this.f38837c & 4) == 4) {
            a10 += C5264He.a(this.f38840f.f38551b) + C5264He.c(3);
        }
        int size = this.f38836b.size() + a10;
        this.f38842h = size;
        return size;
    }
}
