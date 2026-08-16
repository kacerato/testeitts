package nf;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Kf.f(couldBeConvertedToExplicitExport = true)
public final class C14439u0<A, B, C> implements Serializable {

    public final A f98222b;

    public final B f98223c;

    public final C f98224d;

    public C14439u0(A a10, B b10, C c10) {
        this.f98222b = a10;
        this.f98223c = b10;
        this.f98224d = c10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C14439u0 e(C14439u0 c14439u0, Object obj, Object obj2, Object obj3, int i10, Object obj4) {
        if ((i10 & 1) != 0) {
            obj = c14439u0.f98222b;
        }
        if ((i10 & 2) != 0) {
            obj2 = c14439u0.f98223c;
        }
        if ((i10 & 4) != 0) {
            obj3 = c14439u0.f98224d;
        }
        return c14439u0.d(obj, obj2, obj3);
    }

    public final A a() {
        return this.f98222b;
    }

    public final B b() {
        return this.f98223c;
    }

    public final C c() {
        return this.f98224d;
    }

    @NotNull
    public final C14439u0<A, B, C> d(A a10, B b10, C c10) {
        return new C14439u0<>(a10, b10, c10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14439u0)) {
            return false;
        }
        C14439u0 c14439u0 = (C14439u0) obj;
        return kotlin.jvm.internal.M.g(this.f98222b, c14439u0.f98222b) && kotlin.jvm.internal.M.g(this.f98223c, c14439u0.f98223c) && kotlin.jvm.internal.M.g(this.f98224d, c14439u0.f98224d);
    }

    public final A f() {
        return this.f98222b;
    }

    public final B g() {
        return this.f98223c;
    }

    public final C h() {
        return this.f98224d;
    }

    public int hashCode() {
        A a10 = this.f98222b;
        int hashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f98223c;
        int hashCode2 = (hashCode + (b10 == null ? 0 : b10.hashCode())) * 31;
        C c10 = this.f98224d;
        return hashCode2 + (c10 != null ? c10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + ((Object) this.f98222b) + ", " + ((Object) this.f98223c) + ", " + ((Object) this.f98224d) + ')';
    }
}
