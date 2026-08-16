package eg;

import java.util.concurrent.CancellationException;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class G0 {

    public static final int f85608a = 0;

    public static final int f85609b = 1;

    public static final int f85610c = 2;

    public static final int f85611d = 3;

    @Bf.f(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a<T> extends Bf.q implements Mf.p<S, yf.f<? super T>, Object> {

        public int f85612b;

        public Object f85613c;

        public final Mf.a<T> f85614d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.a<? extends T> aVar, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f85614d = aVar;
        }

        @Override
        @NotNull
        public final yf.f<nf.P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f85614d, fVar);
            aVar.f85613c = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super T> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(nf.P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f85612b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            return G0.d(((S) this.f85613c).getCoroutineContext(), this.f85614d);
        }
    }

    @Nullable
    public static final <T> Object b(@NotNull yf.j jVar, @NotNull Mf.a<? extends T> aVar, @NotNull yf.f<? super T> fVar) {
        return C13119i.h(jVar, new a(aVar, null), fVar);
    }

    public static Object c(yf.j jVar, Mf.a aVar, yf.f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        return b(jVar, aVar, fVar);
    }

    public static final <T> T d(yf.j jVar, Mf.a<? extends T> aVar) {
        try {
            s1 s1Var = new s1(N0.B(jVar));
            s1Var.k();
            try {
                return aVar.invoke();
            } finally {
                s1Var.b();
            }
        } catch (InterruptedException e10) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e10);
        }
    }
}
