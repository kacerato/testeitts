package com.android.tools.r8.internal;

import java.util.Objects;

public final class C5067Du0 {

    public final FE f39681a;

    public final C10340xw0 f39682b;

    public C5067Du0(FE fe2, C10340xw0 c10340xw0) {
        this.f39681a = fe2;
        this.f39682b = c10340xw0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5067Du0.class == obj.getClass()) {
            C5067Du0 c5067Du0 = (C5067Du0) obj;
            if (this.f39681a == c5067Du0.f39681a && this.f39682b == c5067Du0.f39682b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f39681a, this.f39682b);
    }
}
