package kg;

import eg.C13099L;
import gg.InterfaceC13358B;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.M;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.g;

public abstract class g<S, T> extends AbstractC13982d<T> {

    @Lf.g
    @NotNull
    public final InterfaceC13842i<S> f95108e;

    @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", i = {}, l = {152}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> {

        public int f95109b;

        public Object f95110c;

        public final g<S, T> f95111d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g<S, T> gVar, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95111d = gVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f95111d, fVar);
            aVar.f95110c = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95109b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j<? super T> interfaceC13843j = (InterfaceC13843j) this.f95110c;
                g<S, T> gVar = this.f95111d;
                this.f95109b = 1;
                if (gVar.q(interfaceC13843j, this) == l10) {
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
        public final Object invoke(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(@NotNull InterfaceC13842i<? extends S> interfaceC13842i, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(jVar, i10, iVar);
        this.f95108e = interfaceC13842i;
    }

    public static <S, T> Object n(g<S, T> gVar, InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super P0> fVar) {
        if (gVar.f95084c == -3) {
            yf.j context = fVar.getContext();
            yf.j e10 = C13099L.e(context, gVar.f95083b);
            if (M.g(e10, context)) {
                Object q10 = gVar.q(interfaceC13843j, fVar);
                return q10 == Af.d.l() ? q10 : P0.f98194a;
            }
            g.b bVar = yf.g.f130247J8;
            if (M.g(e10.get(bVar), context.get(bVar))) {
                Object p10 = gVar.p(interfaceC13843j, e10, fVar);
                return p10 == Af.d.l() ? p10 : P0.f98194a;
            }
        }
        Object a10 = super.a(interfaceC13843j, fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    public static <S, T> Object o(g<S, T> gVar, InterfaceC13358B<? super T> interfaceC13358B, yf.f<? super P0> fVar) {
        Object q10 = gVar.q(new w(interfaceC13358B), fVar);
        return q10 == Af.d.l() ? q10 : P0.f98194a;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        return n(this, interfaceC13843j, fVar);
    }

    @Override
    @Nullable
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        return o(this, interfaceC13358B, fVar);
    }

    public final Object p(InterfaceC13843j<? super T> interfaceC13843j, yf.j jVar, yf.f<? super P0> fVar) {
        InterfaceC13843j e10;
        e10 = C13983e.e(interfaceC13843j, fVar.getContext());
        Object d10 = C13983e.d(jVar, e10, null, new a(this, null), fVar, 4, null);
        return d10 == Af.d.l() ? d10 : P0.f98194a;
    }

    @Nullable
    public abstract Object q(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar);

    @Override
    @NotNull
    public String toString() {
        return ((Object) this.f95108e) + " -> " + super.toString();
    }
}
