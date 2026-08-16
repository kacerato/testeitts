package nf;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Kf.f(couldBeConvertedToExplicitExport = true)
public final class Z<A, B> implements Serializable {

    public final A f98199b;

    public final B f98200c;

    public Z(A a10, B b10) {
        this.f98199b = a10;
        this.f98200c = b10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Z d(Z z10, Object obj, Object obj2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = z10.f98199b;
        }
        if ((i10 & 2) != 0) {
            obj2 = z10.f98200c;
        }
        return z10.c(obj, obj2);
    }

    public final A a() {
        return this.f98199b;
    }

    public final B b() {
        return this.f98200c;
    }

    @NotNull
    public final Z<A, B> c(A a10, B b10) {
        return new Z<>(a10, b10);
    }

    public final A e() {
        return this.f98199b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z10 = (Z) obj;
        return kotlin.jvm.internal.M.g(this.f98199b, z10.f98199b) && kotlin.jvm.internal.M.g(this.f98200c, z10.f98200c);
    }

    public final B f() {
        return this.f98200c;
    }

    public int hashCode() {
        A a10 = this.f98199b;
        int hashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f98200c;
        return hashCode + (b10 != null ? b10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + ((Object) this.f98199b) + ", " + ((Object) this.f98200c) + ')';
    }
}
