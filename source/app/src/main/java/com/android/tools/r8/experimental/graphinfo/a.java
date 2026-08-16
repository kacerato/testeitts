package com.android.tools.r8.experimental.graphinfo;

public final class a extends GraphNode {
    public a() {
        super(false);
    }

    @Override
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override
    public final int hashCode() {
        return 0;
    }

    @Override
    public final String toString() {
        return "cycle";
    }
}
