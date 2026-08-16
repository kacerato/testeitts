package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14334A {

    @NotNull
    public C14341f f97545a;

    @NotNull
    public C14341f f97546b;

    public C14334A(@NotNull C14341f origin, @NotNull C14341f direction) {
        M.p(origin, "origin");
        M.p(direction, "direction");
        this.f97545a = origin;
        this.f97546b = direction;
    }

    public static C14334A d(C14334A c14334a, C14341f c14341f, C14341f c14341f2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c14341f = c14334a.f97545a;
        }
        if ((i10 & 2) != 0) {
            c14341f2 = c14334a.f97546b;
        }
        return c14334a.c(c14341f, c14341f2);
    }

    @NotNull
    public final C14341f a() {
        return this.f97545a;
    }

    @NotNull
    public final C14341f b() {
        return this.f97546b;
    }

    @NotNull
    public final C14334A c(@NotNull C14341f origin, @NotNull C14341f direction) {
        M.p(origin, "origin");
        M.p(direction, "direction");
        return new C14334A(origin, direction);
    }

    @NotNull
    public final C14341f e() {
        return this.f97546b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14334A)) {
            return false;
        }
        C14334A c14334a = (C14334A) obj;
        return M.g(this.f97545a, c14334a.f97545a) && M.g(this.f97546b, c14334a.f97546b);
    }

    @NotNull
    public final C14341f f() {
        return this.f97545a;
    }

    public final void g(@NotNull C14341f c14341f) {
        M.p(c14341f, "<set-?>");
        this.f97546b = c14341f;
    }

    public final void h(@NotNull C14341f c14341f) {
        M.p(c14341f, "<set-?>");
        this.f97545a = c14341f;
    }

    public int hashCode() {
        return (this.f97545a.hashCode() * 31) + this.f97546b.hashCode();
    }

    @NotNull
    public String toString() {
        return "Ray(origin=" + ((Object) this.f97545a) + ", direction=" + ((Object) this.f97546b) + ")";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C14334A(C14341f c14341f, C14341f c14341f2, int i10, C14026x c14026x) {
        this(c14341f, c14341f2);
        if ((i10 & 1) != 0) {
            c14341f = new C14341f(0.0f, 0.0f, 0.0f, 7, null);
        }
    }
}
