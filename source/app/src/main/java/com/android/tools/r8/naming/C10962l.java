package com.android.tools.r8.naming;

import java.util.Objects;

public final class C10962l {

    public final String f55988a;

    public final String f55989b;

    public C10962l(String str, String str2) {
        this.f55988a = str;
        this.f55989b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10962l)) {
            return false;
        }
        C10962l c10962l = (C10962l) obj;
        return this.f55988a.equals(c10962l.f55988a) && this.f55989b.equals(c10962l.f55989b);
    }

    public final int hashCode() {
        return Objects.hash(this.f55988a, this.f55989b);
    }
}
