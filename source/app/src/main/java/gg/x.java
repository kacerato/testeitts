package gg;

import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.w0;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import ng.C14445a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class x<E> extends C13361a<E> {

    @NotNull
    public yf.f<? super P0> f89919f;

    public class a extends I implements Mf.q<x<?>, pg.m<?>, Object, P0> {

        public static final a f89920b = new a();

        public a() {
            super(3, x.class, "onSendRegFunction", "onSendRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull x<?> xVar, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            xVar.F1(mVar, obj);
        }

        @Override
        public P0 n(x<?> xVar, pg.m<?> mVar, Object obj) {
            b(xVar, mVar, obj);
            return P0.f98194a;
        }
    }

    public x(@NotNull yf.j jVar, @NotNull l<E> lVar, @NotNull Mf.p<? super InterfaceC13363c<E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        super(jVar, lVar, false);
        this.f89919f = Af.c.c(pVar, this, this);
    }

    public static void E1() {
    }

    public final void F1(pg.m<?> mVar, Object obj) {
        h1();
        super.j().c().n(this, mVar, obj);
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        boolean J10 = super.J(th2);
        start();
        return J10;
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        start();
        Object M10 = super.M(e10, fVar);
        return M10 == Af.d.l() ? M10 : P0.f98194a;
    }

    @Override
    public void h1() {
        C14445a.e(this.f89919f, this);
    }

    @Override
    @NotNull
    public pg.i<E, E<E>> j() {
        a aVar = a.f89920b;
        M.n(aVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new pg.j(this, (Mf.q) w0.q(aVar, 3), super.j().b(), null, 8, null);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        start();
        return super.offer(e10);
    }

    @Override
    @NotNull
    public Object p(E e10) {
        start();
        return super.p(e10);
    }
}
