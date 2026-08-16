package yf;

import Mf.p;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class h {

    @t0({"SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n*L\n1#1,161:1\n*E\n"})
    public static final class a<T> implements f<T> {

        public final j f130249b;

        public final Mf.l<C14416i0<? extends T>, P0> f130250c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(j jVar, Mf.l<? super C14416i0<? extends T>, P0> lVar) {
            this.f130249b = jVar;
            this.f130250c = lVar;
        }

        @Override
        public j getContext() {
            return this.f130249b;
        }

        @Override
        public void resumeWith(Object obj) {
            this.f130250c.invoke(C14416i0.a(obj));
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> f<T> a(j context, Mf.l<? super C14416i0<? extends T>, P0> resumeWith) {
        M.p(context, "context");
        M.p(resumeWith, "resumeWith");
        return new a(context, resumeWith);
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <T> f<P0> b(@NotNull Mf.l<? super f<? super T>, ? extends Object> lVar, @NotNull f<? super T> completion) {
        M.p(lVar, "<this>");
        M.p(completion, "completion");
        return new n(Af.c.e(Af.c.b(lVar, completion)), Af.d.l());
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R, T> f<P0> c(@NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar, R r10, @NotNull f<? super T> completion) {
        M.p(pVar, "<this>");
        M.p(completion, "completion");
        return new n(Af.c.e(Af.c.c(pVar, r10, completion)), Af.d.l());
    }

    public static final j d() {
        throw new NotImplementedError("Implemented as intrinsic");
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static void e() {
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> void f(f<? super T> fVar, T t10) {
        M.p(fVar, "<this>");
        C14416i0.a aVar = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(t10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> void g(f<? super T> fVar, Throwable exception) {
        M.p(fVar, "<this>");
        M.p(exception, "exception");
        C14416i0.a aVar = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(C14418j0.a(exception)));
    }

    @InterfaceC14422l0(version = "1.3")
    public static final <T> void h(@NotNull Mf.l<? super f<? super T>, ? extends Object> lVar, @NotNull f<? super T> completion) {
        M.p(lVar, "<this>");
        M.p(completion, "completion");
        f e10 = Af.c.e(Af.c.b(lVar, completion));
        P0 p02 = P0.f98194a;
        C14416i0.a aVar = C14416i0.f98201c;
        e10.resumeWith(C14416i0.b(p02));
    }

    @InterfaceC14422l0(version = "1.3")
    public static final <R, T> void i(@NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar, R r10, @NotNull f<? super T> completion) {
        M.p(pVar, "<this>");
        M.p(completion, "completion");
        f e10 = Af.c.e(Af.c.c(pVar, r10, completion));
        P0 p02 = P0.f98194a;
        C14416i0.a aVar = C14416i0.f98201c;
        e10.resumeWith(C14416i0.b(p02));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> Object j(Mf.l<? super f<? super T>, P0> lVar, f<? super T> fVar) {
        J.e(0);
        n nVar = new n(Af.c.e(fVar));
        lVar.invoke(nVar);
        Object a10 = nVar.a();
        if (a10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        J.e(1);
        return a10;
    }
}
