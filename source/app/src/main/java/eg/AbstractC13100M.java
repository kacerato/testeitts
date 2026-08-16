package eg;

import kotlin.jvm.internal.C14026x;
import mg.C14251l;
import mg.C14257s;
import mg.C14258t;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16183a;
import yf.AbstractC16184b;
import yf.g;
import yf.j;

public abstract class AbstractC13100M extends AbstractC16183a implements yf.g {

    @NotNull
    public static final a Key = new a(null);

    @InterfaceC14441w
    public static final class a extends AbstractC16184b<yf.g, AbstractC13100M> {

        public static final class C1593a extends kotlin.jvm.internal.O implements Mf.l<j.b, AbstractC13100M> {

            public static final C1593a f85626b = new C1593a();

            public C1593a() {
                super(1);
            }

            @Override
            @Nullable
            public final AbstractC13100M invoke(@NotNull j.b bVar) {
                if (bVar instanceof AbstractC13100M) {
                    return (AbstractC13100M) bVar;
                }
                return null;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        public a() {
            super(yf.g.f130247J8, C1593a.f85626b);
        }
    }

    public AbstractC13100M() {
        super(yf.g.f130247J8);
    }

    public abstract void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable);

    @F0
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        dispatch(jVar, runnable);
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> cVar) {
        return (E) g.a.b(this, cVar);
    }

    @Override
    @NotNull
    public final <T> yf.f<T> interceptContinuation(@NotNull yf.f<? super T> fVar) {
        return new C14251l(this, fVar);
    }

    public boolean isDispatchNeeded(@NotNull yf.j jVar) {
        return true;
    }

    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return new C14257s(this, i10);
    }

    @Override
    @NotNull
    public yf.j minusKey(@NotNull j.c<?> cVar) {
        return g.a.c(this, cVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    @NotNull
    public final AbstractC13100M plus(@NotNull AbstractC13100M abstractC13100M) {
        return abstractC13100M;
    }

    @Override
    public final void releaseInterceptedContinuation(@NotNull yf.f<?> fVar) {
        kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((C14251l) fVar).w();
    }

    @NotNull
    public String toString() {
        return W.a(this) + '@' + W.b(this);
    }
}
