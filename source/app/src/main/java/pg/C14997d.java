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
public final class C14997d<R> extends l<R> {

    @NotNull
    public final C13135q<R> f103913h;

    @Bf.f(c = "kotlinx.coroutines.selects.SelectBuilderImpl$getResult$1", f = "SelectOld.kt", i = {}, l = {43}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f103914b;

        public final C14997d<R> f103915c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(C14997d<R> c14997d, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f103915c = c14997d;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f103915c, fVar);
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
            int i10 = this.f103914b;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    C14997d<R> c14997d = this.f103915c;
                    this.f103914b = 1;
                    obj = c14997d.X(this);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                p.c(this.f103915c.f103913h, obj);
                return P0.f98194a;
            } catch (Throwable th2) {
                p.d(this.f103915c.f103913h, th2);
                return P0.f98194a;
            }
        }
    }

    public C14997d(@NotNull yf.f<? super R> fVar) {
        super(fVar.getContext());
        this.f103913h = new C13135q<>(Af.c.e(fVar), 1);
    }

    @InterfaceC14410f0
    @Nullable
    public final Object o0() {
        if (this.f103913h.d()) {
            return this.f103913h.D();
        }
        C13123k.f(T.a(getContext()), null, U.UNDISPATCHED, new a(this, null), 1, null);
        return this.f103913h.D();
    }

    @InterfaceC14410f0
    public final void p0(@NotNull Throwable th2) {
        C13135q<R> c13135q = this.f103913h;
        C14416i0.a aVar = C14416i0.f98201c;
        c13135q.resumeWith(C14416i0.b(C14418j0.a(th2)));
    }
}
