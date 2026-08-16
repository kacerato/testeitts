package yf;

import Mf.p;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@InterfaceC14422l0(version = "1.3")
public interface g extends j.b {

    @NotNull
    public static final b f130247J8 = b.f130248b;

    public static final class a {
        public static <R> R a(@NotNull g gVar, R r10, @NotNull p<? super R, ? super j.b, ? extends R> operation) {
            M.p(operation, "operation");
            return (R) j.b.a.a(gVar, r10, operation);
        }

        @Nullable
        public static <E extends j.b> E b(@NotNull g gVar, @NotNull j.c<E> key) {
            E e10;
            M.p(key, "key");
            if (!(key instanceof AbstractC16184b)) {
                if (g.f130247J8 != key) {
                    return null;
                }
                M.n(gVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return gVar;
            }
            AbstractC16184b abstractC16184b = (AbstractC16184b) key;
            if (!abstractC16184b.a(gVar.getKey()) || (e10 = (E) abstractC16184b.b(gVar)) == null) {
                return null;
            }
            return e10;
        }

        @NotNull
        public static j c(@NotNull g gVar, @NotNull j.c<?> key) {
            M.p(key, "key");
            if (!(key instanceof AbstractC16184b)) {
                return g.f130247J8 == key ? l.f130251b : gVar;
            }
            AbstractC16184b abstractC16184b = (AbstractC16184b) key;
            return (!abstractC16184b.a(gVar.getKey()) || abstractC16184b.b(gVar) == null) ? gVar : l.f130251b;
        }

        @NotNull
        public static j d(@NotNull g gVar, @NotNull j context) {
            M.p(context, "context");
            return j.b.a.d(gVar, context);
        }

        public static void e(@NotNull g gVar, @NotNull f<?> continuation) {
            M.p(continuation, "continuation");
        }
    }

    public static final class b implements j.c<g> {

        public static final b f130248b = new b();
    }

    @Nullable
    <E extends j.b> E get(@NotNull j.c<E> cVar);

    @NotNull
    <T> f<T> interceptContinuation(@NotNull f<? super T> fVar);

    @NotNull
    j minusKey(@NotNull j.c<?> cVar);

    void releaseInterceptedContinuation(@NotNull f<?> fVar);
}
