package pf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14968d0<T> {

    public final int f103849a;

    public final T f103850b;

    public C14968d0(int i10, T t10) {
        this.f103849a = i10;
        this.f103850b = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C14968d0 d(C14968d0 c14968d0, int i10, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = c14968d0.f103849a;
        }
        if ((i11 & 2) != 0) {
            obj = c14968d0.f103850b;
        }
        return c14968d0.c(i10, obj);
    }

    public final int a() {
        return this.f103849a;
    }

    public final T b() {
        return this.f103850b;
    }

    @NotNull
    public final C14968d0<T> c(int i10, T t10) {
        return new C14968d0<>(i10, t10);
    }

    public final int e() {
        return this.f103849a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14968d0)) {
            return false;
        }
        C14968d0 c14968d0 = (C14968d0) obj;
        return this.f103849a == c14968d0.f103849a && kotlin.jvm.internal.M.g(this.f103850b, c14968d0.f103850b);
    }

    public final T f() {
        return this.f103850b;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.f103849a) * 31;
        T t10 = this.f103850b;
        return hashCode + (t10 == null ? 0 : t10.hashCode());
    }

    @NotNull
    public String toString() {
        return "IndexedValue(index=" + this.f103849a + ", value=" + ((Object) this.f103850b) + ')';
    }
}
