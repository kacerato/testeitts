package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;

public final class C7192f30 extends AbstractC6352a1 implements Cloneable {

    public transient R20 f47838d;

    public transient R20 f47839e;

    public transient P20 f47840f;

    public transient U20 f47841g;

    public transient Q20 f47842h;

    public transient boolean f47843i;

    public transient boolean[] f47844j = new boolean[64];

    public transient R20[] f47845k = new R20[64];

    public transient R20 f47836b = null;

    public int f47837c = 0;

    @Override
    public final AbstractC6352a1 subMap(Object obj, Object obj2) {
        return new C6692c30(this, obj, false, obj2, false);
    }

    @Override
    public final AbstractC6352a1 headMap(Object obj) {
        return new C6692c30(this, null, true, obj, false);
    }

    @Override
    public final AbstractC6352a1 tailMap(Object obj) {
        return new C6692c30(this, obj, false, null, true);
    }

    @Override
    public final void clear() {
        this.f47837c = 0;
        this.f47836b = null;
        this.f47840f = null;
        this.f47842h = null;
        this.f47841g = null;
        this.f47839e = null;
        this.f47838d = null;
    }

    public final Object clone() {
        try {
            C7192f30 c7192f30 = (C7192f30) super.clone();
            c7192f30.f47841g = null;
            c7192f30.f47842h = null;
            c7192f30.f47840f = null;
            c7192f30.f47844j = new boolean[64];
            c7192f30.f47845k = new R20[64];
            if (this.f47837c != 0) {
                R20 r20 = new R20();
                R20 r202 = new R20();
                R20 r203 = this.f47836b;
                r20.f43789f &= -1073741825;
                r20.f43787d = r203;
                r202.a((R20) null);
                R20 r204 = r202;
                loop0: while (true) {
                    if (r20.d()) {
                        while (r20.f()) {
                            r20 = r20.f43788e;
                            if (r20 == null) {
                                break loop0;
                            }
                            r204 = r204.f43788e;
                        }
                        r20 = r20.f43788e;
                        r204 = r204.f43788e;
                    } else {
                        R20 m722clone = r20.f43787d.m722clone();
                        m722clone.a(r204.f43787d);
                        m722clone.b(r204);
                        r204.f43789f &= -1073741825;
                        r204.f43787d = m722clone;
                        r20 = r20.f43787d;
                        r204 = m722clone;
                    }
                    if (!r20.f()) {
                        R20 m722clone2 = r20.f43788e.m722clone();
                        m722clone2.b(r204.f43788e);
                        m722clone2.a(r204);
                        r204.f43789f &= Integer.MAX_VALUE;
                        r204.f43788e = m722clone2;
                    }
                }
                r204.f43788e = null;
                R20 r205 = r202.f43787d;
                c7192f30.f47836b = r205;
                c7192f30.f47838d = r205;
                while (true) {
                    R20 r206 = c7192f30.f47838d.f43787d;
                    if (r206 == null) {
                        break;
                    }
                    c7192f30.f47838d = r206;
                }
                c7192f30.f47839e = c7192f30.f47836b;
                while (true) {
                    R20 r207 = c7192f30.f47839e.f43788e;
                    if (r207 == null) {
                        break;
                    }
                    c7192f30.f47839e = r207;
                }
            }
            return c7192f30;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return d(obj) != null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C7025e30 c7025e30 = new C7025e30(this);
        int i10 = this.f47837c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            Object obj2 = c7025e30.a().f43786c;
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

    public final R20 d(Object obj) {
        R20 r20 = this.f47836b;
        while (r20 != null) {
            int compareTo = ((Comparable) obj).compareTo(r20.f43785b);
            if (compareTo == 0) {
                break;
            }
            if (compareTo < 0) {
                r20 = (r20.f43789f & 1073741824) != 0 ? null : r20.f43787d;
            } else if ((r20.f43789f & Integer.MIN_VALUE) == 0) {
                r20 = r20.f43788e;
            }
        }
        return r20;
    }

    @Override
    public final M30 o() {
        if (this.f47841g == null) {
            this.f47841g = new U20(this);
        }
        return this.f47841g;
    }

    @Override
    public final Object firstKey() {
        if (this.f47836b != null) {
            return this.f47838d.f43785b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object get(Object obj) {
        R20 d10 = d(obj);
        if (d10 == null) {
            return null;
        }
        return d10.f43786c;
    }

    @Override
    public final M30 i() {
        if (this.f47840f == null) {
            this.f47840f = new P20(this);
        }
        return this.f47840f;
    }

    @Override
    public final boolean isEmpty() {
        return this.f47837c == 0;
    }

    @Override
    public final Object lastKey() {
        if (this.f47836b != null) {
            return this.f47839e.f43785b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        int i10;
        R20 r20;
        R20 r202;
        R20 r203;
        int i11 = 0;
        this.f47843i = false;
        R20 r204 = this.f47836b;
        if (r204 == null) {
            this.f47837c++;
            r204 = new R20(obj);
            this.f47838d = r204;
            this.f47839e = r204;
            this.f47836b = r204;
        } else {
            int i12 = 0;
            while (true) {
                int compareTo = ((Comparable) obj).compareTo(r204.f43785b);
                if (compareTo == 0) {
                    while (true) {
                        int i13 = i12 - 1;
                        if (i12 == 0) {
                            break;
                        }
                        this.f47845k[i13] = null;
                        i12 = i13;
                    }
                } else {
                    this.f47845k[i12] = r204;
                    boolean[] zArr = this.f47844j;
                    i10 = i12 + 1;
                    boolean z10 = compareTo > 0;
                    zArr[i12] = z10;
                    if (z10) {
                        if (r204.f()) {
                            this.f47837c++;
                            r20 = new R20(obj);
                            R20 r205 = r204.f43788e;
                            if (r205 == null) {
                                this.f47839e = r20;
                            }
                            r20.f43787d = r204;
                            r20.f43788e = r205;
                            r204.f43789f &= Integer.MAX_VALUE;
                            r204.f43788e = r20;
                        } else {
                            r204 = r204.f43788e;
                            i12 = i10;
                        }
                    } else if (r204.d()) {
                        this.f47837c++;
                        r20 = new R20(obj);
                        R20 r206 = r204.f43787d;
                        if (r206 == null) {
                            this.f47838d = r20;
                        }
                        r20.f43788e = r204;
                        r20.f43787d = r206;
                        r204.f43789f &= -1073741825;
                        r204.f43787d = r20;
                    } else {
                        r204 = r204.f43787d;
                        i12 = i10;
                    }
                }
            }
            r204 = r20;
            this.f47843i = true;
            while (i12 > 0 && !this.f47845k[i12].b()) {
                int i14 = i12 - 1;
                if (this.f47844j[i14]) {
                    R20 r207 = this.f47845k[i14];
                    R20 r208 = r207.f43787d;
                    if (r207.d() || r208.b()) {
                        if (this.f47844j[i12]) {
                            r202 = this.f47845k[i12];
                        } else {
                            R20[] r20Arr = this.f47845k;
                            R20 r209 = r20Arr[i12];
                            R20 r2010 = r209.f43787d;
                            r209.f43787d = r2010.f43788e;
                            r2010.f43788e = r209;
                            r20Arr[i14].f43788e = r2010;
                            if (r2010.f()) {
                                r2010.f43789f &= Integer.MAX_VALUE;
                                r209.a(r2010);
                            }
                            r202 = r2010;
                        }
                        R20 r2011 = this.f47845k[i14];
                        r2011.a(false);
                        r202.a(true);
                        r2011.f43788e = r202.f43787d;
                        r202.f43787d = r2011;
                        if (i12 < 2) {
                            this.f47836b = r202;
                        } else {
                            int i15 = i12 - 2;
                            if (this.f47844j[i15]) {
                                this.f47845k[i15].f43788e = r202;
                            } else {
                                this.f47845k[i15].f43787d = r202;
                            }
                        }
                        if (r202.d()) {
                            r202.b(false);
                            r2011.b(r202);
                        }
                    } else {
                        this.f47845k[i12].a(true);
                        r208.a(true);
                        this.f47845k[i14].a(false);
                        i12 -= 2;
                    }
                } else {
                    R20 r2012 = this.f47845k[i14];
                    R20 r2013 = r2012.f43788e;
                    if (r2012.f() || r2013.b()) {
                        if (this.f47844j[i12]) {
                            R20[] r20Arr2 = this.f47845k;
                            R20 r2014 = r20Arr2[i12];
                            R20 r2015 = r2014.f43788e;
                            r2014.f43788e = r2015.f43787d;
                            r2015.f43787d = r2014;
                            r20Arr2[i14].f43787d = r2015;
                            if (r2015.d()) {
                                r2015.b(false);
                                r2014.b(r2015);
                            }
                            r203 = r2015;
                        } else {
                            r203 = this.f47845k[i12];
                        }
                        R20 r2016 = this.f47845k[i14];
                        r2016.a(false);
                        r203.a(true);
                        r2016.f43787d = r203.f43788e;
                        r203.f43788e = r2016;
                        if (i12 < 2) {
                            this.f47836b = r203;
                        } else {
                            int i16 = i12 - 2;
                            if (this.f47844j[i16]) {
                                this.f47845k[i16].f43788e = r203;
                            } else {
                                this.f47845k[i16].f43787d = r203;
                            }
                        }
                        if (r203.f()) {
                            r203.f43789f &= Integer.MAX_VALUE;
                            r2016.a(r203);
                        }
                    } else {
                        this.f47845k[i12].a(true);
                        r2013.a(true);
                        this.f47845k[i14].a(false);
                        i12 -= 2;
                    }
                }
            }
            i11 = i10;
        }
        this.f47836b.a(true);
        while (true) {
            int i17 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            this.f47845k[i17] = null;
            i11 = i17;
        }
        Object obj3 = r204.f43786c;
        r204.f43786c = obj2;
        return obj3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x02f8, code lost:
    
        if (r4.d() != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0300, code lost:
    
        if (r4.f43787d.b() == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0327, code lost:
    
        r7 = r3 - 1;
        r4.a(r14.f47845k[r7].b());
        r14.f47845k[r7].a(true);
        r4.f43787d.a(true);
        r0 = r14.f47845k;
        r9 = r0[r7];
        r9.f43787d = r4.f43788e;
        r4.f43788e = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x034a, code lost:
    
        if (r3 >= 2) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x034c, code lost:
    
        r14.f47836b = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0363, code lost:
    
        if (r4.f() == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0365, code lost:
    
        r4.f43789f &= Integer.MAX_VALUE;
        r14.f47845k[r7].a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x034f, code lost:
    
        r3 = r3 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0354, code lost:
    
        if (r14.f47844j[r3] == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0356, code lost:
    
        r0[r3].f43788e = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x035b, code lost:
    
        r0[r3].f43787d = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0302, code lost:
    
        r7 = r4.f43788e;
        r7.a(true);
        r4.a(false);
        r4.f43788e = r7.f43787d;
        r7.f43787d = r4;
        r14.f47845k[r3 - 1].f43787d = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x031c, code lost:
    
        if (r7.d() == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x031e, code lost:
    
        r7.b(false);
        r7.f43787d.b(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0326, code lost:
    
        r4 = r7;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object remove(Object obj) {
        int i10;
        R20 r20;
        R20 r202;
        this.f47843i = false;
        R20 r203 = this.f47836b;
        if (r203 == null) {
            return null;
        }
        int i11 = 0;
        while (true) {
            int compareTo = ((Comparable) obj).compareTo(r203.f43785b);
            if (compareTo == 0) {
                if (r203.f43787d == null) {
                    this.f47838d = r203.c();
                }
                if (r203.f43788e == null) {
                    this.f47839e = r203.e();
                }
                if (!r203.f()) {
                    R20 r204 = r203.f43788e;
                    if (r204.d()) {
                        r204.f43787d = r203.f43787d;
                        r204.b(r203.d());
                        if (!r204.d()) {
                            r204.e().f43788e = r204;
                        }
                        if (i11 == 0) {
                            this.f47836b = r204;
                        } else {
                            int i12 = i11 - 1;
                            if (this.f47844j[i12]) {
                                this.f47845k[i12].f43788e = r204;
                            } else {
                                this.f47845k[i12].f43787d = r204;
                            }
                        }
                        boolean b10 = r204.b();
                        r204.a(r203.b());
                        r203.a(b10);
                        this.f47844j[i11] = true;
                        this.f47845k[i11] = r204;
                        i11++;
                    } else {
                        int i13 = i11 + 1;
                        while (true) {
                            this.f47844j[i13] = false;
                            i10 = i13 + 1;
                            this.f47845k[i13] = r204;
                            r20 = r204.f43787d;
                            if (r20.d()) {
                                break;
                            }
                            r204 = r20;
                            i13 = i10;
                        }
                        this.f47844j[i11] = true;
                        this.f47845k[i11] = r20;
                        if (r20.f()) {
                            r204.a(r20);
                        } else {
                            r204.f43787d = r20.f43788e;
                        }
                        r20.f43787d = r203.f43787d;
                        if (!r203.d()) {
                            r203.e().f43788e = r20;
                            r20.b(false);
                        }
                        R20 r205 = r203.f43788e;
                        r20.f43789f &= Integer.MAX_VALUE;
                        r20.f43788e = r205;
                        boolean b11 = r20.b();
                        r20.a(r203.b());
                        r203.a(b11);
                        if (i11 == 0) {
                            this.f47836b = r20;
                        } else {
                            int i14 = i11 - 1;
                            if (this.f47844j[i14]) {
                                this.f47845k[i14].f43788e = r20;
                            } else {
                                this.f47845k[i14].f43787d = r20;
                            }
                        }
                        i11 = i10;
                    }
                } else if (!r203.d()) {
                    r203.e().f43788e = r203.f43788e;
                    if (i11 == 0) {
                        this.f47836b = r203.f43787d;
                    } else {
                        int i15 = i11 - 1;
                        if (this.f47844j[i15]) {
                            this.f47845k[i15].f43788e = r203.f43787d;
                        } else {
                            this.f47845k[i15].f43787d = r203.f43787d;
                        }
                    }
                } else if (i11 == 0) {
                    this.f47836b = r203.f43787d;
                } else {
                    int i16 = i11 - 1;
                    if (this.f47844j[i16]) {
                        this.f47845k[i16].b(r203.f43788e);
                    } else {
                        this.f47845k[i16].a(r203.f43787d);
                    }
                }
                if (r203.b()) {
                    int i17 = i11;
                    while (true) {
                        if (i11 <= 0) {
                            break;
                        }
                        int i18 = i11 - 1;
                        if ((this.f47844j[i18] && !this.f47845k[i18].f()) || (!this.f47844j[i18] && !this.f47845k[i18].d())) {
                            R20 r206 = this.f47844j[i18] ? this.f47845k[i18].f43788e : this.f47845k[i18].f43787d;
                            if (!r206.b()) {
                                r206.a(true);
                                break;
                            }
                        }
                        if (this.f47844j[i18]) {
                            R20 r207 = this.f47845k[i18].f43787d;
                            if (!r207.b()) {
                                r207.a(true);
                                this.f47845k[i18].a(false);
                                R20[] r20Arr = this.f47845k;
                                R20 r208 = r20Arr[i18];
                                r208.f43787d = r207.f43788e;
                                r207.f43788e = r208;
                                if (i11 < 2) {
                                    this.f47836b = r207;
                                } else {
                                    int i19 = i11 - 2;
                                    if (this.f47844j[i19]) {
                                        r20Arr[i19].f43788e = r207;
                                    } else {
                                        r20Arr[i19].f43787d = r207;
                                    }
                                }
                                r20Arr[i11] = r208;
                                this.f47844j[i11] = true;
                                r20Arr[i18] = r207;
                                int i20 = i11 + 1;
                                if (i17 == i11) {
                                    i17++;
                                }
                                r207 = r20Arr[i11].f43787d;
                                i11 = i20;
                            }
                            if ((r207.d() || r207.f43787d.b()) && (r207.f() || r207.f43788e.b())) {
                                r207.a(false);
                                i11--;
                            }
                        } else {
                            r202 = this.f47845k[i18].f43788e;
                            if (!r202.b()) {
                                r202.a(true);
                                this.f47845k[i18].a(false);
                                R20[] r20Arr2 = this.f47845k;
                                R20 r209 = r20Arr2[i18];
                                r209.f43788e = r202.f43787d;
                                r202.f43787d = r209;
                                if (i11 < 2) {
                                    this.f47836b = r202;
                                } else {
                                    int i21 = i11 - 2;
                                    if (this.f47844j[i21]) {
                                        r20Arr2[i21].f43788e = r202;
                                    } else {
                                        r20Arr2[i21].f43787d = r202;
                                    }
                                }
                                r20Arr2[i11] = r209;
                                this.f47844j[i11] = false;
                                r20Arr2[i18] = r202;
                                int i22 = i11 + 1;
                                if (i17 == i11) {
                                    i17++;
                                }
                                r202 = r20Arr2[i11].f43788e;
                                i11 = i22;
                            }
                            if ((r202.d() || r202.f43787d.b()) && (r202.f() || r202.f43788e.b())) {
                                r202.a(false);
                                i11--;
                            }
                        }
                    }
                    if (r202.f() || r202.f43788e.b()) {
                        R20 r2010 = r202.f43787d;
                        r2010.a(true);
                        r202.a(false);
                        r202.f43787d = r2010.f43788e;
                        r2010.f43788e = r202;
                        this.f47845k[i11 - 1].f43788e = r2010;
                        if (r2010.f()) {
                            r2010.f43789f &= Integer.MAX_VALUE;
                            r2010.f43788e.a(r2010);
                        }
                        r202 = r2010;
                    }
                    int i23 = i11 - 1;
                    r202.a(this.f47845k[i23].b());
                    this.f47845k[i23].a(true);
                    r202.f43788e.a(true);
                    R20[] r20Arr3 = this.f47845k;
                    R20 r2011 = r20Arr3[i23];
                    r2011.f43788e = r202.f43787d;
                    r202.f43787d = r2011;
                    if (i11 < 2) {
                        this.f47836b = r202;
                    } else {
                        int i24 = i11 - 2;
                        if (this.f47844j[i24]) {
                            r20Arr3[i24].f43788e = r202;
                        } else {
                            r20Arr3[i24].f43787d = r202;
                        }
                    }
                    if (r202.d()) {
                        r202.b(false);
                        this.f47845k[i23].b(r202);
                    }
                    i11 = i17;
                    R20 r2012 = this.f47836b;
                    if (r2012 != null) {
                        r2012.a(true);
                    }
                }
                this.f47843i = true;
                this.f47837c--;
                while (true) {
                    int i25 = i11 - 1;
                    if (i11 == 0) {
                        return r203.f43786c;
                    }
                    this.f47845k[i25] = null;
                    i11 = i25;
                }
            } else {
                boolean[] zArr = this.f47844j;
                boolean z10 = compareTo > 0;
                zArr[i11] = z10;
                this.f47845k[i11] = r203;
                i11++;
                if (z10) {
                    r203 = (r203.f43789f & Integer.MIN_VALUE) != 0 ? null : r203.f43788e;
                    if (r203 == null) {
                        while (true) {
                            int i26 = i11 - 1;
                            if (i11 == 0) {
                                return null;
                            }
                            this.f47845k[i26] = null;
                            i11 = i26;
                        }
                    }
                } else {
                    r203 = (r203.f43789f & 1073741824) != 0 ? null : r203.f43787d;
                    if (r203 == null) {
                        while (true) {
                            int i27 = i11 - 1;
                            if (i11 == 0) {
                                return null;
                            }
                            this.f47845k[i27] = null;
                            i11 = i27;
                        }
                    }
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f47837c;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        return new C6692c30(this, obj, false, obj2, false);
    }

    @Override
    public final Collection values() {
        if (this.f47842h == null) {
            this.f47842h = new Q20(this);
        }
        return this.f47842h;
    }
}
