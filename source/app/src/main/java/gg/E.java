package gg;

import eg.InterfaceC13112e0;
import mg.S;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface E<E> {

    public static final class a {
        public static boolean a(E e10, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return e10.J(th2);
        }

        @InterfaceC13112e0
        public static void b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull E<? super E> e10, E e11) {
            Object p10 = e10.p(e11);
            if (p.m(p10)) {
                return true;
            }
            Throwable f10 = p.f(p10);
            if (f10 == null) {
                return false;
            }
            throw S.o(f10);
        }
    }

    boolean A();

    void F(@NotNull Mf.l<? super Throwable, P0> lVar);

    boolean J(@Nullable Throwable th2);

    @Nullable
    Object M(E e10, @NotNull yf.f<? super P0> fVar);

    @NotNull
    pg.i<E, E<E>> j();

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    boolean offer(E e10);

    @NotNull
    Object p(E e10);
}
