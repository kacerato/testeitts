package Vf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class q implements r<Float> {

    public final float f26908b;

    public final float f26909c;

    public q(float f10, float f11) {
        this.f26908b = f10;
        this.f26909c = f11;
    }

    private final boolean e(float f10, float f11) {
        return f10 <= f11;
    }

    public boolean a(float f10) {
        return f10 >= this.f26908b && f10 < this.f26909c;
    }

    @Override
    @NotNull
    public Float b() {
        return Float.valueOf(this.f26909c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return a(((Number) comparable).floatValue());
    }

    @Override
    @NotNull
    public Float getStart() {
        return Float.valueOf(this.f26908b);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof q) {
            if (!isEmpty() || !((q) obj).isEmpty()) {
                q qVar = (q) obj;
                if (this.f26908b != qVar.f26908b || this.f26909c != qVar.f26909c) {
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
        return (Float.hashCode(this.f26908b) * 31) + Float.hashCode(this.f26909c);
    }

    @Override
    public boolean isEmpty() {
        return this.f26908b >= this.f26909c;
    }

    @NotNull
    public String toString() {
        return this.f26908b + "..<" + this.f26909c;
    }
}
