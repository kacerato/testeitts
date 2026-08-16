package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import w2.C15883c;

public final class C9879v90 extends AbstractC6001Ty {

    public static final C9879v90 f53025v;

    public static final C9545t90 f53026w = new C9545t90();

    public final AbstractC8206l8 f53027c;

    public int f53028d;

    public int f53029e;

    public int f53030f;

    public int f53031g;

    public M90 f53032h;

    public int f53033i;

    public List f53034j;

    public M90 f53035k;

    public int f53036l;

    public List f53037m;

    public List f53038n;

    public int f53039o;

    public Z90 f53040p;

    public int f53041q;

    public int f53042r;

    public List f53043s;

    public byte f53044t;

    public int f53045u;

    static {
        C9879v90 c9879v90 = new C9879v90();
        f53025v = c9879v90;
        c9879v90.f();
    }

    public C9879v90(C9712u90 c9712u90) {
        super(c9712u90);
        this.f53039o = -1;
        this.f53044t = (byte) -1;
        this.f53045u = -1;
        this.f53027c = c9712u90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f53028d & 2) == 2) {
            int i10 = this.f53030f;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f53028d & 4) == 4) {
            int i11 = this.f53031g;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f53028d & 8) == 8) {
            c5264He.b(3, this.f53032h);
        }
        for (int i12 = 0; i12 < this.f53034j.size(); i12++) {
            c5264He.b(4, (O0) this.f53034j.get(i12));
        }
        if ((this.f53028d & 32) == 32) {
            c5264He.b(5, this.f53035k);
        }
        if ((this.f53028d & 128) == 128) {
            c5264He.b(6, this.f53040p);
        }
        if ((this.f53028d & 256) == 256) {
            int i13 = this.f53041q;
            c5264He.b(7, 0);
            c5264He.d(i13);
        }
        if ((this.f53028d & 512) == 512) {
            int i14 = this.f53042r;
            c5264He.b(8, 0);
            c5264He.d(i14);
        }
        if ((this.f53028d & 16) == 16) {
            int i15 = this.f53033i;
            c5264He.b(9, 0);
            c5264He.d(i15);
        }
        if ((this.f53028d & 64) == 64) {
            int i16 = this.f53036l;
            c5264He.b(10, 0);
            c5264He.d(i16);
        }
        if ((this.f53028d & 1) == 1) {
            int i17 = this.f53029e;
            c5264He.b(11, 0);
            c5264He.d(i17);
        }
        for (int i18 = 0; i18 < this.f53037m.size(); i18++) {
            c5264He.b(12, (O0) this.f53037m.get(i18));
        }
        if (this.f53038n.size() > 0) {
            c5264He.g(106);
            c5264He.g(this.f53039o);
        }
        for (int i19 = 0; i19 < this.f53038n.size(); i19++) {
            c5264He.d(((Integer) this.f53038n.get(i19)).intValue());
        }
        for (int i20 = 0; i20 < this.f53043s.size(); i20++) {
            int intValue = ((Integer) this.f53043s.get(i20)).intValue();
            c5264He.b(31, 0);
            c5264He.d(intValue);
        }
        c5943Sy.a(19000, c5264He);
        c5264He.a(this.f53027c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C9712u90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C9712u90().a(this);
    }

    public final void f() {
        this.f53029e = 518;
        this.f53030f = 2054;
        this.f53031g = 0;
        M90 m90 = M90.f42196u;
        this.f53032h = m90;
        this.f53033i = 0;
        List list = Collections.EMPTY_LIST;
        this.f53034j = list;
        this.f53035k = m90;
        this.f53036l = 0;
        this.f53037m = list;
        this.f53038n = list;
        this.f53040p = Z90.f46173m;
        this.f53041q = 0;
        this.f53042r = 0;
        this.f53043s = list;
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f53025v;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53044t;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int i10 = this.f53028d;
        if ((i10 & 4) != 4) {
            this.f53044t = (byte) 0;
            return false;
        }
        if ((i10 & 8) == 8 && !this.f53032h.isInitialized()) {
            this.f53044t = (byte) 0;
            return false;
        }
        for (int i11 = 0; i11 < this.f53034j.size(); i11++) {
            if (!((T90) this.f53034j.get(i11)).isInitialized()) {
                this.f53044t = (byte) 0;
                return false;
            }
        }
        if ((this.f53028d & 32) == 32 && !this.f53035k.isInitialized()) {
            this.f53044t = (byte) 0;
            return false;
        }
        for (int i12 = 0; i12 < this.f53037m.size(); i12++) {
            if (!((M90) this.f53037m.get(i12)).isInitialized()) {
                this.f53044t = (byte) 0;
                return false;
            }
        }
        if ((this.f53028d & 128) == 128 && !this.f53040p.isInitialized()) {
            this.f53044t = (byte) 0;
            return false;
        }
        if (d()) {
            this.f53044t = (byte) 1;
            return true;
        }
        this.f53044t = (byte) 0;
        return false;
    }

    public C9879v90() {
        this.f53039o = -1;
        this.f53044t = (byte) -1;
        this.f53045u = -1;
        this.f53027c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public C9879v90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f53039o = -1;
        this.f53044t = (byte) -1;
        this.f53045u = -1;
        f();
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        char c10 = 0;
        while (true) {
            ?? r52 = 256;
            if (!z10) {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        L90 l90 = null;
                        Y90 y90 = null;
                        L90 l902 = null;
                        switch (i10) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f53028d |= 2;
                                this.f53030f = c4858Ae.f();
                            case 16:
                                this.f53028d |= 4;
                                this.f53031g = c4858Ae.f();
                            case 26:
                                if ((this.f53028d & 8) == 8) {
                                    M90 m90 = this.f53032h;
                                    m90.getClass();
                                    l90 = M90.a(m90);
                                }
                                M90 m902 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f53032h = m902;
                                if (l90 != null) {
                                    l90.a(m902);
                                    this.f53032h = l90.d();
                                }
                                this.f53028d |= 8;
                            case 34:
                                int i11 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i11 != 32) {
                                    this.f53034j = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                }
                                this.f53034j.add(c4858Ae.a(T90.f44401o, c10503yv));
                            case 42:
                                if ((this.f53028d & 32) == 32) {
                                    M90 m903 = this.f53035k;
                                    m903.getClass();
                                    l902 = M90.a(m903);
                                }
                                M90 m904 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f53035k = m904;
                                if (l902 != null) {
                                    l902.a(m904);
                                    this.f53035k = l902.d();
                                }
                                this.f53028d |= 32;
                            case 50:
                                if ((this.f53028d & 128) == 128) {
                                    Z90 z90 = this.f53040p;
                                    z90.getClass();
                                    y90 = new Y90().a(z90);
                                }
                                Z90 z902 = (Z90) c4858Ae.a(Z90.f46174n, c10503yv);
                                this.f53040p = z902;
                                if (y90 != null) {
                                    y90.a(z902);
                                    this.f53040p = y90.c();
                                }
                                this.f53028d |= 128;
                            case 56:
                                this.f53028d |= 256;
                                this.f53041q = c4858Ae.f();
                            case 64:
                                this.f53028d |= 512;
                                this.f53042r = c4858Ae.f();
                            case 72:
                                this.f53028d |= 16;
                                this.f53033i = c4858Ae.f();
                            case 80:
                                this.f53028d |= 64;
                                this.f53036l = c4858Ae.f();
                            case 88:
                                this.f53028d |= 1;
                                this.f53029e = c4858Ae.f();
                            case 98:
                                int i12 = (c10 == true ? 1 : 0) & 256;
                                c10 = c10;
                                if (i12 != 256) {
                                    this.f53037m = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0100';
                                }
                                this.f53037m.add(c4858Ae.a(M90.f42197v, c10503yv));
                            case 104:
                                int i13 = (c10 == true ? 1 : 0) & 512;
                                c10 = c10;
                                if (i13 != 512) {
                                    this.f53038n = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0200';
                                }
                                this.f53038n.add(Integer.valueOf(c4858Ae.f()));
                            case 106:
                                int b10 = c4858Ae.b(c4858Ae.f());
                                int i14 = (c10 == true ? 1 : 0) & 512;
                                c10 = c10;
                                if (i14 != 512) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f53038n = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u0200';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f53038n.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b10;
                                c4858Ae.j();
                            case 248:
                                int i15 = (c10 == true ? 1 : 0) & 8192;
                                c10 = c10;
                                if (i15 != 8192) {
                                    this.f53043s = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u2000';
                                }
                                this.f53043s.add(Integer.valueOf(c4858Ae.f()));
                            case 250:
                                int b11 = c4858Ae.b(c4858Ae.f());
                                int i16 = (c10 == true ? 1 : 0) & 8192;
                                c10 = c10;
                                if (i16 != 8192) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f53043s = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u2000';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f53043s.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b11;
                                c4858Ae.j();
                            default:
                                r52 = a(c4858Ae, c5264He, c10503yv, i10);
                                if (r52 == 0) {
                                    z10 = true;
                                }
                        }
                    } catch (Throwable th2) {
                        if (((c10 == true ? 1 : 0) & 32) == 32) {
                            this.f53034j = Collections.unmodifiableList(this.f53034j);
                        }
                        if (((c10 == true ? 1 : 0) & 256) == r52) {
                            this.f53037m = Collections.unmodifiableList(this.f53037m);
                        }
                        if (((c10 == true ? 1 : 0) & 512) == 512) {
                            this.f53038n = Collections.unmodifiableList(this.f53038n);
                        }
                        if (((c10 == true ? 1 : 0) & 8192) == 8192) {
                            this.f53043s = Collections.unmodifiableList(this.f53043s);
                        }
                        try {
                            if (c5264He.f40814d != null) {
                                c5264He.a();
                            }
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f53027c = c7872j8.c();
                            throw th3;
                        }
                        this.f53027c = c7872j8.c();
                        this.f44631b.a();
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
            } else {
                if (((c10 == true ? 1 : 0) & 32) == 32) {
                    this.f53034j = Collections.unmodifiableList(this.f53034j);
                }
                if (((c10 == true ? 1 : 0) & 256) == 256) {
                    this.f53037m = Collections.unmodifiableList(this.f53037m);
                }
                if (((c10 == true ? 1 : 0) & 512) == 512) {
                    this.f53038n = Collections.unmodifiableList(this.f53038n);
                }
                if (((c10 == true ? 1 : 0) & 8192) == 8192) {
                    this.f53043s = Collections.unmodifiableList(this.f53043s);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f53027c = c7872j8.c();
                    throw th4;
                }
                this.f53027c = c7872j8.c();
                this.f44631b.a();
                return;
            }
        }
    }

    @Override
    public final int a() {
        int i10 = this.f53045u;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f53028d & 2) == 2 ? C5264He.a(1, this.f53030f) : 0;
        if ((this.f53028d & 4) == 4) {
            a10 += C5264He.a(2, this.f53031g);
        }
        if ((this.f53028d & 8) == 8) {
            a10 += C5264He.a(3, this.f53032h);
        }
        for (int i11 = 0; i11 < this.f53034j.size(); i11++) {
            a10 += C5264He.a(4, (O0) this.f53034j.get(i11));
        }
        if ((this.f53028d & 32) == 32) {
            a10 += C5264He.a(5, this.f53035k);
        }
        if ((this.f53028d & 128) == 128) {
            a10 += C5264He.a(6, this.f53040p);
        }
        if ((this.f53028d & 256) == 256) {
            a10 += C5264He.a(7, this.f53041q);
        }
        if ((this.f53028d & 512) == 512) {
            a10 += C5264He.a(8, this.f53042r);
        }
        if ((this.f53028d & 16) == 16) {
            a10 += C5264He.a(9, this.f53033i);
        }
        if ((this.f53028d & 64) == 64) {
            a10 += C5264He.a(10, this.f53036l);
        }
        if ((this.f53028d & 1) == 1) {
            a10 += C5264He.a(11, this.f53029e);
        }
        for (int i12 = 0; i12 < this.f53037m.size(); i12++) {
            a10 += C5264He.a(12, (O0) this.f53037m.get(i12));
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.f53038n.size(); i14++) {
            int intValue = ((Integer) this.f53038n.get(i14)).intValue();
            i13 += intValue >= 0 ? C5264He.b(intValue) : 10;
        }
        int i15 = a10 + i13;
        if (!this.f53038n.isEmpty()) {
            i15 = i15 + 1 + (i13 >= 0 ? C5264He.b(i13) : 10);
        }
        this.f53039o = i13;
        int i16 = 0;
        for (int i17 = 0; i17 < this.f53043s.size(); i17++) {
            int intValue2 = ((Integer) this.f53043s.get(i17)).intValue();
            i16 += intValue2 >= 0 ? C5264He.b(intValue2) : 10;
        }
        int size = this.f53027c.size() + e() + (this.f53043s.size() * 2) + i15 + i16;
        this.f53045u = size;
        return size;
    }
}
