package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class W90 extends AbstractC6287Yy {

    public static final W90 f45318h;

    public static final U90 f45319i = new U90();

    public final AbstractC8206l8 f45320b;

    public int f45321c;

    public List f45322d;

    public int f45323e;

    public byte f45324f;

    public int f45325g;

    static {
        W90 w90 = new W90();
        f45318h = w90;
        w90.f45322d = Collections.EMPTY_LIST;
        w90.f45323e = -1;
    }

    public W90(V90 v90) {
        super(0);
        this.f45324f = (byte) -1;
        this.f45325g = -1;
        this.f45320b = v90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f45322d.size(); i10++) {
            c5264He.b(1, (O0) this.f45322d.get(i10));
        }
        if ((this.f45321c & 1) == 1) {
            int i11 = this.f45323e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        c5264He.a(this.f45320b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new V90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return a(this);
    }

    public final V90 d() {
        return a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f45324f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f45322d.size(); i10++) {
            if (!((M90) this.f45322d.get(i10)).isInitialized()) {
                this.f45324f = (byte) 0;
                return false;
            }
        }
        this.f45324f = (byte) 1;
        return true;
    }

    public W90() {
        this.f45324f = (byte) -1;
        this.f45325g = -1;
        this.f45320b = AbstractC8206l8.f49897b;
    }

    @Override
    public final int a() {
        int i10 = this.f45325g;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f45322d.size(); i12++) {
            i11 += C5264He.a(1, (O0) this.f45322d.get(i12));
        }
        if ((this.f45321c & 1) == 1) {
            i11 += C5264He.a(2, this.f45323e);
        }
        int size = this.f45320b.size() + i11;
        this.f45325g = size;
        return size;
    }

    public W90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f45324f = (byte) -1;
        this.f45325g = -1;
        this.f45322d = Collections.EMPTY_LIST;
        this.f45323e = -1;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 10) {
                                if (!z11) {
                                    this.f45322d = new ArrayList();
                                    z11 = true;
                                }
                                this.f45322d.add(c4858Ae.a(M90.f42197v, c10503yv));
                            } else if (i10 != 16) {
                                if (!c4858Ae.a(i10, c5264He)) {
                                }
                            } else {
                                this.f45321c |= 1;
                                this.f45323e = c4858Ae.f();
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
                if (z11) {
                    this.f45322d = Collections.unmodifiableList(this.f45322d);
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
            this.f45322d = Collections.unmodifiableList(this.f45322d);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f45320b = c7872j8.c();
        }
    }

    public static V90 a(W90 w90) {
        return new V90().a(w90);
    }
}
