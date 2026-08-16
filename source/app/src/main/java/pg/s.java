package pg;

import eg.C13123k;
import eg.C13135q;
import eg.S;
import eg.T;
import eg.U;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public final class s<R> extends t<R> {

    @NotNull
    public final C13135q<R> f103961i;

    @Bf.f(c = "kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$initSelectResult$1", f = "SelectOld.kt", i = {}, l = {71}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f103962b;

        public final s<R> f103963c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s<R> sVar, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f103963c = sVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f103963c, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f103962b;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    s<R> sVar = this.f103963c;
                    this.f103962b = 1;
                    obj = sVar.X(this);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                p.c(this.f103963c.f103961i, obj);
                return P0.f98194a;
            } catch (Throwable th2) {
                p.d(this.f103963c.f103961i, th2);
                return P0.f98194a;
            }
        }
    }

    public s(@NotNull yf.f<? super R> fVar) {
        super(fVar.getContext());
        this.f103961i = new C13135q<>(Af.c.e(fVar), 1);
    }

    @InterfaceC14410f0
    public final void q0(@NotNull Throwable th2) {
        C13135q<R> c13135q = this.f103961i;
        C14416i0.a aVar = C14416i0.f98201c;
        c13135q.resumeWith(C14416i0.b(C14418j0.a(th2)));
    }

    @InterfaceC14410f0
    @Nullable
    public final Object r0() {
        if (this.f103961i.d()) {
            return this.f103961i.D();
        }
        C13123k.f(T.a(getContext()), null, U.UNDISPATCHED, new a(this, null), 1, null);
        return this.f103961i.D();
    }
}
