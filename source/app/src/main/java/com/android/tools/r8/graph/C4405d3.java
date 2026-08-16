package com.android.tools.r8.graph;

public final class C4405d3 implements InterfaceC4424e3 {

    public final AbstractC4497i0 f37115b;

    public final int f37116c;

    public final int f37117d;

    public final Object f37118e;

    /* JADX WARN: Multi-variable type inference failed */
    public C4405d3(InterfaceC4443f3 interfaceC4443f3, Object obj, int i10, int i11) {
        this.f37115b = (AbstractC4497i0) interfaceC4443f3;
        this.f37116c = i10;
        this.f37117d = i11;
        this.f37118e = obj;
    }

    public final int a() {
        return (this.f37117d * 17) + (this.f37116c * 13) + this.f37115b.hashCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4405d3) {
            return a(obj) && this.f37118e.equals(((C4405d3) obj).f37118e);
        }
        return false;
    }

    public final int hashCode() {
        return (this.f37118e.hashCode() * 7) + a();
    }

    public final boolean a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4405d3)) {
            return false;
        }
        C4405d3 c4405d3 = (C4405d3) obj;
        return this.f37115b.equals(c4405d3.f37115b) && this.f37116c == c4405d3.f37116c && this.f37117d == c4405d3.f37117d;
    }
}
