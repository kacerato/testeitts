package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;

public final class V7 extends D40 implements Serializable {

    public final EnumC8427mV f44959b;

    public final D40 f44960c;

    public V7(EnumC8427mV enumC8427mV, D40 d40) {
        this.f44959b = enumC8427mV;
        this.f44960c = d40;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.f44960c.compare(this.f44959b.apply(obj), this.f44959b.apply(obj2));
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof V7) {
            V7 v72 = (V7) obj;
            if (this.f44959b.equals(v72.f44959b) && this.f44960c.equals(v72.f44960c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f44959b, this.f44960c});
    }

    public final String toString() {
        return ((Object) this.f44960c) + ".onResultOf(" + ((Object) this.f44959b) + ")";
    }
}
