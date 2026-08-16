package Vf;

import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class d implements f<Double> {

    public final double f26878b;

    public final double f26879c;

    public d(double d10, double d11) {
        this.f26878b = d10;
        this.f26879c = d11;
    }

    @Override
    public boolean a(Double d10, Double d11) {
        return e(d10.doubleValue(), d11.doubleValue());
    }

    public boolean b(double d10) {
        return d10 >= this.f26878b && d10 <= this.f26879c;
    }

    @Override
    @NotNull
    public Double getEndInclusive() {
        return Double.valueOf(this.f26879c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return b(((Number) comparable).doubleValue());
    }

    @Override
    @NotNull
    public Double getStart() {
        return Double.valueOf(this.f26878b);
    }

    public boolean e(double d10, double d11) {
        return d10 <= d11;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f26878b != dVar.f26878b || this.f26879c != dVar.f26879c) {
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
        return (Double.hashCode(this.f26878b) * 31) + Double.hashCode(this.f26879c);
    }

    @Override
    public boolean isEmpty() {
        return this.f26878b > this.f26879c;
    }

    @NotNull
    public String toString() {
        return this.f26878b + ClasspathEntry.DOT_DOT + this.f26879c;
    }
}
