package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

public final class S0 implements Serializable, O0 {

    public final Object f61664b;

    public S0(Object obj) {
        this.f61664b = obj;
    }

    @Override
    public final Object N1() {
        return this.f61664b;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof S0)) {
            return false;
        }
        Object obj2 = this.f61664b;
        Object obj3 = ((S0) obj).f61664b;
        return obj2 == obj3 || obj2.equals(obj3);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f61664b});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.f61664b.toString() + ")";
    }
}
