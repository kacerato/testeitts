package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Y80 extends AbstractC6287Yy {

    public static final Y80 f45937f;

    public static final W80 f45938g = new W80();

    public final AbstractC8206l8 f45939b;

    public List f45940c;

    public byte f45941d;

    public int f45942e;

    static {
        Y80 y80 = new Y80();
        f45937f = y80;
        y80.f45940c = Collections.EMPTY_LIST;
    }

    public Y80(X80 x80) {
        super(0);
        this.f45941d = (byte) -1;
        this.f45942e = -1;
        this.f45939b = x80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f45940c.size(); i10++) {
            c5264He.b(1, (O0) this.f45940c.get(i10));
        }
        c5264He.a(this.f45939b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new X80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new X80().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f45941d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f45940c.size(); i10++) {
            if (!((C6877d90) this.f45940c.get(i10)).isInitialized()) {
                this.f45941d = (byte) 0;
                return false;
            }
        }
        this.f45941d = (byte) 1;
        return true;
    }

    @Override
    public final int a() {
        int i10 = this.f45942e;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f45940c.size(); i12++) {
            i11 += C5264He.a(1, (O0) this.f45940c.get(i12));
        }
        int size = this.f45939b.size() + i11;
        this.f45942e = size;
        return size;
    }

    public Y80() {
        this.f45941d = (byte) -1;
        this.f45942e = -1;
        this.f45939b = AbstractC8206l8.f49897b;
    }

    public Y80(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f45941d = (byte) -1;
        this.f45942e = -1;
        this.f45940c = Collections.EMPTY_LIST;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 != 10) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            if (!z11) {
                                this.f45940c = new ArrayList();
                                z11 = true;
                            }
                            this.f45940c.add(c4858Ae.a(C6877d90.f47303k, c10503yv));
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
                if (z11) {
                    this.f45940c = Collections.unmodifiableList(this.f45940c);
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
            this.f45940c = Collections.unmodifiableList(this.f45940c);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f45939b = c7872j8.c();
        }
    }
}
