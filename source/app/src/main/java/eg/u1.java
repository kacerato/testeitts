package eg;

import kotlin.jvm.internal.m0;
import kotlin.time.C14036h;
import kotlin.time.C14038j;
import kotlin.time.EnumC14039k;
import kotlinx.coroutines.TimeoutCancellationException;
import nf.C14418j0;
import ng.C14446b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class u1 {

    @Bf.f(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", i = {0, 0, 0}, l = {104}, m = "withTimeoutOrNull", n = {"block", "coroutine", "timeMillis"}, s = {"L$0", "L$1", "J$0"})
    public static final class a<T> extends Bf.d {

        public long f85792b;

        public Object f85793c;

        public Object f85794d;

        public Object f85795e;

        public int f85796f;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f85795e = obj;
            this.f85796f |= Integer.MIN_VALUE;
            return u1.e(0L, null, this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r4 == null) goto L9;
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final TimeoutCancellationException a(long j10, @NotNull InterfaceC13106b0 interfaceC13106b0, @NotNull K0 k02) {
        String str;
        InterfaceC13110d0 interfaceC13110d0 = interfaceC13106b0 instanceof InterfaceC13110d0 ? (InterfaceC13110d0) interfaceC13106b0 : null;
        if (interfaceC13110d0 != null) {
            C14036h.a aVar = C14036h.f95864c;
            str = interfaceC13110d0.j(C14038j.P(j10, EnumC14039k.MILLISECONDS));
        }
        str = "Timed out waiting for " + j10 + " ms";
        return new TimeoutCancellationException(str, k02);
    }

    public static final <U, T extends U> Object b(t1<U, ? super T> t1Var, Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar) {
        N0.y(t1Var, C13108c0.d(t1Var.f97032e.getContext()).m(t1Var.f85782f, t1Var, t1Var.getContext()));
        return C14446b.f(t1Var, t1Var, pVar);
    }

    @Nullable
    public static final <T> Object c(long j10, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        if (j10 <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object b10 = b(new t1(j10, fVar), pVar);
        if (b10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return b10;
    }

    @Nullable
    public static final <T> Object d(long j10, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        return c(C13108c0.e(j10), pVar, fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, eg.t1] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object e(long j10, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        a aVar;
        int i10;
        m0.h hVar;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f85796f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f85796f = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f85795e;
                Object l10 = Af.d.l();
                i10 = aVar.f85796f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    if (j10 <= 0) {
                        return null;
                    }
                    m0.h hVar2 = new m0.h();
                    try {
                        aVar.f85793c = pVar;
                        aVar.f85794d = hVar2;
                        aVar.f85792b = j10;
                        aVar.f85796f = 1;
                        ?? r22 = (T) new t1(j10, aVar);
                        hVar2.f95754b = r22;
                        Object b10 = b(r22, pVar);
                        if (b10 == Af.d.l()) {
                            Bf.h.c(aVar);
                        }
                        return b10 == l10 ? l10 : b10;
                    } catch (TimeoutCancellationException e10) {
                        e = e10;
                        hVar = hVar2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) aVar.f85794d;
                    try {
                        C14418j0.n(obj);
                        return obj;
                    } catch (TimeoutCancellationException e11) {
                        e = e11;
                    }
                }
                if (e.coroutine != hVar.f95754b) {
                    return null;
                }
                throw e;
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f85795e;
        Object l102 = Af.d.l();
        i10 = aVar.f85796f;
        if (i10 != 0) {
        }
        if (e.coroutine != hVar.f95754b) {
        }
    }

    @Nullable
    public static final <T> Object f(long j10, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        return e(C13108c0.e(j10), pVar, fVar);
    }
}
