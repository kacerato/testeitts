package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C8234lI extends AbstractC6849d0 implements Serializable {

    public transient C7568hI f49920b;

    public int f49921c;

    public transient C7568hI f49922d;

    public transient C7568hI f49923e;

    public final Comparator f49924f;

    public final transient C7401gI f49925g;

    public transient boolean[] f49926h;

    public transient C7568hI[] f49927i;

    public C8234lI() {
        this.f49926h = new boolean[64];
        this.f49927i = new C7568hI[64];
        this.f49920b = null;
        this.f49921c = 0;
    }

    @Override
    public final int K() {
        if (this.f49920b != null) {
            return this.f49922d.f48522b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        return new C8067kI(this, i10, false, 0, true);
    }

    @Override
    public final boolean add(int i10) {
        int i11;
        C7568hI c7568hI;
        C7568hI c7568hI2;
        C7568hI c7568hI3 = this.f49920b;
        int i12 = 0;
        if (c7568hI3 == null) {
            this.f49921c++;
            C7568hI c7568hI4 = new C7568hI(i10);
            this.f49922d = c7568hI4;
            this.f49923e = c7568hI4;
            this.f49920b = c7568hI4;
        } else {
            int i13 = 0;
            while (true) {
                int e10 = e(i10, c7568hI3.f48522b);
                if (e10 == 0) {
                    while (true) {
                        int i14 = i13 - 1;
                        if (i13 == 0) {
                            return false;
                        }
                        this.f49927i[i14] = null;
                        i13 = i14;
                    }
                } else {
                    this.f49927i[i13] = c7568hI3;
                    boolean[] zArr = this.f49926h;
                    i11 = i13 + 1;
                    boolean z10 = e10 > 0;
                    zArr[i13] = z10;
                    if (z10) {
                        if (c7568hI3.e()) {
                            this.f49921c++;
                            C7568hI c7568hI5 = new C7568hI(i10);
                            C7568hI c7568hI6 = c7568hI3.f48524d;
                            if (c7568hI6 == null) {
                                this.f49923e = c7568hI5;
                            }
                            c7568hI5.f48523c = c7568hI3;
                            c7568hI5.f48524d = c7568hI6;
                            c7568hI3.f48525e &= Integer.MAX_VALUE;
                            c7568hI3.f48524d = c7568hI5;
                        } else {
                            c7568hI3 = c7568hI3.f48524d;
                            i13 = i11;
                        }
                    } else if (c7568hI3.c()) {
                        this.f49921c++;
                        C7568hI c7568hI7 = new C7568hI(i10);
                        C7568hI c7568hI8 = c7568hI3.f48523c;
                        if (c7568hI8 == null) {
                            this.f49922d = c7568hI7;
                        }
                        c7568hI7.f48524d = c7568hI3;
                        c7568hI7.f48523c = c7568hI8;
                        c7568hI3.f48525e &= -1073741825;
                        c7568hI3.f48523c = c7568hI7;
                    } else {
                        c7568hI3 = c7568hI3.f48523c;
                        i13 = i11;
                    }
                }
            }
            while (i13 > 0 && !this.f49927i[i13].a()) {
                int i15 = i13 - 1;
                if (this.f49926h[i15]) {
                    C7568hI c7568hI9 = this.f49927i[i15];
                    C7568hI c7568hI10 = c7568hI9.f48523c;
                    if (c7568hI9.c() || c7568hI10.a()) {
                        if (this.f49926h[i13]) {
                            c7568hI = this.f49927i[i13];
                        } else {
                            C7568hI[] c7568hIArr = this.f49927i;
                            C7568hI c7568hI11 = c7568hIArr[i13];
                            C7568hI c7568hI12 = c7568hI11.f48523c;
                            c7568hI11.f48523c = c7568hI12.f48524d;
                            c7568hI12.f48524d = c7568hI11;
                            c7568hIArr[i15].f48524d = c7568hI12;
                            if (c7568hI12.e()) {
                                c7568hI12.f48525e &= Integer.MAX_VALUE;
                                c7568hI11.a(c7568hI12);
                            }
                            c7568hI = c7568hI12;
                        }
                        C7568hI c7568hI13 = this.f49927i[i15];
                        c7568hI13.a(false);
                        c7568hI.a(true);
                        c7568hI13.f48524d = c7568hI.f48523c;
                        c7568hI.f48523c = c7568hI13;
                        if (i13 < 2) {
                            this.f49920b = c7568hI;
                        } else {
                            int i16 = i13 - 2;
                            if (this.f49926h[i16]) {
                                this.f49927i[i16].f48524d = c7568hI;
                            } else {
                                this.f49927i[i16].f48523c = c7568hI;
                            }
                        }
                        if (c7568hI.c()) {
                            c7568hI.b(false);
                            c7568hI13.b(c7568hI);
                        }
                    } else {
                        this.f49927i[i13].a(true);
                        c7568hI10.a(true);
                        this.f49927i[i15].a(false);
                        i13 -= 2;
                    }
                } else {
                    C7568hI c7568hI14 = this.f49927i[i15];
                    C7568hI c7568hI15 = c7568hI14.f48524d;
                    if (c7568hI14.e() || c7568hI15.a()) {
                        if (this.f49926h[i13]) {
                            C7568hI[] c7568hIArr2 = this.f49927i;
                            C7568hI c7568hI16 = c7568hIArr2[i13];
                            C7568hI c7568hI17 = c7568hI16.f48524d;
                            c7568hI16.f48524d = c7568hI17.f48523c;
                            c7568hI17.f48523c = c7568hI16;
                            c7568hIArr2[i15].f48523c = c7568hI17;
                            if (c7568hI17.c()) {
                                c7568hI17.b(false);
                                c7568hI16.b(c7568hI17);
                            }
                            c7568hI2 = c7568hI17;
                        } else {
                            c7568hI2 = this.f49927i[i13];
                        }
                        C7568hI c7568hI18 = this.f49927i[i15];
                        c7568hI18.a(false);
                        c7568hI2.a(true);
                        c7568hI18.f48523c = c7568hI2.f48524d;
                        c7568hI2.f48524d = c7568hI18;
                        if (i13 < 2) {
                            this.f49920b = c7568hI2;
                        } else {
                            int i17 = i13 - 2;
                            if (this.f49926h[i17]) {
                                this.f49927i[i17].f48524d = c7568hI2;
                            } else {
                                this.f49927i[i17].f48523c = c7568hI2;
                            }
                        }
                        if (c7568hI2.e()) {
                            c7568hI2.f48525e &= Integer.MAX_VALUE;
                            c7568hI18.a(c7568hI2);
                        }
                    } else {
                        this.f49927i[i13].a(true);
                        c7568hI15.a(true);
                        this.f49927i[i15].a(false);
                        i13 -= 2;
                    }
                }
            }
            i12 = i11;
        }
        this.f49920b.a(true);
        while (true) {
            int i18 = i12 - 1;
            if (i12 == 0) {
                return true;
            }
            this.f49927i[i18] = null;
            i12 = i18;
        }
    }

    @Override
    public final void clear() {
        this.f49921c = 0;
        this.f49920b = null;
        this.f49923e = null;
        this.f49922d = null;
    }

    public final Object clone() {
        try {
            C8234lI c8234lI = (C8234lI) super.clone();
            c8234lI.f49926h = new boolean[64];
            c8234lI.f49927i = new C7568hI[64];
            if (this.f49921c != 0) {
                C7568hI c7568hI = new C7568hI();
                C7568hI c7568hI2 = new C7568hI();
                C7568hI c7568hI3 = this.f49920b;
                c7568hI.f48525e &= -1073741825;
                c7568hI.f48523c = c7568hI3;
                c7568hI2.a((C7568hI) null);
                C7568hI c7568hI4 = c7568hI2;
                loop0: while (true) {
                    if (c7568hI.c()) {
                        while (c7568hI.e()) {
                            c7568hI = c7568hI.f48524d;
                            if (c7568hI == null) {
                                break loop0;
                            }
                            c7568hI4 = c7568hI4.f48524d;
                        }
                        c7568hI = c7568hI.f48524d;
                        c7568hI4 = c7568hI4.f48524d;
                    } else {
                        C7568hI m725clone = c7568hI.f48523c.m725clone();
                        m725clone.a(c7568hI4.f48523c);
                        m725clone.b(c7568hI4);
                        c7568hI4.f48525e &= -1073741825;
                        c7568hI4.f48523c = m725clone;
                        c7568hI = c7568hI.f48523c;
                        c7568hI4 = m725clone;
                    }
                    if (!c7568hI.e()) {
                        C7568hI m725clone2 = c7568hI.f48524d.m725clone();
                        m725clone2.b(c7568hI4.f48524d);
                        m725clone2.a(c7568hI4);
                        c7568hI4.f48525e &= Integer.MAX_VALUE;
                        c7568hI4.f48524d = m725clone2;
                    }
                }
                c7568hI4.f48524d = null;
                C7568hI c7568hI5 = c7568hI2.f48523c;
                c8234lI.f49920b = c7568hI5;
                c8234lI.f49922d = c7568hI5;
                while (true) {
                    C7568hI c7568hI6 = c8234lI.f49922d.f48523c;
                    if (c7568hI6 == null) {
                        break;
                    }
                    c8234lI.f49922d = c7568hI6;
                }
                c8234lI.f49923e = c8234lI.f49920b;
                while (true) {
                    C7568hI c7568hI7 = c8234lI.f49923e.f48524d;
                    if (c7568hI7 == null) {
                        break;
                    }
                    c8234lI.f49923e = c7568hI7;
                }
            }
            return c8234lI;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final Comparator comparator() {
        return this.f49925g;
    }

    @Override
    public final InterfaceC9069qI d(int i10, int i11) {
        return new C8067kI(this, i10, false, i11, false);
    }

    public final int e(int i10, int i11) {
        C7401gI c7401gI = this.f49925g;
        return c7401gI == null ? Integer.compare(i10, i11) : c7401gI.a(i10, i11);
    }

    @Override
    public final boolean h(int i10) {
        C7568hI c7568hI = this.f49920b;
        while (c7568hI != null) {
            int e10 = e(i10, c7568hI.f48522b);
            if (e10 == 0) {
                break;
            }
            if (e10 < 0) {
                c7568hI = (c7568hI.f48525e & 1073741824) != 0 ? null : c7568hI.f48523c;
            } else if ((c7568hI.f48525e & Integer.MIN_VALUE) == 0) {
                c7568hI = c7568hI.f48524d;
            }
        }
        return c7568hI != null;
    }

    @Override
    public final boolean isEmpty() {
        return this.f49921c == 0;
    }

    @Override
    public final HH iterator() {
        return new C7735iI(this);
    }

    @Override
    public final int p() {
        if (this.f49920b != null) {
            return this.f49923e.f48522b;
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x02f3, code lost:
    
        if (r0.c() != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02fb, code lost:
    
        if (r0.f48523c.a() == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0322, code lost:
    
        r3 = r2 - 1;
        r0.a(r13.f49927i[r3].a());
        r13.f49927i[r3].a(true);
        r0.f48523c.a(true);
        r1 = r13.f49927i;
        r8 = r1[r3];
        r8.f48523c = r0.f48524d;
        r0.f48524d = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0345, code lost:
    
        if (r2 >= 2) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0347, code lost:
    
        r13.f49920b = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x035e, code lost:
    
        if (r0.e() == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0360, code lost:
    
        r0.f48525e &= Integer.MAX_VALUE;
        r13.f49927i[r3].a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x034a, code lost:
    
        r2 = r2 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x034f, code lost:
    
        if (r13.f49926h[r2] == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0351, code lost:
    
        r1[r2].f48524d = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0356, code lost:
    
        r1[r2].f48523c = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02fd, code lost:
    
        r3 = r0.f48524d;
        r3.a(true);
        r0.a(false);
        r0.f48524d = r3.f48523c;
        r3.f48523c = r0;
        r13.f49927i[r2 - 1].f48523c = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0317, code lost:
    
        if (r3.c() == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0319, code lost:
    
        r3.b(false);
        r3.f48523c.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0321, code lost:
    
        r0 = r3;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(int i10) {
        int i11;
        C7568hI c7568hI;
        C7568hI c7568hI2;
        C7568hI c7568hI3 = this.f49920b;
        if (c7568hI3 == null) {
            return false;
        }
        int i12 = 0;
        while (true) {
            int e10 = e(i10, c7568hI3.f48522b);
            if (e10 == 0) {
                if (c7568hI3.f48523c == null) {
                    this.f49922d = c7568hI3.b();
                }
                if (c7568hI3.f48524d == null) {
                    this.f49923e = c7568hI3.d();
                }
                if (!c7568hI3.e()) {
                    C7568hI c7568hI4 = c7568hI3.f48524d;
                    if (c7568hI4.c()) {
                        c7568hI4.f48523c = c7568hI3.f48523c;
                        c7568hI4.b(c7568hI3.c());
                        if (!c7568hI4.c()) {
                            c7568hI4.d().f48524d = c7568hI4;
                        }
                        if (i12 == 0) {
                            this.f49920b = c7568hI4;
                        } else {
                            int i13 = i12 - 1;
                            if (this.f49926h[i13]) {
                                this.f49927i[i13].f48524d = c7568hI4;
                            } else {
                                this.f49927i[i13].f48523c = c7568hI4;
                            }
                        }
                        boolean a10 = c7568hI4.a();
                        c7568hI4.a(c7568hI3.a());
                        c7568hI3.a(a10);
                        this.f49926h[i12] = true;
                        this.f49927i[i12] = c7568hI4;
                        i12++;
                    } else {
                        int i14 = i12 + 1;
                        while (true) {
                            this.f49926h[i14] = false;
                            i11 = i14 + 1;
                            this.f49927i[i14] = c7568hI4;
                            c7568hI = c7568hI4.f48523c;
                            if (c7568hI.c()) {
                                break;
                            }
                            c7568hI4 = c7568hI;
                            i14 = i11;
                        }
                        this.f49926h[i12] = true;
                        this.f49927i[i12] = c7568hI;
                        if (c7568hI.e()) {
                            c7568hI4.a(c7568hI);
                        } else {
                            c7568hI4.f48523c = c7568hI.f48524d;
                        }
                        c7568hI.f48523c = c7568hI3.f48523c;
                        if (!c7568hI3.c()) {
                            c7568hI3.d().f48524d = c7568hI;
                            c7568hI.b(false);
                        }
                        C7568hI c7568hI5 = c7568hI3.f48524d;
                        c7568hI.f48525e &= Integer.MAX_VALUE;
                        c7568hI.f48524d = c7568hI5;
                        boolean a11 = c7568hI.a();
                        c7568hI.a(c7568hI3.a());
                        c7568hI3.a(a11);
                        if (i12 == 0) {
                            this.f49920b = c7568hI;
                        } else {
                            int i15 = i12 - 1;
                            if (this.f49926h[i15]) {
                                this.f49927i[i15].f48524d = c7568hI;
                            } else {
                                this.f49927i[i15].f48523c = c7568hI;
                            }
                        }
                        i12 = i11;
                    }
                } else if (!c7568hI3.c()) {
                    c7568hI3.d().f48524d = c7568hI3.f48524d;
                    if (i12 == 0) {
                        this.f49920b = c7568hI3.f48523c;
                    } else {
                        int i16 = i12 - 1;
                        if (this.f49926h[i16]) {
                            this.f49927i[i16].f48524d = c7568hI3.f48523c;
                        } else {
                            this.f49927i[i16].f48523c = c7568hI3.f48523c;
                        }
                    }
                } else if (i12 == 0) {
                    this.f49920b = c7568hI3.f48523c;
                } else {
                    int i17 = i12 - 1;
                    if (this.f49926h[i17]) {
                        this.f49927i[i17].b(c7568hI3.f48524d);
                    } else {
                        this.f49927i[i17].a(c7568hI3.f48523c);
                    }
                }
                if (c7568hI3.a()) {
                    int i18 = i12;
                    while (true) {
                        if (i12 <= 0) {
                            break;
                        }
                        int i19 = i12 - 1;
                        if ((this.f49926h[i19] && !this.f49927i[i19].e()) || (!this.f49926h[i19] && !this.f49927i[i19].c())) {
                            C7568hI c7568hI6 = this.f49926h[i19] ? this.f49927i[i19].f48524d : this.f49927i[i19].f48523c;
                            if (!c7568hI6.a()) {
                                c7568hI6.a(true);
                                break;
                            }
                        }
                        if (this.f49926h[i19]) {
                            C7568hI c7568hI7 = this.f49927i[i19].f48523c;
                            if (!c7568hI7.a()) {
                                c7568hI7.a(true);
                                this.f49927i[i19].a(false);
                                C7568hI[] c7568hIArr = this.f49927i;
                                C7568hI c7568hI8 = c7568hIArr[i19];
                                c7568hI8.f48523c = c7568hI7.f48524d;
                                c7568hI7.f48524d = c7568hI8;
                                if (i12 < 2) {
                                    this.f49920b = c7568hI7;
                                } else {
                                    int i20 = i12 - 2;
                                    if (this.f49926h[i20]) {
                                        c7568hIArr[i20].f48524d = c7568hI7;
                                    } else {
                                        c7568hIArr[i20].f48523c = c7568hI7;
                                    }
                                }
                                c7568hIArr[i12] = c7568hI8;
                                this.f49926h[i12] = true;
                                c7568hIArr[i19] = c7568hI7;
                                int i21 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                C7568hI c7568hI9 = c7568hIArr[i12].f48523c;
                                i12 = i21;
                                c7568hI7 = c7568hI9;
                            }
                            if ((c7568hI7.c() || c7568hI7.f48523c.a()) && (c7568hI7.e() || c7568hI7.f48524d.a())) {
                                c7568hI7.a(false);
                                i12--;
                            }
                        } else {
                            c7568hI2 = this.f49927i[i19].f48524d;
                            if (!c7568hI2.a()) {
                                c7568hI2.a(true);
                                this.f49927i[i19].a(false);
                                C7568hI[] c7568hIArr2 = this.f49927i;
                                C7568hI c7568hI10 = c7568hIArr2[i19];
                                c7568hI10.f48524d = c7568hI2.f48523c;
                                c7568hI2.f48523c = c7568hI10;
                                if (i12 < 2) {
                                    this.f49920b = c7568hI2;
                                } else {
                                    int i22 = i12 - 2;
                                    if (this.f49926h[i22]) {
                                        c7568hIArr2[i22].f48524d = c7568hI2;
                                    } else {
                                        c7568hIArr2[i22].f48523c = c7568hI2;
                                    }
                                }
                                c7568hIArr2[i12] = c7568hI10;
                                this.f49926h[i12] = false;
                                c7568hIArr2[i19] = c7568hI2;
                                int i23 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                C7568hI c7568hI11 = c7568hIArr2[i12].f48524d;
                                i12 = i23;
                                c7568hI2 = c7568hI11;
                            }
                            if ((c7568hI2.c() || c7568hI2.f48523c.a()) && (c7568hI2.e() || c7568hI2.f48524d.a())) {
                                c7568hI2.a(false);
                                i12--;
                            }
                        }
                    }
                    if (c7568hI2.e() || c7568hI2.f48524d.a()) {
                        C7568hI c7568hI12 = c7568hI2.f48523c;
                        c7568hI12.a(true);
                        c7568hI2.a(false);
                        c7568hI2.f48523c = c7568hI12.f48524d;
                        c7568hI12.f48524d = c7568hI2;
                        this.f49927i[i12 - 1].f48524d = c7568hI12;
                        if (c7568hI12.e()) {
                            c7568hI12.f48525e &= Integer.MAX_VALUE;
                            c7568hI12.f48524d.a(c7568hI12);
                        }
                        c7568hI2 = c7568hI12;
                    }
                    int i24 = i12 - 1;
                    c7568hI2.a(this.f49927i[i24].a());
                    this.f49927i[i24].a(true);
                    c7568hI2.f48524d.a(true);
                    C7568hI[] c7568hIArr3 = this.f49927i;
                    C7568hI c7568hI13 = c7568hIArr3[i24];
                    c7568hI13.f48524d = c7568hI2.f48523c;
                    c7568hI2.f48523c = c7568hI13;
                    if (i12 < 2) {
                        this.f49920b = c7568hI2;
                    } else {
                        int i25 = i12 - 2;
                        if (this.f49926h[i25]) {
                            c7568hIArr3[i25].f48524d = c7568hI2;
                        } else {
                            c7568hIArr3[i25].f48523c = c7568hI2;
                        }
                    }
                    if (c7568hI2.c()) {
                        c7568hI2.b(false);
                        this.f49927i[i24].b(c7568hI2);
                    }
                    i12 = i18;
                    C7568hI c7568hI14 = this.f49920b;
                    if (c7568hI14 != null) {
                        c7568hI14.a(true);
                    }
                }
                this.f49921c--;
                while (true) {
                    int i26 = i12 - 1;
                    if (i12 == 0) {
                        return true;
                    }
                    this.f49927i[i26] = null;
                    i12 = i26;
                }
            } else {
                boolean[] zArr = this.f49926h;
                boolean z10 = e10 > 0;
                zArr[i12] = z10;
                this.f49927i[i12] = c7568hI3;
                i12++;
                if (z10) {
                    c7568hI3 = (c7568hI3.f48525e & Integer.MIN_VALUE) != 0 ? null : c7568hI3.f48524d;
                    if (c7568hI3 == null) {
                        while (true) {
                            int i27 = i12 - 1;
                            if (i12 == 0) {
                                return false;
                            }
                            this.f49927i[i27] = null;
                            i12 = i27;
                        }
                    }
                } else {
                    c7568hI3 = (c7568hI3.f48525e & 1073741824) != 0 ? null : c7568hI3.f48523c;
                    if (c7568hI3 == null) {
                        while (true) {
                            int i28 = i12 - 1;
                            if (i12 == 0) {
                                return false;
                            }
                            this.f49927i[i28] = null;
                            i12 = i28;
                        }
                    }
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f49921c;
    }

    @Override
    public final InterfaceC9069qI e(int i10) {
        return new C8067kI(this, 0, true, i10, false);
    }

    @Override
    public final PH iterator() {
        return new C7735iI(this);
    }

    @Override
    public final Iterator iterator() {
        return new C7735iI(this);
    }

    public C8234lI(Comparator comparator) {
        this();
        this.f49924f = comparator;
        if (comparator != null && !(comparator instanceof C7401gI)) {
            this.f49925g = new C7401gI(this);
        } else {
            this.f49925g = (C7401gI) comparator;
        }
    }
}
