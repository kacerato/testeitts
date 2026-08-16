package com.android.tools.r8.internal;

import java.io.IOException;

public final class Z90 extends AbstractC6001Ty {

    public static final Z90 f46173m;

    public static final X90 f46174n = new X90();

    public final AbstractC8206l8 f46175c;

    public int f46176d;

    public int f46177e;

    public int f46178f;

    public M90 f46179g;

    public int f46180h;

    public M90 f46181i;

    public int f46182j;

    public byte f46183k;

    public int f46184l;

    static {
        Z90 z90 = new Z90();
        f46173m = z90;
        z90.f46177e = 0;
        z90.f46178f = 0;
        M90 m90 = M90.f42196u;
        z90.f46179g = m90;
        z90.f46180h = 0;
        z90.f46181i = m90;
        z90.f46182j = 0;
    }

    public Z90(Y90 y90) {
        super(y90);
        this.f46183k = (byte) -1;
        this.f46184l = -1;
        this.f46175c = y90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f46176d & 1) == 1) {
            int i10 = this.f46177e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f46176d & 2) == 2) {
            int i11 = this.f46178f;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f46176d & 4) == 4) {
            c5264He.b(3, this.f46179g);
        }
        if ((this.f46176d & 16) == 16) {
            c5264He.b(4, this.f46181i);
        }
        if ((this.f46176d & 8) == 8) {
            int i12 = this.f46180h;
            c5264He.b(5, 0);
            c5264He.d(i12);
        }
        if ((this.f46176d & 32) == 32) {
            int i13 = this.f46182j;
            c5264He.b(6, 0);
            c5264He.d(i13);
        }
        c5943Sy.a(200, c5264He);
        c5264He.a(this.f46175c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new Y90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new Y90().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f46173m;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46183k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int i10 = this.f46176d;
        if ((i10 & 2) != 2) {
            this.f46183k = (byte) 0;
            return false;
        }
        if ((i10 & 4) == 4 && !this.f46179g.isInitialized()) {
            this.f46183k = (byte) 0;
            return false;
        }
        if ((this.f46176d & 16) == 16 && !this.f46181i.isInitialized()) {
            this.f46183k = (byte) 0;
            return false;
        }
        if (d()) {
            this.f46183k = (byte) 1;
            return true;
        }
        this.f46183k = (byte) 0;
        return false;
    }

    public Z90() {
        this.f46183k = (byte) -1;
        this.f46184l = -1;
        this.f46175c = AbstractC8206l8.f49897b;
    }

    public Z90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f46183k = (byte) -1;
        this.f46184l = -1;
        boolean z10 = false;
        this.f46177e = 0;
        this.f46178f = 0;
        M90 m90 = M90.f42196u;
        this.f46179g = m90;
        this.f46180h = 0;
        this.f46181i = m90;
        this.f46182j = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 == 8) {
                            this.f46176d |= 1;
                            this.f46177e = c4858Ae.f();
                        } else if (i10 != 16) {
                            L90 l90 = null;
                            if (i10 == 26) {
                                if ((this.f46176d & 4) == 4) {
                                    M90 m902 = this.f46179g;
                                    m902.getClass();
                                    l90 = M90.a(m902);
                                }
                                M90 m903 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f46179g = m903;
                                if (l90 != null) {
                                    l90.a(m903);
                                    this.f46179g = l90.d();
                                }
                                this.f46176d |= 4;
                            } else if (i10 == 34) {
                                if ((this.f46176d & 16) == 16) {
                                    M90 m904 = this.f46181i;
                                    m904.getClass();
                                    l90 = M90.a(m904);
                                }
                                M90 m905 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f46181i = m905;
                                if (l90 != null) {
                                    l90.a(m905);
                                    this.f46181i = l90.d();
                                }
                                this.f46176d |= 16;
                            } else if (i10 == 40) {
                                this.f46176d |= 8;
                                this.f46180h = c4858Ae.f();
                            } else if (i10 != 48) {
                                if (!a(c4858Ae, c5264He, c10503yv, i10)) {
                                }
                            } else {
                                this.f46176d |= 32;
                                this.f46182j = c4858Ae.f();
                            }
                        } else {
                            this.f46176d |= 2;
                            this.f46178f = c4858Ae.f();
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
                    this.f46175c = c7872j8.c();
                    throw th3;
                }
                this.f46175c = c7872j8.c();
                this.f44631b.a();
                throw th2;
            }
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f46175c = c7872j8.c();
            throw th4;
        }
        this.f46175c = c7872j8.c();
        this.f44631b.a();
    }

    @Override
    public final int a() {
        int i10 = this.f46184l;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f46176d & 1) == 1 ? C5264He.a(1, this.f46177e) : 0;
        if ((this.f46176d & 2) == 2) {
            a10 += C5264He.a(2, this.f46178f);
        }
        if ((this.f46176d & 4) == 4) {
            a10 += C5264He.a(3, this.f46179g);
        }
        if ((this.f46176d & 16) == 16) {
            a10 += C5264He.a(4, this.f46181i);
        }
        if ((this.f46176d & 8) == 8) {
            a10 += C5264He.a(5, this.f46180h);
        }
        if ((this.f46176d & 32) == 32) {
            a10 += C5264He.a(6, this.f46182j);
        }
        int size = this.f46175c.size() + e() + a10;
        this.f46184l = size;
        return size;
    }
}
