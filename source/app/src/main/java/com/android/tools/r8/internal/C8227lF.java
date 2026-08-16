package com.android.tools.r8.internal;

import java.util.Map;

public final class C8227lF extends M implements Cloneable {

    public C8227lF f49910d;

    public C8227lF f49911e;

    public int f49912f;

    public C8227lF() {
        super(0, null);
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f49912f |= 1073741824;
        } else {
            this.f49912f &= -1073741825;
        }
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f49912f |= Integer.MIN_VALUE;
        } else {
            this.f49912f &= Integer.MAX_VALUE;
        }
    }

    public final boolean c() {
        return (this.f49912f & 1073741824) != 0;
    }

    public final C8227lF d() {
        C8227lF c8227lF = this.f49910d;
        if ((this.f49912f & 1073741824) == 0) {
            while ((c8227lF.f49912f & Integer.MIN_VALUE) == 0) {
                c8227lF = c8227lF.f49911e;
            }
        }
        return c8227lF;
    }

    public final boolean e() {
        return (this.f49912f & Integer.MIN_VALUE) != 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f42116b == ((Integer) entry.getKey()).intValue()) {
            Object obj2 = this.f42117c;
            Object value = entry.getValue();
            if (obj2 == null) {
                if (value == null) {
                    return true;
                }
            } else if (obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int i10 = this.f42116b;
        Object obj = this.f42117c;
        return i10 ^ (obj == null ? 0 : obj.hashCode());
    }

    @Override
    public final Object setValue(Object obj) {
        Object obj2 = this.f42117c;
        this.f42117c = obj;
        return obj2;
    }

    @Override
    public final String toString() {
        return this.f42116b + "=>" + this.f42117c;
    }

    public C8227lF(int i10) {
        super(i10, null);
        this.f49912f = -1073741824;
    }

    public final C8227lF m739clone() {
        try {
            C8227lF c8227lF = (C8227lF) super.clone();
            c8227lF.f42116b = this.f42116b;
            c8227lF.f42117c = this.f42117c;
            c8227lF.f49912f = this.f49912f;
            return c8227lF;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void a(C8227lF c8227lF) {
        this.f49912f |= 1073741824;
        this.f49910d = c8227lF;
    }

    public final void b(C8227lF c8227lF) {
        this.f49912f |= Integer.MIN_VALUE;
        this.f49911e = c8227lF;
    }

    public final void a(int i10) {
        this.f49912f = (i10 & 255) | (this.f49912f & (-256));
    }

    public final C8227lF b() {
        C8227lF c8227lF = this.f49911e;
        if ((this.f49912f & Integer.MIN_VALUE) == 0) {
            while ((c8227lF.f49912f & 1073741824) == 0) {
                c8227lF = c8227lF.f49910d;
            }
        }
        return c8227lF;
    }
}
