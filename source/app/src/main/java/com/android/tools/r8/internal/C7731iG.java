package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C7731iG extends P implements Cloneable {

    public transient UF f48899d;

    public transient UF f48900e;

    public transient SF f48901f;

    public transient XF f48902g;

    public transient TF f48903h;

    public transient boolean f48904i;

    public transient boolean[] f48905j = new boolean[64];

    public transient UF[] f48906k = new UF[64];

    public transient UF f48897b = null;

    public int f48898c = 0;

    @Override
    public final Object a(int i10, Object obj) {
        int i11;
        UF uf2;
        UF uf3;
        UF uf4;
        int i12 = 0;
        this.f48904i = false;
        UF uf5 = this.f48897b;
        if (uf5 == null) {
            this.f48898c++;
            uf5 = new UF(i10);
            this.f48899d = uf5;
            this.f48900e = uf5;
            this.f48897b = uf5;
        } else {
            int i13 = 0;
            while (true) {
                int compare = Integer.compare(i10, uf5.f42116b);
                if (compare == 0) {
                    while (true) {
                        int i14 = i13 - 1;
                        if (i13 == 0) {
                            break;
                        }
                        this.f48906k[i14] = null;
                        i13 = i14;
                    }
                } else {
                    this.f48906k[i13] = uf5;
                    boolean[] zArr = this.f48905j;
                    i11 = i13 + 1;
                    boolean z10 = compare > 0;
                    zArr[i13] = z10;
                    if (z10) {
                        if (uf5.f()) {
                            this.f48898c++;
                            uf2 = new UF(i10);
                            UF uf6 = uf5.f44711e;
                            if (uf6 == null) {
                                this.f48900e = uf2;
                            }
                            uf2.f44710d = uf5;
                            uf2.f44711e = uf6;
                            uf5.f44712f &= Integer.MAX_VALUE;
                            uf5.f44711e = uf2;
                        } else {
                            uf5 = uf5.f44711e;
                            i13 = i11;
                        }
                    } else if (uf5.d()) {
                        this.f48898c++;
                        uf2 = new UF(i10);
                        UF uf7 = uf5.f44710d;
                        if (uf7 == null) {
                            this.f48899d = uf2;
                        }
                        uf2.f44711e = uf5;
                        uf2.f44710d = uf7;
                        uf5.f44712f &= -1073741825;
                        uf5.f44710d = uf2;
                    } else {
                        uf5 = uf5.f44710d;
                        i13 = i11;
                    }
                }
            }
            uf5 = uf2;
            this.f48904i = true;
            while (i13 > 0 && !this.f48906k[i13].b()) {
                int i15 = i13 - 1;
                if (!this.f48905j[i15]) {
                    UF uf8 = this.f48906k[i15];
                    UF uf9 = uf8.f44711e;
                    if (!uf8.f() && !uf9.b()) {
                        this.f48906k[i13].a(true);
                        uf9.a(true);
                        this.f48906k[i15].a(false);
                        i13 -= 2;
                    } else {
                        if (this.f48905j[i13]) {
                            UF[] ufArr = this.f48906k;
                            UF uf10 = ufArr[i13];
                            UF uf11 = uf10.f44711e;
                            uf10.f44711e = uf11.f44710d;
                            uf11.f44710d = uf10;
                            ufArr[i15].f44710d = uf11;
                            if (uf11.d()) {
                                uf11.b(false);
                                uf10.b(uf11);
                            }
                            uf4 = uf11;
                        } else {
                            uf4 = this.f48906k[i13];
                        }
                        UF uf12 = this.f48906k[i15];
                        uf12.a(false);
                        uf4.a(true);
                        uf12.f44710d = uf4.f44711e;
                        uf4.f44711e = uf12;
                        if (i13 < 2) {
                            this.f48897b = uf4;
                        } else {
                            int i16 = i13 - 2;
                            if (this.f48905j[i16]) {
                                this.f48906k[i16].f44711e = uf4;
                            } else {
                                this.f48906k[i16].f44710d = uf4;
                            }
                        }
                        if (uf4.f()) {
                            uf4.f44712f &= Integer.MAX_VALUE;
                            uf12.a(uf4);
                        }
                    }
                } else {
                    UF uf13 = this.f48906k[i15];
                    UF uf14 = uf13.f44710d;
                    if (!uf13.d() && !uf14.b()) {
                        this.f48906k[i13].a(true);
                        uf14.a(true);
                        this.f48906k[i15].a(false);
                        i13 -= 2;
                    } else {
                        if (this.f48905j[i13]) {
                            uf3 = this.f48906k[i13];
                        } else {
                            UF[] ufArr2 = this.f48906k;
                            UF uf15 = ufArr2[i13];
                            UF uf16 = uf15.f44710d;
                            uf15.f44710d = uf16.f44711e;
                            uf16.f44711e = uf15;
                            ufArr2[i15].f44711e = uf16;
                            if (uf16.f()) {
                                uf16.f44712f &= Integer.MAX_VALUE;
                                uf15.a(uf16);
                            }
                            uf3 = uf16;
                        }
                        UF uf17 = this.f48906k[i15];
                        uf17.a(false);
                        uf3.a(true);
                        uf17.f44711e = uf3.f44710d;
                        uf3.f44710d = uf17;
                        if (i13 < 2) {
                            this.f48897b = uf3;
                        } else {
                            int i17 = i13 - 2;
                            if (this.f48905j[i17]) {
                                this.f48906k[i17].f44711e = uf3;
                            } else {
                                this.f48906k[i17].f44710d = uf3;
                            }
                        }
                        if (uf3.d()) {
                            uf3.b(false);
                            uf17.b(uf3);
                        }
                    }
                }
            }
            i12 = i11;
        }
        this.f48897b.a(true);
        while (true) {
            int i18 = i12 - 1;
            if (i12 == 0) {
                break;
            }
            this.f48906k[i18] = null;
            i12 = i18;
        }
        Object obj2 = uf5.f42117c;
        uf5.f42117c = obj;
        return obj2;
    }

    @Override
    public final M30 b() {
        if (this.f48901f == null) {
            this.f48901f = new SF(this);
        }
        return this.f48901f;
    }

    public final int c(int i10, int i11) {
        return Integer.compare(i10, i11);
    }

    @Override
    public final void clear() {
        this.f48898c = 0;
        this.f48897b = null;
        this.f48901f = null;
        this.f48903h = null;
        this.f48902g = null;
        this.f48900e = null;
        this.f48899d = null;
    }

    public final Object clone() {
        try {
            C7731iG c7731iG = (C7731iG) super.clone();
            c7731iG.f48902g = null;
            c7731iG.f48903h = null;
            c7731iG.f48901f = null;
            c7731iG.f48905j = new boolean[64];
            c7731iG.f48906k = new UF[64];
            if (this.f48898c != 0) {
                UF uf2 = new UF();
                UF uf3 = new UF();
                UF uf4 = this.f48897b;
                uf2.f44712f &= -1073741825;
                uf2.f44710d = uf4;
                uf3.a((UF) null);
                UF uf5 = uf3;
                loop0: while (true) {
                    if (uf2.d()) {
                        while (uf2.f()) {
                            uf2 = uf2.f44711e;
                            if (uf2 == null) {
                                break loop0;
                            }
                            uf5 = uf5.f44711e;
                        }
                        uf2 = uf2.f44711e;
                        uf5 = uf5.f44711e;
                    } else {
                        UF m723clone = uf2.f44710d.m723clone();
                        m723clone.a(uf5.f44710d);
                        m723clone.b(uf5);
                        uf5.f44712f &= -1073741825;
                        uf5.f44710d = m723clone;
                        uf2 = uf2.f44710d;
                        uf5 = m723clone;
                    }
                    if (!uf2.f()) {
                        UF m723clone2 = uf2.f44711e.m723clone();
                        m723clone2.b(uf5.f44711e);
                        m723clone2.a(uf5);
                        uf5.f44712f &= Integer.MAX_VALUE;
                        uf5.f44711e = m723clone2;
                    }
                }
                uf5.f44711e = null;
                UF uf6 = uf3.f44710d;
                c7731iG.f48897b = uf6;
                c7731iG.f48899d = uf6;
                while (true) {
                    UF uf7 = c7731iG.f48899d.f44710d;
                    if (uf7 == null) {
                        break;
                    }
                    c7731iG.f48899d = uf7;
                }
                c7731iG.f48900e = c7731iG.f48897b;
                while (true) {
                    UF uf8 = c7731iG.f48900e.f44711e;
                    if (uf8 == null) {
                        break;
                    }
                    c7731iG.f48900e = uf8;
                }
            }
            return c7731iG;
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
        C7564hG c7564hG = new C7564hG(this);
        int i10 = this.f48898c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            Object obj2 = c7564hG.a().f42117c;
            if (obj2 == null) {
                if (obj == null) {
                    return true;
                }
            } else if (obj2.equals(obj)) {
                return true;
            }
            i10 = i11;
        }
    }

    public final UF d(int i10) {
        UF uf2 = this.f48897b;
        while (uf2 != null) {
            int compare = Integer.compare(i10, uf2.f42116b);
            if (compare == 0) {
                break;
            }
            if (compare < 0) {
                uf2 = (uf2.f44712f & 1073741824) != 0 ? null : uf2.f44710d;
            } else if ((uf2.f44712f & Integer.MIN_VALUE) == 0) {
                uf2 = uf2.f44711e;
            }
        }
        return uf2;
    }

    public final UF e(int i10) {
        UF uf2;
        UF uf3 = this.f48897b;
        int i11 = 0;
        UF uf4 = uf3;
        while (uf3 != null) {
            i11 = Integer.compare(i10, uf3.f42116b);
            if (i11 == 0) {
                break;
            }
            if (i11 < 0) {
                if ((uf3.f44712f & 1073741824) == 0) {
                    uf2 = uf3.f44710d;
                }
                uf2 = null;
            } else {
                if ((uf3.f44712f & Integer.MIN_VALUE) == 0) {
                    uf2 = uf3.f44711e;
                }
                uf2 = null;
            }
            UF uf5 = uf2;
            uf4 = uf3;
            uf3 = uf5;
        }
        return i11 == 0 ? uf3 : uf4;
    }

    @Override
    public final Object get(int i10) {
        UF d10 = d(i10);
        if (d10 == null) {
            return null;
        }
        return d10.f42117c;
    }

    @Override
    public final boolean isEmpty() {
        return this.f48898c == 0;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f48902g == null) {
            this.f48902g = new XF(this);
        }
        return this.f48902g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x02f5, code lost:
    
        if (r4.d() != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02fd, code lost:
    
        if (r4.f44710d.b() == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0324, code lost:
    
        r7 = r3 - 1;
        r4.a(r14.f48906k[r7].b());
        r14.f48906k[r7].a(true);
        r4.f44710d.a(true);
        r0 = r14.f48906k;
        r9 = r0[r7];
        r9.f44710d = r4.f44711e;
        r4.f44711e = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0347, code lost:
    
        if (r3 >= 2) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0349, code lost:
    
        r14.f48897b = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0360, code lost:
    
        if (r4.f() == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0362, code lost:
    
        r4.f44712f &= Integer.MAX_VALUE;
        r14.f48906k[r7].a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x034c, code lost:
    
        r3 = r3 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0351, code lost:
    
        if (r14.f48905j[r3] == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0353, code lost:
    
        r0[r3].f44711e = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0358, code lost:
    
        r0[r3].f44710d = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02ff, code lost:
    
        r7 = r4.f44711e;
        r7.a(true);
        r4.a(false);
        r4.f44711e = r7.f44710d;
        r7.f44710d = r4;
        r14.f48906k[r3 - 1].f44710d = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0319, code lost:
    
        if (r7.d() == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x031b, code lost:
    
        r7.b(false);
        r7.f44710d.b(r7);
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
        UF uf2;
        UF uf3;
        this.f48904i = false;
        UF uf4 = this.f48897b;
        if (uf4 == null) {
            return null;
        }
        int i12 = 0;
        while (true) {
            int compare = Integer.compare(i10, uf4.f42116b);
            if (compare == 0) {
                if (uf4.f44710d == null) {
                    this.f48899d = uf4.c();
                }
                if (uf4.f44711e == null) {
                    this.f48900e = uf4.e();
                }
                if (!uf4.f()) {
                    UF uf5 = uf4.f44711e;
                    if (uf5.d()) {
                        uf5.f44710d = uf4.f44710d;
                        uf5.b(uf4.d());
                        if (!uf5.d()) {
                            uf5.e().f44711e = uf5;
                        }
                        if (i12 == 0) {
                            this.f48897b = uf5;
                        } else {
                            int i13 = i12 - 1;
                            if (this.f48905j[i13]) {
                                this.f48906k[i13].f44711e = uf5;
                            } else {
                                this.f48906k[i13].f44710d = uf5;
                            }
                        }
                        boolean b10 = uf5.b();
                        uf5.a(uf4.b());
                        uf4.a(b10);
                        this.f48905j[i12] = true;
                        this.f48906k[i12] = uf5;
                        i12++;
                    } else {
                        int i14 = i12 + 1;
                        while (true) {
                            this.f48905j[i14] = false;
                            i11 = i14 + 1;
                            this.f48906k[i14] = uf5;
                            uf2 = uf5.f44710d;
                            if (uf2.d()) {
                                break;
                            }
                            uf5 = uf2;
                            i14 = i11;
                        }
                        this.f48905j[i12] = true;
                        this.f48906k[i12] = uf2;
                        if (uf2.f()) {
                            uf5.a(uf2);
                        } else {
                            uf5.f44710d = uf2.f44711e;
                        }
                        uf2.f44710d = uf4.f44710d;
                        if (!uf4.d()) {
                            uf4.e().f44711e = uf2;
                            uf2.b(false);
                        }
                        UF uf6 = uf4.f44711e;
                        uf2.f44712f &= Integer.MAX_VALUE;
                        uf2.f44711e = uf6;
                        boolean b11 = uf2.b();
                        uf2.a(uf4.b());
                        uf4.a(b11);
                        if (i12 == 0) {
                            this.f48897b = uf2;
                        } else {
                            int i15 = i12 - 1;
                            if (this.f48905j[i15]) {
                                this.f48906k[i15].f44711e = uf2;
                            } else {
                                this.f48906k[i15].f44710d = uf2;
                            }
                        }
                        i12 = i11;
                    }
                } else if (!uf4.d()) {
                    uf4.e().f44711e = uf4.f44711e;
                    if (i12 == 0) {
                        this.f48897b = uf4.f44710d;
                    } else {
                        int i16 = i12 - 1;
                        if (this.f48905j[i16]) {
                            this.f48906k[i16].f44711e = uf4.f44710d;
                        } else {
                            this.f48906k[i16].f44710d = uf4.f44710d;
                        }
                    }
                } else if (i12 == 0) {
                    this.f48897b = uf4.f44710d;
                } else {
                    int i17 = i12 - 1;
                    if (this.f48905j[i17]) {
                        this.f48906k[i17].b(uf4.f44711e);
                    } else {
                        this.f48906k[i17].a(uf4.f44710d);
                    }
                }
                if (uf4.b()) {
                    int i18 = i12;
                    while (true) {
                        if (i12 <= 0) {
                            break;
                        }
                        int i19 = i12 - 1;
                        if ((this.f48905j[i19] && !this.f48906k[i19].f()) || (!this.f48905j[i19] && !this.f48906k[i19].d())) {
                            UF uf7 = this.f48905j[i19] ? this.f48906k[i19].f44711e : this.f48906k[i19].f44710d;
                            if (!uf7.b()) {
                                uf7.a(true);
                                break;
                            }
                        }
                        if (this.f48905j[i19]) {
                            UF uf8 = this.f48906k[i19].f44710d;
                            if (!uf8.b()) {
                                uf8.a(true);
                                this.f48906k[i19].a(false);
                                UF[] ufArr = this.f48906k;
                                UF uf9 = ufArr[i19];
                                uf9.f44710d = uf8.f44711e;
                                uf8.f44711e = uf9;
                                if (i12 < 2) {
                                    this.f48897b = uf8;
                                } else {
                                    int i20 = i12 - 2;
                                    if (this.f48905j[i20]) {
                                        ufArr[i20].f44711e = uf8;
                                    } else {
                                        ufArr[i20].f44710d = uf8;
                                    }
                                }
                                ufArr[i12] = uf9;
                                this.f48905j[i12] = true;
                                ufArr[i19] = uf8;
                                int i21 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                uf8 = ufArr[i12].f44710d;
                                i12 = i21;
                            }
                            if ((uf8.d() || uf8.f44710d.b()) && (uf8.f() || uf8.f44711e.b())) {
                                uf8.a(false);
                                i12--;
                            }
                        } else {
                            uf3 = this.f48906k[i19].f44711e;
                            if (!uf3.b()) {
                                uf3.a(true);
                                this.f48906k[i19].a(false);
                                UF[] ufArr2 = this.f48906k;
                                UF uf10 = ufArr2[i19];
                                uf10.f44711e = uf3.f44710d;
                                uf3.f44710d = uf10;
                                if (i12 < 2) {
                                    this.f48897b = uf3;
                                } else {
                                    int i22 = i12 - 2;
                                    if (this.f48905j[i22]) {
                                        ufArr2[i22].f44711e = uf3;
                                    } else {
                                        ufArr2[i22].f44710d = uf3;
                                    }
                                }
                                ufArr2[i12] = uf10;
                                this.f48905j[i12] = false;
                                ufArr2[i19] = uf3;
                                int i23 = i12 + 1;
                                if (i18 == i12) {
                                    i18++;
                                }
                                uf3 = ufArr2[i12].f44711e;
                                i12 = i23;
                            }
                            if ((uf3.d() || uf3.f44710d.b()) && (uf3.f() || uf3.f44711e.b())) {
                                uf3.a(false);
                                i12--;
                            }
                        }
                    }
                    if (uf3.f() || uf3.f44711e.b()) {
                        UF uf11 = uf3.f44710d;
                        uf11.a(true);
                        uf3.a(false);
                        uf3.f44710d = uf11.f44711e;
                        uf11.f44711e = uf3;
                        this.f48906k[i12 - 1].f44711e = uf11;
                        if (uf11.f()) {
                            uf11.f44712f &= Integer.MAX_VALUE;
                            uf11.f44711e.a(uf11);
                        }
                        uf3 = uf11;
                    }
                    int i24 = i12 - 1;
                    uf3.a(this.f48906k[i24].b());
                    this.f48906k[i24].a(true);
                    uf3.f44711e.a(true);
                    UF[] ufArr3 = this.f48906k;
                    UF uf12 = ufArr3[i24];
                    uf12.f44711e = uf3.f44710d;
                    uf3.f44710d = uf12;
                    if (i12 < 2) {
                        this.f48897b = uf3;
                    } else {
                        int i25 = i12 - 2;
                        if (this.f48905j[i25]) {
                            ufArr3[i25].f44711e = uf3;
                        } else {
                            ufArr3[i25].f44710d = uf3;
                        }
                    }
                    if (uf3.d()) {
                        uf3.b(false);
                        this.f48906k[i24].b(uf3);
                    }
                    i12 = i18;
                    UF uf13 = this.f48897b;
                    if (uf13 != null) {
                        uf13.a(true);
                    }
                }
                this.f48904i = true;
                this.f48898c--;
                while (true) {
                    int i26 = i12 - 1;
                    if (i12 == 0) {
                        return uf4.f42117c;
                    }
                    this.f48906k[i26] = null;
                    i12 = i26;
                }
            } else {
                boolean[] zArr = this.f48905j;
                boolean z10 = compare > 0;
                zArr[i12] = z10;
                this.f48906k[i12] = uf4;
                i12++;
                if (z10) {
                    uf4 = (uf4.f44712f & Integer.MIN_VALUE) != 0 ? null : uf4.f44711e;
                    if (uf4 == null) {
                        while (true) {
                            int i27 = i12 - 1;
                            if (i12 == 0) {
                                return null;
                            }
                            this.f48906k[i27] = null;
                            i12 = i27;
                        }
                    }
                } else {
                    uf4 = (uf4.f44712f & 1073741824) != 0 ? null : uf4.f44710d;
                    if (uf4 == null) {
                        while (true) {
                            int i28 = i12 - 1;
                            if (i12 == 0) {
                                return null;
                            }
                            this.f48906k[i28] = null;
                            i12 = i28;
                        }
                    }
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f48898c;
    }

    @Override
    public final InterfaceC10028w30 values() {
        if (this.f48903h == null) {
            this.f48903h = new TF(this);
        }
        return this.f48903h;
    }

    @Override
    public final InterfaceC7896jG c(int i10) {
        return new C7230fG(this, 0, true, i10, false);
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final InterfaceC7896jG b(int i10) {
        return new C7230fG(this, i10, false, 0, true);
    }

    @Override
    public final int d() {
        if (this.f48897b != null) {
            return this.f48900e.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) != null;
    }

    @Override
    public final int a() {
        if (this.f48897b != null) {
            return this.f48899d.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC7896jG a(int i10, int i11) {
        return new C7230fG(this, i10, false, i11, false);
    }
}
