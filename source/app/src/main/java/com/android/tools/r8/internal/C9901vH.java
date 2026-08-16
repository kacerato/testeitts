package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C9901vH extends V implements Cloneable {

    public transient C7566hH f53067d;

    public transient C7566hH f53068e;

    public transient C7232fH f53069f;

    public transient C8065kH f53070g;

    public transient C7399gH f53071h;

    public transient boolean f53072i;

    public transient boolean[] f53073j = new boolean[64];

    public transient C7566hH[] f53074k = new C7566hH[64];

    public transient C7566hH f53065b = null;

    public int f53066c = 0;

    @Override
    public final Object a(int i10, Object obj) {
        int i11;
        C7566hH c7566hH;
        C7566hH c7566hH2;
        C7566hH c7566hH3;
        int i12 = 0;
        this.f53072i = false;
        C7566hH c7566hH4 = this.f53065b;
        if (c7566hH4 == null) {
            this.f53066c++;
            c7566hH4 = new C7566hH(i10);
            this.f53067d = c7566hH4;
            this.f53068e = c7566hH4;
            this.f53065b = c7566hH4;
        } else {
            int i13 = 0;
            while (true) {
                int compare = Integer.compare(i10, c7566hH4.f44050b);
                if (compare == 0) {
                    while (true) {
                        int i14 = i13 - 1;
                        if (i13 == 0) {
                            break;
                        }
                        this.f53074k[i14] = null;
                        i13 = i14;
                    }
                } else {
                    this.f53074k[i13] = c7566hH4;
                    boolean[] zArr = this.f53073j;
                    i11 = i13 + 1;
                    boolean z10 = compare > 0;
                    zArr[i13] = z10;
                    if (z10) {
                        if (c7566hH4.f()) {
                            this.f53066c++;
                            c7566hH = new C7566hH(i10);
                            C7566hH c7566hH5 = c7566hH4.f48520e;
                            if (c7566hH5 == null) {
                                this.f53068e = c7566hH;
                            }
                            c7566hH.f48519d = c7566hH4;
                            c7566hH.f48520e = c7566hH5;
                            c7566hH4.f48521f &= Integer.MAX_VALUE;
                            c7566hH4.f48520e = c7566hH;
                        } else {
                            c7566hH4 = c7566hH4.f48520e;
                            i13 = i11;
                        }
                    } else if (c7566hH4.d()) {
                        this.f53066c++;
                        c7566hH = new C7566hH(i10);
                        C7566hH c7566hH6 = c7566hH4.f48519d;
                        if (c7566hH6 == null) {
                            this.f53067d = c7566hH;
                        }
                        c7566hH.f48520e = c7566hH4;
                        c7566hH.f48519d = c7566hH6;
                        c7566hH4.f48521f &= -1073741825;
                        c7566hH4.f48519d = c7566hH;
                    } else {
                        c7566hH4 = c7566hH4.f48519d;
                        i13 = i11;
                    }
                }
            }
            c7566hH4 = c7566hH;
            this.f53072i = true;
            while (i13 > 0 && !this.f53074k[i13].b()) {
                int i15 = i13 - 1;
                if (!this.f53073j[i15]) {
                    C7566hH c7566hH7 = this.f53074k[i15];
                    C7566hH c7566hH8 = c7566hH7.f48520e;
                    if (!c7566hH7.f() && !c7566hH8.b()) {
                        this.f53074k[i13].a(true);
                        c7566hH8.a(true);
                        this.f53074k[i15].a(false);
                        i13 -= 2;
                    } else {
                        if (this.f53073j[i13]) {
                            C7566hH[] c7566hHArr = this.f53074k;
                            C7566hH c7566hH9 = c7566hHArr[i13];
                            C7566hH c7566hH10 = c7566hH9.f48520e;
                            c7566hH9.f48520e = c7566hH10.f48519d;
                            c7566hH10.f48519d = c7566hH9;
                            c7566hHArr[i15].f48519d = c7566hH10;
                            if (c7566hH10.d()) {
                                c7566hH10.b(false);
                                c7566hH9.b(c7566hH10);
                            }
                            c7566hH3 = c7566hH10;
                        } else {
                            c7566hH3 = this.f53074k[i13];
                        }
                        C7566hH c7566hH11 = this.f53074k[i15];
                        c7566hH11.a(false);
                        c7566hH3.a(true);
                        c7566hH11.f48519d = c7566hH3.f48520e;
                        c7566hH3.f48520e = c7566hH11;
                        if (i13 < 2) {
                            this.f53065b = c7566hH3;
                        } else {
                            int i16 = i13 - 2;
                            if (this.f53073j[i16]) {
                                this.f53074k[i16].f48520e = c7566hH3;
                            } else {
                                this.f53074k[i16].f48519d = c7566hH3;
                            }
                        }
                        if (c7566hH3.f()) {
                            c7566hH3.f48521f &= Integer.MAX_VALUE;
                            c7566hH11.a(c7566hH3);
                        }
                    }
                } else {
                    C7566hH c7566hH12 = this.f53074k[i15];
                    C7566hH c7566hH13 = c7566hH12.f48519d;
                    if (!c7566hH12.d() && !c7566hH13.b()) {
                        this.f53074k[i13].a(true);
                        c7566hH13.a(true);
                        this.f53074k[i15].a(false);
                        i13 -= 2;
                    } else {
                        if (this.f53073j[i13]) {
                            c7566hH2 = this.f53074k[i13];
                        } else {
                            C7566hH[] c7566hHArr2 = this.f53074k;
                            C7566hH c7566hH14 = c7566hHArr2[i13];
                            C7566hH c7566hH15 = c7566hH14.f48519d;
                            c7566hH14.f48519d = c7566hH15.f48520e;
                            c7566hH15.f48520e = c7566hH14;
                            c7566hHArr2[i15].f48520e = c7566hH15;
                            if (c7566hH15.f()) {
                                c7566hH15.f48521f &= Integer.MAX_VALUE;
                                c7566hH14.a(c7566hH15);
                            }
                            c7566hH2 = c7566hH15;
                        }
                        C7566hH c7566hH16 = this.f53074k[i15];
                        c7566hH16.a(false);
                        c7566hH2.a(true);
                        c7566hH16.f48520e = c7566hH2.f48519d;
                        c7566hH2.f48519d = c7566hH16;
                        if (i13 < 2) {
                            this.f53065b = c7566hH2;
                        } else {
                            int i17 = i13 - 2;
                            if (this.f53073j[i17]) {
                                this.f53074k[i17].f48520e = c7566hH2;
                            } else {
                                this.f53074k[i17].f48519d = c7566hH2;
                            }
                        }
                        if (c7566hH2.d()) {
                            c7566hH2.b(false);
                            c7566hH16.b(c7566hH2);
                        }
                    }
                }
            }
            i12 = i11;
        }
        this.f53065b.a(true);
        while (true) {
            int i18 = i12 - 1;
            if (i12 == 0) {
                break;
            }
            this.f53074k[i18] = null;
            i12 = i18;
        }
        Object obj2 = c7566hH4.f44051c;
        c7566hH4.f44051c = obj;
        return obj2;
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        return new C9400sH(this, i10, false, 0, true);
    }

    public final int c(int i10, int i11) {
        return Integer.compare(i10, i11);
    }

    @Override
    public final void clear() {
        this.f53066c = 0;
        this.f53065b = null;
        this.f53069f = null;
        this.f53071h = null;
        this.f53070g = null;
        this.f53068e = null;
        this.f53067d = null;
    }

    public final Object clone() {
        try {
            C9901vH c9901vH = (C9901vH) super.clone();
            c9901vH.f53070g = null;
            c9901vH.f53071h = null;
            c9901vH.f53069f = null;
            c9901vH.f53073j = new boolean[64];
            c9901vH.f53074k = new C7566hH[64];
            if (this.f53066c != 0) {
                C7566hH c7566hH = new C7566hH();
                C7566hH c7566hH2 = new C7566hH();
                C7566hH c7566hH3 = this.f53065b;
                c7566hH.f48521f &= -1073741825;
                c7566hH.f48519d = c7566hH3;
                c7566hH2.a((C7566hH) null);
                C7566hH c7566hH4 = c7566hH2;
                loop0: while (true) {
                    if (c7566hH.d()) {
                        while (c7566hH.f()) {
                            c7566hH = c7566hH.f48520e;
                            if (c7566hH == null) {
                                break loop0;
                            }
                            c7566hH4 = c7566hH4.f48520e;
                        }
                        c7566hH = c7566hH.f48520e;
                        c7566hH4 = c7566hH4.f48520e;
                    } else {
                        C7566hH m724clone = c7566hH.f48519d.m724clone();
                        m724clone.a(c7566hH4.f48519d);
                        m724clone.b(c7566hH4);
                        c7566hH4.f48521f &= -1073741825;
                        c7566hH4.f48519d = m724clone;
                        c7566hH = c7566hH.f48519d;
                        c7566hH4 = m724clone;
                    }
                    if (!c7566hH.f()) {
                        C7566hH m724clone2 = c7566hH.f48520e.m724clone();
                        m724clone2.b(c7566hH4.f48520e);
                        m724clone2.a(c7566hH4);
                        c7566hH4.f48521f &= Integer.MAX_VALUE;
                        c7566hH4.f48520e = m724clone2;
                    }
                }
                c7566hH4.f48520e = null;
                C7566hH c7566hH5 = c7566hH2.f48519d;
                c9901vH.f53065b = c7566hH5;
                c9901vH.f53067d = c7566hH5;
                while (true) {
                    C7566hH c7566hH6 = c9901vH.f53067d.f48519d;
                    if (c7566hH6 == null) {
                        break;
                    }
                    c9901vH.f53067d = c7566hH6;
                }
                c9901vH.f53068e = c9901vH.f53065b;
                while (true) {
                    C7566hH c7566hH7 = c9901vH.f53068e.f48520e;
                    if (c7566hH7 == null) {
                        break;
                    }
                    c9901vH.f53068e = c7566hH7;
                }
            }
            return c9901vH;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final C7401gI comparator() {
        return null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C9734uH c9734uH = new C9734uH(this);
        int i10 = this.f53066c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (c9734uH.a().f44051c == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final C7566hH d(int i10) {
        C7566hH c7566hH = this.f53065b;
        while (c7566hH != null) {
            int compare = Integer.compare(i10, c7566hH.f44050b);
            if (compare == 0) {
                break;
            }
            if (compare < 0) {
                c7566hH = (c7566hH.f48521f & 1073741824) != 0 ? null : c7566hH.f48519d;
            } else if ((c7566hH.f48521f & Integer.MIN_VALUE) == 0) {
                c7566hH = c7566hH.f48520e;
            }
        }
        return c7566hH;
    }

    public final C7566hH e(int i10) {
        C7566hH c7566hH;
        C7566hH c7566hH2 = this.f53065b;
        int i11 = 0;
        C7566hH c7566hH3 = c7566hH2;
        while (c7566hH2 != null) {
            i11 = Integer.compare(i10, c7566hH2.f44050b);
            if (i11 == 0) {
                break;
            }
            if (i11 < 0) {
                if ((c7566hH2.f48521f & 1073741824) == 0) {
                    c7566hH = c7566hH2.f48519d;
                }
                c7566hH = null;
            } else {
                if ((c7566hH2.f48521f & Integer.MIN_VALUE) == 0) {
                    c7566hH = c7566hH2.f48520e;
                }
                c7566hH = null;
            }
            C7566hH c7566hH4 = c7566hH;
            c7566hH3 = c7566hH2;
            c7566hH2 = c7566hH4;
        }
        return i11 == 0 ? c7566hH2 : c7566hH3;
    }

    @Override
    public final Object get(int i10) {
        C7566hH d10 = d(i10);
        if (d10 == null) {
            return null;
        }
        return d10.f44051c;
    }

    @Override
    public final boolean isEmpty() {
        return this.f53066c == 0;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f53070g == null) {
            this.f53070g = new C8065kH(this);
        }
        return this.f53070g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x02f5, code lost:
    
        if (r4.d() != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02fd, code lost:
    
        if (r4.f48519d.b() == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0324, code lost:
    
        r7 = r3 - 1;
        r4.a(r14.f53074k[r7].b());
        r14.f53074k[r7].a(true);
        r4.f48519d.a(true);
        r0 = r14.f53074k;
        r9 = r0[r7];
        r9.f48519d = r4.f48520e;
        r4.f48520e = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0347, code lost:
    
        if (r3 >= 2) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0349, code lost:
    
        r14.f53065b = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0360, code lost:
    
        if (r4.f() == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0362, code lost:
    
        r4.f48521f &= Integer.MAX_VALUE;
        r14.f53074k[r7].a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x034c, code lost:
    
        r3 = r3 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0351, code lost:
    
        if (r14.f53073j[r3] == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0353, code lost:
    
        r0[r3].f48520e = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0358, code lost:
    
        r0[r3].f48519d = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02ff, code lost:
    
        r7 = r4.f48520e;
        r7.a(true);
        r4.a(false);
        r4.f48520e = r7.f48519d;
        r7.f48519d = r4;
        r14.f53074k[r3 - 1].f48519d = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0319, code lost:
    
        if (r7.d() == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x031b, code lost:
    
        r7.b(false);
        r7.f48519d.b(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0323, code lost:
    
        r4 = r7;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object remove(int i10) {
        int i11;
        C7566hH c7566hH;
        C7566hH c7566hH2;
        this.f53072i = false;
        C7566hH c7566hH3 = this.f53065b;
        if (c7566hH3 == null) {
            return null;
        }
        int i12 = 0;
        while (true) {
            int compare = Integer.compare(i10, c7566hH3.f44050b);
            if (compare == 0) {
                if (c7566hH3.f48519d == null) {
                    this.f53067d = c7566hH3.c();
                }
                if (c7566hH3.f48520e == null) {
                    this.f53068e = c7566hH3.e();
                }
                if (!c7566hH3.f()) {
                    C7566hH c7566hH4 = c7566hH3.f48520e;
                    if (c7566hH4.d()) {
                        c7566hH4.f48519d = c7566hH3.f48519d;
                        c7566hH4.b(c7566hH3.d());
                        if (!c7566hH4.d()) {
                            c7566hH4.e().f48520e = c7566hH4;
                        }
                        if (i12 == 0) {
                            this.f53065b = c7566hH4;
                        } else {
                            int i13 = i12 - 1;
                            if (this.f53073j[i13]) {
                                this.f53074k[i13].f48520e = c7566hH4;
                            } else {
                                this.f53074k[i13].f48519d = c7566hH4;
                            }
                        }
                        boolean b10 = c7566hH4.b();
                        c7566hH4.a(c7566hH3.b());
                        c7566hH3.a(b10);
                        this.f53073j[i12] = true;
                        this.f53074k[i12] = c7566hH4;
                        i12++;
                    } else {
                        int i14 = i12 + 1;
                        while (true) {
                            this.f53073j[i14] = false;
                            i11 = i14 + 1;
                            this.f53074k[i14] = c7566hH4;
                            c7566hH = c7566hH4.f48519d;
                            if (c7566hH.d()) {
                                break;
                            }
                            c7566hH4 = c7566hH;
                            i14 = i11;
                        }
                        this.f53073j[i12] = true;
                        this.f53074k[i12] = c7566hH;
                        if (c7566hH.f()) {
                            c7566hH4.a(c7566hH);
                        } else {
                            c7566hH4.f48519d = c7566hH.f48520e;
                        }
                        c7566hH.f48519d = c7566hH3.f48519d;
                        if (!c7566hH3.d()) {
                            c7566hH3.e().f48520e = c7566hH;
                            c7566hH.b(false);
                        }
                        C7566hH c7566hH5 = c7566hH3.f48520e;
                        c7566hH.f48521f &= Integer.MAX_VALUE;
                        c7566hH.f48520e = c7566hH5;
                        boolean b11 = c7566hH.b();
                        c7566hH.a(c7566hH3.b());
                        c7566hH3.a(b11);
                        if (i12 == 0) {
                            this.f53065b = c7566hH;
                        } else {
                            int i15 = i12 - 1;
                            if (this.f53073j[i15]) {
                                this.f53074k[i15].f48520e = c7566hH;
                            } else {
                                this.f53074k[i15].f48519d = c7566hH;
                            }
                        }
                        i12 = i11;
                    }
                } else if (!c7566hH3.d()) {
                    c7566hH3.e().f48520e = c7566hH3.f48520e;
                    if (i12 == 0) {
                        this.f53065b = c7566hH3.f48519d;
                    } else {
                        int i16 = i12 - 1;
                        if (this.f53073j[i16]) {
                            this.f53074k[i16].f48520e = c7566hH3.f48519d;
                        } else {
                            this.f53074k[i16].f48519d = c7566hH3.f48519d;
                        }
                    }
                } else if (i12 == 0) {
                    this.f53065b = c7566hH3.f48519d;
                } else {
                    int i17 = i12 - 1;
                    if (this.f53073j[i17]) {
                        this.f53074k[i17].b(c7566hH3.f48520e);
                    } else {
                        this.f53074k[i17].a(c7566hH3.f48519d);
                    }
                }
                if (c7566hH3.b()) {
                    int i18 = i12;
                    while (true) {
                        if (i12 <= 0) {
                            break;
                        }
                        int i19 = i12 - 1;
                        if ((this.f53073j[i19] && !this.f53074k[i19].f()) || (!this.f53073j[i19] && !this.f53074k[i19].d())) {
                            C7566hH c7566hH6 = this.f53073j[i19] ? this.f53074k[i19].f48520e : this.f53074k[i19].f48519d;
                            if (!c7566hH6.b()) {
                                c7566hH6.a(true);
                                break;
                            }
                        }
                        if (this.f53073j[i19]) {
                            C7566hH c7566hH7 = this.f53074k[i19].f48519d;
                            if (!c7566hH7.b()) {
                                c7566hH7.a(true);
                                this.f53074k[i19].a(false);
                                C7566hH[] c7566hHArr = this.f53074k;
                                C7566hH c7566hH8 = c7566hHArr[i19];
                                c7566hH8.f48519d = c7566hH7.f48520e;
                                c7566hH7.f48520e = c7566hH8;
                                if (i12 < 2) {
                                    this.f53065b = c7566hH7;
                                } else {
                                    int i20 = i12 - 2;
                                    if (this.f53073j[i20]) {
                                        c7566hHArr[i20].f48520e = c7566hH7;
                                    } else {
                                        c7566hHArr[i20].f48519d = c7566hH7;
                                    }
                                }
                                c7566hHArr[i12] = c7566hH8;
                                this.f53073j[i12] = true;
                                c7566hHArr[i19] = c7566hH7;
                                int i21 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                c7566hH7 = c7566hHArr[i12].f48519d;
                                i12 = i21;
                            }
                            if ((c7566hH7.d() || c7566hH7.f48519d.b()) && (c7566hH7.f() || c7566hH7.f48520e.b())) {
                                c7566hH7.a(false);
                                i12--;
                            }
                        } else {
                            c7566hH2 = this.f53074k[i19].f48520e;
                            if (!c7566hH2.b()) {
                                c7566hH2.a(true);
                                this.f53074k[i19].a(false);
                                C7566hH[] c7566hHArr2 = this.f53074k;
                                C7566hH c7566hH9 = c7566hHArr2[i19];
                                c7566hH9.f48520e = c7566hH2.f48519d;
                                c7566hH2.f48519d = c7566hH9;
                                if (i12 < 2) {
                                    this.f53065b = c7566hH2;
                                } else {
                                    int i22 = i12 - 2;
                                    if (this.f53073j[i22]) {
                                        c7566hHArr2[i22].f48520e = c7566hH2;
                                    } else {
                                        c7566hHArr2[i22].f48519d = c7566hH2;
                                    }
                                }
                                c7566hHArr2[i12] = c7566hH9;
                                this.f53073j[i12] = false;
                                c7566hHArr2[i19] = c7566hH2;
                                int i23 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                c7566hH2 = c7566hHArr2[i12].f48520e;
                                i12 = i23;
                            }
                            if ((c7566hH2.d() || c7566hH2.f48519d.b()) && (c7566hH2.f() || c7566hH2.f48520e.b())) {
                                c7566hH2.a(false);
                                i12--;
                            }
                        }
                    }
                    if (c7566hH2.f() || c7566hH2.f48520e.b()) {
                        C7566hH c7566hH10 = c7566hH2.f48519d;
                        c7566hH10.a(true);
                        c7566hH2.a(false);
                        c7566hH2.f48519d = c7566hH10.f48520e;
                        c7566hH10.f48520e = c7566hH2;
                        this.f53074k[i12 - 1].f48520e = c7566hH10;
                        if (c7566hH10.f()) {
                            c7566hH10.f48521f &= Integer.MAX_VALUE;
                            c7566hH10.f48520e.a(c7566hH10);
                        }
                        c7566hH2 = c7566hH10;
                    }
                    int i24 = i12 - 1;
                    c7566hH2.a(this.f53074k[i24].b());
                    this.f53074k[i24].a(true);
                    c7566hH2.f48520e.a(true);
                    C7566hH[] c7566hHArr3 = this.f53074k;
                    C7566hH c7566hH11 = c7566hHArr3[i24];
                    c7566hH11.f48520e = c7566hH2.f48519d;
                    c7566hH2.f48519d = c7566hH11;
                    if (i12 < 2) {
                        this.f53065b = c7566hH2;
                    } else {
                        int i25 = i12 - 2;
                        if (this.f53073j[i25]) {
                            c7566hHArr3[i25].f48520e = c7566hH2;
                        } else {
                            c7566hHArr3[i25].f48519d = c7566hH2;
                        }
                    }
                    if (c7566hH2.d()) {
                        c7566hH2.b(false);
                        this.f53074k[i24].b(c7566hH2);
                    }
                    i12 = i18;
                    C7566hH c7566hH12 = this.f53065b;
                    if (c7566hH12 != null) {
                        c7566hH12.a(true);
                    }
                }
                this.f53072i = true;
                this.f53066c--;
                while (true) {
                    int i26 = i12 - 1;
                    if (i12 == 0) {
                        return c7566hH3.f44051c;
                    }
                    this.f53074k[i26] = null;
                    i12 = i26;
                }
            } else {
                boolean[] zArr = this.f53073j;
                boolean z10 = compare > 0;
                zArr[i12] = z10;
                this.f53074k[i12] = c7566hH3;
                i12++;
                if (z10) {
                    c7566hH3 = (c7566hH3.f48521f & Integer.MIN_VALUE) != 0 ? null : c7566hH3.f48520e;
                    if (c7566hH3 == null) {
                        while (true) {
                            int i27 = i12 - 1;
                            if (i12 == 0) {
                                return null;
                            }
                            this.f53074k[i27] = null;
                            i12 = i27;
                        }
                    }
                } else {
                    c7566hH3 = (c7566hH3.f48521f & 1073741824) != 0 ? null : c7566hH3.f48519d;
                    if (c7566hH3 == null) {
                        while (true) {
                            int i28 = i12 - 1;
                            if (i12 == 0) {
                                return null;
                            }
                            this.f53074k[i28] = null;
                            i12 = i28;
                        }
                    }
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f53066c;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f53071h == null) {
            this.f53071h = new C7399gH(this);
        }
        return this.f53071h;
    }

    @Override
    public final M30 c() {
        if (this.f53069f == null) {
            this.f53069f = new C7232fH(this);
        }
        return this.f53069f;
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        return new C9400sH(this, 0, true, i10, false);
    }

    @Override
    public final int d() {
        if (this.f53065b != null) {
            return this.f53068e.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) != null;
    }

    @Override
    public final int a() {
        if (this.f53065b != null) {
            return this.f53067d.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        return new C9400sH(this, i10, false, i11, false);
    }
}
