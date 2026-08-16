package com.android.tools.r8.internal;

import java.io.IOException;

public final class M80 extends AbstractC6287Yy {

    public static final M80 f42187h;

    public static final G80 f42188i = new G80();

    public final AbstractC8206l8 f42189b;

    public int f42190c;

    public int f42191d;

    public L80 f42192e;

    public byte f42193f;

    public int f42194g;

    static {
        M80 m80 = new M80();
        f42187h = m80;
        m80.f42191d = 0;
        m80.f42192e = L80.f41876q;
    }

    public M80(H80 h80) {
        super(0);
        this.f42193f = (byte) -1;
        this.f42194g = -1;
        this.f42189b = h80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f42190c & 1) == 1) {
            int i10 = this.f42191d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f42190c & 2) == 2) {
            c5264He.b(2, this.f42192e);
        }
        c5264He.a(this.f42189b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new H80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new H80().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42193f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int i10 = this.f42190c;
        if ((i10 & 1) != 1) {
            this.f42193f = (byte) 0;
            return false;
        }
        if ((i10 & 2) != 2) {
            this.f42193f = (byte) 0;
            return false;
        }
        if (this.f42192e.isInitialized()) {
            this.f42193f = (byte) 1;
            return true;
        }
        this.f42193f = (byte) 0;
        return false;
    }

    public M80() {
        this.f42193f = (byte) -1;
        this.f42194g = -1;
        this.f42189b = AbstractC8206l8.f49897b;
    }

    @Override
    public final int a() {
        int i10 = this.f42194g;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f42190c & 1) == 1 ? C5264He.a(1, this.f42191d) : 0;
        if ((this.f42190c & 2) == 2) {
            a10 += C5264He.a(2, this.f42192e);
        }
        int size = this.f42189b.size() + a10;
        this.f42194g = size;
        return size;
    }

    public M80(C4858Ae c4858Ae, C10503yv c10503yv) {
        J80 j80;
        this.f42193f = (byte) -1;
        this.f42194g = -1;
        boolean z10 = false;
        this.f42191d = 0;
        this.f42192e = L80.f41876q;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 8) {
                                this.f42190c |= 1;
                                this.f42191d = c4858Ae.f();
                            } else if (i10 != 18) {
                                if (!c4858Ae.a(i10, c5264He)) {
                                }
                            } else {
                                if ((this.f42190c & 2) == 2) {
                                    L80 l80 = this.f42192e;
                                    l80.getClass();
                                    j80 = new J80().a(l80);
                                } else {
                                    j80 = null;
                                }
                                L80 l802 = (L80) c4858Ae.a(L80.f41877r, c10503yv);
                                this.f42192e = l802;
                                if (j80 != null) {
                                    j80.a(l802);
                                    this.f42192e = j80.c();
                                }
                                this.f42190c |= 2;
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
            this.f42189b = c7872j8.c();
        }
    }
}
