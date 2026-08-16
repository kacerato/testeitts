package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.Objects;

public final class E40 {

    public final Origin f39745a;

    public final Position f39746b;

    public E40(Origin origin, Position position) {
        this.f39745a = origin;
        this.f39746b = position;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof E40) {
            E40 e40 = (E40) obj;
            if (Objects.equals(e40.f39745a, this.f39745a) && Objects.equals(e40.f39746b, this.f39746b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f39746b.hashCode() + (this.f39745a.hashCode() * 13);
    }
}
