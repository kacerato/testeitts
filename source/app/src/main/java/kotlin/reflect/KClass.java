package kotlin.reflect;

import Wf.InterfaceC3184b;
import Wf.c;
import Wf.f;
import Wf.g;
import Wf.h;
import Wf.r;
import Wf.s;
import Wf.v;
import java.util.Collection;
import java.util.List;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface KClass<T> extends g, InterfaceC3184b, f {

    public static final class a {
        @InterfaceC14422l0(version = "1.3")
        public static void a() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void b() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void c() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void d() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void e() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void f() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void g() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void h() {
        }

        @InterfaceC14422l0(version = "1.4")
        public static void i() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void j() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void k() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void l() {
        }

        @InterfaceC14422l0(version = "1.5")
        public static void m() {
        }
    }

    @Nullable
    T A();

    boolean B();

    boolean C();

    @InterfaceC14422l0(version = "1.1")
    boolean K(@Nullable Object obj);

    boolean O();

    boolean Q();

    @NotNull
    List<r> R();

    boolean U();

    boolean d();

    boolean equals(@Nullable Object obj);

    @NotNull
    Collection<h<T>> getConstructors();

    @Override
    @NotNull
    Collection<c<?>> getMembers();

    @Nullable
    String getQualifiedName();

    @Nullable
    String getSimpleName();

    @NotNull
    List<s> getTypeParameters();

    @Nullable
    v getVisibility();

    int hashCode();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    @NotNull
    Collection<KClass<?>> x();

    @NotNull
    List<KClass<? extends T>> z();
}
