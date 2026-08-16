package nf;

import nf.C14416i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14425n<T, R> extends AbstractC14423m<T, R> implements yf.f<R> {

    @NotNull
    public Mf.q<? super AbstractC14423m<?, ?>, Object, ? super yf.f<Object>, ? extends Object> f98211b;

    @Nullable
    public Object f98212c;

    @Nullable
    public yf.f<Object> f98213d;

    @NotNull
    public Object f98214e;

    @kotlin.jvm.internal.t0({"SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n180#2,6:162\n*E\n"})
    public static final class a implements yf.f<Object> {

        public final yf.j f98215b;

        public final C14425n f98216c;

        public final Mf.q f98217d;

        public final yf.f f98218e;

        public a(yf.j jVar, C14425n c14425n, Mf.q qVar, yf.f fVar) {
            this.f98215b = jVar;
            this.f98216c = c14425n;
            this.f98217d = qVar;
            this.f98218e = fVar;
        }

        @Override
        public yf.j getContext() {
            return this.f98215b;
        }

        @Override
        public void resumeWith(Object obj) {
            this.f98216c.f98211b = this.f98217d;
            this.f98216c.f98213d = this.f98218e;
            this.f98216c.f98214e = obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C14425n(@NotNull Mf.q<? super AbstractC14423m<T, R>, ? super T, ? super yf.f<? super R>, ? extends Object> block, T t10) {
        super(null);
        Object obj;
        kotlin.jvm.internal.M.p(block, "block");
        this.f98211b = block;
        this.f98212c = t10;
        kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f98213d = this;
        obj = C14421l.f98210a;
        this.f98214e = obj;
    }

    @Override
    @Nullable
    public Object a(T t10, @NotNull yf.f<? super R> fVar) {
        kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f98213d = fVar;
        this.f98212c = t10;
        Object l10 = Af.d.l();
        if (l10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return l10;
    }

    @Override
    @Nullable
    public <U, S> Object c(@NotNull C14419k<U, S> c14419k, U u10, @NotNull yf.f<? super S> fVar) {
        Mf.q<AbstractC14423m<U, S>, U, yf.f<? super S>, Object> a10 = c14419k.a();
        kotlin.jvm.internal.M.n(a10, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<kotlin.DeepRecursiveScope<*, *>, kotlin.Any?, kotlin.Any?>");
        Mf.q<? super AbstractC14423m<?, ?>, Object, ? super yf.f<Object>, ? extends Object> qVar = this.f98211b;
        if (a10 != qVar) {
            this.f98211b = a10;
            kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.f98213d = j(qVar, fVar);
        } else {
            kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.f98213d = fVar;
        }
        this.f98212c = u10;
        Object l10 = Af.d.l();
        if (l10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return l10;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return yf.l.f130251b;
    }

    public final yf.f<Object> j(Mf.q<? super AbstractC14423m<?, ?>, Object, ? super yf.f<Object>, ? extends Object> qVar, yf.f<Object> fVar) {
        return new a(yf.l.f130251b, this, qVar, fVar);
    }

    public final R l() {
        Object obj;
        Object obj2;
        while (true) {
            R r10 = (R) this.f98214e;
            yf.f<Object> fVar = this.f98213d;
            if (fVar == null) {
                C14418j0.n(r10);
                return r10;
            }
            obj = C14421l.f98210a;
            if (C14416i0.d(obj, r10)) {
                try {
                    Mf.q<? super AbstractC14423m<?, ?>, Object, ? super yf.f<Object>, ? extends Object> qVar = this.f98211b;
                    Object obj3 = this.f98212c;
                    Object k10 = !(qVar instanceof Bf.a) ? Af.c.k(qVar, this, obj3, fVar) : ((Mf.q) kotlin.jvm.internal.w0.q(qVar, 3)).n(this, obj3, fVar);
                    if (k10 != Af.d.l()) {
                        C14416i0.a aVar = C14416i0.f98201c;
                        fVar.resumeWith(C14416i0.b(k10));
                    }
                } catch (Throwable th2) {
                    C14416i0.a aVar2 = C14416i0.f98201c;
                    fVar.resumeWith(C14416i0.b(C14418j0.a(th2)));
                }
            } else {
                obj2 = C14421l.f98210a;
                this.f98214e = obj2;
                fVar.resumeWith(r10);
            }
        }
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        this.f98213d = null;
        this.f98214e = obj;
    }
}
