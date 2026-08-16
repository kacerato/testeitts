package com.android.tools.r8.internal;

import java.util.Map;

public final class UF extends M implements Cloneable {

    public UF f44710d;

    public UF f44711e;

    public int f44712f;

    public UF() {
        super(0, null);
    }

    public final void a(UF uf2) {
        this.f44712f |= 1073741824;
        this.f44710d = uf2;
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f44712f |= 1073741824;
        } else {
            this.f44712f &= -1073741825;
        }
    }

    public final UF c() {
        UF uf2 = this.f44711e;
        if ((this.f44712f & Integer.MIN_VALUE) == 0) {
            while ((uf2.f44712f & 1073741824) == 0) {
                uf2 = uf2.f44710d;
            }
        }
        return uf2;
    }

    public final boolean d() {
        return (this.f44712f & 1073741824) != 0;
    }

    public final UF e() {
        UF uf2 = this.f44710d;
        if ((this.f44712f & 1073741824) == 0) {
            while ((uf2.f44712f & Integer.MIN_VALUE) == 0) {
                uf2 = uf2.f44711e;
            }
        }
        return uf2;
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

    public final boolean f() {
        return (this.f44712f & Integer.MIN_VALUE) != 0;
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

    public UF(int i10) {
        super(i10, null);
        this.f44712f = -1073741824;
    }

    public final UF m723clone() {
        try {
            UF uf2 = (UF) super.clone();
            uf2.f42116b = this.f42116b;
            uf2.f42117c = this.f42117c;
            uf2.f44712f = this.f44712f;
            return uf2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f44712f |= 1;
        } else {
            this.f44712f &= -2;
        }
    }

    public final void b(UF uf2) {
        this.f44712f |= Integer.MIN_VALUE;
        this.f44711e = uf2;
    }

    public final boolean b() {
        return (this.f44712f & 1) != 0;
    }
}
