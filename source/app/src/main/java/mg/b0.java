package mg;

import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@InterfaceC14410f0
public final class b0 implements j.c<a0<?>> {

    @NotNull
    public final ThreadLocal<?> f97055b;

    public b0(@NotNull ThreadLocal<?> threadLocal) {
        this.f97055b = threadLocal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static b0 c(b0 b0Var, ThreadLocal threadLocal, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            threadLocal = b0Var.f97055b;
        }
        return b0Var.b(threadLocal);
    }

    public final ThreadLocal<?> a() {
        return this.f97055b;
    }

    @NotNull
    public final b0 b(@NotNull ThreadLocal<?> threadLocal) {
        return new b0(threadLocal);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b0) && kotlin.jvm.internal.M.g(this.f97055b, ((b0) obj).f97055b);
    }

    public int hashCode() {
        return this.f97055b.hashCode();
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + ((Object) this.f97055b) + ')';
    }
}
