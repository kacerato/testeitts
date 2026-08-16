package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.origin.Origin;

public final class U1 extends GraphNode {

    public final Origin f57017c;

    public U1(Origin origin) {
        super(false);
        this.f57017c = origin;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof U1) {
            return ((U1) obj).f57017c.equals(this.f57017c);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f57017c.hashCode();
    }

    @Override
    public final String toString() {
        return this.f57017c.toString();
    }
}
