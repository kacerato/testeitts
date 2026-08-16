package yf;

import Mf.p;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.g;
import yf.j;

@InterfaceC14422l0(version = "1.3")
public interface j {

    public static final class a {
        @NotNull
        public static j b(@NotNull j jVar, @NotNull j context) {
            M.p(context, "context");
            return context == l.f130251b ? jVar : (j) context.fold(jVar, new p() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    j c10;
                    c10 = j.a.c((j) obj, (j.b) obj2);
                    return c10;
                }
            });
        }

        public static j c(j acc, b element) {
            e eVar;
            M.p(acc, "acc");
            M.p(element, "element");
            j minusKey = acc.minusKey(element.getKey());
            l lVar = l.f130251b;
            if (minusKey == lVar) {
                return element;
            }
            g.b bVar = g.f130247J8;
            g gVar = (g) minusKey.get(bVar);
            if (gVar == null) {
                eVar = new e(minusKey, element);
            } else {
                j minusKey2 = minusKey.minusKey(bVar);
                if (minusKey2 == lVar) {
                    return new e(element, gVar);
                }
                eVar = new e(new e(minusKey2, element), gVar);
            }
            return eVar;
        }
    }

    public interface b extends j {

        public static final class a {
            public static <R> R a(@NotNull b bVar, R r10, @NotNull p<? super R, ? super b, ? extends R> operation) {
                M.p(operation, "operation");
                return operation.invoke(r10, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public static <E extends b> E b(@NotNull b bVar, @NotNull c<E> key) {
                M.p(key, "key");
                if (!M.g(bVar.getKey(), key)) {
                    return null;
                }
                M.n(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            @NotNull
            public static j c(@NotNull b bVar, @NotNull c<?> key) {
                M.p(key, "key");
                return M.g(bVar.getKey(), key) ? l.f130251b : bVar;
            }

            @NotNull
            public static j d(@NotNull b bVar, @NotNull j context) {
                M.p(context, "context");
                return a.b(bVar, context);
            }
        }

        @Override
        <R> R fold(R r10, @NotNull p<? super R, ? super b, ? extends R> pVar);

        @Override
        @Nullable
        <E extends b> E get(@NotNull c<E> cVar);

        @NotNull
        c<?> getKey();

        @Override
        @NotNull
        j minusKey(@NotNull c<?> cVar);
    }

    public interface c<E extends b> {
    }

    <R> R fold(R r10, @NotNull p<? super R, ? super b, ? extends R> pVar);

    @Nullable
    <E extends b> E get(@NotNull c<E> cVar);

    @NotNull
    j minusKey(@NotNull c<?> cVar);

    @NotNull
    j plus(@NotNull j jVar);
}
