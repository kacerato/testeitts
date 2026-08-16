package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7605ha0 extends AbstractC6287Yy {

    public static final C7605ha0 f48584f;

    public static final C7271fa0 f48585g = new C7271fa0();

    public final AbstractC8206l8 f48586b;

    public List f48587c;

    public byte f48588d;

    public int f48589e;

    static {
        C7605ha0 c7605ha0 = new C7605ha0();
        f48584f = c7605ha0;
        c7605ha0.f48587c = Collections.EMPTY_LIST;
    }

    public C7605ha0(C7438ga0 c7438ga0) {
        super(0);
        this.f48588d = (byte) -1;
        this.f48589e = -1;
        this.f48586b = c7438ga0.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f48587c.size(); i10++) {
            c5264He.b(1, (O0) this.f48587c.get(i10));
        }
        c5264He.a(this.f48586b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C7438ga0();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C7438ga0().a(this);
    }

    public final C7438ga0 d() {
        return new C7438ga0().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f48588d == 1) {
            return true;
        }
        this.f48588d = (byte) 1;
        return true;
    }

    @Override
    public final int a() {
        int i10 = this.f48589e;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f48587c.size(); i12++) {
            i11 += C5264He.a(1, (O0) this.f48587c.get(i12));
        }
        int size = this.f48586b.size() + i11;
        this.f48589e = size;
        return size;
    }

    public C7605ha0() {
        this.f48588d = (byte) -1;
        this.f48589e = -1;
        this.f48586b = AbstractC8206l8.f49897b;
    }

    public C7605ha0(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f48588d = (byte) -1;
        this.f48589e = -1;
        this.f48587c = Collections.EMPTY_LIST;
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
                                this.f48587c = new ArrayList();
                                z11 = true;
                            }
                            this.f48587c.add(c4858Ae.a(C7104ea0.f47710m, c10503yv));
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
                    this.f48587c = Collections.unmodifiableList(this.f48587c);
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
            this.f48587c = Collections.unmodifiableList(this.f48587c);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f48586b = c7872j8.c();
        }
    }
}
