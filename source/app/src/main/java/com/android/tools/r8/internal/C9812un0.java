package com.android.tools.r8.internal;

public final class C9812un0 {

    public static final boolean f52947d = true;

    public final AbstractC8999pu0 f52948a;

    public FT f52949b;

    public final FT f52950c;

    public C9812un0(AbstractC8999pu0 abstractC8999pu0, FT ft, FT ft2) {
        this.f52948a = abstractC8999pu0;
        this.f52950c = ft;
        this.f52949b = ft2;
        boolean z10 = f52947d;
        if (!z10 && ft.f40221k == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        if (!z10 && ft2.f40221k == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9812un0)) {
            return false;
        }
        C9812un0 c9812un0 = (C9812un0) obj;
        if (this.f52948a == c9812un0.f52948a) {
            FT ft = this.f52949b;
            int i10 = ft.f40221k;
            FT ft2 = c9812un0.f52949b;
            if (i10 == ft2.f40221k) {
                FT ft3 = this.f52950c;
                int i11 = ft3.f40221k;
                FT ft4 = c9812un0.f52950c;
                if (i11 == ft4.f40221k && ft.f40215e == ft2.f40215e && ft3.f40215e == ft4.f40215e) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f52950c.f40221k * 5) + (this.f52949b.f40221k * 3) + this.f52948a.hashCode();
    }

    public final String toString() {
        return this.f52950c.f40221k + " <- " + this.f52949b.f40221k + " (" + ((Object) this.f52948a) + ")";
    }
}
