package Vf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class p implements r<Double> {

    public final double f26906b;

    public final double f26907c;

    public p(double d10, double d11) {
        this.f26906b = d10;
        this.f26907c = d11;
    }

    private final boolean e(double d10, double d11) {
        return d10 <= d11;
    }

    public boolean a(double d10) {
        return d10 >= this.f26906b && d10 < this.f26907c;
    }

    @Override
    @NotNull
    public Double b() {
        return Double.valueOf(this.f26907c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return a(((Number) comparable).doubleValue());
    }

    @Override
    @NotNull
    public Double getStart() {
        return Double.valueOf(this.f26906b);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof p) {
            if (!isEmpty() || !((p) obj).isEmpty()) {
                p pVar = (p) obj;
                if (this.f26906b != pVar.f26906b || this.f26907c != pVar.f26907c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Double.hashCode(this.f26906b) * 31) + Double.hashCode(this.f26907c);
    }

    @Override
    public boolean isEmpty() {
        return this.f26906b >= this.f26907c;
    }

    @NotNull
    public String toString() {
        return this.f26906b + "..<" + this.f26907c;
    }
}
