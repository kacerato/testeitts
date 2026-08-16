package Vf;

import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class e implements f<Float> {

    public final float f26880b;

    public final float f26881c;

    public e(float f10, float f11) {
        this.f26880b = f10;
        this.f26881c = f11;
    }

    @Override
    public boolean a(Float f10, Float f11) {
        return e(f10.floatValue(), f11.floatValue());
    }

    public boolean b(float f10) {
        return f10 >= this.f26880b && f10 <= this.f26881c;
    }

    @Override
    @NotNull
    public Float getEndInclusive() {
        return Float.valueOf(this.f26881c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return b(((Number) comparable).floatValue());
    }

    @Override
    @NotNull
    public Float getStart() {
        return Float.valueOf(this.f26880b);
    }

    public boolean e(float f10, float f11) {
        return f10 <= f11;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof e) {
            if (!isEmpty() || !((e) obj).isEmpty()) {
                e eVar = (e) obj;
                if (this.f26880b != eVar.f26880b || this.f26881c != eVar.f26881c) {
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
        return (Float.hashCode(this.f26880b) * 31) + Float.hashCode(this.f26881c);
    }

    @Override
    public boolean isEmpty() {
        return this.f26880b > this.f26881c;
    }

    @NotNull
    public String toString() {
        return this.f26880b + ClasspathEntry.DOT_DOT + this.f26881c;
    }
}
