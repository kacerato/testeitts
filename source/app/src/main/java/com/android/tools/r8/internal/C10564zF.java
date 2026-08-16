package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C10564zF extends P implements Cloneable {

    public transient C8227lF f54326b;

    public int f54327c;

    public transient C8227lF f54328d;

    public transient C8227lF f54329e;

    public transient C7893jF f54330f;

    public transient C8728oF f54331g;

    public transient C8060kF f54332h;

    public transient boolean f54333i;

    public transient C7401gI f54334j;

    public transient boolean[] f54335k;

    public C10564zF() {
        this.f54335k = new boolean[48];
        this.f54326b = null;
        this.f54327c = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(int i10, Object obj) {
        C8227lF c8227lF;
        C8227lF c8227lF2;
        C8227lF c8227lF3;
        C8227lF c8227lF4;
        C8227lF c8227lF5;
        this.f54333i = false;
        C8227lF c8227lF6 = this.f54326b;
        if (c8227lF6 == null) {
            this.f54327c++;
            c8227lF = new C8227lF(i10);
            this.f54328d = c8227lF;
            this.f54329e = c8227lF;
            this.f54326b = c8227lF;
            this.f54333i = true;
        } else {
            int i11 = 0;
            C8227lF c8227lF7 = null;
            C8227lF c8227lF8 = null;
            C8227lF c8227lF9 = c8227lF6;
            while (true) {
                int c10 = c(i10, c8227lF6.f42116b);
                if (c10 == 0) {
                    c8227lF = c8227lF6;
                    break;
                }
                if (((byte) c8227lF6.f49912f) != 0) {
                    i11 = 0;
                    c8227lF9 = c8227lF6;
                    c8227lF7 = c8227lF8;
                }
                boolean[] zArr = this.f54335k;
                int i12 = i11 + 1;
                boolean z10 = c10 > 0;
                zArr[i11] = z10;
                if (z10) {
                    if (c8227lF6.e()) {
                        this.f54327c++;
                        c8227lF2 = new C8227lF(i10);
                        this.f54333i = true;
                        C8227lF c8227lF10 = c8227lF6.f49911e;
                        if (c8227lF10 == null) {
                            this.f54329e = c8227lF2;
                        }
                        c8227lF2.f49910d = c8227lF6;
                        c8227lF2.f49911e = c8227lF10;
                        c8227lF6.f49912f &= Integer.MAX_VALUE;
                        c8227lF6.f49911e = c8227lF2;
                    } else {
                        c8227lF3 = c8227lF6.f49911e;
                        i11 = i12;
                        C8227lF c8227lF11 = c8227lF3;
                        c8227lF8 = c8227lF6;
                        c8227lF6 = c8227lF11;
                    }
                } else if (c8227lF6.c()) {
                    this.f54327c++;
                    c8227lF2 = new C8227lF(i10);
                    this.f54333i = true;
                    C8227lF c8227lF12 = c8227lF6.f49910d;
                    if (c8227lF12 == null) {
                        this.f54328d = c8227lF2;
                    }
                    c8227lF2.f49911e = c8227lF6;
                    c8227lF2.f49910d = c8227lF12;
                    c8227lF6.f49912f &= -1073741825;
                    c8227lF6.f49910d = c8227lF2;
                } else {
                    c8227lF3 = c8227lF6.f49910d;
                    i11 = i12;
                    C8227lF c8227lF112 = c8227lF3;
                    c8227lF8 = c8227lF6;
                    c8227lF6 = c8227lF112;
                }
            }
            int i13 = 0;
            C8227lF c8227lF13 = c8227lF9;
            while (c8227lF13 != c8227lF2) {
                boolean z11 = this.f54335k[i13];
                if (z11) {
                    int i14 = c8227lF13.f49912f;
                    c8227lF13.f49912f = ((((byte) i14) + 1) & 255) | (i14 & (-256));
                } else {
                    int i15 = c8227lF13.f49912f;
                    c8227lF13.f49912f = ((((byte) i15) - 1) & 255) | (i15 & (-256));
                }
                i13++;
                c8227lF13 = z11 ? c8227lF13.f49911e : c8227lF13.f49910d;
            }
            byte b10 = (byte) c8227lF9.f49912f;
            if (b10 == -2) {
                c8227lF4 = c8227lF9.f49910d;
                if (((byte) c8227lF4.f49912f) == -1) {
                    if (c8227lF4.e()) {
                        c8227lF4.b(false);
                        c8227lF9.a(c8227lF4);
                    } else {
                        c8227lF9.f49910d = c8227lF4.f49911e;
                    }
                    c8227lF4.f49911e = c8227lF9;
                    c8227lF4.a(0);
                    c8227lF9.a(0);
                    if (c8227lF7 != null) {
                        this.f54326b = c8227lF4;
                    } else if (c8227lF7.f49910d == c8227lF9) {
                        c8227lF7.f49910d = c8227lF4;
                    } else {
                        c8227lF7.f49911e = c8227lF4;
                    }
                    c8227lF = c8227lF2;
                } else {
                    c8227lF5 = c8227lF4.f49911e;
                    c8227lF4.f49911e = c8227lF5.f49910d;
                    c8227lF5.f49910d = c8227lF4;
                    c8227lF9.f49910d = c8227lF5.f49911e;
                    c8227lF5.f49911e = c8227lF9;
                    byte b11 = (byte) c8227lF5.f49912f;
                    if (b11 == -1) {
                        c8227lF4.a(0);
                        c8227lF9.a(1);
                    } else if (b11 == 0) {
                        c8227lF4.a(0);
                        c8227lF9.a(0);
                    } else {
                        c8227lF4.a(-1);
                        c8227lF9.a(0);
                    }
                    c8227lF5.a(0);
                    if (c8227lF5.c()) {
                        c8227lF4.b(c8227lF5);
                        c8227lF5.a(false);
                    }
                    if (c8227lF5.e()) {
                        c8227lF9.a(c8227lF5);
                        c8227lF5.b(false);
                    }
                    c8227lF4 = c8227lF5;
                    if (c8227lF7 != null) {
                    }
                    c8227lF = c8227lF2;
                }
            } else {
                if (b10 == 2) {
                    c8227lF4 = c8227lF9.f49911e;
                    if (((byte) c8227lF4.f49912f) == 1) {
                        if (c8227lF4.c()) {
                            c8227lF4.a(false);
                            c8227lF9.b(c8227lF4);
                        } else {
                            c8227lF9.f49911e = c8227lF4.f49910d;
                        }
                        c8227lF4.f49910d = c8227lF9;
                        c8227lF4.a(0);
                        c8227lF9.a(0);
                        if (c8227lF7 != null) {
                        }
                    } else {
                        c8227lF5 = c8227lF4.f49910d;
                        c8227lF4.f49910d = c8227lF5.f49911e;
                        c8227lF5.f49911e = c8227lF4;
                        c8227lF9.f49911e = c8227lF5.f49910d;
                        c8227lF5.f49910d = c8227lF9;
                        byte b12 = (byte) c8227lF5.f49912f;
                        if (b12 == 1) {
                            c8227lF4.a(0);
                            c8227lF9.a(-1);
                        } else if (b12 == 0) {
                            c8227lF4.a(0);
                            c8227lF9.a(0);
                        } else {
                            c8227lF4.a(1);
                            c8227lF9.a(0);
                        }
                        c8227lF5.a(0);
                        if (c8227lF5.c()) {
                            c8227lF9.b(c8227lF5);
                            c8227lF5.a(false);
                        }
                        if (c8227lF5.e()) {
                            c8227lF4.a(c8227lF5);
                            c8227lF5.b(false);
                        }
                        c8227lF4 = c8227lF5;
                        if (c8227lF7 != null) {
                        }
                    }
                }
                c8227lF = c8227lF2;
            }
        }
        Object obj2 = c8227lF.f42117c;
        c8227lF.f42117c = obj;
        return obj2;
    }

    @Override
    public final M30 b() {
        if (this.f54330f == null) {
            this.f54330f = new C7893jF(this);
        }
        return this.f54330f;
    }

    public final int c(int i10, int i11) {
        C7401gI c7401gI = this.f54334j;
        return c7401gI == null ? Integer.compare(i10, i11) : c7401gI.a(i10, i11);
    }

    @Override
    public final void clear() {
        this.f54327c = 0;
        this.f54326b = null;
        this.f54330f = null;
        this.f54332h = null;
        this.f54331g = null;
        this.f54329e = null;
        this.f54328d = null;
    }

    @Override
    public final C7401gI comparator() {
        return this.f54334j;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C10397yF c10397yF = new C10397yF(this);
        int i10 = this.f54327c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            Object obj2 = c10397yF.a().f42117c;
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

    public final C8227lF d(int i10) {
        C8227lF c8227lF = this.f54326b;
        while (c8227lF != null) {
            int c10 = c(i10, c8227lF.f42116b);
            if (c10 == 0) {
                break;
            }
            if (c10 < 0) {
                c8227lF = (c8227lF.f49912f & 1073741824) != 0 ? null : c8227lF.f49910d;
            } else if ((c8227lF.f49912f & Integer.MIN_VALUE) == 0) {
                c8227lF = c8227lF.f49911e;
            }
        }
        return c8227lF;
    }

    @Override
    public final Object get(int i10) {
        C8227lF d10 = d(i10);
        if (d10 == null) {
            return null;
        }
        return d10.f42117c;
    }

    @Override
    public final boolean isEmpty() {
        return this.f54327c == 0;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f54331g == null) {
            this.f54331g = new C8728oF(this);
        }
        return this.f54331g;
    }

    @Override
    public final Object remove(int i10) {
        C8227lF c8227lF;
        C8227lF c8227lF2;
        C8227lF c8227lF3;
        this.f54333i = false;
        C8227lF c8227lF4 = this.f54326b;
        if (c8227lF4 == null) {
            return null;
        }
        boolean z10 = false;
        C8227lF c8227lF5 = null;
        while (true) {
            int c10 = c(i10, c8227lF4.f42116b);
            if (c10 == 0) {
                if (c8227lF4.f49910d == null) {
                    this.f54328d = c8227lF4.b();
                }
                if (c8227lF4.f49911e == null) {
                    this.f54329e = c8227lF4.d();
                }
                if (!c8227lF4.e()) {
                    C8227lF c8227lF6 = c8227lF4.f49911e;
                    if (c8227lF6.c()) {
                        c8227lF6.f49910d = c8227lF4.f49910d;
                        c8227lF6.a(c8227lF4.c());
                        if (!c8227lF6.c()) {
                            c8227lF6.d().f49911e = c8227lF6;
                        }
                        if (c8227lF5 == null) {
                            this.f54326b = c8227lF6;
                        } else if (z10) {
                            c8227lF5.f49911e = c8227lF6;
                        } else {
                            c8227lF5.f49910d = c8227lF6;
                        }
                        c8227lF6.a((byte) c8227lF4.f49912f);
                        c8227lF5 = c8227lF6;
                        z10 = true;
                    } else {
                        while (true) {
                            c8227lF = c8227lF6.f49910d;
                            if (c8227lF.c()) {
                                break;
                            }
                            c8227lF6 = c8227lF;
                        }
                        if (c8227lF.e()) {
                            c8227lF6.a(c8227lF);
                        } else {
                            c8227lF6.f49910d = c8227lF.f49911e;
                        }
                        c8227lF.f49910d = c8227lF4.f49910d;
                        if (!c8227lF4.c()) {
                            c8227lF4.d().f49911e = c8227lF;
                            c8227lF.a(false);
                        }
                        c8227lF.f49911e = c8227lF4.f49911e;
                        c8227lF.b(false);
                        if (c8227lF5 == null) {
                            this.f54326b = c8227lF;
                        } else if (z10) {
                            c8227lF5.f49911e = c8227lF;
                        } else {
                            c8227lF5.f49910d = c8227lF;
                        }
                        c8227lF.a((byte) c8227lF4.f49912f);
                        c8227lF5 = c8227lF6;
                        z10 = false;
                    }
                } else if (!c8227lF4.c()) {
                    c8227lF4.d().f49911e = c8227lF4.f49911e;
                    if (c8227lF5 == null) {
                        this.f54326b = c8227lF4.f49910d;
                    } else if (z10) {
                        c8227lF5.f49911e = c8227lF4.f49910d;
                    } else {
                        c8227lF5.f49910d = c8227lF4.f49910d;
                    }
                } else if (c8227lF5 == null) {
                    this.f54326b = z10 ? c8227lF4.f49911e : c8227lF4.f49910d;
                } else if (z10) {
                    c8227lF5.b(c8227lF4.f49911e);
                } else {
                    c8227lF5.a(c8227lF4.f49910d);
                }
                while (true) {
                    if (c8227lF5 != null) {
                        if (c8227lF5 == this.f54326b) {
                            c8227lF2 = null;
                        } else {
                            C8227lF c8227lF7 = c8227lF5;
                            C8227lF c8227lF8 = c8227lF7;
                            while (true) {
                                if (c8227lF7.e()) {
                                    c8227lF2 = c8227lF7.f49911e;
                                    if (c8227lF2 == null || c8227lF2.f49910d != c8227lF5) {
                                        while (!c8227lF8.c()) {
                                            c8227lF8 = c8227lF8.f49910d;
                                        }
                                        c8227lF2 = c8227lF8.f49910d;
                                    }
                                } else if (c8227lF8.c()) {
                                    C8227lF c8227lF9 = c8227lF8.f49910d;
                                    if (c8227lF9 == null || c8227lF9.f49911e != c8227lF5) {
                                        while (!c8227lF7.e()) {
                                            c8227lF7 = c8227lF7.f49911e;
                                        }
                                        c8227lF2 = c8227lF7.f49911e;
                                    } else {
                                        c8227lF2 = c8227lF9;
                                    }
                                } else {
                                    c8227lF8 = c8227lF8.f49910d;
                                    c8227lF7 = c8227lF7.f49911e;
                                }
                            }
                        }
                        if (!z10) {
                            z10 = (c8227lF2 == null || c8227lF2.f49910d == c8227lF5) ? false : true;
                            int i11 = c8227lF5.f49912f;
                            int i12 = ((((byte) i11) + 1) & 255) | (i11 & (-256));
                            c8227lF5.f49912f = i12;
                            byte b10 = (byte) i12;
                            if (b10 == 1) {
                                break;
                            }
                            if (b10 == 2) {
                                C8227lF c8227lF10 = c8227lF5.f49911e;
                                byte b11 = (byte) c8227lF10.f49912f;
                                if (b11 == -1) {
                                    C8227lF c8227lF11 = c8227lF10.f49910d;
                                    c8227lF10.f49910d = c8227lF11.f49911e;
                                    c8227lF11.f49911e = c8227lF10;
                                    c8227lF5.f49911e = c8227lF11.f49910d;
                                    c8227lF11.f49910d = c8227lF5;
                                    byte b12 = (byte) c8227lF11.f49912f;
                                    if (b12 == 1) {
                                        c8227lF10.a(0);
                                        c8227lF5.a(-1);
                                    } else if (b12 == 0) {
                                        c8227lF10.a(0);
                                        c8227lF5.a(0);
                                    } else {
                                        c8227lF10.a(1);
                                        c8227lF5.a(0);
                                    }
                                    c8227lF11.a(0);
                                    if (c8227lF11.c()) {
                                        c8227lF5.b(c8227lF11);
                                        c8227lF11.a(false);
                                    }
                                    if (c8227lF11.e()) {
                                        c8227lF10.a(c8227lF11);
                                        c8227lF11.b(false);
                                    }
                                    if (c8227lF2 == null) {
                                        this.f54326b = c8227lF11;
                                    } else if (z10) {
                                        c8227lF2.f49911e = c8227lF11;
                                    } else {
                                        c8227lF2.f49910d = c8227lF11;
                                    }
                                } else {
                                    if (c8227lF2 == null) {
                                        this.f54326b = c8227lF10;
                                    } else if (z10) {
                                        c8227lF2.f49911e = c8227lF10;
                                    } else {
                                        c8227lF2.f49910d = c8227lF10;
                                    }
                                    if (b11 == 0) {
                                        c8227lF5.f49911e = c8227lF10.f49910d;
                                        c8227lF10.f49910d = c8227lF5;
                                        c8227lF10.a(-1);
                                        c8227lF5.a(1);
                                        break;
                                    }
                                    if (c8227lF10.c()) {
                                        c8227lF5.b(true);
                                        c8227lF10.a(false);
                                    } else {
                                        c8227lF5.f49911e = c8227lF10.f49910d;
                                    }
                                    c8227lF10.f49910d = c8227lF5;
                                    c8227lF5.a(0);
                                    c8227lF10.a(0);
                                }
                            } else {
                                continue;
                            }
                            c8227lF5 = c8227lF2;
                        } else {
                            z10 = (c8227lF2 == null || c8227lF2.f49910d == c8227lF5) ? false : true;
                            int i13 = c8227lF5.f49912f;
                            int i14 = ((((byte) i13) - 1) & 255) | (i13 & (-256));
                            c8227lF5.f49912f = i14;
                            byte b13 = (byte) i14;
                            if (b13 == -1) {
                                break;
                            }
                            if (b13 == -2) {
                                C8227lF c8227lF12 = c8227lF5.f49910d;
                                byte b14 = (byte) c8227lF12.f49912f;
                                if (b14 == 1) {
                                    C8227lF c8227lF13 = c8227lF12.f49911e;
                                    c8227lF12.f49911e = c8227lF13.f49910d;
                                    c8227lF13.f49910d = c8227lF12;
                                    c8227lF5.f49910d = c8227lF13.f49911e;
                                    c8227lF13.f49911e = c8227lF5;
                                    byte b15 = (byte) c8227lF13.f49912f;
                                    if (b15 == -1) {
                                        c8227lF12.a(0);
                                        c8227lF5.a(1);
                                    } else if (b15 == 0) {
                                        c8227lF12.a(0);
                                        c8227lF5.a(0);
                                    } else {
                                        c8227lF12.a(-1);
                                        c8227lF5.a(0);
                                    }
                                    c8227lF13.a(0);
                                    if (c8227lF13.c()) {
                                        c8227lF12.b(c8227lF13);
                                        c8227lF13.a(false);
                                    }
                                    if (c8227lF13.e()) {
                                        c8227lF5.a(c8227lF13);
                                        c8227lF13.b(false);
                                    }
                                    if (c8227lF2 == null) {
                                        this.f54326b = c8227lF13;
                                    } else if (z10) {
                                        c8227lF2.f49911e = c8227lF13;
                                    } else {
                                        c8227lF2.f49910d = c8227lF13;
                                    }
                                } else {
                                    if (c8227lF2 == null) {
                                        this.f54326b = c8227lF12;
                                    } else if (z10) {
                                        c8227lF2.f49911e = c8227lF12;
                                    } else {
                                        c8227lF2.f49910d = c8227lF12;
                                    }
                                    if (b14 == 0) {
                                        c8227lF5.f49910d = c8227lF12.f49911e;
                                        c8227lF12.f49911e = c8227lF5;
                                        c8227lF12.a(1);
                                        c8227lF5.a(-1);
                                        break;
                                    }
                                    if (c8227lF12.e()) {
                                        c8227lF5.a(true);
                                        c8227lF12.b(false);
                                    } else {
                                        c8227lF5.f49910d = c8227lF12.f49911e;
                                    }
                                    c8227lF12.f49911e = c8227lF5;
                                    c8227lF5.a(0);
                                    c8227lF12.a(0);
                                }
                            } else {
                                continue;
                            }
                            c8227lF5 = c8227lF2;
                        }
                    } else {
                        break;
                    }
                }
                this.f54333i = true;
                this.f54327c--;
                return c8227lF4.f42117c;
            }
            z10 = c10 > 0;
            if (z10) {
                c8227lF3 = (c8227lF4.f49912f & Integer.MIN_VALUE) != 0 ? null : c8227lF4.f49911e;
                if (c8227lF3 == null) {
                    return null;
                }
            } else {
                c8227lF3 = (c8227lF4.f49912f & 1073741824) != 0 ? null : c8227lF4.f49910d;
                if (c8227lF3 == null) {
                    return null;
                }
            }
            C8227lF c8227lF14 = c8227lF3;
            c8227lF5 = c8227lF4;
            c8227lF4 = c8227lF14;
        }
    }

    @Override
    public final int size() {
        return this.f54327c;
    }

    @Override
    public final InterfaceC10028w30 values() {
        if (this.f54332h == null) {
            this.f54332h = new C8060kF(this);
        }
        return this.f54332h;
    }

    @Override
    public final InterfaceC7896jG c(int i10) {
        return new C10063wF(this, 0, true, i10, false);
    }

    public final C10564zF m744clone() {
        try {
            C10564zF c10564zF = (C10564zF) super.clone();
            c10564zF.f54331g = null;
            c10564zF.f54332h = null;
            c10564zF.f54330f = null;
            c10564zF.f54335k = new boolean[48];
            if (this.f54327c != 0) {
                C8227lF c8227lF = new C8227lF();
                C8227lF c8227lF2 = new C8227lF();
                C8227lF c8227lF3 = this.f54326b;
                c8227lF.f49912f &= -1073741825;
                c8227lF.f49910d = c8227lF3;
                c8227lF2.a((C8227lF) null);
                C8227lF c8227lF4 = c8227lF2;
                loop0: while (true) {
                    if (!c8227lF.c()) {
                        C8227lF m739clone = c8227lF.f49910d.m739clone();
                        m739clone.a(c8227lF4.f49910d);
                        m739clone.b(c8227lF4);
                        c8227lF4.f49912f &= -1073741825;
                        c8227lF4.f49910d = m739clone;
                        c8227lF = c8227lF.f49910d;
                        c8227lF4 = m739clone;
                    } else {
                        while (c8227lF.e()) {
                            c8227lF = c8227lF.f49911e;
                            if (c8227lF == null) {
                                break loop0;
                            }
                            c8227lF4 = c8227lF4.f49911e;
                        }
                        c8227lF = c8227lF.f49911e;
                        c8227lF4 = c8227lF4.f49911e;
                    }
                    if (!c8227lF.e()) {
                        C8227lF m739clone2 = c8227lF.f49911e.m739clone();
                        m739clone2.b(c8227lF4.f49911e);
                        m739clone2.a(c8227lF4);
                        c8227lF4.f49912f &= Integer.MAX_VALUE;
                        c8227lF4.f49911e = m739clone2;
                    }
                }
                c8227lF4.f49911e = null;
                C8227lF c8227lF5 = c8227lF2.f49910d;
                c10564zF.f54326b = c8227lF5;
                c10564zF.f54328d = c8227lF5;
                while (true) {
                    C8227lF c8227lF6 = c10564zF.f54328d.f49910d;
                    if (c8227lF6 == null) {
                        break;
                    }
                    c10564zF.f54328d = c8227lF6;
                }
                c10564zF.f54329e = c10564zF.f54326b;
                while (true) {
                    C8227lF c8227lF7 = c10564zF.f54329e.f49911e;
                    if (c8227lF7 == null) {
                        break;
                    }
                    c10564zF.f54329e = c8227lF7;
                }
            }
            return c10564zF;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final Comparator comparator() {
        return this.f54334j;
    }

    @Override
    public final InterfaceC7896jG b(int i10) {
        return new C10063wF(this, i10, false, 0, true);
    }

    public C10564zF(int[] iArr, Object[] objArr) {
        this();
        this.f54334j = null;
        if (iArr.length == objArr.length) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                a(iArr[i10], objArr[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("The key array and the value array have different lengths (" + iArr.length + " and " + objArr.length + ")");
    }

    @Override
    public final int d() {
        if (this.f54326b != null) {
            return this.f54329e.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) != null;
    }

    @Override
    public final int a() {
        if (this.f54326b != null) {
            return this.f54328d.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC7896jG a(int i10, int i11) {
        return new C10063wF(this, i10, false, i11, false);
    }
}
