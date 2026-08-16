package androidx.core.util;

import org.apache.commons.math3.geometry.VectorFormat;

public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f10, S s10) {
        this.first = f10;
        this.second = s10;
    }

    public static <A, B> Pair<A, B> create(A a10, B b10) {
        return new Pair<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
    }

    public int hashCode() {
        F f10 = this.first;
        int hashCode = f10 == null ? 0 : f10.hashCode();
        S s10 = this.second;
        return hashCode ^ (s10 != null ? s10.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + ((Object) this.first) + " " + ((Object) this.second) + VectorFormat.DEFAULT_SUFFIX;
    }
}
