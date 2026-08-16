package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import w2.C15883c;

public final class C8544n90 extends AbstractC6001Ty {

    public static final C8544n90 f50522v;

    public static final C8210l90 f50523w = new C8210l90();

    public final AbstractC8206l8 f50524c;

    public int f50525d;

    public int f50526e;

    public int f50527f;

    public int f50528g;

    public M90 f50529h;

    public int f50530i;

    public List f50531j;

    public M90 f50532k;

    public int f50533l;

    public List f50534m;

    public List f50535n;

    public int f50536o;

    public List f50537p;

    public W90 f50538q;

    public List f50539r;

    public Y80 f50540s;

    public byte f50541t;

    public int f50542u;

    static {
        C8544n90 c8544n90 = new C8544n90();
        f50522v = c8544n90;
        c8544n90.f();
    }

    public C8544n90(C8377m90 c8377m90) {
        super(c8377m90);
        this.f50536o = -1;
        this.f50541t = (byte) -1;
        this.f50542u = -1;
        this.f50524c = c8377m90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f50525d & 2) == 2) {
            int i10 = this.f50527f;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f50525d & 4) == 4) {
            int i11 = this.f50528g;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f50525d & 8) == 8) {
            c5264He.b(3, this.f50529h);
        }
        for (int i12 = 0; i12 < this.f50531j.size(); i12++) {
            c5264He.b(4, (O0) this.f50531j.get(i12));
        }
        if ((this.f50525d & 32) == 32) {
            c5264He.b(5, this.f50532k);
        }
        for (int i13 = 0; i13 < this.f50537p.size(); i13++) {
            c5264He.b(6, (O0) this.f50537p.get(i13));
        }
        if ((this.f50525d & 16) == 16) {
            int i14 = this.f50530i;
            c5264He.b(7, 0);
            c5264He.d(i14);
        }
        if ((this.f50525d & 64) == 64) {
            int i15 = this.f50533l;
            c5264He.b(8, 0);
            c5264He.d(i15);
        }
        if ((this.f50525d & 1) == 1) {
            int i16 = this.f50526e;
            c5264He.b(9, 0);
            c5264He.d(i16);
        }
        for (int i17 = 0; i17 < this.f50534m.size(); i17++) {
            c5264He.b(10, (O0) this.f50534m.get(i17));
        }
        if (this.f50535n.size() > 0) {
            c5264He.g(90);
            c5264He.g(this.f50536o);
        }
        for (int i18 = 0; i18 < this.f50535n.size(); i18++) {
            c5264He.d(((Integer) this.f50535n.get(i18)).intValue());
        }
        if ((this.f50525d & 128) == 128) {
            c5264He.b(30, this.f50538q);
        }
        for (int i19 = 0; i19 < this.f50539r.size(); i19++) {
            int intValue = ((Integer) this.f50539r.get(i19)).intValue();
            c5264He.b(31, 0);
            c5264He.d(intValue);
        }
        if ((this.f50525d & 256) == 256) {
            c5264He.b(32, this.f50540s);
        }
        c5943Sy.a(19000, c5264He);
        c5264He.a(this.f50524c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C8377m90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C8377m90().a(this);
    }

    public final void f() {
        this.f50526e = 6;
        this.f50527f = 6;
        this.f50528g = 0;
        M90 m90 = M90.f42196u;
        this.f50529h = m90;
        this.f50530i = 0;
        List list = Collections.EMPTY_LIST;
        this.f50531j = list;
        this.f50532k = m90;
        this.f50533l = 0;
        this.f50534m = list;
        this.f50535n = list;
        this.f50537p = list;
        this.f50538q = W90.f45318h;
        this.f50539r = list;
        this.f50540s = Y80.f45937f;
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f50522v;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f50541t;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int i10 = this.f50525d;
        if ((i10 & 4) != 4) {
            this.f50541t = (byte) 0;
            return false;
        }
        if ((i10 & 8) == 8 && !this.f50529h.isInitialized()) {
            this.f50541t = (byte) 0;
            return false;
        }
        for (int i11 = 0; i11 < this.f50531j.size(); i11++) {
            if (!((T90) this.f50531j.get(i11)).isInitialized()) {
                this.f50541t = (byte) 0;
                return false;
            }
        }
        if ((this.f50525d & 32) == 32 && !this.f50532k.isInitialized()) {
            this.f50541t = (byte) 0;
            return false;
        }
        for (int i12 = 0; i12 < this.f50534m.size(); i12++) {
            if (!((M90) this.f50534m.get(i12)).isInitialized()) {
                this.f50541t = (byte) 0;
                return false;
            }
        }
        for (int i13 = 0; i13 < this.f50537p.size(); i13++) {
            if (!((Z90) this.f50537p.get(i13)).isInitialized()) {
                this.f50541t = (byte) 0;
                return false;
            }
        }
        if ((this.f50525d & 128) == 128 && !this.f50538q.isInitialized()) {
            this.f50541t = (byte) 0;
            return false;
        }
        if ((this.f50525d & 256) == 256 && !this.f50540s.isInitialized()) {
            this.f50541t = (byte) 0;
            return false;
        }
        if (d()) {
            this.f50541t = (byte) 1;
            return true;
        }
        this.f50541t = (byte) 0;
        return false;
    }

    public C8544n90() {
        this.f50536o = -1;
        this.f50541t = (byte) -1;
        this.f50542u = -1;
        this.f50524c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public C8544n90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f50536o = -1;
        this.f50541t = (byte) -1;
        this.f50542u = -1;
        f();
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        char c10 = 0;
        while (true) {
            ?? r52 = 1024;
            if (!z10) {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        L90 l90 = null;
                        X80 x80 = null;
                        V90 v90 = null;
                        L90 l902 = null;
                        switch (i10) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f50525d |= 2;
                                this.f50527f = c4858Ae.f();
                            case 16:
                                this.f50525d |= 4;
                                this.f50528g = c4858Ae.f();
                            case 26:
                                if ((this.f50525d & 8) == 8) {
                                    M90 m90 = this.f50529h;
                                    m90.getClass();
                                    l90 = M90.a(m90);
                                }
                                M90 m902 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f50529h = m902;
                                if (l90 != null) {
                                    l90.a(m902);
                                    this.f50529h = l90.d();
                                }
                                this.f50525d |= 8;
                            case 34:
                                int i11 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i11 != 32) {
                                    this.f50531j = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                }
                                this.f50531j.add(c4858Ae.a(T90.f44401o, c10503yv));
                            case 42:
                                if ((this.f50525d & 32) == 32) {
                                    M90 m903 = this.f50532k;
                                    m903.getClass();
                                    l902 = M90.a(m903);
                                }
                                M90 m904 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f50532k = m904;
                                if (l902 != null) {
                                    l902.a(m904);
                                    this.f50532k = l902.d();
                                }
                                this.f50525d |= 32;
                            case 50:
                                int i12 = (c10 == true ? 1 : 0) & 1024;
                                c10 = c10;
                                if (i12 != 1024) {
                                    this.f50537p = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0400';
                                }
                                this.f50537p.add(c4858Ae.a(Z90.f46174n, c10503yv));
                            case 56:
                                this.f50525d |= 16;
                                this.f50530i = c4858Ae.f();
                            case 64:
                                this.f50525d |= 64;
                                this.f50533l = c4858Ae.f();
                            case 72:
                                this.f50525d |= 1;
                                this.f50526e = c4858Ae.f();
                            case 82:
                                int i13 = (c10 == true ? 1 : 0) & 256;
                                c10 = c10;
                                if (i13 != 256) {
                                    this.f50534m = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0100';
                                }
                                this.f50534m.add(c4858Ae.a(M90.f42197v, c10503yv));
                            case 88:
                                int i14 = (c10 == true ? 1 : 0) & 512;
                                c10 = c10;
                                if (i14 != 512) {
                                    this.f50535n = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0200';
                                }
                                this.f50535n.add(Integer.valueOf(c4858Ae.f()));
                            case 90:
                                int b10 = c4858Ae.b(c4858Ae.f());
                                int i15 = (c10 == true ? 1 : 0) & 512;
                                c10 = c10;
                                if (i15 != 512) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f50535n = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u0200';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f50535n.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b10;
                                c4858Ae.j();
                            case 242:
                                if ((this.f50525d & 128) == 128) {
                                    W90 w90 = this.f50538q;
                                    w90.getClass();
                                    v90 = W90.a(w90);
                                }
                                W90 w902 = (W90) c4858Ae.a(W90.f45319i, c10503yv);
                                this.f50538q = w902;
                                if (v90 != null) {
                                    v90.a(w902);
                                    this.f50538q = v90.c();
                                }
                                this.f50525d |= 128;
                            case 248:
                                int i16 = (c10 == true ? 1 : 0) & 4096;
                                c10 = c10;
                                if (i16 != 4096) {
                                    this.f50539r = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u1000';
                                }
                                this.f50539r.add(Integer.valueOf(c4858Ae.f()));
                            case 250:
                                int b11 = c4858Ae.b(c4858Ae.f());
                                int i17 = (c10 == true ? 1 : 0) & 4096;
                                c10 = c10;
                                if (i17 != 4096) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f50539r = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u1000';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f50539r.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b11;
                                c4858Ae.j();
                            case 258:
                                if ((this.f50525d & 256) == 256) {
                                    Y80 y80 = this.f50540s;
                                    y80.getClass();
                                    x80 = new X80().a(y80);
                                }
                                Y80 y802 = (Y80) c4858Ae.a(Y80.f45938g, c10503yv);
                                this.f50540s = y802;
                                if (x80 != null) {
                                    x80.a(y802);
                                    this.f50540s = x80.c();
                                }
                                this.f50525d |= 256;
                            default:
                                r52 = a(c4858Ae, c5264He, c10503yv, i10);
                                if (r52 == 0) {
                                    z10 = true;
                                }
                        }
                    } catch (Throwable th2) {
                        if (((c10 == true ? 1 : 0) & 32) == 32) {
                            this.f50531j = Collections.unmodifiableList(this.f50531j);
                        }
                        if (((c10 == true ? 1 : 0) & 1024) == r52) {
                            this.f50537p = Collections.unmodifiableList(this.f50537p);
                        }
                        if (((c10 == true ? 1 : 0) & 256) == 256) {
                            this.f50534m = Collections.unmodifiableList(this.f50534m);
                        }
                        if (((c10 == true ? 1 : 0) & 512) == 512) {
                            this.f50535n = Collections.unmodifiableList(this.f50535n);
                        }
                        if (((c10 == true ? 1 : 0) & 4096) == 4096) {
                            this.f50539r = Collections.unmodifiableList(this.f50539r);
                        }
                        try {
                            if (c5264He.f40814d != null) {
                                c5264He.a();
                            }
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f50524c = c7872j8.c();
                            throw th3;
                        }
                        this.f50524c = c7872j8.c();
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
                    this.f50531j = Collections.unmodifiableList(this.f50531j);
                }
                if (((c10 == true ? 1 : 0) & 1024) == 1024) {
                    this.f50537p = Collections.unmodifiableList(this.f50537p);
                }
                if (((c10 == true ? 1 : 0) & 256) == 256) {
                    this.f50534m = Collections.unmodifiableList(this.f50534m);
                }
                if (((c10 == true ? 1 : 0) & 512) == 512) {
                    this.f50535n = Collections.unmodifiableList(this.f50535n);
                }
                if (((c10 == true ? 1 : 0) & 4096) == 4096) {
                    this.f50539r = Collections.unmodifiableList(this.f50539r);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f50524c = c7872j8.c();
                    throw th4;
                }
                this.f50524c = c7872j8.c();
                this.f44631b.a();
                return;
            }
        }
    }

    @Override
    public final int a() {
        int i10 = this.f50542u;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f50525d & 2) == 2 ? C5264He.a(1, this.f50527f) : 0;
        if ((this.f50525d & 4) == 4) {
            a10 += C5264He.a(2, this.f50528g);
        }
        if ((this.f50525d & 8) == 8) {
            a10 += C5264He.a(3, this.f50529h);
        }
        for (int i11 = 0; i11 < this.f50531j.size(); i11++) {
            a10 += C5264He.a(4, (O0) this.f50531j.get(i11));
        }
        if ((this.f50525d & 32) == 32) {
            a10 += C5264He.a(5, this.f50532k);
        }
        for (int i12 = 0; i12 < this.f50537p.size(); i12++) {
            a10 += C5264He.a(6, (O0) this.f50537p.get(i12));
        }
        if ((this.f50525d & 16) == 16) {
            a10 += C5264He.a(7, this.f50530i);
        }
        if ((this.f50525d & 64) == 64) {
            a10 += C5264He.a(8, this.f50533l);
        }
        if ((this.f50525d & 1) == 1) {
            a10 += C5264He.a(9, this.f50526e);
        }
        for (int i13 = 0; i13 < this.f50534m.size(); i13++) {
            a10 += C5264He.a(10, (O0) this.f50534m.get(i13));
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.f50535n.size(); i15++) {
            int intValue = ((Integer) this.f50535n.get(i15)).intValue();
            i14 += intValue >= 0 ? C5264He.b(intValue) : 10;
        }
        int i16 = a10 + i14;
        if (!this.f50535n.isEmpty()) {
            i16 = i16 + 1 + (i14 >= 0 ? C5264He.b(i14) : 10);
        }
        this.f50536o = i14;
        if ((this.f50525d & 128) == 128) {
            i16 += C5264He.a(30, this.f50538q);
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.f50539r.size(); i18++) {
            int intValue2 = ((Integer) this.f50539r.get(i18)).intValue();
            i17 += intValue2 >= 0 ? C5264He.b(intValue2) : 10;
        }
        int size = (this.f50539r.size() * 2) + i16 + i17;
        if ((this.f50525d & 256) == 256) {
            size += C5264He.a(32, this.f50540s);
        }
        int size2 = this.f50524c.size() + e() + size;
        this.f50542u = size2;
        return size2;
    }
}
