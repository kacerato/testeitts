package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class P90 extends AbstractC6001Ty {

    public static final P90 f43135p;

    public static final N90 f43136q = new N90();

    public final AbstractC8206l8 f43137c;

    public int f43138d;

    public int f43139e;

    public int f43140f;

    public List f43141g;

    public M90 f43142h;

    public int f43143i;

    public M90 f43144j;

    public int f43145k;

    public List f43146l;

    public List f43147m;

    public byte f43148n;

    public int f43149o;

    static {
        P90 p90 = new P90();
        f43135p = p90;
        p90.f43139e = 6;
        p90.f43140f = 0;
        List list = Collections.EMPTY_LIST;
        p90.f43141g = list;
        M90 m90 = M90.f42196u;
        p90.f43142h = m90;
        p90.f43143i = 0;
        p90.f43144j = m90;
        p90.f43145k = 0;
        p90.f43146l = list;
        p90.f43147m = list;
    }

    public P90(O90 o90) {
        super(o90);
        this.f43148n = (byte) -1;
        this.f43149o = -1;
        this.f43137c = o90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f43138d & 1) == 1) {
            int i10 = this.f43139e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f43138d & 2) == 2) {
            int i11 = this.f43140f;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        for (int i12 = 0; i12 < this.f43141g.size(); i12++) {
            c5264He.b(3, (O0) this.f43141g.get(i12));
        }
        if ((this.f43138d & 4) == 4) {
            c5264He.b(4, this.f43142h);
        }
        if ((this.f43138d & 8) == 8) {
            int i13 = this.f43143i;
            c5264He.b(5, 0);
            c5264He.d(i13);
        }
        if ((this.f43138d & 16) == 16) {
            c5264He.b(6, this.f43144j);
        }
        if ((this.f43138d & 32) == 32) {
            int i14 = this.f43145k;
            c5264He.b(7, 0);
            c5264He.d(i14);
        }
        for (int i15 = 0; i15 < this.f43146l.size(); i15++) {
            c5264He.b(8, (O0) this.f43146l.get(i15));
        }
        for (int i16 = 0; i16 < this.f43147m.size(); i16++) {
            int intValue = ((Integer) this.f43147m.get(i16)).intValue();
            c5264He.b(31, 0);
            c5264He.d(intValue);
        }
        c5943Sy.a(200, c5264He);
        c5264He.a(this.f43137c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new O90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new O90().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f43135p;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43148n;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f43138d & 2) != 2) {
            this.f43148n = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.f43141g.size(); i10++) {
            if (!((T90) this.f43141g.get(i10)).isInitialized()) {
                this.f43148n = (byte) 0;
                return false;
            }
        }
        if ((this.f43138d & 4) == 4 && !this.f43142h.isInitialized()) {
            this.f43148n = (byte) 0;
            return false;
        }
        if ((this.f43138d & 16) == 16 && !this.f43144j.isInitialized()) {
            this.f43148n = (byte) 0;
            return false;
        }
        for (int i11 = 0; i11 < this.f43146l.size(); i11++) {
            if (!((O80) this.f43146l.get(i11)).isInitialized()) {
                this.f43148n = (byte) 0;
                return false;
            }
        }
        if (d()) {
            this.f43148n = (byte) 1;
            return true;
        }
        this.f43148n = (byte) 0;
        return false;
    }

    public P90() {
        this.f43148n = (byte) -1;
        this.f43149o = -1;
        this.f43137c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public P90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f43148n = (byte) -1;
        this.f43149o = -1;
        this.f43139e = 6;
        boolean z10 = false;
        this.f43140f = 0;
        List list = Collections.EMPTY_LIST;
        this.f43141g = list;
        M90 m90 = M90.f42196u;
        this.f43142h = m90;
        this.f43143i = 0;
        this.f43144j = m90;
        this.f43145k = 0;
        this.f43146l = list;
        this.f43147m = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        int i10 = 0;
        while (true) {
            ?? r52 = 128;
            if (!z10) {
                try {
                    try {
                        int i11 = c4858Ae.i();
                        L90 l90 = null;
                        switch (i11) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f43138d |= 1;
                                this.f43139e = c4858Ae.f();
                            case 16:
                                this.f43138d |= 2;
                                this.f43140f = c4858Ae.f();
                            case 26:
                                if ((i10 & 4) != 4) {
                                    this.f43141g = new ArrayList();
                                    i10 |= 4;
                                }
                                this.f43141g.add(c4858Ae.a(T90.f44401o, c10503yv));
                            case 34:
                                if ((this.f43138d & 4) == 4) {
                                    M90 m902 = this.f43142h;
                                    m902.getClass();
                                    l90 = M90.a(m902);
                                }
                                M90 m903 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f43142h = m903;
                                if (l90 != null) {
                                    l90.a(m903);
                                    this.f43142h = l90.d();
                                }
                                this.f43138d |= 4;
                            case 40:
                                this.f43138d |= 8;
                                this.f43143i = c4858Ae.f();
                            case 50:
                                if ((this.f43138d & 16) == 16) {
                                    M90 m904 = this.f43144j;
                                    m904.getClass();
                                    l90 = M90.a(m904);
                                }
                                M90 m905 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f43144j = m905;
                                if (l90 != null) {
                                    l90.a(m905);
                                    this.f43144j = l90.d();
                                }
                                this.f43138d |= 16;
                            case 56:
                                this.f43138d |= 32;
                                this.f43145k = c4858Ae.f();
                            case 66:
                                if ((i10 & 128) != 128) {
                                    this.f43146l = new ArrayList();
                                    i10 |= 128;
                                }
                                this.f43146l.add(c4858Ae.a(O80.f42789i, c10503yv));
                            case 248:
                                if ((i10 & 256) != 256) {
                                    this.f43147m = new ArrayList();
                                    i10 |= 256;
                                }
                                this.f43147m.add(Integer.valueOf(c4858Ae.f()));
                            case 250:
                                int b10 = c4858Ae.b(c4858Ae.f());
                                if ((i10 & 256) != 256 && c4858Ae.a() > 0) {
                                    this.f43147m = new ArrayList();
                                    i10 |= 256;
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f43147m.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b10;
                                c4858Ae.j();
                                break;
                            default:
                                r52 = a(c4858Ae, c5264He, c10503yv, i11);
                                if (r52 == 0) {
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
                    if ((i10 & 4) == 4) {
                        this.f43141g = Collections.unmodifiableList(this.f43141g);
                    }
                    if ((i10 & 128) == r52) {
                        this.f43146l = Collections.unmodifiableList(this.f43146l);
                    }
                    if ((i10 & 256) == 256) {
                        this.f43147m = Collections.unmodifiableList(this.f43147m);
                    }
                    try {
                        if (c5264He.f40814d != null) {
                            c5264He.a();
                        }
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f43137c = c7872j8.c();
                        throw th3;
                    }
                    this.f43137c = c7872j8.c();
                    this.f44631b.a();
                    throw th2;
                }
            } else {
                if ((i10 & 4) == 4) {
                    this.f43141g = Collections.unmodifiableList(this.f43141g);
                }
                if ((i10 & 128) == 128) {
                    this.f43146l = Collections.unmodifiableList(this.f43146l);
                }
                if ((i10 & 256) == 256) {
                    this.f43147m = Collections.unmodifiableList(this.f43147m);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f43137c = c7872j8.c();
                    throw th4;
                }
                this.f43137c = c7872j8.c();
                this.f44631b.a();
                return;
            }
        }
    }

    @Override
    public final int a() {
        int i10 = this.f43149o;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f43138d & 1) == 1 ? C5264He.a(1, this.f43139e) : 0;
        if ((this.f43138d & 2) == 2) {
            a10 += C5264He.a(2, this.f43140f);
        }
        for (int i11 = 0; i11 < this.f43141g.size(); i11++) {
            a10 += C5264He.a(3, (O0) this.f43141g.get(i11));
        }
        if ((this.f43138d & 4) == 4) {
            a10 += C5264He.a(4, this.f43142h);
        }
        if ((this.f43138d & 8) == 8) {
            a10 += C5264He.a(5, this.f43143i);
        }
        if ((this.f43138d & 16) == 16) {
            a10 += C5264He.a(6, this.f43144j);
        }
        if ((this.f43138d & 32) == 32) {
            a10 += C5264He.a(7, this.f43145k);
        }
        for (int i12 = 0; i12 < this.f43146l.size(); i12++) {
            a10 += C5264He.a(8, (O0) this.f43146l.get(i12));
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.f43147m.size(); i14++) {
            int intValue = ((Integer) this.f43147m.get(i14)).intValue();
            i13 += intValue >= 0 ? C5264He.b(intValue) : 10;
        }
        int size = this.f43137c.size() + e() + (this.f43147m.size() * 2) + a10 + i13;
        this.f43149o = size;
        return size;
    }
}
