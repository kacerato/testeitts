package eg;

import kotlin.KotlinNothingValueException;
import kotlin.time.C14036h;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@kotlin.jvm.internal.t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n314#2,11:174\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n106#1:163,11\n127#1:174,11\n*E\n"})
public final class C13108c0 {

    @Bf.f(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", i = {}, l = {163}, m = "awaitCancellation", n = {}, s = {})
    public static final class a extends Bf.d {

        public Object f85699b;

        public int f85700c;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f85699b = obj;
            this.f85700c |= Integer.MIN_VALUE;
            return C13108c0.a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(@NotNull yf.f<?> fVar) {
        a aVar;
        int i10;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f85700c;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f85700c = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f85699b;
                Object l10 = Af.d.l();
                i10 = aVar.f85700c;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    aVar.f85700c = 1;
                    C13135q c13135q = new C13135q(Af.c.e(aVar), 1);
                    c13135q.O();
                    Object D10 = c13135q.D();
                    if (D10 == Af.d.l()) {
                        Bf.h.c(aVar);
                    }
                    if (D10 == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                throw new KotlinNothingValueException();
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f85699b;
        Object l102 = Af.d.l();
        i10 = aVar.f85700c;
        if (i10 != 0) {
        }
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final Object b(long j10, @NotNull yf.f<? super nf.P0> fVar) {
        if (j10 <= 0) {
            return nf.P0.f98194a;
        }
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        if (j10 < Long.MAX_VALUE) {
            d(c13135q.getContext()).o(j10, c13135q);
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : nf.P0.f98194a;
    }

    @Nullable
    public static final Object c(long j10, @NotNull yf.f<? super nf.P0> fVar) {
        Object b10 = b(e(j10), fVar);
        return b10 == Af.d.l() ? b10 : nf.P0.f98194a;
    }

    @NotNull
    public static final InterfaceC13106b0 d(@NotNull yf.j jVar) {
        j.b bVar = jVar.get(yf.g.f130247J8);
        InterfaceC13106b0 interfaceC13106b0 = bVar instanceof InterfaceC13106b0 ? (InterfaceC13106b0) bVar : null;
        return interfaceC13106b0 == null ? Y.a() : interfaceC13106b0;
    }

    public static final long e(long j10) {
        if (C14036h.m(j10, C14036h.f95864c.W()) > 0) {
            return Vf.u.x(C14036h.B(j10), 1L);
        }
        return 0L;
    }
}
