package kotlin.jvm.internal;

import java.util.Collection;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.1")
public final class d0 implements InterfaceC14023u {

    @NotNull
    public final Class<?> f95728b;

    @NotNull
    public final String f95729c;

    public d0(@NotNull Class<?> jClass, @NotNull String moduleName) {
        M.p(jClass, "jClass");
        M.p(moduleName, "moduleName");
        this.f95728b = jClass;
        this.f95729c = moduleName;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof d0) && M.g(f(), ((d0) obj).f());
    }

    @Override
    @NotNull
    public Class<?> f() {
        return this.f95728b;
    }

    @Override
    @NotNull
    public Collection<Wf.c<?>> getMembers() {
        throw new KotlinReflectionNotSupportedError();
    }

    public int hashCode() {
        return f().hashCode();
    }

    @NotNull
    public String toString() {
        return f().toString() + n0.f95758b;
    }
}
