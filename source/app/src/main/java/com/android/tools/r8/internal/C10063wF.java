package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C10063wF extends P {

    public final int f53453b;

    public final int f53454c;

    public final boolean f53455d;

    public final boolean f53456e;

    public transient C8895pF f53457f;

    public transient C9228rF f53458g;

    public transient C9062qF f53459h;

    public final C10564zF f53460i;

    public C10063wF(C10564zF c10564zF, int i10, boolean z10, int i11, boolean z11) {
        this.f53460i = c10564zF;
        if (z10 || z11 || c10564zF.c(i10, i11) <= 0) {
            this.f53453b = i10;
            this.f53455d = z10;
            this.f53454c = i11;
            this.f53456e = z11;
            c10564zF.getClass();
            return;
        }
        throw new IllegalArgumentException("Start key (" + i10 + ") is larger than end key (" + i11 + ")");
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) && this.f53460i.a(i10);
    }

    @Override
    public final M30 b() {
        if (this.f53457f == null) {
            this.f53457f = new C8895pF(this);
        }
        return this.f53457f;
    }

    @Override
    public final InterfaceC7896jG c(int i10) {
        return (!this.f53456e && this.f53460i.c(i10, this.f53454c) >= 0) ? this : new C10063wF(this.f53460i, this.f53453b, this.f53455d, i10, false);
    }

    @Override
    public final void clear() {
        C9562tF c9562tF = new C9562tF(this);
        while (c9562tF.hasNext()) {
            c9562tF.a();
            c9562tF.remove();
        }
    }

    @Override
    public final C7401gI comparator() {
        return this.f53460i.f54334j;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C9562tF c9562tF = new C9562tF(this);
        while (c9562tF.hasNext()) {
            Object obj2 = c9562tF.a().f42117c;
            if (obj2 == null) {
                if (obj == null) {
                    return true;
                }
            } else if (obj2.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i10) {
        if (this.f53455d || this.f53460i.c(i10, this.f53453b) >= 0) {
            return this.f53456e || this.f53460i.c(i10, this.f53454c) < 0;
        }
        return false;
    }

    @Override
    public final Object get(int i10) {
        C8227lF d10;
        if (!d(i10) || (d10 = this.f53460i.d(i10)) == null) {
            return null;
        }
        return d10.f42117c;
    }

    public final C8227lF i() {
        C8227lF c8227lF;
        C8227lF c8227lF2;
        C10564zF c10564zF = this.f53460i;
        C8227lF c8227lF3 = c10564zF.f54326b;
        if (c8227lF3 == null) {
            return null;
        }
        if (this.f53455d) {
            c8227lF = c10564zF.f54328d;
        } else {
            int i10 = this.f53453b;
            int i11 = 0;
            C8227lF c8227lF4 = c8227lF3;
            while (c8227lF3 != null) {
                i11 = c10564zF.c(i10, c8227lF3.f42116b);
                if (i11 == 0) {
                    break;
                }
                if (i11 < 0) {
                    if ((c8227lF3.f49912f & 1073741824) == 0) {
                        c8227lF2 = c8227lF3.f49910d;
                    }
                    c8227lF2 = null;
                } else {
                    if ((c8227lF3.f49912f & Integer.MIN_VALUE) == 0) {
                        c8227lF2 = c8227lF3.f49911e;
                    }
                    c8227lF2 = null;
                }
                C8227lF c8227lF5 = c8227lF2;
                c8227lF4 = c8227lF3;
                c8227lF3 = c8227lF5;
            }
            c8227lF = i11 == 0 ? c8227lF3 : c8227lF4;
            if (this.f53460i.c(c8227lF.f42116b, this.f53453b) < 0) {
                c8227lF = c8227lF.b();
            }
        }
        if (c8227lF == null || (!this.f53456e && this.f53460i.c(c8227lF.f42116b, this.f53454c) >= 0)) {
            return null;
        }
        return c8227lF;
    }

    @Override
    public final boolean isEmpty() {
        C8227lF c8227lF = this.f53460i.f54328d;
        return !(i() != null);
    }

    public final C8227lF j() {
        C8227lF c8227lF;
        C8227lF c8227lF2;
        C10564zF c10564zF = this.f53460i;
        C8227lF c8227lF3 = c10564zF.f54326b;
        if (c8227lF3 == null) {
            return null;
        }
        if (this.f53456e) {
            c8227lF = c10564zF.f54329e;
        } else {
            int i10 = this.f53454c;
            int i11 = 0;
            C8227lF c8227lF4 = c8227lF3;
            while (c8227lF3 != null) {
                i11 = c10564zF.c(i10, c8227lF3.f42116b);
                if (i11 == 0) {
                    break;
                }
                if (i11 < 0) {
                    if ((c8227lF3.f49912f & 1073741824) == 0) {
                        c8227lF2 = c8227lF3.f49910d;
                    }
                    c8227lF2 = null;
                } else {
                    if ((c8227lF3.f49912f & Integer.MIN_VALUE) == 0) {
                        c8227lF2 = c8227lF3.f49911e;
                    }
                    c8227lF2 = null;
                }
                C8227lF c8227lF5 = c8227lF2;
                c8227lF4 = c8227lF3;
                c8227lF3 = c8227lF5;
            }
            c8227lF = i11 == 0 ? c8227lF3 : c8227lF4;
            if (this.f53460i.c(c8227lF.f42116b, this.f53454c) >= 0) {
                c8227lF = c8227lF.d();
            }
        }
        if (c8227lF == null || (!this.f53455d && this.f53460i.c(c8227lF.f42116b, this.f53453b) < 0)) {
            return null;
        }
        return c8227lF;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f53458g == null) {
            this.f53458g = new C9228rF(this);
        }
        return this.f53458g;
    }

    @Override
    public final Object remove(int i10) {
        this.f53460i.f54333i = false;
        if (!d(i10)) {
            return null;
        }
        Object remove = this.f53460i.remove(i10);
        if (this.f53460i.f54333i) {
            return remove;
        }
        return null;
    }

    @Override
    public final int size() {
        C9562tF c9562tF = new C9562tF(this);
        int i10 = 0;
        while (c9562tF.hasNext()) {
            i10++;
            c9562tF.a();
        }
        return i10;
    }

    @Override
    public final InterfaceC10028w30 values() {
        if (this.f53459h == null) {
            this.f53459h = new C9062qF(this);
        }
        return this.f53459h;
    }

    @Override
    public final Object a(int i10, Object obj) {
        this.f53460i.f54333i = false;
        if (!d(i10)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Key (", ") out of range [");
            a10.append(this.f53455d ? "-" : String.valueOf(this.f53453b));
            a10.append(", ");
            a10.append(this.f53456e ? "-" : String.valueOf(this.f53454c));
            a10.append(")");
            throw new IllegalArgumentException(a10.toString());
        }
        Object a11 = this.f53460i.a(i10, obj);
        if (this.f53460i.f54333i) {
            return null;
        }
        return a11;
    }

    @Override
    public final Comparator comparator() {
        return this.f53460i.f54334j;
    }

    @Override
    public final InterfaceC7896jG b(int i10) {
        return (!this.f53455d && this.f53460i.c(i10, this.f53453b) <= 0) ? this : new C10063wF(this.f53460i, i10, false, this.f53454c, this.f53456e);
    }

    @Override
    public final int d() {
        C8227lF j10 = j();
        if (j10 != null) {
            return j10.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC7896jG a(int i10, int i11) {
        boolean z10 = this.f53456e;
        if (z10 && this.f53455d) {
            return new C10063wF(this.f53460i, i10, false, i11, false);
        }
        if (!z10 && this.f53460i.c(i11, this.f53454c) >= 0) {
            i11 = this.f53454c;
        }
        int i12 = i11;
        if (!this.f53455d && this.f53460i.c(i10, this.f53453b) <= 0) {
            i10 = this.f53453b;
        }
        int i13 = i10;
        return (this.f53456e || this.f53455d || i13 != this.f53453b || i12 != this.f53454c) ? new C10063wF(this.f53460i, i13, false, i12, false) : this;
    }

    @Override
    public final int a() {
        C8227lF i10 = i();
        if (i10 != null) {
            return i10.f42116b;
        }
        throw new NoSuchElementException();
    }
}
