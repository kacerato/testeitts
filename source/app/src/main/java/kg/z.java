package kg;

import jg.InterfaceC13843j;
import mg.Z;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class z<T> implements InterfaceC13843j<T> {

    @NotNull
    public final yf.j f95223b;

    @NotNull
    public final Object f95224c;

    @NotNull
    public final Mf.p<T, yf.f<? super P0>, Object> f95225d;

    @Bf.f(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", i = {}, l = {212}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<T, yf.f<? super P0>, Object> {

        public int f95226b;

        public Object f95227c;

        public final InterfaceC13843j<T> f95228d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95228d = interfaceC13843j;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f95228d, fVar);
            aVar.f95227c = obj;
            return aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95226b;
            if (i10 == 0) {
                C14418j0.n(obj);
                Object obj2 = this.f95227c;
                InterfaceC13843j<T> interfaceC13843j = this.f95228d;
                this.f95226b = 1;
                if (interfaceC13843j.emit(obj2, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invoke(T t10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(t10, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    public z(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.j jVar) {
        this.f95223b = jVar;
        this.f95224c = Z.b(jVar);
        this.f95225d = new a(interfaceC13843j, null);
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        Object c10 = C13983e.c(this.f95223b, t10, this.f95224c, this.f95225d, fVar);
        return c10 == Af.d.l() ? c10 : P0.f98194a;
    }
}
