package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import org.objectweb.asm.Opcodes;

public final class EX extends DX {

    public static final int[] f39890Z = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};

    public S2 f39891A;

    public S2 f39892B;

    public int f39893C;

    public S2[] f39894D;

    public int f39895E;

    public S2[] f39896F;

    public S2 f39897G;

    public S2 f39898H;

    public C8874p8 f39899I;

    public int f39900J;

    public C8874p8 f39901K;

    public K4 f39902L;

    public final int f39903M;

    public final XQ f39904N;

    public XQ f39905O;

    public XQ f39906P;

    public int f39907Q;

    public int f39908R;

    public int f39909S;

    public int f39910T;

    public int[] f39911U;

    public int[] f39912V;

    public boolean f39913W;

    public boolean f39914X;

    public int f39915Y;

    public final C7988jr0 f39916c;

    public final int f39917d;

    public final int f39918e;

    public final String f39919f;

    public final int f39920g;

    public final String f39921h;

    public int f39922i;

    public int f39923j;

    public final C8874p8 f39924k;

    public C5887Rz f39925l;

    public C5887Rz f39926m;

    public int f39927n;

    public C8874p8 f39928o;

    public int f39929p;

    public C8874p8 f39930q;

    public int f39931r;

    public C8874p8 f39932s;

    public int f39933t;

    public C8874p8 f39934u;

    public S2 f39935v;

    public S2 f39936w;

    public final int f39937x;

    public final int[] f39938y;

    public final int f39939z;

    public EX(C7988jr0 c7988jr0, int i10, String str, String str2, String str3, String[] strArr, int i11) {
        super(Opcodes.ASM9, null);
        this.f39924k = new C8874p8();
        this.f39916c = c7988jr0;
        this.f39917d = ConstantDescs.INIT_NAME.equals(str) ? 262144 | i10 : i10;
        this.f39918e = c7988jr0.a(str);
        this.f39919f = str;
        this.f39920g = c7988jr0.a(str2);
        this.f39921h = str2;
        this.f39939z = str3 == null ? 0 : c7988jr0.a(str3);
        if (strArr == null || strArr.length <= 0) {
            this.f39937x = 0;
            this.f39938y = null;
        } else {
            int length = strArr.length;
            this.f39937x = length;
            this.f39938y = new int[length];
            for (int i12 = 0; i12 < this.f39937x; i12++) {
                this.f39938y[i12] = c7988jr0.a(7, strArr[i12]).f48722a;
            }
        }
        this.f39903M = i11;
        if (i11 != 0) {
            int c10 = C9663tt0.c(str2) >> 2;
            c10 = (i10 & 8) != 0 ? c10 - 1 : c10;
            this.f39923j = c10;
            this.f39909S = c10;
            XQ xq = new XQ();
            this.f39904N = xq;
            a(xq);
        }
    }

    @Override
    public final Q2 a() {
        C8874p8 c8874p8 = new C8874p8();
        this.f39899I = c8874p8;
        return new S2(this.f39916c, false, c8874p8, null);
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
    }

    @Override
    public final void d(int i10, int i11) {
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        if (i11 < 4 && i10 != 169) {
            c8874p8.b((i10 < 54 ? ((i10 - 21) << 2) + 26 : ((i10 - 54) << 2) + 59) + i11);
        } else if (i11 >= 256) {
            c8874p8.b(196).c(i10, i11);
        } else {
            c8874p8.a(i10, i11);
        }
        XQ xq = this.f39906P;
        if (xq != null) {
            int i12 = this.f39903M;
            if (i12 == 4 || i12 == 3) {
                xq.f45696k.a(i10, i11, (C7656hr0) null, (C7988jr0) null);
            } else if (i10 == 169) {
                xq.f45687b = (short) (xq.f45687b | 64);
                xq.f45693h = (short) this.f39907Q;
                d();
            } else {
                int i13 = this.f39907Q + f39890Z[i10];
                if (i13 > this.f39908R) {
                    this.f39908R = i13;
                }
                this.f39907Q = i13;
            }
        }
        int i14 = this.f39903M;
        if (i14 != 0) {
            int i15 = (i10 == 22 || i10 == 24 || i10 == 55 || i10 == 57) ? i11 + 2 : i11 + 1;
            if (i15 > this.f39923j) {
                this.f39923j = i15;
            }
        }
        if (i10 < 54 || i14 != 4 || this.f39925l == null) {
            return;
        }
        a(new XQ());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e() {
        int i10;
        char c10;
        int[] iArr = this.f39911U;
        if (iArr != null) {
            if (this.f39934u == null) {
                this.f39934u = new C8874p8();
            }
            int[] iArr2 = this.f39912V;
            int i11 = iArr2[1];
            int i12 = iArr2[2];
            int i13 = 0;
            if (this.f39916c.f49371b < 50) {
                this.f39934u.d(iArr2[0]).d(i11);
                int i14 = i11 + 3;
                e(3, i14);
                this.f39934u.d(i12);
                e(i14, i12 + i14);
            } else {
                if (this.f39933t == 0) {
                    i10 = iArr2[0];
                } else {
                    i10 = (iArr2[0] - iArr[0]) - 1;
                }
                int i15 = iArr[1];
                int i16 = i11 - i15;
                if (i12 == 0) {
                    switch (i16) {
                        case -3:
                        case -2:
                        case -1:
                            c10 = '\u00f8';
                            break;
                        case 0:
                            if (i10 >= 64) {
                                c10 = '\u00fb';
                                break;
                            } else {
                                c10 = 0;
                                break;
                            }
                        case 1:
                        case 2:
                        case 3:
                            c10 = '\u00fc';
                            break;
                        default:
                            c10 = '\u00ff';
                            break;
                    }
                    if (c10 != '\u00ff') {
                        int i17 = 3;
                        while (true) {
                            if (i13 < i15 && i13 < i11) {
                                if (this.f39912V[i17] != this.f39911U[i17]) {
                                    c10 = '\u00ff';
                                } else {
                                    i17++;
                                    i13++;
                                }
                            }
                        }
                    }
                    if (c10 == 0) {
                        this.f39934u.b(i10);
                    } else if (c10 == '@') {
                        this.f39934u.b(i10 + 64);
                        e(i11 + 3, i11 + 4);
                    } else if (c10 == '\u00f7') {
                        this.f39934u.b(247).d(i10);
                        e(i11 + 3, i11 + 4);
                    } else if (c10 == '\u00f8') {
                        this.f39934u.b(i16 + 251).d(i10);
                    } else if (c10 == '\u00fb') {
                        this.f39934u.b(251).d(i10);
                    } else if (c10 != '\u00fc') {
                        this.f39934u.b(255).d(i10).d(i11);
                        int i18 = i11 + 3;
                        e(3, i18);
                        this.f39934u.d(i12);
                        e(i18, i12 + i18);
                    } else {
                        this.f39934u.b(i16 + 251).d(i10);
                        e(i15 + 3, i11 + 3);
                    }
                } else {
                    if (i16 == 0 && i12 == 1) {
                        c10 = i10 < 63 ? '@' : '\u00f7';
                        if (c10 != '\u00ff') {
                        }
                        if (c10 == 0) {
                        }
                    }
                    c10 = '\u00ff';
                    if (c10 != '\u00ff') {
                    }
                    if (c10 == 0) {
                    }
                }
            }
            this.f39933t++;
        }
        this.f39911U = this.f39912V;
        this.f39912V = null;
    }

    @Override
    public final void b(int i10, String str) {
        if (this.f39901K == null) {
            this.f39901K = new C8874p8();
        }
        this.f39900J++;
        this.f39901K.d(str == null ? 0 : this.f39916c.a(str)).d(i10);
    }

    @Override
    public final Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f39916c, i10, c9666tu0, str, this.f39897G);
            this.f39897G = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f39916c, i10, c9666tu0, str, this.f39898H);
        this.f39898H = a11;
        return a11;
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f39916c, str, this.f39891A);
            this.f39891A = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f39916c, str, this.f39892B);
        this.f39892B = a11;
        return a11;
    }

    @Override
    public final void b(int i10, int i11) {
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        if (i10 == 17) {
            c8874p8.c(i10, i11);
        } else {
            c8874p8.a(i10, i11);
        }
        XQ xq = this.f39906P;
        if (xq != null) {
            int i12 = this.f39903M;
            if (i12 == 4 || i12 == 3) {
                xq.f45696k.a(i10, i11, (C7656hr0) null, (C7988jr0) null);
            } else if (i10 != 188) {
                int i13 = this.f39907Q + 1;
                if (i13 > this.f39908R) {
                    this.f39908R = i13;
                }
                this.f39907Q = i13;
            }
        }
    }

    @Override
    public final void c(int i10, String str) {
        this.f39915Y = this.f39924k.f51447b;
        C7656hr0 a10 = this.f39916c.a(7, str);
        this.f39924k.c(i10, a10.f48722a);
        XQ xq = this.f39906P;
        if (xq != null) {
            int i11 = this.f39903M;
            if (i11 == 4 || i11 == 3) {
                xq.f45696k.a(i10, this.f39915Y, a10, this.f39916c);
            } else if (i10 == 187) {
                int i12 = this.f39907Q + 1;
                if (i12 > this.f39908R) {
                    this.f39908R = i12;
                }
                this.f39907Q = i12;
            }
        }
    }

    @Override
    public final void a(int i10, boolean z10) {
        if (z10) {
            this.f39893C = i10;
        } else {
            this.f39895E = i10;
        }
    }

    @Override
    public final Q2 a(int i10, String str, boolean z10) {
        if (z10) {
            if (this.f39894D == null) {
                this.f39894D = new S2[C9663tt0.a(this.f39921h)];
            }
            S2[] s2Arr = this.f39894D;
            S2 a10 = S2.a(this.f39916c, str, s2Arr[i10]);
            s2Arr[i10] = a10;
            return a10;
        }
        if (this.f39896F == null) {
            this.f39896F = new S2[C9663tt0.a(this.f39921h)];
        }
        S2[] s2Arr2 = this.f39896F;
        S2 a11 = S2.a(this.f39916c, str, s2Arr2[i10]);
        s2Arr2[i10] = a11;
        return a11;
    }

    @Override
    public final Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f39916c, i10, c9666tu0, str, this.f39935v);
            this.f39935v = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f39916c, i10, c9666tu0, str, this.f39936w);
        this.f39936w = a11;
        return a11;
    }

    @Override
    public final void c(int i10, int i11) {
        int i12 = this.f39903M;
        if (i12 == 4) {
            C5887Rz c5887Rz = this.f39925l;
            while (true) {
                if (c5887Rz == null) {
                    break;
                }
                String str = c5887Rz.f44045e;
                int b10 = 8388608 | this.f39916c.b(str != null ? str : "java/lang/Throwable");
                XQ xq = c5887Rz.f44043c;
                C7509gy c7509gy = xq.f45696k;
                if (c7509gy != null) {
                    xq = c7509gy.f48393a;
                }
                xq.f45687b = (short) (xq.f45687b | 2);
                XQ xq2 = c5887Rz.f44041a;
                C7509gy c7509gy2 = xq2.f45696k;
                if (c7509gy2 != null) {
                    xq2 = c7509gy2.f48393a;
                }
                XQ xq3 = c5887Rz.f44042b;
                C7509gy c7509gy3 = xq3.f45696k;
                if (c7509gy3 != null) {
                    xq3 = c7509gy3.f48393a;
                }
                while (xq2 != xq3) {
                    xq2.f45698m = new C4890At(b10, xq, xq2.f45698m);
                    xq2 = xq2.f45697l;
                }
                c5887Rz = c5887Rz.f44046f;
            }
            C7509gy c7509gy4 = this.f39904N.f45696k;
            c7509gy4.a(this.f39916c, this.f39917d, this.f39921h, this.f39923j);
            c7509gy4.a(this);
            XQ xq4 = this.f39904N;
            xq4.f45699n = XQ.f45685o;
            int i13 = 0;
            while (xq4 != XQ.f45685o) {
                XQ xq5 = xq4.f45699n;
                xq4.f45699n = null;
                xq4.f45687b = (short) (xq4.f45687b | 8);
                int length = xq4.f45696k.f48395c.length + xq4.f45694i;
                if (length > i13) {
                    i13 = length;
                }
                for (C4890At c4890At = xq4.f45698m; c4890At != null; c4890At = c4890At.f38733c) {
                    XQ xq6 = c4890At.f38732b;
                    C7509gy c7509gy5 = xq6.f45696k;
                    if (c7509gy5 != null) {
                        xq6 = c7509gy5.f48393a;
                    }
                    if (xq4.f45696k.a(this.f39916c, xq6.f45696k, c4890At.f38731a) && xq6.f45699n == null) {
                        xq6.f45699n = xq5;
                        xq5 = xq6;
                    }
                }
                xq4 = xq5;
            }
            for (XQ xq7 = this.f39904N; xq7 != null; xq7 = xq7.f45697l) {
                if ((xq7.f45687b & 10) == 10) {
                    xq7.f45696k.a(this);
                }
                if ((xq7.f45687b & 8) == 0) {
                    XQ xq8 = xq7.f45697l;
                    int i14 = xq7.f45690e;
                    int i15 = (xq8 == null ? this.f39924k.f51447b : xq8.f45690e) - 1;
                    if (i15 >= i14) {
                        for (int i16 = i14; i16 < i15; i16++) {
                            this.f39924k.f51446a[i16] = 0;
                        }
                        this.f39924k.f51446a[i15] = org.eclipse.jdt.internal.compiler.codegen.Opcodes.OPC_athrow;
                        a(i14, 0, 1);
                        this.f39912V[3] = this.f39916c.b("java/lang/Throwable") | 8388608;
                        e();
                        this.f39925l = C5887Rz.a(this.f39925l, xq7, xq8);
                        i13 = Math.max(i13, 1);
                    }
                }
            }
            this.f39922i = i13;
            return;
        }
        if (i12 != 1) {
            if (i12 == 2) {
                this.f39922i = this.f39908R;
                return;
            } else {
                this.f39922i = i10;
                this.f39923j = i11;
                return;
            }
        }
        for (C5887Rz c5887Rz2 = this.f39925l; c5887Rz2 != null; c5887Rz2 = c5887Rz2.f44046f) {
            XQ xq9 = c5887Rz2.f44043c;
            XQ xq10 = c5887Rz2.f44042b;
            for (XQ xq11 = c5887Rz2.f44041a; xq11 != xq10; xq11 = xq11.f45697l) {
                if ((xq11.f45687b & 16) == 0) {
                    xq11.f45698m = new C4890At(Integer.MAX_VALUE, xq9, xq11.f45698m);
                } else {
                    C4890At c4890At2 = xq11.f45698m.f38733c;
                    c4890At2.f38733c = new C4890At(Integer.MAX_VALUE, xq9, c4890At2.f38733c);
                }
            }
        }
        if (this.f39913W) {
            XQ xq12 = this.f39904N;
            xq12.f45699n = XQ.f45685o;
            while (xq12 != XQ.f45685o) {
                XQ xq13 = xq12.f45699n;
                xq12.f45699n = null;
                if (xq12.f45695j == 0) {
                    xq12.f45695j = (short) 1;
                    for (C4890At c4890At3 = xq12.f45698m; c4890At3 != null; c4890At3 = c4890At3.f38733c) {
                        if ((xq12.f45687b & 16) == 0 || c4890At3 != xq12.f45698m.f38733c) {
                            XQ xq14 = c4890At3.f38732b;
                            if (xq14.f45699n == null) {
                                xq14.f45699n = xq13;
                                xq13 = xq14;
                            }
                        }
                    }
                }
                xq12 = xq13;
            }
            short s10 = 1;
            for (short s11 = 1; s11 <= s10; s11 = (short) (s11 + 1)) {
                for (XQ xq15 = this.f39904N; xq15 != null; xq15 = xq15.f45697l) {
                    if ((xq15.f45687b & 16) != 0 && xq15.f45695j == s11) {
                        XQ xq16 = xq15.f45698m.f38733c.f38732b;
                        if (xq16.f45695j == 0) {
                            s10 = (short) (s10 + 1);
                            xq16.f45699n = XQ.f45685o;
                            while (xq16 != XQ.f45685o) {
                                XQ xq17 = xq16.f45699n;
                                xq16.f45699n = null;
                                if (xq16.f45695j == 0) {
                                    xq16.f45695j = s10;
                                    for (C4890At c4890At4 = xq16.f45698m; c4890At4 != null; c4890At4 = c4890At4.f38733c) {
                                        if ((xq16.f45687b & 16) == 0 || c4890At4 != xq16.f45698m.f38733c) {
                                            XQ xq18 = c4890At4.f38732b;
                                            if (xq18.f45699n == null) {
                                                xq18.f45699n = xq17;
                                                xq17 = xq18;
                                            }
                                        }
                                    }
                                }
                                xq16 = xq17;
                            }
                        }
                    }
                }
            }
            for (XQ xq19 = this.f39904N; xq19 != null; xq19 = xq19.f45697l) {
                if ((xq19.f45687b & 16) != 0) {
                    XQ xq20 = xq19.f45698m.f38733c.f38732b;
                    XQ xq21 = XQ.f45685o;
                    xq20.f45699n = xq21;
                    while (xq20 != XQ.f45685o) {
                        XQ xq22 = xq20.f45699n;
                        xq20.f45699n = xq21;
                        if ((xq20.f45687b & 64) != 0 && xq20.f45695j != xq19.f45695j) {
                            xq20.f45698m = new C4890At(xq20.f45693h, xq19.f45698m.f38732b, xq20.f45698m);
                        }
                        for (C4890At c4890At5 = xq20.f45698m; c4890At5 != null; c4890At5 = c4890At5.f38733c) {
                            if ((xq20.f45687b & 16) == 0 || c4890At5 != xq20.f45698m.f38733c) {
                                XQ xq23 = c4890At5.f38732b;
                                if (xq23.f45699n == null) {
                                    xq23.f45699n = xq22;
                                    xq22 = xq23;
                                }
                            }
                        }
                        xq21 = xq20;
                        xq20 = xq22;
                    }
                    while (xq21 != XQ.f45685o) {
                        XQ xq24 = xq21.f45699n;
                        xq21.f45699n = null;
                        xq21 = xq24;
                    }
                }
            }
        }
        XQ xq25 = this.f39904N;
        xq25.f45699n = XQ.f45685o;
        int i17 = this.f39922i;
        while (xq25 != XQ.f45685o) {
            XQ xq26 = xq25.f45699n;
            short s12 = xq25.f45692g;
            int i18 = xq25.f45694i + s12;
            if (i18 > i17) {
                i17 = i18;
            }
            C4890At c4890At6 = xq25.f45698m;
            if ((xq25.f45687b & 16) != 0) {
                c4890At6 = c4890At6.f38733c;
            }
            xq25 = xq26;
            while (c4890At6 != null) {
                XQ xq27 = c4890At6.f38732b;
                if (xq27.f45699n == null) {
                    int i19 = c4890At6.f38731a;
                    xq27.f45692g = (short) (i19 == Integer.MAX_VALUE ? 1 : i19 + s12);
                    xq27.f45699n = xq25;
                    xq25 = xq27;
                }
                c4890At6 = c4890At6.f38733c;
            }
        }
        this.f39922i = i17;
    }

    @Override
    public final void a(K4 k42) {
        k42.getClass();
        k42.f41568c = this.f39902L;
        this.f39902L = k42;
    }

    @Override
    public final void b(int i10, XQ xq) {
        if (this.f39928o == null) {
            this.f39928o = new C8874p8();
        }
        this.f39927n++;
        this.f39928o.d(xq.f45690e);
        this.f39928o.d(i10);
    }

    public final void d() {
        int i10 = this.f39903M;
        if (i10 != 4) {
            if (i10 == 1) {
                this.f39906P.f45694i = (short) this.f39908R;
                this.f39906P = null;
                return;
            }
            return;
        }
        XQ xq = new XQ();
        xq.f45696k = new C7509gy(xq);
        C8874p8 c8874p8 = this.f39924k;
        xq.a(c8874p8.f51446a, this.f39934u, c8874p8.f51447b);
        this.f39905O.f45697l = xq;
        this.f39905O = xq;
        this.f39906P = null;
    }

    @Override
    public final void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        int i13;
        int i14 = this.f39903M;
        if (i14 == 4) {
            return;
        }
        if (i14 == 3) {
            XQ xq = this.f39906P;
            C7509gy c7509gy = xq.f45696k;
            if (c7509gy == null) {
                C9629ti c9629ti = new C9629ti(xq);
                xq.f45696k = c9629ti;
                c9629ti.a(this.f39916c, this.f39917d, this.f39921h, i11);
                this.f39906P.f45696k.a(this);
            } else {
                if (i10 == -1) {
                    C7988jr0 c7988jr0 = this.f39916c;
                    int i15 = 0;
                    for (int i16 = 0; i16 < i11; i16++) {
                        int i17 = i15 + 1;
                        c7509gy.f48394b[i15] = C7509gy.a(c7988jr0, objArr[i16]);
                        if (objArr[i16] == 4 || objArr[i16] == 3) {
                            i15 += 2;
                            c7509gy.f48394b[i17] = 4194304;
                        } else {
                            i15 = i17;
                        }
                    }
                    while (true) {
                        int[] iArr = c7509gy.f48394b;
                        if (i15 >= iArr.length) {
                            break;
                        }
                        iArr[i15] = 4194304;
                        i15++;
                    }
                    int i18 = 0;
                    for (int i19 = 0; i19 < i12; i19++) {
                        if (objArr2[i19] == 4 || objArr2[i19] == 3) {
                            i18++;
                        }
                    }
                    c7509gy.f48395c = new int[i12 + i18];
                    int i20 = 0;
                    for (int i21 = 0; i21 < i12; i21++) {
                        int i22 = i20 + 1;
                        c7509gy.f48395c[i20] = C7509gy.a(c7988jr0, objArr2[i21]);
                        if (objArr2[i21] == 4 || objArr2[i21] == 3) {
                            i20 += 2;
                            c7509gy.f48395c[i22] = 4194304;
                        } else {
                            i20 = i22;
                        }
                    }
                    c7509gy.f48399g = (short) 0;
                    c7509gy.f48400h = 0;
                }
                this.f39906P.f45696k.a(this);
            }
        } else if (i10 == -1) {
            if (this.f39911U == null) {
                int c10 = C9663tt0.c(this.f39921h) >> 2;
                C7509gy c7509gy2 = new C7509gy(new XQ());
                c7509gy2.a(this.f39916c, this.f39917d, this.f39921h, c10);
                c7509gy2.a(this);
            }
            this.f39909S = i11;
            a(this.f39924k.f51447b, i11, i12);
            int i23 = 3;
            int i24 = 0;
            while (i24 < i11) {
                this.f39912V[i23] = C7509gy.a(this.f39916c, objArr[i24]);
                i24++;
                i23++;
            }
            int i25 = 0;
            while (i25 < i12) {
                this.f39912V[i23] = C7509gy.a(this.f39916c, objArr2[i25]);
                i25++;
                i23++;
            }
            e();
        } else if (this.f39916c.f49371b >= 50) {
            if (this.f39934u == null) {
                this.f39934u = new C8874p8();
                i13 = this.f39924k.f51447b;
            } else {
                i13 = (this.f39924k.f51447b - this.f39910T) - 1;
                if (i13 < 0) {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i10 == 0) {
                this.f39909S = i11;
                this.f39934u.b(255).d(i13).d(i11);
                for (int i26 = 0; i26 < i11; i26++) {
                    b(objArr[i26]);
                }
                this.f39934u.d(i12);
                for (int i27 = 0; i27 < i12; i27++) {
                    b(objArr2[i27]);
                }
            } else if (i10 == 1) {
                this.f39909S += i11;
                this.f39934u.b(i11 + 251).d(i13);
                for (int i28 = 0; i28 < i11; i28++) {
                    b(objArr[i28]);
                }
            } else if (i10 == 2) {
                this.f39909S -= i11;
                this.f39934u.b(251 - i11).d(i13);
            } else if (i10 != 3) {
                if (i10 == 4) {
                    if (i13 < 64) {
                        this.f39934u.b(i13 + 64);
                    } else {
                        this.f39934u.b(247).d(i13);
                    }
                    b(objArr2[0]);
                } else {
                    throw new IllegalArgumentException();
                }
            } else if (i13 < 64) {
                this.f39934u.b(i13);
            } else {
                this.f39934u.b(251).d(i13);
            }
            this.f39910T = this.f39924k.f51447b;
            this.f39933t++;
        } else {
            throw new IllegalArgumentException("Class versions V1_5 or less must use F_NEW frames.");
        }
        if (this.f39903M == 2) {
            this.f39907Q = i12;
            for (int i29 = 0; i29 < i12; i29++) {
                if (objArr2[i29] == 4 || objArr2[i29] == 3) {
                    this.f39907Q++;
                }
            }
            int i30 = this.f39907Q;
            if (i30 > this.f39908R) {
                this.f39908R = i30;
            }
        }
        this.f39922i = Math.max(this.f39922i, i12);
        this.f39923j = Math.max(this.f39923j, this.f39909S);
    }

    public final void b(Object obj) {
        if (obj instanceof Integer) {
            this.f39934u.b(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof String) {
            this.f39934u.b(7).d(this.f39916c.a(7, (String) obj).f48722a);
            return;
        }
        this.f39934u.b(8);
        XQ xq = (XQ) obj;
        C8874p8 c8874p8 = this.f39934u;
        if ((xq.f45687b & 4) == 0) {
            xq.a(0, 805306368, c8874p8.f51447b);
        }
        c8874p8.d(xq.f45690e);
    }

    public final void e(int i10, int i11) {
        while (i10 < i11) {
            C7988jr0 c7988jr0 = this.f39916c;
            int i12 = this.f39912V[i10];
            C8874p8 c8874p8 = this.f39934u;
            int i13 = ((-67108864) & i12) >> 26;
            if (i13 == 0) {
                int i14 = i12 & 1048575;
                int i15 = i12 & 62914560;
                if (i15 == 4194304) {
                    c8874p8.b(i14);
                } else if (i15 == 8388608) {
                    c8874p8.b(7).d(c7988jr0.a(7, c7988jr0.f49380k[i14].f48726e).f48722a);
                } else if (i15 == 12582912) {
                    c8874p8.b(8).d((int) c7988jr0.f49380k[i14].f48727f);
                } else if (i15 == 16777216) {
                    c8874p8.b(8);
                    XQ xq = c7988jr0.f49382m[(int) c7988jr0.f49380k[i14].f48727f].f49073b;
                    if ((xq.f45687b & 4) == 0) {
                        xq.a(0, 805306368, c8874p8.f51447b);
                    }
                    c8874p8.d(xq.f45690e);
                } else {
                    throw new AssertionError();
                }
            } else {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    int i16 = i13 - 1;
                    if (i13 > 0) {
                        sb2.append('[');
                        i13 = i16;
                    } else {
                        if ((i12 & 62914560) == 8388608) {
                            sb2.append('L');
                            sb2.append(c7988jr0.f49380k[i12 & 1048575].f48726e);
                            sb2.append(';');
                        } else {
                            int i17 = i12 & 1048575;
                            if (i17 == 1) {
                                sb2.append('I');
                            } else if (i17 == 2) {
                                sb2.append('F');
                            } else if (i17 == 3) {
                                sb2.append('D');
                            } else if (i17 != 4) {
                                switch (i17) {
                                    case 9:
                                        sb2.append('Z');
                                        break;
                                    case 10:
                                        sb2.append('B');
                                        break;
                                    case 11:
                                        sb2.append('C');
                                        break;
                                    case 12:
                                        sb2.append('S');
                                        break;
                                    default:
                                        throw new AssertionError();
                                }
                            } else {
                                sb2.append('J');
                            }
                        }
                        c8874p8.b(7).d(c7988jr0.a(7, sb2.toString()).f48722a);
                    }
                }
            }
            i10++;
        }
    }

    @Override
    public final void a(int i10) {
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        c8874p8.b(i10);
        XQ xq = this.f39906P;
        if (xq != null) {
            int i11 = this.f39903M;
            if (i11 != 4 && i11 != 3) {
                int i12 = this.f39907Q + f39890Z[i10];
                if (i12 > this.f39908R) {
                    this.f39908R = i12;
                }
                this.f39907Q = i12;
            } else {
                xq.f45696k.a(i10, 0, (C7656hr0) null, (C7988jr0) null);
            }
            if ((i10 < 172 || i10 > 177) && i10 != 191) {
                return;
            }
            d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
    
        if (r5 != 'J') goto L31;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i10, String str, String str2, String str3) {
        int i11;
        this.f39915Y = this.f39924k.f51447b;
        C7656hr0 a10 = this.f39916c.a(9, str, str2, str3);
        this.f39924k.c(i10, a10.f48722a);
        XQ xq = this.f39906P;
        if (xq != null) {
            int i12 = this.f39903M;
            int i13 = 0;
            if (i12 != 4 && i12 != 3) {
                char charAt = str3.charAt(0);
                switch (i10) {
                    case 178:
                        i11 = this.f39907Q;
                        if (charAt == 'D' || charAt == 'J') {
                            i13 = 2;
                            break;
                        }
                        i13 = 1;
                        break;
                    case 179:
                        i11 = this.f39907Q;
                        if (charAt != 'D' && charAt != 'J') {
                            i13 = -1;
                            break;
                        }
                        i13 = -2;
                        break;
                    case 180:
                        i11 = this.f39907Q;
                        if (charAt != 'D') {
                        }
                        i13 = 1;
                        break;
                    default:
                        i11 = this.f39907Q;
                        if (charAt == 'D' || charAt == 'J') {
                            i13 = -3;
                            break;
                        }
                        i13 = -2;
                        break;
                }
                int i14 = i11 + i13;
                if (i14 > this.f39908R) {
                    this.f39908R = i14;
                }
                this.f39907Q = i14;
                return;
            }
            xq.f45696k.a(i10, 0, a10, this.f39916c);
        }
    }

    @Override
    public final void a(int i10, String str, String str2, String str3, boolean z10) {
        int i11;
        this.f39915Y = this.f39924k.f51447b;
        C7988jr0 c7988jr0 = this.f39916c;
        c7988jr0.getClass();
        C7656hr0 a10 = c7988jr0.a(z10 ? 11 : 10, str, str2, str3);
        if (i10 == 185) {
            C8874p8 c10 = this.f39924k.c(185, a10.f48722a);
            if (a10.f48728g == 0) {
                a10.f48728g = C9663tt0.c(a10.f48726e);
            }
            c10.a(a10.f48728g >> 2, 0);
        } else {
            this.f39924k.c(i10, a10.f48722a);
        }
        XQ xq = this.f39906P;
        if (xq != null) {
            int i12 = this.f39903M;
            if (i12 != 4 && i12 != 3) {
                if (a10.f48728g == 0) {
                    a10.f48728g = C9663tt0.c(a10.f48726e);
                }
                int i13 = a10.f48728g;
                int i14 = (i13 & 3) - (i13 >> 2);
                if (i10 == 184) {
                    i11 = this.f39907Q + i14 + 1;
                } else {
                    i11 = this.f39907Q + i14;
                }
                if (i11 > this.f39908R) {
                    this.f39908R = i11;
                }
                this.f39907Q = i11;
                return;
            }
            xq.f45696k.a(i10, 0, a10, this.f39916c);
        }
    }

    @Override
    public final void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        this.f39915Y = this.f39924k.f51447b;
        C7988jr0 c7988jr0 = this.f39916c;
        C7656hr0 a10 = c7988jr0.a(18, c7988jr0.a(c5829Qz, objArr).f48722a, str, str2);
        this.f39924k.c(186, a10.f48722a);
        this.f39924k.d(0);
        XQ xq = this.f39906P;
        if (xq != null) {
            int i10 = this.f39903M;
            if (i10 != 4 && i10 != 3) {
                if (a10.f48728g == 0) {
                    a10.f48728g = C9663tt0.c(a10.f48726e);
                }
                int i11 = a10.f48728g;
                int i12 = this.f39907Q + ((i11 & 3) - (i11 >> 2)) + 1;
                if (i12 > this.f39908R) {
                    this.f39908R = i12;
                }
                this.f39907Q = i12;
                return;
            }
            xq.f45696k.a(186, 0, a10, this.f39916c);
        }
    }

    @Override
    public final void a(int i10, XQ xq) {
        boolean z10;
        C8874p8 c8874p8 = this.f39924k;
        int i11 = c8874p8.f51447b;
        this.f39915Y = i11;
        int i12 = i10 >= 200 ? i10 - 33 : i10;
        if ((xq.f45687b & 4) == 0 || xq.f45690e - i11 >= -32768) {
            if (i12 != i10) {
                c8874p8.b(i10);
                C8874p8 c8874p82 = this.f39924k;
                xq.a(c8874p82, c8874p82.f51447b - 1, true);
            } else {
                c8874p8.b(i12);
                C8874p8 c8874p83 = this.f39924k;
                xq.a(c8874p83, c8874p83.f51447b - 1, false);
            }
            z10 = false;
        } else {
            if (i12 == 167) {
                c8874p8.b(200);
            } else if (i12 == 168) {
                c8874p8.b(201);
            } else {
                c8874p8.b(i12 >= 198 ? i12 ^ 1 : ((i12 + 1) ^ 1) - 1);
                this.f39924k.d(8);
                this.f39924k.b(220);
                this.f39914X = true;
                z10 = true;
                C8874p8 c8874p84 = this.f39924k;
                xq.a(c8874p84, c8874p84.f51447b - 1, true);
            }
            z10 = false;
            C8874p8 c8874p842 = this.f39924k;
            xq.a(c8874p842, c8874p842.f51447b - 1, true);
        }
        XQ xq2 = this.f39906P;
        if (xq2 != null) {
            int i13 = this.f39903M;
            XQ xq3 = null;
            if (i13 == 4) {
                xq2.f45696k.a(i12, 0, (C7656hr0) null, (C7988jr0) null);
                C7509gy c7509gy = xq.f45696k;
                XQ xq4 = c7509gy == null ? xq : c7509gy.f48393a;
                xq4.f45687b = (short) (xq4.f45687b | 2);
                c(0, xq);
                if (i12 != 167) {
                    xq3 = new XQ();
                }
            } else if (i13 == 3) {
                xq2.f45696k.a(i12, 0, (C7656hr0) null, (C7988jr0) null);
            } else if (i13 == 2) {
                this.f39907Q += f39890Z[i12];
            } else if (i12 == 168) {
                short s10 = xq.f45687b;
                if ((s10 & 32) == 0) {
                    xq.f45687b = (short) (s10 | 32);
                    this.f39913W = true;
                }
                xq2.f45687b = (short) (xq2.f45687b | 16);
                c(this.f39907Q + 1, xq);
                xq3 = new XQ();
            } else {
                int i14 = this.f39907Q + f39890Z[i12];
                this.f39907Q = i14;
                c(i14, xq);
            }
            if (xq3 != null) {
                if (z10) {
                    xq3.f45687b = (short) (xq3.f45687b | 2);
                }
                a(xq3);
            }
            if (i12 == 167) {
                d();
            }
        }
    }

    public final void c(int i10, XQ xq) {
        XQ xq2 = this.f39906P;
        xq2.f45698m = new C4890At(i10, xq, xq2.f45698m);
    }

    @Override
    public final void a(XQ xq) {
        boolean z10 = this.f39914X;
        C8874p8 c8874p8 = this.f39924k;
        this.f39914X = z10 | xq.a(c8874p8.f51446a, this.f39934u, c8874p8.f51447b);
        short s10 = xq.f45687b;
        if ((s10 & 1) != 0) {
            return;
        }
        int i10 = this.f39903M;
        if (i10 == 4) {
            XQ xq2 = this.f39906P;
            if (xq2 != null) {
                if (xq.f45690e == xq2.f45690e) {
                    xq2.f45687b = (short) ((s10 & 2) | xq2.f45687b);
                    xq.f45696k = xq2.f45696k;
                    return;
                }
                c(0, xq);
            }
            XQ xq3 = this.f39905O;
            if (xq3 != null) {
                if (xq.f45690e == xq3.f45690e) {
                    xq3.f45687b = (short) (xq3.f45687b | (xq.f45687b & 2));
                    xq.f45696k = xq3.f45696k;
                    this.f39906P = xq3;
                    return;
                }
                xq3.f45697l = xq;
            }
            this.f39905O = xq;
            this.f39906P = xq;
            xq.f45696k = new C7509gy(xq);
            return;
        }
        if (i10 == 3) {
            XQ xq4 = this.f39906P;
            if (xq4 == null) {
                this.f39906P = xq;
                return;
            } else {
                xq4.f45696k.f48393a = xq;
                return;
            }
        }
        if (i10 == 1) {
            XQ xq5 = this.f39906P;
            if (xq5 != null) {
                xq5.f45694i = (short) this.f39908R;
                c(this.f39907Q, xq);
            }
            this.f39906P = xq;
            this.f39907Q = 0;
            this.f39908R = 0;
            XQ xq6 = this.f39905O;
            if (xq6 != null) {
                xq6.f45697l = xq;
            }
            this.f39905O = xq;
            return;
        }
        if (i10 == 2 && this.f39906P == null) {
            this.f39906P = xq;
        }
    }

    @Override
    public final void a(Object obj) {
        char charAt;
        this.f39915Y = this.f39924k.f51447b;
        C7656hr0 a10 = this.f39916c.a(obj);
        int i10 = a10.f48722a;
        int i11 = a10.f48723b;
        boolean z10 = i11 == 5 || i11 == 6 || (i11 == 17 && ((charAt = a10.f48726e.charAt(0)) == 'J' || charAt == 'D'));
        if (z10) {
            this.f39924k.c(20, i10);
        } else if (i10 >= 256) {
            this.f39924k.c(19, i10);
        } else {
            this.f39924k.a(18, i10);
        }
        XQ xq = this.f39906P;
        if (xq != null) {
            int i12 = this.f39903M;
            if (i12 != 4 && i12 != 3) {
                int i13 = this.f39907Q + (z10 ? 2 : 1);
                if (i13 > this.f39908R) {
                    this.f39908R = i13;
                }
                this.f39907Q = i13;
                return;
            }
            xq.f45696k.a(18, 0, a10, this.f39916c);
        }
    }

    @Override
    public final void a(int i10, int i11) {
        int i12;
        int i13;
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        if (i10 <= 255 && i11 <= 127 && i11 >= -128) {
            c8874p8.b(132).a(i10, i11);
        } else {
            c8874p8.b(196).c(132, i10).d(i11);
        }
        XQ xq = this.f39906P;
        if (xq != null && ((i13 = this.f39903M) == 4 || i13 == 3)) {
            xq.f45696k.a(132, i10, (C7656hr0) null, (C7988jr0) null);
        }
        if (this.f39903M == 0 || (i12 = i10 + 1) <= this.f39923j) {
            return;
        }
        this.f39923j = i12;
    }

    @Override
    public final void a(int i10, int i11, XQ xq, XQ... xqArr) {
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        c8874p8.b(170).a((byte[]) null, 0, (4 - (this.f39924k.f51447b % 4)) % 4);
        xq.a(this.f39924k, this.f39915Y, true);
        this.f39924k.c(i10).c(i11);
        for (XQ xq2 : xqArr) {
            xq2.a(this.f39924k, this.f39915Y, true);
        }
        a(xq, xqArr);
    }

    @Override
    public final void a(XQ xq, int[] iArr, XQ[] xqArr) {
        C8874p8 c8874p8 = this.f39924k;
        this.f39915Y = c8874p8.f51447b;
        c8874p8.b(171).a((byte[]) null, 0, (4 - (this.f39924k.f51447b % 4)) % 4);
        xq.a(this.f39924k, this.f39915Y, true);
        this.f39924k.c(xqArr.length);
        for (int i10 = 0; i10 < xqArr.length; i10++) {
            this.f39924k.c(iArr[i10]);
            xqArr[i10].a(this.f39924k, this.f39915Y, true);
        }
        a(xq, xqArr);
    }

    public final void a(XQ xq, XQ[] xqArr) {
        XQ xq2 = this.f39906P;
        if (xq2 != null) {
            int i10 = this.f39903M;
            if (i10 == 4) {
                xq2.f45696k.a(171, 0, (C7656hr0) null, (C7988jr0) null);
                c(0, xq);
                C7509gy c7509gy = xq.f45696k;
                if (c7509gy != null) {
                    xq = c7509gy.f48393a;
                }
                xq.f45687b = (short) (xq.f45687b | 2);
                for (XQ xq3 : xqArr) {
                    c(0, xq3);
                    C7509gy c7509gy2 = xq3.f45696k;
                    if (c7509gy2 != null) {
                        xq3 = c7509gy2.f48393a;
                    }
                    xq3.f45687b = (short) (xq3.f45687b | 2);
                }
            } else if (i10 == 1) {
                int i11 = this.f39907Q - 1;
                this.f39907Q = i11;
                c(i11, xq);
                for (XQ xq4 : xqArr) {
                    c(this.f39907Q, xq4);
                }
            }
            d();
        }
    }

    @Override
    public final void a(int i10, String str) {
        this.f39915Y = this.f39924k.f51447b;
        C7656hr0 a10 = this.f39916c.a(7, str);
        this.f39924k.c(197, a10.f48722a).b(i10);
        XQ xq = this.f39906P;
        if (xq != null) {
            int i11 = this.f39903M;
            if (i11 != 4 && i11 != 3) {
                this.f39907Q = (1 - i10) + this.f39907Q;
            } else {
                xq.f45696k.a(197, i10, a10, this.f39916c);
            }
        }
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f39916c, (i10 & (-16776961)) | (this.f39915Y << 8), c9666tu0, str, this.f39935v);
            this.f39935v = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f39916c, (i10 & (-16776961)) | (this.f39915Y << 8), c9666tu0, str, this.f39936w);
        this.f39936w = a11;
        return a11;
    }

    @Override
    public final void a(XQ xq, XQ xq2, XQ xq3, String str) {
        C5887Rz c5887Rz = new C5887Rz(xq, xq2, xq3, str != null ? this.f39916c.a(7, str).f48722a : 0, str);
        if (this.f39925l == null) {
            this.f39925l = c5887Rz;
        } else {
            this.f39926m.f44046f = c5887Rz;
        }
        this.f39926m = c5887Rz;
    }

    @Override
    public final void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        if (str3 != null) {
            if (this.f39932s == null) {
                this.f39932s = new C8874p8();
            }
            this.f39931r++;
            this.f39932s.d(xq.f45690e).d(xq2.f45690e - xq.f45690e).d(this.f39916c.a(str)).d(this.f39916c.a(str3)).d(i10);
        }
        if (this.f39930q == null) {
            this.f39930q = new C8874p8();
        }
        this.f39929p++;
        this.f39930q.d(xq.f45690e).d(xq2.f45690e - xq.f45690e).d(this.f39916c.a(str)).d(this.f39916c.a(str2)).d(i10);
        if (this.f39903M != 0) {
            char charAt = str2.charAt(0);
            int i11 = i10 + ((charAt == 'J' || charAt == 'D') ? 2 : 1);
            if (i11 > this.f39923j) {
                this.f39923j = i11;
            }
        }
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        C8874p8 c8874p8 = new C8874p8();
        c8874p8.b(i10 >>> 24).d(xqArr.length);
        for (int i11 = 0; i11 < xqArr.length; i11++) {
            c8874p8.d(xqArr[i11].f45690e).d(xqArr2[i11].f45690e - xqArr[i11].f45690e).d(iArr[i11]);
        }
        if (c9666tu0 == null) {
            c8874p8.b(0);
        } else {
            byte[] bArr = c9666tu0.f52727a;
            int i12 = c9666tu0.f52728b;
            c8874p8.a(bArr, i12, (bArr[i12] * 2) + 1);
        }
        c8874p8.d(this.f39916c.a(str)).d(0);
        if (z10) {
            S2 s22 = new S2(this.f39916c, true, c8874p8, this.f39935v);
            this.f39935v = s22;
            return s22;
        }
        S2 s23 = new S2(this.f39916c, true, c8874p8, this.f39936w);
        this.f39936w = s23;
        return s23;
    }

    public final void a(int i10, int i11, int i12) {
        int i13 = i11 + 3 + i12;
        int[] iArr = this.f39912V;
        if (iArr == null || iArr.length < i13) {
            this.f39912V = new int[i13];
        }
        int[] iArr2 = this.f39912V;
        iArr2[0] = i10;
        iArr2[1] = i11;
        iArr2[2] = i12;
    }
}
