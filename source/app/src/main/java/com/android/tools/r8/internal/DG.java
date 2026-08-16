package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class DG extends V implements Cloneable {

    public transient C8898pG f39475d;

    public transient C8898pG f39476e;

    public transient C8564nG f39477f;

    public transient C9398sG f39478g;

    public transient C8731oG f39479h;

    public transient boolean f39480i;

    public transient boolean[] f39481j = new boolean[48];

    public transient C8898pG f39473b = null;

    public int f39474c = 0;

    /* JADX WARN: Removed duplicated region for block: B:53:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(int i10, Object obj) {
        C8898pG c8898pG;
        C8898pG c8898pG2;
        C8898pG c8898pG3;
        C8898pG c8898pG4;
        C8898pG c8898pG5;
        this.f39480i = false;
        C8898pG c8898pG6 = this.f39473b;
        if (c8898pG6 == null) {
            this.f39474c++;
            c8898pG = new C8898pG(i10);
            this.f39475d = c8898pG;
            this.f39476e = c8898pG;
            this.f39473b = c8898pG;
            this.f39480i = true;
        } else {
            int i11 = 0;
            C8898pG c8898pG7 = null;
            C8898pG c8898pG8 = null;
            C8898pG c8898pG9 = c8898pG6;
            while (true) {
                int compare = Integer.compare(i10, c8898pG6.f44050b);
                if (compare == 0) {
                    c8898pG = c8898pG6;
                    break;
                }
                if (((byte) c8898pG6.f51484f) != 0) {
                    i11 = 0;
                    c8898pG9 = c8898pG6;
                    c8898pG7 = c8898pG8;
                }
                boolean[] zArr = this.f39481j;
                int i12 = i11 + 1;
                boolean z10 = compare > 0;
                zArr[i11] = z10;
                if (z10) {
                    if (c8898pG6.e()) {
                        this.f39474c++;
                        c8898pG2 = new C8898pG(i10);
                        this.f39480i = true;
                        C8898pG c8898pG10 = c8898pG6.f51483e;
                        if (c8898pG10 == null) {
                            this.f39476e = c8898pG2;
                        }
                        c8898pG2.f51482d = c8898pG6;
                        c8898pG2.f51483e = c8898pG10;
                        c8898pG6.f51484f &= Integer.MAX_VALUE;
                        c8898pG6.f51483e = c8898pG2;
                    } else {
                        c8898pG3 = c8898pG6.f51483e;
                        i11 = i12;
                        C8898pG c8898pG11 = c8898pG3;
                        c8898pG8 = c8898pG6;
                        c8898pG6 = c8898pG11;
                    }
                } else if (c8898pG6.c()) {
                    this.f39474c++;
                    c8898pG2 = new C8898pG(i10);
                    this.f39480i = true;
                    C8898pG c8898pG12 = c8898pG6.f51482d;
                    if (c8898pG12 == null) {
                        this.f39475d = c8898pG2;
                    }
                    c8898pG2.f51483e = c8898pG6;
                    c8898pG2.f51482d = c8898pG12;
                    c8898pG6.f51484f &= -1073741825;
                    c8898pG6.f51482d = c8898pG2;
                } else {
                    c8898pG3 = c8898pG6.f51482d;
                    i11 = i12;
                    C8898pG c8898pG112 = c8898pG3;
                    c8898pG8 = c8898pG6;
                    c8898pG6 = c8898pG112;
                }
            }
            int i13 = 0;
            C8898pG c8898pG13 = c8898pG9;
            while (c8898pG13 != c8898pG2) {
                boolean z11 = this.f39481j[i13];
                if (z11) {
                    int i14 = c8898pG13.f51484f;
                    c8898pG13.f51484f = ((((byte) i14) + 1) & 255) | (i14 & (-256));
                } else {
                    int i15 = c8898pG13.f51484f;
                    c8898pG13.f51484f = ((((byte) i15) - 1) & 255) | (i15 & (-256));
                }
                i13++;
                c8898pG13 = z11 ? c8898pG13.f51483e : c8898pG13.f51482d;
            }
            byte b10 = (byte) c8898pG9.f51484f;
            if (b10 == -2) {
                c8898pG4 = c8898pG9.f51482d;
                if (((byte) c8898pG4.f51484f) == -1) {
                    if (c8898pG4.e()) {
                        c8898pG4.b(false);
                        c8898pG9.a(c8898pG4);
                    } else {
                        c8898pG9.f51482d = c8898pG4.f51483e;
                    }
                    c8898pG4.f51483e = c8898pG9;
                    c8898pG4.a(0);
                    c8898pG9.a(0);
                    if (c8898pG7 != null) {
                        this.f39473b = c8898pG4;
                    } else if (c8898pG7.f51482d == c8898pG9) {
                        c8898pG7.f51482d = c8898pG4;
                    } else {
                        c8898pG7.f51483e = c8898pG4;
                    }
                    c8898pG = c8898pG2;
                } else {
                    c8898pG5 = c8898pG4.f51483e;
                    c8898pG4.f51483e = c8898pG5.f51482d;
                    c8898pG5.f51482d = c8898pG4;
                    c8898pG9.f51482d = c8898pG5.f51483e;
                    c8898pG5.f51483e = c8898pG9;
                    byte b11 = (byte) c8898pG5.f51484f;
                    if (b11 == -1) {
                        c8898pG4.a(0);
                        c8898pG9.a(1);
                    } else if (b11 == 0) {
                        c8898pG4.a(0);
                        c8898pG9.a(0);
                    } else {
                        c8898pG4.a(-1);
                        c8898pG9.a(0);
                    }
                    c8898pG5.a(0);
                    if (c8898pG5.c()) {
                        c8898pG4.b(c8898pG5);
                        c8898pG5.a(false);
                    }
                    if (c8898pG5.e()) {
                        c8898pG9.a(c8898pG5);
                        c8898pG5.b(false);
                    }
                    c8898pG4 = c8898pG5;
                    if (c8898pG7 != null) {
                    }
                    c8898pG = c8898pG2;
                }
            } else {
                if (b10 == 2) {
                    c8898pG4 = c8898pG9.f51483e;
                    if (((byte) c8898pG4.f51484f) == 1) {
                        if (c8898pG4.c()) {
                            c8898pG4.a(false);
                            c8898pG9.b(c8898pG4);
                        } else {
                            c8898pG9.f51483e = c8898pG4.f51482d;
                        }
                        c8898pG4.f51482d = c8898pG9;
                        c8898pG4.a(0);
                        c8898pG9.a(0);
                        if (c8898pG7 != null) {
                        }
                    } else {
                        c8898pG5 = c8898pG4.f51482d;
                        c8898pG4.f51482d = c8898pG5.f51483e;
                        c8898pG5.f51483e = c8898pG4;
                        c8898pG9.f51483e = c8898pG5.f51482d;
                        c8898pG5.f51482d = c8898pG9;
                        byte b12 = (byte) c8898pG5.f51484f;
                        if (b12 == 1) {
                            c8898pG4.a(0);
                            c8898pG9.a(-1);
                        } else if (b12 == 0) {
                            c8898pG4.a(0);
                            c8898pG9.a(0);
                        } else {
                            c8898pG4.a(1);
                            c8898pG9.a(0);
                        }
                        c8898pG5.a(0);
                        if (c8898pG5.c()) {
                            c8898pG9.b(c8898pG5);
                            c8898pG5.a(false);
                        }
                        if (c8898pG5.e()) {
                            c8898pG4.a(c8898pG5);
                            c8898pG5.b(false);
                        }
                        c8898pG4 = c8898pG5;
                        if (c8898pG7 != null) {
                        }
                    }
                }
                c8898pG = c8898pG2;
            }
        }
        Object obj2 = c8898pG.f44051c;
        c8898pG.f44051c = obj;
        return obj2;
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        return new AG(this, i10, false, 0, true);
    }

    public final int c(int i10, int i11) {
        return Integer.compare(i10, i11);
    }

    @Override
    public final void clear() {
        this.f39474c = 0;
        this.f39473b = null;
        this.f39477f = null;
        this.f39479h = null;
        this.f39478g = null;
        this.f39476e = null;
        this.f39475d = null;
    }

    public final Object clone() {
        try {
            DG dg2 = (DG) super.clone();
            dg2.f39478g = null;
            dg2.f39479h = null;
            dg2.f39477f = null;
            dg2.f39481j = new boolean[48];
            if (this.f39474c != 0) {
                C8898pG c8898pG = new C8898pG();
                C8898pG c8898pG2 = new C8898pG();
                C8898pG c8898pG3 = this.f39473b;
                c8898pG.f51484f &= -1073741825;
                c8898pG.f51482d = c8898pG3;
                c8898pG2.a((C8898pG) null);
                C8898pG c8898pG4 = c8898pG2;
                loop0: while (true) {
                    if (c8898pG.c()) {
                        while (c8898pG.e()) {
                            c8898pG = c8898pG.f51483e;
                            if (c8898pG == null) {
                                break loop0;
                            }
                            c8898pG4 = c8898pG4.f51483e;
                        }
                        c8898pG = c8898pG.f51483e;
                        c8898pG4 = c8898pG4.f51483e;
                    } else {
                        C8898pG m741clone = c8898pG.f51482d.m741clone();
                        m741clone.a(c8898pG4.f51482d);
                        m741clone.b(c8898pG4);
                        c8898pG4.f51484f &= -1073741825;
                        c8898pG4.f51482d = m741clone;
                        c8898pG = c8898pG.f51482d;
                        c8898pG4 = m741clone;
                    }
                    if (!c8898pG.e()) {
                        C8898pG m741clone2 = c8898pG.f51483e.m741clone();
                        m741clone2.b(c8898pG4.f51483e);
                        m741clone2.a(c8898pG4);
                        c8898pG4.f51484f &= Integer.MAX_VALUE;
                        c8898pG4.f51483e = m741clone2;
                    }
                }
                c8898pG4.f51483e = null;
                C8898pG c8898pG5 = c8898pG2.f51482d;
                dg2.f39473b = c8898pG5;
                dg2.f39475d = c8898pG5;
                while (true) {
                    C8898pG c8898pG6 = dg2.f39475d.f51482d;
                    if (c8898pG6 == null) {
                        break;
                    }
                    dg2.f39475d = c8898pG6;
                }
                dg2.f39476e = dg2.f39473b;
                while (true) {
                    C8898pG c8898pG7 = dg2.f39476e.f51483e;
                    if (c8898pG7 == null) {
                        break;
                    }
                    dg2.f39476e = c8898pG7;
                }
            }
            return dg2;
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
        CG cg2 = new CG(this);
        int i10 = this.f39474c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (cg2.a().f44051c == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final C8898pG d(int i10) {
        C8898pG c8898pG = this.f39473b;
        while (c8898pG != null) {
            int compare = Integer.compare(i10, c8898pG.f44050b);
            if (compare == 0) {
                break;
            }
            if (compare < 0) {
                c8898pG = (c8898pG.f51484f & 1073741824) != 0 ? null : c8898pG.f51482d;
            } else if ((c8898pG.f51484f & Integer.MIN_VALUE) == 0) {
                c8898pG = c8898pG.f51483e;
            }
        }
        return c8898pG;
    }

    public final C8898pG e(int i10) {
        C8898pG c8898pG;
        C8898pG c8898pG2 = this.f39473b;
        int i11 = 0;
        C8898pG c8898pG3 = c8898pG2;
        while (c8898pG2 != null) {
            i11 = Integer.compare(i10, c8898pG2.f44050b);
            if (i11 == 0) {
                break;
            }
            if (i11 < 0) {
                if ((c8898pG2.f51484f & 1073741824) == 0) {
                    c8898pG = c8898pG2.f51482d;
                }
                c8898pG = null;
            } else {
                if ((c8898pG2.f51484f & Integer.MIN_VALUE) == 0) {
                    c8898pG = c8898pG2.f51483e;
                }
                c8898pG = null;
            }
            C8898pG c8898pG4 = c8898pG;
            c8898pG3 = c8898pG2;
            c8898pG2 = c8898pG4;
        }
        return i11 == 0 ? c8898pG2 : c8898pG3;
    }

    @Override
    public final Object get(int i10) {
        C8898pG d10 = d(i10);
        if (d10 == null) {
            return null;
        }
        return d10.f44051c;
    }

    @Override
    public final boolean isEmpty() {
        return this.f39474c == 0;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f39478g == null) {
            this.f39478g = new C9398sG(this);
        }
        return this.f39478g;
    }

    @Override
    public final Object remove(int i10) {
        C8898pG c8898pG;
        C8898pG c8898pG2;
        C8898pG c8898pG3;
        this.f39480i = false;
        C8898pG c8898pG4 = this.f39473b;
        if (c8898pG4 == null) {
            return null;
        }
        boolean z10 = false;
        C8898pG c8898pG5 = null;
        while (true) {
            int compare = Integer.compare(i10, c8898pG4.f44050b);
            if (compare == 0) {
                if (c8898pG4.f51482d == null) {
                    this.f39475d = c8898pG4.b();
                }
                if (c8898pG4.f51483e == null) {
                    this.f39476e = c8898pG4.d();
                }
                if (!c8898pG4.e()) {
                    C8898pG c8898pG6 = c8898pG4.f51483e;
                    if (c8898pG6.c()) {
                        c8898pG6.f51482d = c8898pG4.f51482d;
                        c8898pG6.a(c8898pG4.c());
                        if (!c8898pG6.c()) {
                            c8898pG6.d().f51483e = c8898pG6;
                        }
                        if (c8898pG5 == null) {
                            this.f39473b = c8898pG6;
                        } else if (z10) {
                            c8898pG5.f51483e = c8898pG6;
                        } else {
                            c8898pG5.f51482d = c8898pG6;
                        }
                        c8898pG6.a((byte) c8898pG4.f51484f);
                        c8898pG5 = c8898pG6;
                        z10 = true;
                    } else {
                        while (true) {
                            c8898pG = c8898pG6.f51482d;
                            if (c8898pG.c()) {
                                break;
                            }
                            c8898pG6 = c8898pG;
                        }
                        if (c8898pG.e()) {
                            c8898pG6.a(c8898pG);
                        } else {
                            c8898pG6.f51482d = c8898pG.f51483e;
                        }
                        c8898pG.f51482d = c8898pG4.f51482d;
                        if (!c8898pG4.c()) {
                            c8898pG4.d().f51483e = c8898pG;
                            c8898pG.a(false);
                        }
                        c8898pG.f51483e = c8898pG4.f51483e;
                        c8898pG.b(false);
                        if (c8898pG5 == null) {
                            this.f39473b = c8898pG;
                        } else if (z10) {
                            c8898pG5.f51483e = c8898pG;
                        } else {
                            c8898pG5.f51482d = c8898pG;
                        }
                        c8898pG.a((byte) c8898pG4.f51484f);
                        c8898pG5 = c8898pG6;
                        z10 = false;
                    }
                } else if (!c8898pG4.c()) {
                    c8898pG4.d().f51483e = c8898pG4.f51483e;
                    if (c8898pG5 == null) {
                        this.f39473b = c8898pG4.f51482d;
                    } else if (z10) {
                        c8898pG5.f51483e = c8898pG4.f51482d;
                    } else {
                        c8898pG5.f51482d = c8898pG4.f51482d;
                    }
                } else if (c8898pG5 == null) {
                    this.f39473b = z10 ? c8898pG4.f51483e : c8898pG4.f51482d;
                } else if (z10) {
                    c8898pG5.b(c8898pG4.f51483e);
                } else {
                    c8898pG5.a(c8898pG4.f51482d);
                }
                while (true) {
                    if (c8898pG5 != null) {
                        if (c8898pG5 == this.f39473b) {
                            c8898pG2 = null;
                        } else {
                            C8898pG c8898pG7 = c8898pG5;
                            C8898pG c8898pG8 = c8898pG7;
                            while (true) {
                                if (c8898pG7.e()) {
                                    c8898pG2 = c8898pG7.f51483e;
                                    if (c8898pG2 == null || c8898pG2.f51482d != c8898pG5) {
                                        while (!c8898pG8.c()) {
                                            c8898pG8 = c8898pG8.f51482d;
                                        }
                                        c8898pG2 = c8898pG8.f51482d;
                                    }
                                } else if (c8898pG8.c()) {
                                    C8898pG c8898pG9 = c8898pG8.f51482d;
                                    if (c8898pG9 == null || c8898pG9.f51483e != c8898pG5) {
                                        while (!c8898pG7.e()) {
                                            c8898pG7 = c8898pG7.f51483e;
                                        }
                                        c8898pG2 = c8898pG7.f51483e;
                                    } else {
                                        c8898pG2 = c8898pG9;
                                    }
                                } else {
                                    c8898pG8 = c8898pG8.f51482d;
                                    c8898pG7 = c8898pG7.f51483e;
                                }
                            }
                        }
                        if (!z10) {
                            z10 = (c8898pG2 == null || c8898pG2.f51482d == c8898pG5) ? false : true;
                            int i11 = c8898pG5.f51484f;
                            int i12 = ((((byte) i11) + 1) & 255) | (i11 & (-256));
                            c8898pG5.f51484f = i12;
                            byte b10 = (byte) i12;
                            if (b10 == 1) {
                                break;
                            }
                            if (b10 == 2) {
                                C8898pG c8898pG10 = c8898pG5.f51483e;
                                byte b11 = (byte) c8898pG10.f51484f;
                                if (b11 == -1) {
                                    C8898pG c8898pG11 = c8898pG10.f51482d;
                                    c8898pG10.f51482d = c8898pG11.f51483e;
                                    c8898pG11.f51483e = c8898pG10;
                                    c8898pG5.f51483e = c8898pG11.f51482d;
                                    c8898pG11.f51482d = c8898pG5;
                                    byte b12 = (byte) c8898pG11.f51484f;
                                    if (b12 == 1) {
                                        c8898pG10.a(0);
                                        c8898pG5.a(-1);
                                    } else if (b12 == 0) {
                                        c8898pG10.a(0);
                                        c8898pG5.a(0);
                                    } else {
                                        c8898pG10.a(1);
                                        c8898pG5.a(0);
                                    }
                                    c8898pG11.a(0);
                                    if (c8898pG11.c()) {
                                        c8898pG5.b(c8898pG11);
                                        c8898pG11.a(false);
                                    }
                                    if (c8898pG11.e()) {
                                        c8898pG10.a(c8898pG11);
                                        c8898pG11.b(false);
                                    }
                                    if (c8898pG2 == null) {
                                        this.f39473b = c8898pG11;
                                    } else if (z10) {
                                        c8898pG2.f51483e = c8898pG11;
                                    } else {
                                        c8898pG2.f51482d = c8898pG11;
                                    }
                                } else {
                                    if (c8898pG2 == null) {
                                        this.f39473b = c8898pG10;
                                    } else if (z10) {
                                        c8898pG2.f51483e = c8898pG10;
                                    } else {
                                        c8898pG2.f51482d = c8898pG10;
                                    }
                                    if (b11 == 0) {
                                        c8898pG5.f51483e = c8898pG10.f51482d;
                                        c8898pG10.f51482d = c8898pG5;
                                        c8898pG10.a(-1);
                                        c8898pG5.a(1);
                                        break;
                                    }
                                    if (c8898pG10.c()) {
                                        c8898pG5.b(true);
                                        c8898pG10.a(false);
                                    } else {
                                        c8898pG5.f51483e = c8898pG10.f51482d;
                                    }
                                    c8898pG10.f51482d = c8898pG5;
                                    c8898pG5.a(0);
                                    c8898pG10.a(0);
                                }
                            } else {
                                continue;
                            }
                            c8898pG5 = c8898pG2;
                        } else {
                            z10 = (c8898pG2 == null || c8898pG2.f51482d == c8898pG5) ? false : true;
                            int i13 = c8898pG5.f51484f;
                            int i14 = ((((byte) i13) - 1) & 255) | (i13 & (-256));
                            c8898pG5.f51484f = i14;
                            byte b13 = (byte) i14;
                            if (b13 == -1) {
                                break;
                            }
                            if (b13 == -2) {
                                C8898pG c8898pG12 = c8898pG5.f51482d;
                                byte b14 = (byte) c8898pG12.f51484f;
                                if (b14 == 1) {
                                    C8898pG c8898pG13 = c8898pG12.f51483e;
                                    c8898pG12.f51483e = c8898pG13.f51482d;
                                    c8898pG13.f51482d = c8898pG12;
                                    c8898pG5.f51482d = c8898pG13.f51483e;
                                    c8898pG13.f51483e = c8898pG5;
                                    byte b15 = (byte) c8898pG13.f51484f;
                                    if (b15 == -1) {
                                        c8898pG12.a(0);
                                        c8898pG5.a(1);
                                    } else if (b15 == 0) {
                                        c8898pG12.a(0);
                                        c8898pG5.a(0);
                                    } else {
                                        c8898pG12.a(-1);
                                        c8898pG5.a(0);
                                    }
                                    c8898pG13.a(0);
                                    if (c8898pG13.c()) {
                                        c8898pG12.b(c8898pG13);
                                        c8898pG13.a(false);
                                    }
                                    if (c8898pG13.e()) {
                                        c8898pG5.a(c8898pG13);
                                        c8898pG13.b(false);
                                    }
                                    if (c8898pG2 == null) {
                                        this.f39473b = c8898pG13;
                                    } else if (z10) {
                                        c8898pG2.f51483e = c8898pG13;
                                    } else {
                                        c8898pG2.f51482d = c8898pG13;
                                    }
                                } else {
                                    if (c8898pG2 == null) {
                                        this.f39473b = c8898pG12;
                                    } else if (z10) {
                                        c8898pG2.f51483e = c8898pG12;
                                    } else {
                                        c8898pG2.f51482d = c8898pG12;
                                    }
                                    if (b14 == 0) {
                                        c8898pG5.f51482d = c8898pG12.f51483e;
                                        c8898pG12.f51483e = c8898pG5;
                                        c8898pG12.a(1);
                                        c8898pG5.a(-1);
                                        break;
                                    }
                                    if (c8898pG12.e()) {
                                        c8898pG5.a(true);
                                        c8898pG12.b(false);
                                    } else {
                                        c8898pG5.f51482d = c8898pG12.f51483e;
                                    }
                                    c8898pG12.f51483e = c8898pG5;
                                    c8898pG5.a(0);
                                    c8898pG12.a(0);
                                }
                            } else {
                                continue;
                            }
                            c8898pG5 = c8898pG2;
                        }
                    } else {
                        break;
                    }
                }
                this.f39480i = true;
                this.f39474c--;
                return c8898pG4.f44051c;
            }
            z10 = compare > 0;
            if (z10) {
                c8898pG3 = (c8898pG4.f51484f & Integer.MIN_VALUE) != 0 ? null : c8898pG4.f51483e;
                if (c8898pG3 == null) {
                    return null;
                }
            } else {
                c8898pG3 = (c8898pG4.f51484f & 1073741824) != 0 ? null : c8898pG4.f51482d;
                if (c8898pG3 == null) {
                    return null;
                }
            }
            C8898pG c8898pG14 = c8898pG3;
            c8898pG5 = c8898pG4;
            c8898pG4 = c8898pG14;
        }
    }

    @Override
    public final int size() {
        return this.f39474c;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f39479h == null) {
            this.f39479h = new C8731oG(this);
        }
        return this.f39479h;
    }

    @Override
    public final M30 c() {
        if (this.f39477f == null) {
            this.f39477f = new C8564nG(this);
        }
        return this.f39477f;
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        return new AG(this, 0, true, i10, false);
    }

    @Override
    public final int d() {
        if (this.f39473b != null) {
            return this.f39476e.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) != null;
    }

    @Override
    public final int a() {
        if (this.f39473b != null) {
            return this.f39475d.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        return new AG(this, i10, false, i11, false);
    }
}
