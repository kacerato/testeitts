package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class O80 extends AbstractC6287Yy {

    public static final O80 f42788h;

    public static final F80 f42789i = new F80();

    public final AbstractC8206l8 f42790b;

    public int f42791c;

    public int f42792d;

    public List f42793e;

    public byte f42794f;

    public int f42795g;

    static {
        O80 o80 = new O80();
        f42788h = o80;
        o80.f42792d = 0;
        o80.f42793e = Collections.EMPTY_LIST;
    }

    public O80(N80 n80) {
        super(0);
        this.f42794f = (byte) -1;
        this.f42795g = -1;
        this.f42790b = n80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f42791c & 1) == 1) {
            int i10 = this.f42792d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        for (int i11 = 0; i11 < this.f42793e.size(); i11++) {
            c5264He.b(2, (O0) this.f42793e.get(i11));
        }
        c5264He.a(this.f42790b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new N80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new N80().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42794f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f42791c & 1) != 1) {
            this.f42794f = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.f42793e.size(); i10++) {
            if (!((M80) this.f42793e.get(i10)).isInitialized()) {
                this.f42794f = (byte) 0;
                return false;
            }
        }
        this.f42794f = (byte) 1;
        return true;
    }

    public O80() {
        this.f42794f = (byte) -1;
        this.f42795g = -1;
        this.f42790b = AbstractC8206l8.f49897b;
    }

    @Override
    public final int a() {
        int i10 = this.f42795g;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f42791c & 1) == 1 ? C5264He.a(1, this.f42792d) : 0;
        for (int i11 = 0; i11 < this.f42793e.size(); i11++) {
            a10 += C5264He.a(2, (O0) this.f42793e.get(i11));
        }
        int size = this.f42790b.size() + a10;
        this.f42795g = size;
        return size;
    }

    public O80(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f42794f = (byte) -1;
        this.f42795g = -1;
        boolean z10 = false;
        this.f42792d = 0;
        this.f42793e = Collections.EMPTY_LIST;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 == 8) {
                            this.f42791c |= 1;
                            this.f42792d = c4858Ae.f();
                        } else if (i10 != 18) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            if ((c10 & 2) != 2) {
                                this.f42793e = new ArrayList();
                                c10 = 2;
                            }
                            this.f42793e.add(c4858Ae.a(M80.f42188i, c10503yv));
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if ((c10 & 2) == 2) {
                        this.f42793e = Collections.unmodifiableList(this.f42793e);
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
            } catch (LJ e10) {
                e10.f41938b = this;
                throw e10;
            } catch (IOException e11) {
                LJ lj2 = new LJ(e11.getMessage());
                lj2.f41938b = this;
                throw lj2;
            }
        }
        if ((c10 & 2) == 2) {
            this.f42793e = Collections.unmodifiableList(this.f42793e);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f42790b = c7872j8.c();
        }
    }
}
