package ig;

import java.util.List;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public final class C13734d {

    @NotNull
    public final yf.j f92214a;

    @Nullable
    public final Bf.e f92215b;

    public final long f92216c;

    @NotNull
    public final List<StackTraceElement> f92217d;

    @NotNull
    public final String f92218e;

    @Nullable
    public final Thread f92219f;

    @Nullable
    public final Bf.e f92220g;

    @NotNull
    public final List<StackTraceElement> f92221h;

    public C13734d(@NotNull C13735e c13735e, @NotNull yf.j jVar) {
        this.f92214a = jVar;
        this.f92215b = c13735e.d();
        this.f92216c = c13735e.f92223b;
        this.f92217d = c13735e.e();
        this.f92218e = c13735e.g();
        this.f92219f = c13735e.lastObservedThread;
        this.f92220g = c13735e.f();
        this.f92221h = c13735e.h();
    }

    @NotNull
    public final yf.j a() {
        return this.f92214a;
    }

    @Nullable
    public final Bf.e b() {
        return this.f92215b;
    }

    @NotNull
    public final List<StackTraceElement> c() {
        return this.f92217d;
    }

    @Nullable
    public final Bf.e d() {
        return this.f92220g;
    }

    @Nullable
    public final Thread e() {
        return this.f92219f;
    }

    public final long f() {
        return this.f92216c;
    }

    @NotNull
    public final String g() {
        return this.f92218e;
    }

    @Lf.j(name = "lastObservedStackTrace")
    @NotNull
    public final List<StackTraceElement> h() {
        return this.f92221h;
    }
}
