package Wf;

import java.util.List;
import java.util.Map;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface c<R> extends InterfaceC3184b {

    public static final class a {
        @Ef.g
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

        @InterfaceC14422l0(version = "1.3")
        public static void g() {
        }
    }

    R call(@NotNull Object... objArr);

    R callBy(@NotNull Map<m, ? extends Object> map);

    @NotNull
    String getName();

    @NotNull
    List<m> getParameters();

    @NotNull
    r getReturnType();

    @NotNull
    List<s> getTypeParameters();

    @Nullable
    v getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
