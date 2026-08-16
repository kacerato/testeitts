package mg;

import kotlin.jvm.internal.t0;
import kotlinx.coroutines.internal.UndeliveredElementException;
import nf.C14436t;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nOnUndeliveredElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnUndeliveredElement.kt\nkotlinx/coroutines/internal/OnUndeliveredElementKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,44:1\n75#2:45\n*S KotlinDebug\n*F\n+ 1 OnUndeliveredElement.kt\nkotlinx/coroutines/internal/OnUndeliveredElementKt\n*L\n22#1:45\n*E\n"})
public final class J {

    public static final class a extends kotlin.jvm.internal.O implements Mf.l<Throwable, P0> {

        public final Mf.l<E, P0> f97028b;

        public final E f97029c;

        public final yf.j f97030d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.l<? super E, P0> lVar, E e10, yf.j jVar) {
            super(1);
            this.f97028b = lVar;
            this.f97029c = e10;
            this.f97030d = jVar;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@NotNull Throwable th2) {
            J.b(this.f97028b, this.f97029c, this.f97030d);
        }
    }

    @NotNull
    public static final <E> Mf.l<Throwable, P0> a(@NotNull Mf.l<? super E, P0> lVar, E e10, @NotNull yf.j jVar) {
        return new a(lVar, e10, jVar);
    }

    public static final <E> void b(@NotNull Mf.l<? super E, P0> lVar, E e10, @NotNull yf.j jVar) {
        UndeliveredElementException c10 = c(lVar, e10, null);
        if (c10 != null) {
            eg.O.b(jVar, c10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E> UndeliveredElementException c(@NotNull Mf.l<? super E, P0> lVar, E e10, @Nullable UndeliveredElementException undeliveredElementException) {
        try {
            lVar.invoke(e10);
        } catch (Throwable th2) {
            if (undeliveredElementException == null || undeliveredElementException.getCause() == th2) {
                return new UndeliveredElementException("Exception in undelivered element handler for " + ((Object) e10), th2);
            }
            C14436t.a(undeliveredElementException, th2);
        }
        return undeliveredElementException;
    }

    public static UndeliveredElementException d(Mf.l lVar, Object obj, UndeliveredElementException undeliveredElementException, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            undeliveredElementException = null;
        }
        return c(lVar, obj, undeliveredElementException);
    }
}
