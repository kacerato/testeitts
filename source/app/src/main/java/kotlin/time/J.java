package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public final class J<T> {

    public final T f95837a;

    public final long f95838b;

    public J(Object obj, long j10, C14026x c14026x) {
        this(obj, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static J d(J j10, Object obj, long j11, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = j10.f95837a;
        }
        if ((i10 & 2) != 0) {
            j11 = j10.f95838b;
        }
        return j10.c(obj, j11);
    }

    public final T a() {
        return this.f95837a;
    }

    public final long b() {
        return this.f95838b;
    }

    @NotNull
    public final J<T> c(T t10, long j10) {
        return new J<>(t10, j10, null);
    }

    public final long e() {
        return this.f95838b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J)) {
            return false;
        }
        J j10 = (J) obj;
        return M.g(this.f95837a, j10.f95837a) && C14036h.u(this.f95838b, j10.f95838b);
    }

    public final T f() {
        return this.f95837a;
    }

    public int hashCode() {
        T t10 = this.f95837a;
        return ((t10 == null ? 0 : t10.hashCode()) * 31) + C14036h.O(this.f95838b);
    }

    @NotNull
    public String toString() {
        return "TimedValue(value=" + ((Object) this.f95837a) + ", duration=" + ((Object) C14036h.h0(this.f95838b)) + ')';
    }

    public J(T t10, long j10) {
        this.f95837a = t10;
        this.f95838b = j10;
    }
}
