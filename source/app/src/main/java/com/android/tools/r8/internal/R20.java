package com.android.tools.r8.internal;

import java.util.Map;

public final class R20 implements Cloneable, N20 {

    public Object f43785b;

    public Object f43786c;

    public R20 f43787d;

    public R20 f43788e;

    public int f43789f;

    public R20() {
        this.f43785b = null;
        this.f43786c = null;
    }

    public final void a(R20 r20) {
        this.f43789f |= 1073741824;
        this.f43787d = r20;
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f43789f |= 1073741824;
        } else {
            this.f43789f &= -1073741825;
        }
    }

    public final R20 c() {
        R20 r20 = this.f43788e;
        if ((this.f43789f & Integer.MIN_VALUE) == 0) {
            while ((r20.f43789f & 1073741824) == 0) {
                r20 = r20.f43787d;
            }
        }
        return r20;
    }

    public final boolean d() {
        return (this.f43789f & 1073741824) != 0;
    }

    public final R20 e() {
        R20 r20 = this.f43787d;
        if ((this.f43789f & 1073741824) == 0) {
            while ((r20.f43789f & Integer.MIN_VALUE) == 0) {
                r20 = r20.f43788e;
            }
        }
        return r20;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f43785b;
        if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
            Object obj3 = this.f43786c;
            Object value = entry.getValue();
            if (obj3 == null) {
                if (value == null) {
                    return true;
                }
            } else if (obj3.equals(value)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return (this.f43789f & Integer.MIN_VALUE) != 0;
    }

    @Override
    public final Object getKey() {
        return this.f43785b;
    }

    @Override
    public final Object getValue() {
        return this.f43786c;
    }

    @Override
    public final int hashCode() {
        int hashCode = this.f43785b.hashCode();
        Object obj = this.f43786c;
        return hashCode ^ (obj == null ? 0 : obj.hashCode());
    }

    @Override
    public final Object setValue(Object obj) {
        Object obj2 = this.f43786c;
        this.f43786c = obj;
        return obj2;
    }

    public final String toString() {
        return this.f43785b + "=>" + this.f43786c;
    }

    public final R20 m722clone() {
        try {
            R20 r20 = (R20) super.clone();
            r20.f43785b = this.f43785b;
            r20.f43786c = this.f43786c;
            r20.f43789f = this.f43789f;
            return r20;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f43789f |= 1;
        } else {
            this.f43789f &= -2;
        }
    }

    public final void b(R20 r20) {
        this.f43789f |= Integer.MIN_VALUE;
        this.f43788e = r20;
    }

    public R20(Object obj) {
        this.f43785b = obj;
        this.f43786c = null;
        this.f43789f = -1073741824;
    }

    public final boolean b() {
        return (this.f43789f & 1) != 0;
    }
}
