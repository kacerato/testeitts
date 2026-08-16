package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13092E {

    @Lf.g
    @Nullable
    public final Object f85605a;

    @Lf.g
    @NotNull
    public final Mf.l<Throwable, nf.P0> f85606b;

    /* JADX WARN: Multi-variable type inference failed */
    public C13092E(@Nullable Object obj, @NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        this.f85605a = obj;
        this.f85606b = lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13092E d(C13092E c13092e, Object obj, Mf.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = c13092e.f85605a;
        }
        if ((i10 & 2) != 0) {
            lVar = c13092e.f85606b;
        }
        return c13092e.c(obj, lVar);
    }

    @Nullable
    public final Object a() {
        return this.f85605a;
    }

    @NotNull
    public final Mf.l<Throwable, nf.P0> b() {
        return this.f85606b;
    }

    @NotNull
    public final C13092E c(@Nullable Object obj, @NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        return new C13092E(obj, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13092E)) {
            return false;
        }
        C13092E c13092e = (C13092E) obj;
        return kotlin.jvm.internal.M.g(this.f85605a, c13092e.f85605a) && kotlin.jvm.internal.M.g(this.f85606b, c13092e.f85606b);
    }

    public int hashCode() {
        Object obj = this.f85605a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f85606b.hashCode();
    }

    @NotNull
    public String toString() {
        return "CompletedWithCancellation(result=" + this.f85605a + ", onCancellation=" + ((Object) this.f85606b) + ')';
    }
}
