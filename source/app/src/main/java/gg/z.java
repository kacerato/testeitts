package gg;

import eg.C13099L;
import eg.C13135q;
import eg.F0;
import eg.InterfaceC13133p;
import eg.InterfaceC13153z0;
import eg.K0;
import eg.S;
import eg.U;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"})
public final class z {

    @Bf.f(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", i = {0, 0}, l = {153}, m = "awaitClose", n = {"$this$awaitClose", "block"}, s = {"L$0", "L$1"})
    public static final class a extends Bf.d {

        public Object f89922b;

        public Object f89923c;

        public Object f89924d;

        public int f89925e;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89924d = obj;
            this.f89925e |= Integer.MIN_VALUE;
            return z.a(null, null, this);
        }
    }

    public static final class b extends O implements Mf.a<P0> {

        public static final b f89926b = new b();

        public b() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
        }
    }

    public static final class c extends O implements Mf.l<Throwable, P0> {

        public final InterfaceC13133p<P0> f89927b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC13133p<? super P0> interfaceC13133p) {
            super(1);
            this.f89927b = interfaceC13133p;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            InterfaceC13133p<P0> interfaceC13133p = this.f89927b;
            C14416i0.a aVar = C14416i0.f98201c;
            interfaceC13133p.resumeWith(C14416i0.b(P0.f98194a));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(@NotNull InterfaceC13358B<?> interfaceC13358B, @NotNull Mf.a<P0> aVar, @NotNull yf.f<? super P0> fVar) {
        a aVar2;
        int i10;
        try {
            if (fVar instanceof a) {
                aVar2 = (a) fVar;
                int i11 = aVar2.f89925e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar2.f89925e = i11 - Integer.MIN_VALUE;
                    Object obj = aVar2.f89924d;
                    Object l10 = Af.d.l();
                    i10 = aVar2.f89925e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        if (aVar2.getContext().get(K0.f85619y4) != interfaceC13358B) {
                            throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
                        }
                        aVar2.f89922b = interfaceC13358B;
                        aVar2.f89923c = aVar;
                        aVar2.f89925e = 1;
                        C13135q c13135q = new C13135q(Af.c.e(aVar2), 1);
                        c13135q.O();
                        interfaceC13358B.F(new c(c13135q));
                        Object D10 = c13135q.D();
                        if (D10 == Af.d.l()) {
                            Bf.h.c(aVar2);
                        }
                        if (D10 == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar = (Mf.a) aVar2.f89923c;
                        C14418j0.n(obj);
                    }
                    aVar.invoke();
                    return P0.f98194a;
                }
            }
            if (i10 != 0) {
            }
            aVar.invoke();
            return P0.f98194a;
        } catch (Throwable th2) {
            aVar.invoke();
            throw th2;
        }
        aVar2 = new a(fVar);
        Object obj2 = aVar2.f89924d;
        Object l102 = Af.d.l();
        i10 = aVar2.f89925e;
    }

    public static Object b(InterfaceC13358B interfaceC13358B, Mf.a aVar, yf.f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = b.f89926b;
        }
        return a(interfaceC13358B, aVar, fVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <E> InterfaceC13360D<E> c(@NotNull S s10, @NotNull yf.j jVar, int i10, @InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return e(s10, jVar, i10, i.SUSPEND, U.DEFAULT, null, pVar);
    }

    @F0
    @NotNull
    public static final <E> InterfaceC13360D<E> d(@NotNull S s10, @NotNull yf.j jVar, int i10, @NotNull U u10, @Nullable Mf.l<? super Throwable, P0> lVar, @InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return e(s10, jVar, i10, i.SUSPEND, u10, lVar, pVar);
    }

    @NotNull
    public static final <E> InterfaceC13360D<E> e(@NotNull S s10, @NotNull yf.j jVar, int i10, @NotNull i iVar, @NotNull U u10, @Nullable Mf.l<? super Throwable, P0> lVar, @InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        C13357A c13357a = new C13357A(C13099L.d(s10, jVar), o.d(i10, iVar, null, 4, null));
        if (lVar != null) {
            c13357a.w(lVar);
        }
        c13357a.B1(u10, c13357a, pVar);
        return c13357a;
    }

    public static InterfaceC13360D f(S s10, yf.j jVar, int i10, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c(s10, jVar, i10, pVar);
    }

    public static InterfaceC13360D g(S s10, yf.j jVar, int i10, U u10, Mf.l lVar, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        yf.j jVar2 = jVar;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            u10 = U.DEFAULT;
        }
        U u11 = u10;
        if ((i11 & 8) != 0) {
            lVar = null;
        }
        return d(s10, jVar2, i12, u11, lVar, pVar);
    }

    public static InterfaceC13360D h(S s10, yf.j jVar, int i10, i iVar, U u10, Mf.l lVar, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        yf.j jVar2 = jVar;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            iVar = i.SUSPEND;
        }
        i iVar2 = iVar;
        if ((i11 & 8) != 0) {
            u10 = U.DEFAULT;
        }
        U u11 = u10;
        if ((i11 & 16) != 0) {
            lVar = null;
        }
        return e(s10, jVar2, i12, iVar2, u11, lVar, pVar);
    }
}
