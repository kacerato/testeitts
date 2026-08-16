package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class M90 extends AbstractC6001Ty {

    public static final M90 f42196u;

    public static final G90 f42197v = new G90();

    public final AbstractC8206l8 f42198c;

    public int f42199d;

    public List f42200e;

    public boolean f42201f;

    public int f42202g;

    public M90 f42203h;

    public int f42204i;

    public int f42205j;

    public int f42206k;

    public int f42207l;

    public int f42208m;

    public M90 f42209n;

    public int f42210o;

    public M90 f42211p;

    public int f42212q;

    public int f42213r;

    public byte f42214s;

    public int f42215t;

    static {
        M90 m90 = new M90();
        f42196u = m90;
        m90.f();
    }

    public M90(L90 l90) {
        super(l90);
        this.f42214s = (byte) -1;
        this.f42215t = -1;
        this.f42198c = l90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f42199d & 4096) == 4096) {
            int i10 = this.f42213r;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        for (int i11 = 0; i11 < this.f42200e.size(); i11++) {
            c5264He.b(2, (O0) this.f42200e.get(i11));
        }
        if ((this.f42199d & 1) == 1) {
            boolean z10 = this.f42201f;
            c5264He.b(3, 0);
            c5264He.e(z10 ? 1 : 0);
        }
        if ((this.f42199d & 2) == 2) {
            int i12 = this.f42202g;
            c5264He.b(4, 0);
            c5264He.d(i12);
        }
        if ((this.f42199d & 4) == 4) {
            c5264He.b(5, this.f42203h);
        }
        if ((this.f42199d & 16) == 16) {
            int i13 = this.f42205j;
            c5264He.b(6, 0);
            c5264He.d(i13);
        }
        if ((this.f42199d & 32) == 32) {
            int i14 = this.f42206k;
            c5264He.b(7, 0);
            c5264He.d(i14);
        }
        if ((this.f42199d & 8) == 8) {
            int i15 = this.f42204i;
            c5264He.b(8, 0);
            c5264He.d(i15);
        }
        if ((this.f42199d & 64) == 64) {
            int i16 = this.f42207l;
            c5264He.b(9, 0);
            c5264He.d(i16);
        }
        if ((this.f42199d & 256) == 256) {
            c5264He.b(10, this.f42209n);
        }
        if ((this.f42199d & 512) == 512) {
            int i17 = this.f42210o;
            c5264He.b(11, 0);
            c5264He.d(i17);
        }
        if ((this.f42199d & 128) == 128) {
            int i18 = this.f42208m;
            c5264He.b(12, 0);
            c5264He.d(i18);
        }
        if ((this.f42199d & 1024) == 1024) {
            c5264He.b(13, this.f42211p);
        }
        if ((this.f42199d & 2048) == 2048) {
            int i19 = this.f42212q;
            c5264He.b(14, 0);
            c5264He.d(i19);
        }
        c5943Sy.a(200, c5264He);
        c5264He.a(this.f42198c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new L90();
    }

    public final void f() {
        this.f42200e = Collections.EMPTY_LIST;
        this.f42201f = false;
        this.f42202g = 0;
        M90 m90 = f42196u;
        this.f42203h = m90;
        this.f42204i = 0;
        this.f42205j = 0;
        this.f42206k = 0;
        this.f42207l = 0;
        this.f42208m = 0;
        this.f42209n = m90;
        this.f42210o = 0;
        this.f42211p = m90;
        this.f42212q = 0;
        this.f42213r = 0;
    }

    @Override
    public final L90 c() {
        return a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f42196u;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42214s;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f42200e.size(); i10++) {
            if (!((K90) this.f42200e.get(i10)).isInitialized()) {
                this.f42214s = (byte) 0;
                return false;
            }
        }
        if ((this.f42199d & 4) == 4 && !this.f42203h.isInitialized()) {
            this.f42214s = (byte) 0;
            return false;
        }
        if ((this.f42199d & 256) == 256 && !this.f42209n.isInitialized()) {
            this.f42214s = (byte) 0;
            return false;
        }
        if ((this.f42199d & 1024) == 1024 && !this.f42211p.isInitialized()) {
            this.f42214s = (byte) 0;
            return false;
        }
        if (d()) {
            this.f42214s = (byte) 1;
            return true;
        }
        this.f42214s = (byte) 0;
        return false;
    }

    public M90() {
        this.f42214s = (byte) -1;
        this.f42215t = -1;
        this.f42198c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0022. Please report as an issue. */
    public M90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f42214s = (byte) -1;
        this.f42215t = -1;
        f();
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    L90 l90 = null;
                    switch (i10) {
                        case 0:
                            z10 = true;
                        case 8:
                            this.f42199d |= 4096;
                            this.f42213r = c4858Ae.f();
                        case 18:
                            if (!z11) {
                                this.f42200e = new ArrayList();
                                z11 = true;
                            }
                            this.f42200e.add(c4858Ae.a(K90.f41602j, c10503yv));
                        case 24:
                            this.f42199d |= 1;
                            this.f42201f = c4858Ae.g() != 0;
                        case 32:
                            this.f42199d |= 2;
                            this.f42202g = c4858Ae.f();
                        case 42:
                            if ((this.f42199d & 4) == 4) {
                                M90 m90 = this.f42203h;
                                m90.getClass();
                                l90 = a(m90);
                            }
                            M90 m902 = (M90) c4858Ae.a(f42197v, c10503yv);
                            this.f42203h = m902;
                            if (l90 != null) {
                                l90.a(m902);
                                this.f42203h = l90.d();
                            }
                            this.f42199d |= 4;
                        case 48:
                            this.f42199d |= 16;
                            this.f42205j = c4858Ae.f();
                        case 56:
                            this.f42199d |= 32;
                            this.f42206k = c4858Ae.f();
                        case 64:
                            this.f42199d |= 8;
                            this.f42204i = c4858Ae.f();
                        case 72:
                            this.f42199d |= 64;
                            this.f42207l = c4858Ae.f();
                        case 82:
                            if ((this.f42199d & 256) == 256) {
                                M90 m903 = this.f42209n;
                                m903.getClass();
                                l90 = a(m903);
                            }
                            M90 m904 = (M90) c4858Ae.a(f42197v, c10503yv);
                            this.f42209n = m904;
                            if (l90 != null) {
                                l90.a(m904);
                                this.f42209n = l90.d();
                            }
                            this.f42199d |= 256;
                        case 88:
                            this.f42199d |= 512;
                            this.f42210o = c4858Ae.f();
                        case 96:
                            this.f42199d |= 128;
                            this.f42208m = c4858Ae.f();
                        case 106:
                            if ((this.f42199d & 1024) == 1024) {
                                M90 m905 = this.f42211p;
                                m905.getClass();
                                l90 = a(m905);
                            }
                            M90 m906 = (M90) c4858Ae.a(f42197v, c10503yv);
                            this.f42211p = m906;
                            if (l90 != null) {
                                l90.a(m906);
                                this.f42211p = l90.d();
                            }
                            this.f42199d |= 1024;
                        case 112:
                            this.f42199d |= 2048;
                            this.f42212q = c4858Ae.f();
                        default:
                            if (!a(c4858Ae, c5264He, c10503yv, i10)) {
                                z10 = true;
                            }
                    }
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
                    this.f42200e = Collections.unmodifiableList(this.f42200e);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f42198c = c7872j8.c();
                    throw th3;
                }
                this.f42198c = c7872j8.c();
                this.f44631b.a();
                throw th2;
            }
        }
        if (z11) {
            this.f42200e = Collections.unmodifiableList(this.f42200e);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f42198c = c7872j8.c();
            throw th4;
        }
        this.f42198c = c7872j8.c();
        this.f44631b.a();
    }

    @Override
    public final int a() {
        int i10 = this.f42215t;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f42199d & 4096) == 4096 ? C5264He.a(1, this.f42213r) : 0;
        for (int i11 = 0; i11 < this.f42200e.size(); i11++) {
            a10 += C5264He.a(2, (O0) this.f42200e.get(i11));
        }
        if ((this.f42199d & 1) == 1) {
            a10 += C5264He.c(3) + 1;
        }
        if ((this.f42199d & 2) == 2) {
            a10 += C5264He.a(4, this.f42202g);
        }
        if ((this.f42199d & 4) == 4) {
            a10 += C5264He.a(5, this.f42203h);
        }
        if ((this.f42199d & 16) == 16) {
            a10 += C5264He.a(6, this.f42205j);
        }
        if ((this.f42199d & 32) == 32) {
            a10 += C5264He.a(7, this.f42206k);
        }
        if ((this.f42199d & 8) == 8) {
            a10 += C5264He.a(8, this.f42204i);
        }
        if ((this.f42199d & 64) == 64) {
            a10 += C5264He.a(9, this.f42207l);
        }
        if ((this.f42199d & 256) == 256) {
            a10 += C5264He.a(10, this.f42209n);
        }
        if ((this.f42199d & 512) == 512) {
            a10 += C5264He.a(11, this.f42210o);
        }
        if ((this.f42199d & 128) == 128) {
            a10 += C5264He.a(12, this.f42208m);
        }
        if ((this.f42199d & 1024) == 1024) {
            a10 += C5264He.a(13, this.f42211p);
        }
        if ((this.f42199d & 2048) == 2048) {
            a10 += C5264He.a(14, this.f42212q);
        }
        int size = this.f42198c.size() + e() + a10;
        this.f42215t = size;
        return size;
    }

    public static L90 a(M90 m90) {
        return new L90().a(m90);
    }
}
