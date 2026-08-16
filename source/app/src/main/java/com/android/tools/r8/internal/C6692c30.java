package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C6692c30 extends AbstractC6352a1 {

    public final Object f46945b;

    public final Object f46946c;

    public final boolean f46947d;

    public final boolean f46948e;

    public transient V20 f46949f;

    public transient X20 f46950g;

    public transient W20 f46951h;

    public final C7192f30 f46952i;

    public C6692c30(C7192f30 c7192f30, Object obj, boolean z10, Object obj2, boolean z11) {
        this.f46952i = c7192f30;
        if (!z10 && !z11) {
            c7192f30.getClass();
            if (((Comparable) obj).compareTo(obj2) > 0) {
                throw new IllegalArgumentException("Start key (" + obj + ") is larger than end key (" + obj2 + ")");
            }
        }
        this.f46945b = obj;
        this.f46947d = z10;
        this.f46946c = obj2;
        this.f46948e = z11;
        c7192f30.getClass();
    }

    @Override
    public final AbstractC6352a1 subMap(Object obj, Object obj2) {
        boolean z10 = this.f46948e;
        if (z10 && this.f46947d) {
            return new C6692c30(this.f46952i, obj, false, obj2, false);
        }
        if (!z10) {
            C7192f30 c7192f30 = this.f46952i;
            Object obj3 = this.f46946c;
            c7192f30.getClass();
            if (((Comparable) obj2).compareTo(obj3) >= 0) {
                obj2 = this.f46946c;
            }
        }
        Object obj4 = obj2;
        if (!this.f46947d) {
            C7192f30 c7192f302 = this.f46952i;
            Object obj5 = this.f46945b;
            c7192f302.getClass();
            if (((Comparable) obj).compareTo(obj5) <= 0) {
                obj = this.f46945b;
            }
        }
        Object obj6 = obj;
        return (this.f46948e || this.f46947d || obj6 != this.f46945b || obj4 != this.f46946c) ? new C6692c30(this.f46952i, obj6, false, obj4, false) : this;
    }

    @Override
    public final AbstractC6352a1 headMap(Object obj) {
        if (this.f46948e) {
            return new C6692c30(this.f46952i, this.f46945b, this.f46947d, obj, false);
        }
        C7192f30 c7192f30 = this.f46952i;
        Object obj2 = this.f46946c;
        c7192f30.getClass();
        return ((Comparable) obj).compareTo(obj2) < 0 ? new C6692c30(this.f46952i, this.f46945b, this.f46947d, obj, false) : this;
    }

    @Override
    public final AbstractC6352a1 tailMap(Object obj) {
        if (this.f46947d) {
            return new C6692c30(this.f46952i, obj, false, this.f46946c, this.f46948e);
        }
        C7192f30 c7192f30 = this.f46952i;
        Object obj2 = this.f46945b;
        c7192f30.getClass();
        return ((Comparable) obj).compareTo(obj2) > 0 ? new C6692c30(this.f46952i, obj, false, this.f46946c, this.f46948e) : this;
    }

    @Override
    public final void clear() {
        Z20 z20 = new Z20(this);
        while (z20.hasNext()) {
            z20.a();
            z20.remove();
        }
    }

    @Override
    public final Comparator comparator() {
        this.f46952i.getClass();
        return null;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return d(obj) && this.f46952i.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        Z20 z20 = new Z20(this);
        while (z20.hasNext()) {
            Object obj2 = z20.a().f43786c;
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

    public final boolean d(Object obj) {
        if (!this.f46947d) {
            C7192f30 c7192f30 = this.f46952i;
            Object obj2 = this.f46945b;
            c7192f30.getClass();
            if (((Comparable) obj).compareTo(obj2) < 0) {
                return false;
            }
        }
        if (this.f46948e) {
            return true;
        }
        C7192f30 c7192f302 = this.f46952i;
        Object obj3 = this.f46946c;
        c7192f302.getClass();
        return ((Comparable) obj).compareTo(obj3) < 0;
    }

    @Override
    public final M30 o() {
        if (this.f46950g == null) {
            this.f46950g = new X20(this);
        }
        return this.f46950g;
    }

    @Override
    public final Object firstKey() {
        R20 j10 = j();
        if (j10 != null) {
            return j10.f43785b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object get(Object obj) {
        R20 d10;
        if (!d(obj) || (d10 = this.f46952i.d(obj)) == null) {
            return null;
        }
        return d10.f43786c;
    }

    @Override
    public final M30 i() {
        if (this.f46949f == null) {
            this.f46949f = new V20(this);
        }
        return this.f46949f;
    }

    @Override
    public final boolean isEmpty() {
        R20 r20 = this.f46952i.f47838d;
        return !(j() != null);
    }

    public final R20 j() {
        R20 r20;
        R20 r202;
        C7192f30 c7192f30 = this.f46952i;
        R20 r203 = c7192f30.f47836b;
        if (r203 == null) {
            return null;
        }
        if (this.f46947d) {
            r20 = c7192f30.f47838d;
        } else {
            Object obj = this.f46945b;
            int i10 = 0;
            R20 r204 = r203;
            while (r203 != null) {
                i10 = ((Comparable) obj).compareTo(r203.f43785b);
                if (i10 == 0) {
                    break;
                }
                if (i10 < 0) {
                    if ((r203.f43789f & 1073741824) == 0) {
                        r202 = r203.f43787d;
                    }
                    r202 = null;
                } else {
                    if ((r203.f43789f & Integer.MIN_VALUE) == 0) {
                        r202 = r203.f43788e;
                    }
                    r202 = null;
                }
                R20 r205 = r202;
                r204 = r203;
                r203 = r205;
            }
            r20 = i10 == 0 ? r203 : r204;
            C7192f30 c7192f302 = this.f46952i;
            Object obj2 = r20.f43785b;
            Object obj3 = this.f46945b;
            c7192f302.getClass();
            if (((Comparable) obj2).compareTo(obj3) < 0) {
                r20 = r20.c();
            }
        }
        if (r20 != null) {
            if (!this.f46948e) {
                C7192f30 c7192f303 = this.f46952i;
                Object obj4 = r20.f43785b;
                Object obj5 = this.f46946c;
                c7192f303.getClass();
                if (((Comparable) obj4).compareTo(obj5) >= 0) {
                }
            }
            return r20;
        }
        return null;
    }

    public final R20 k() {
        R20 r20;
        R20 r202;
        C7192f30 c7192f30 = this.f46952i;
        R20 r203 = c7192f30.f47836b;
        if (r203 == null) {
            return null;
        }
        if (this.f46948e) {
            r20 = c7192f30.f47839e;
        } else {
            Object obj = this.f46946c;
            int i10 = 0;
            R20 r204 = r203;
            while (r203 != null) {
                i10 = ((Comparable) obj).compareTo(r203.f43785b);
                if (i10 == 0) {
                    break;
                }
                if (i10 < 0) {
                    if ((r203.f43789f & 1073741824) == 0) {
                        r202 = r203.f43787d;
                    }
                    r202 = null;
                } else {
                    if ((r203.f43789f & Integer.MIN_VALUE) == 0) {
                        r202 = r203.f43788e;
                    }
                    r202 = null;
                }
                R20 r205 = r202;
                r204 = r203;
                r203 = r205;
            }
            r20 = i10 == 0 ? r203 : r204;
            C7192f30 c7192f302 = this.f46952i;
            Object obj2 = r20.f43785b;
            Object obj3 = this.f46946c;
            c7192f302.getClass();
            if (((Comparable) obj2).compareTo(obj3) >= 0) {
                r20 = r20.e();
            }
        }
        if (r20 != null) {
            if (!this.f46947d) {
                C7192f30 c7192f303 = this.f46952i;
                Object obj4 = r20.f43785b;
                Object obj5 = this.f46945b;
                c7192f303.getClass();
                if (((Comparable) obj4).compareTo(obj5) < 0) {
                }
            }
            return r20;
        }
        return null;
    }

    @Override
    public final Object lastKey() {
        R20 k10 = k();
        if (k10 != null) {
            return k10.f43785b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        this.f46952i.f47843i = false;
        if (d(obj)) {
            Object put = this.f46952i.put(obj, obj2);
            if (this.f46952i.f47843i) {
                return null;
            }
            return put;
        }
        StringBuilder sb2 = new StringBuilder("Key (");
        sb2.append(obj);
        sb2.append(") out of range [");
        sb2.append(this.f46947d ? "-" : String.valueOf(this.f46945b));
        sb2.append(", ");
        sb2.append(this.f46948e ? "-" : String.valueOf(this.f46946c));
        sb2.append(")");
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public final Object remove(Object obj) {
        this.f46952i.f47843i = false;
        if (!d(obj)) {
            return null;
        }
        Object remove = this.f46952i.remove(obj);
        if (this.f46952i.f47843i) {
            return remove;
        }
        return null;
    }

    @Override
    public final int size() {
        Z20 z20 = new Z20(this);
        int i10 = 0;
        while (z20.hasNext()) {
            i10++;
            z20.a();
        }
        return i10;
    }

    @Override
    public final Collection values() {
        if (this.f46951h == null) {
            this.f46951h = new W20(this);
        }
        return this.f46951h;
    }
}
