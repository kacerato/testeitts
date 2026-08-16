package com.android.tools.r8.naming;

import com.android.tools.r8.position.Position;

public final class E0 implements Position {

    public final int f55606a;

    public E0(int i10) {
        this.f55606a = i10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof E0) && this.f55606a == ((E0) obj).f55606a;
    }

    @Override
    public final String getDescription() {
        return "line " + this.f55606a;
    }

    public final int hashCode() {
        return this.f55606a;
    }
}
