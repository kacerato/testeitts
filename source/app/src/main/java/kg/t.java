package kg;

import ag.C3610D;
import eg.N0;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"})
public final class t<T> extends Bf.d implements InterfaceC13843j<T>, Bf.e {

    @Lf.g
    @NotNull
    public final InterfaceC13843j<T> f95207b;

    @Lf.g
    @NotNull
    public final yf.j f95208c;

    @Lf.g
    public final int f95209d;

    @Nullable
    public yf.j f95210e;

    @Nullable
    public yf.f<? super P0> f95211f;

    public static final class a extends O implements Mf.p<Integer, j.b, Integer> {

        public static final a f95212b = new a();

        public a() {
            super(2);
        }

        @NotNull
        public final Integer b(int i10, @NotNull j.b bVar) {
            return Integer.valueOf(i10 + 1);
        }

        @Override
        public Integer invoke(Integer num, j.b bVar) {
            return b(num.intValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.j jVar) {
        super(q.f95201b, yf.l.f130251b);
        this.f95207b = interfaceC13843j;
        this.f95208c = jVar;
        this.f95209d = ((Number) jVar.fold(0, a.f95212b)).intValue();
    }

    public final Object A(yf.f<? super P0> fVar, T t10) {
        yf.j context = fVar.getContext();
        N0.A(context);
        yf.j jVar = this.f95210e;
        if (jVar != context) {
            z(context, jVar, t10);
            this.f95210e = context;
        }
        this.f95211f = fVar;
        Mf.q a10 = u.a();
        InterfaceC13843j<T> interfaceC13843j = this.f95207b;
        M.n(interfaceC13843j, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        M.n(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object n10 = a10.n(interfaceC13843j, t10, this);
        if (!M.g(n10, Af.d.l())) {
            this.f95211f = null;
        }
        return n10;
    }

    public final void Q(l lVar, Object obj) {
        throw new IllegalStateException(C3610D.v("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((Object) lVar.f95194b) + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        try {
            Object A10 = A(fVar, t10);
            if (A10 == Af.d.l()) {
                Bf.h.c(fVar);
            }
            return A10 == Af.d.l() ? A10 : P0.f98194a;
        } catch (Throwable th2) {
            this.f95210e = new l(th2, fVar.getContext());
            throw th2;
        }
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        yf.f<? super P0> fVar = this.f95211f;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        yf.j jVar = this.f95210e;
        return jVar == null ? yf.l.f130251b : jVar;
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    @NotNull
    public Object invokeSuspend(@NotNull Object obj) {
        Throwable e10 = C14416i0.e(obj);
        if (e10 != null) {
            this.f95210e = new l(e10, getContext());
        }
        yf.f<? super P0> fVar = this.f95211f;
        if (fVar != null) {
            fVar.resumeWith(obj);
        }
        return Af.d.l();
    }

    @Override
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }

    public final void z(yf.j jVar, yf.j jVar2, T t10) {
        if (jVar2 instanceof l) {
            Q((l) jVar2, t10);
        }
        v.a(this, jVar);
    }
}
