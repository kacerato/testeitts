package com.android.tools.r8.internal;

import java.io.IOException;

public final class K90 extends AbstractC6287Yy {

    public static final K90 f41601i;

    public static final H90 f41602j = new H90();

    public final AbstractC8206l8 f41603b;

    public int f41604c;

    public J90 f41605d;

    public M90 f41606e;

    public int f41607f;

    public byte f41608g;

    public int f41609h;

    static {
        K90 k90 = new K90();
        f41601i = k90;
        k90.f41605d = J90.INV;
        k90.f41606e = M90.f42196u;
        k90.f41607f = 0;
    }

    public K90(I90 i90) {
        super(0);
        this.f41608g = (byte) -1;
        this.f41609h = -1;
        this.f41603b = i90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f41604c & 1) == 1) {
            int i10 = this.f41605d.f41335b;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f41604c & 2) == 2) {
            c5264He.b(2, this.f41606e);
        }
        if ((this.f41604c & 4) == 4) {
            int i11 = this.f41607f;
            c5264He.b(3, 0);
            c5264He.d(i11);
        }
        c5264He.a(this.f41603b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new I90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new I90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41608g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f41604c & 2) != 2 || this.f41606e.isInitialized()) {
            this.f41608g = (byte) 1;
            return true;
        }
        this.f41608g = (byte) 0;
        return false;
    }

    public K90() {
        this.f41608g = (byte) -1;
        this.f41609h = -1;
        this.f41603b = AbstractC8206l8.f49897b;
    }

    public K90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f41608g = (byte) -1;
        this.f41609h = -1;
        this.f41605d = J90.INV;
        this.f41606e = M90.f42196u;
        boolean z10 = false;
        this.f41607f = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        L90 l90 = null;
                        J90 j90 = null;
                        if (i10 == 8) {
                            int f10 = c4858Ae.f();
                            if (f10 == 0) {
                                j90 = J90.IN;
                            } else if (f10 == 1) {
                                j90 = J90.OUT;
                            } else if (f10 == 2) {
                                j90 = J90.INV;
                            } else if (f10 == 3) {
                                j90 = J90.STAR;
                            }
                            if (j90 == null) {
                                c5264He.g(i10);
                                c5264He.g(f10);
                            } else {
                                this.f41604c |= 1;
                                this.f41605d = j90;
                            }
                        } else if (i10 == 18) {
                            if ((this.f41604c & 2) == 2) {
                                M90 m90 = this.f41606e;
                                m90.getClass();
                                l90 = M90.a(m90);
                            }
                            M90 m902 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                            this.f41606e = m902;
                            if (l90 != null) {
                                l90.a(m902);
                                this.f41606e = l90.d();
                            }
                            this.f41604c |= 2;
                        } else if (i10 != 24) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            this.f41604c |= 4;
                            this.f41607f = c4858Ae.f();
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
                        throw th3;
                    }
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
        } finally {
            this.f41603b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10;
        int i11 = this.f41609h;
        if (i11 != -1) {
            return i11;
        }
        if ((this.f41604c & 1) == 1) {
            int i12 = this.f41605d.f41335b;
            i10 = C5264He.a(i12) + C5264He.c(1);
        } else {
            i10 = 0;
        }
        if ((this.f41604c & 2) == 2) {
            i10 += C5264He.a(2, this.f41606e);
        }
        if ((this.f41604c & 4) == 4) {
            i10 += C5264He.a(3, this.f41607f);
        }
        int size = this.f41603b.size() + i10;
        this.f41609h = size;
        return size;
    }
}
