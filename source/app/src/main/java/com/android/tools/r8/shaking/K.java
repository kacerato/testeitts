package com.android.tools.r8.shaking;

public final class K {

    public static final K f56658c = new K(0);

    public static final K f56659d = new K(2);

    public static final K f56660e = new K(4);

    public static final K f56661f = new K(8);

    public final K f56662a;

    public final int f56663b;

    public K(int i10) {
        this.f56663b = i10;
        this.f56662a = (i10 & 1) != 0 ? this : new K(i10 | 1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && K.class == obj.getClass() && this.f56663b == ((K) obj).f56663b;
    }

    public final int hashCode() {
        return this.f56663b;
    }
}
