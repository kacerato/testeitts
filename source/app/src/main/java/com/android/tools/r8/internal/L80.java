package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class L80 extends AbstractC6287Yy {

    public static final L80 f41876q;

    public static final I80 f41877r = new I80();

    public final AbstractC8206l8 f41878b;

    public int f41879c;

    public K80 f41880d;

    public long f41881e;

    public float f41882f;

    public double f41883g;

    public int f41884h;

    public int f41885i;

    public int f41886j;

    public O80 f41887k;

    public List f41888l;

    public int f41889m;

    public int f41890n;

    public byte f41891o;

    public int f41892p;

    static {
        L80 l80 = new L80();
        f41876q = l80;
        l80.f41880d = K80.BYTE;
        l80.f41881e = 0L;
        l80.f41882f = 0.0f;
        l80.f41883g = 0.0d;
        l80.f41884h = 0;
        l80.f41885i = 0;
        l80.f41886j = 0;
        l80.f41887k = O80.f42788h;
        l80.f41888l = Collections.EMPTY_LIST;
        l80.f41889m = 0;
        l80.f41890n = 0;
    }

    public L80(J80 j80) {
        super(0);
        this.f41891o = (byte) -1;
        this.f41892p = -1;
        this.f41878b = j80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f41879c & 1) == 1) {
            int i10 = this.f41880d.f41596b;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f41879c & 2) == 2) {
            long j10 = this.f41881e;
            c5264He.b(2, 0);
            c5264He.d(C5264He.b(j10));
        }
        if ((this.f41879c & 4) == 4) {
            float f10 = this.f41882f;
            c5264He.b(3, 5);
            c5264He.f(Float.floatToRawIntBits(f10));
        }
        if ((this.f41879c & 8) == 8) {
            double d10 = this.f41883g;
            c5264He.b(4, 1);
            c5264He.c(Double.doubleToRawLongBits(d10));
        }
        if ((this.f41879c & 16) == 16) {
            int i11 = this.f41884h;
            c5264He.b(5, 0);
            c5264He.d(i11);
        }
        if ((this.f41879c & 32) == 32) {
            int i12 = this.f41885i;
            c5264He.b(6, 0);
            c5264He.d(i12);
        }
        if ((this.f41879c & 64) == 64) {
            int i13 = this.f41886j;
            c5264He.b(7, 0);
            c5264He.d(i13);
        }
        if ((this.f41879c & 128) == 128) {
            c5264He.b(8, this.f41887k);
        }
        for (int i14 = 0; i14 < this.f41888l.size(); i14++) {
            c5264He.b(9, (O0) this.f41888l.get(i14));
        }
        if ((this.f41879c & 512) == 512) {
            int i15 = this.f41890n;
            c5264He.b(10, 0);
            c5264He.d(i15);
        }
        if ((this.f41879c & 256) == 256) {
            int i16 = this.f41889m;
            c5264He.b(11, 0);
            c5264He.d(i16);
        }
        c5264He.a(this.f41878b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new J80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new J80().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41891o;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f41879c & 128) == 128 && !this.f41887k.isInitialized()) {
            this.f41891o = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.f41888l.size(); i10++) {
            if (!((L80) this.f41888l.get(i10)).isInitialized()) {
                this.f41891o = (byte) 0;
                return false;
            }
        }
        this.f41891o = (byte) 1;
        return true;
    }

    public L80() {
        this.f41891o = (byte) -1;
        this.f41892p = -1;
        this.f41878b = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0040. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public L80(C4858Ae c4858Ae, C10503yv c10503yv) {
        N80 n80;
        this.f41891o = (byte) -1;
        this.f41892p = -1;
        this.f41880d = K80.BYTE;
        this.f41881e = 0L;
        this.f41882f = 0.0f;
        this.f41883g = 0.0d;
        boolean z10 = false;
        this.f41884h = 0;
        this.f41885i = 0;
        this.f41886j = 0;
        this.f41887k = O80.f42788h;
        this.f41888l = Collections.EMPTY_LIST;
        this.f41889m = 0;
        this.f41890n = 0;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        char c10 = 0;
        while (true) {
            ?? r52 = 256;
            if (!z10) {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        switch (i10) {
                            case 0:
                                z10 = true;
                            case 8:
                                int f10 = c4858Ae.f();
                                K80 a10 = K80.a(f10);
                                if (a10 == null) {
                                    c5264He.g(i10);
                                    c5264He.g(f10);
                                } else {
                                    this.f41879c |= 1;
                                    this.f41880d = a10;
                                }
                            case 16:
                                this.f41879c |= 2;
                                long g10 = c4858Ae.g();
                                this.f41881e = (-(g10 & 1)) ^ (g10 >>> 1);
                            case 29:
                                this.f41879c |= 4;
                                this.f41882f = Float.intBitsToFloat(c4858Ae.d());
                            case 33:
                                this.f41879c |= 8;
                                this.f41883g = Double.longBitsToDouble(c4858Ae.e());
                            case 40:
                                this.f41879c |= 16;
                                this.f41884h = c4858Ae.f();
                            case 48:
                                this.f41879c |= 32;
                                this.f41885i = c4858Ae.f();
                            case 56:
                                this.f41879c |= 64;
                                this.f41886j = c4858Ae.f();
                            case 66:
                                if ((this.f41879c & 128) == 128) {
                                    O80 o80 = this.f41887k;
                                    o80.getClass();
                                    n80 = new N80().a(o80);
                                } else {
                                    n80 = null;
                                }
                                O80 o802 = (O80) c4858Ae.a(O80.f42789i, c10503yv);
                                this.f41887k = o802;
                                if (n80 != null) {
                                    n80.a(o802);
                                    this.f41887k = n80.c();
                                }
                                this.f41879c |= 128;
                            case 74:
                                if ((c10 & '\u0100') != 256) {
                                    this.f41888l = new ArrayList();
                                    c10 = '\u0100';
                                }
                                this.f41888l.add(c4858Ae.a(f41877r, c10503yv));
                            case 80:
                                this.f41879c |= 512;
                                this.f41890n = c4858Ae.f();
                            case 88:
                                this.f41879c |= 256;
                                this.f41889m = c4858Ae.f();
                            default:
                                r52 = c4858Ae.a(i10, c5264He);
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
                    if ((c10 & '\u0100') == r52) {
                        this.f41888l = Collections.unmodifiableList(this.f41888l);
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
            } else {
                if ((c10 & '\u0100') == 256) {
                    this.f41888l = Collections.unmodifiableList(this.f41888l);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                    return;
                } catch (IOException unused2) {
                    return;
                } finally {
                    this.f41878b = c7872j8.c();
                }
            }
        }
    }

    @Override
    public final int a() {
        int i10 = this.f41892p;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f41879c & 1) == 1 ? C5264He.a(this.f41880d.f41596b) + C5264He.c(1) : 0;
        if ((this.f41879c & 2) == 2) {
            a10 += C5264He.a(C5264He.b(this.f41881e)) + C5264He.c(2);
        }
        if ((this.f41879c & 4) == 4) {
            a10 += C5264He.c(3) + 4;
        }
        if ((this.f41879c & 8) == 8) {
            a10 += C5264He.c(4) + 8;
        }
        if ((this.f41879c & 16) == 16) {
            a10 += C5264He.a(5, this.f41884h);
        }
        if ((this.f41879c & 32) == 32) {
            a10 += C5264He.a(6, this.f41885i);
        }
        if ((this.f41879c & 64) == 64) {
            a10 += C5264He.a(7, this.f41886j);
        }
        if ((this.f41879c & 128) == 128) {
            a10 += C5264He.a(8, this.f41887k);
        }
        for (int i11 = 0; i11 < this.f41888l.size(); i11++) {
            a10 += C5264He.a(9, (O0) this.f41888l.get(i11));
        }
        if ((this.f41879c & 512) == 512) {
            a10 += C5264He.a(10, this.f41890n);
        }
        if ((this.f41879c & 256) == 256) {
            a10 += C5264He.a(11, this.f41889m);
        }
        int size = this.f41878b.size() + a10;
        this.f41892p = size;
        return size;
    }
}
