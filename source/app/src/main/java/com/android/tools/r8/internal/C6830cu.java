package com.android.tools.r8.internal;

import java.util.LinkedHashMap;
import java.util.Objects;

public final class C6830cu implements InterfaceC9645tn0 {

    public final C6257Yj f47197a;

    public final C6257Yj f47198b;

    public final C6257Yj f47199c;

    public final LinkedHashMap f47200d;

    public C6830cu(C6257Yj c6257Yj, C6257Yj c6257Yj2, C6257Yj c6257Yj3, LinkedHashMap linkedHashMap) {
        this.f47197a = c6257Yj;
        this.f47198b = c6257Yj2;
        this.f47199c = c6257Yj3;
        this.f47200d = linkedHashMap;
    }

    @Override
    public final Object[] a(C9267rY c9267rY) {
        return new Object[]{c9267rY.a(this.f47197a), c9267rY.a(this.f47198b), c9267rY.a(this.f47199c), c9267rY.a(this.f47200d)};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6830cu)) {
            return false;
        }
        C6830cu c6830cu = (C6830cu) obj;
        return Objects.equals(this.f47197a, c6830cu.f47197a) && Objects.equals(this.f47198b, c6830cu.f47198b) && Objects.equals(this.f47199c, c6830cu.f47199c) && Objects.equals(this.f47200d, c6830cu.f47200d);
    }

    public final int hashCode() {
        return Objects.hash(this.f47197a, this.f47198b, this.f47199c, this.f47200d);
    }
}
