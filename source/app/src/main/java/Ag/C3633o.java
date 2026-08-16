package ag;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C3633o {

    @NotNull
    public final String f32159a;

    @NotNull
    public final Vf.l f32160b;

    public C3633o(@NotNull String value, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(value, "value");
        kotlin.jvm.internal.M.p(range, "range");
        this.f32159a = value;
        this.f32160b = range;
    }

    public static C3633o d(C3633o c3633o, String str, Vf.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = c3633o.f32159a;
        }
        if ((i10 & 2) != 0) {
            lVar = c3633o.f32160b;
        }
        return c3633o.c(str, lVar);
    }

    @NotNull
    public final String a() {
        return this.f32159a;
    }

    @NotNull
    public final Vf.l b() {
        return this.f32160b;
    }

    @NotNull
    public final C3633o c(@NotNull String value, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(value, "value");
        kotlin.jvm.internal.M.p(range, "range");
        return new C3633o(value, range);
    }

    @NotNull
    public final Vf.l e() {
        return this.f32160b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3633o)) {
            return false;
        }
        C3633o c3633o = (C3633o) obj;
        return kotlin.jvm.internal.M.g(this.f32159a, c3633o.f32159a) && kotlin.jvm.internal.M.g(this.f32160b, c3633o.f32160b);
    }

    @NotNull
    public final String f() {
        return this.f32159a;
    }

    public int hashCode() {
        return (this.f32159a.hashCode() * 31) + this.f32160b.hashCode();
    }

    @NotNull
    public String toString() {
        return "MatchGroup(value=" + this.f32159a + ", range=" + ((Object) this.f32160b) + ')';
    }
}
