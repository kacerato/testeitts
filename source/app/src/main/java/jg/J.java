package jg;

import eg.C13135q;
import eg.C13138s;
import eg.InterfaceC13128m0;
import eg.K0;
import eg.N0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kg.AbstractC13979a;
import kg.AbstractC13981c;
import kg.C13980b;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,731:1\n28#2,4:732\n28#2,4:738\n28#2,4:760\n28#2,4:767\n28#2,4:779\n28#2,4:793\n28#2,4:807\n20#3:736\n20#3:742\n20#3:764\n20#3:771\n20#3:783\n20#3:797\n20#3:811\n329#4:737\n1#5:743\n94#6,2:744\n96#6,2:747\n98#6:750\n94#6,2:772\n96#6,2:775\n98#6:778\n94#6,2:800\n96#6,2:803\n98#6:806\n13579#7:746\n13580#7:749\n13579#7:774\n13580#7:777\n13579#7:802\n13580#7:805\n314#8,9:751\n323#8,2:765\n314#8,9:784\n323#8,2:798\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n351#1:732,4\n391#1:738,4\n485#1:760,4\n506#1:767,4\n626#1:779,4\n661#1:793,4\n689#1:807,4\n351#1:736\n391#1:742\n485#1:764\n506#1:771\n626#1:783\n661#1:797\n689#1:811\n373#1:737\n453#1:744,2\n453#1:747,2\n453#1:750\n529#1:772,2\n529#1:775,2\n529#1:778\n676#1:800,2\n676#1:803,2\n676#1:806\n453#1:746\n453#1:749\n529#1:774\n529#1:777\n676#1:802\n676#1:805\n483#1:751,9\n483#1:765,2\n660#1:784,9\n660#1:798,2\n*E\n"})
public class J<T> extends AbstractC13979a<L> implements D<T>, InterfaceC13836c<T>, kg.p<T> {

    public final int f93217f;

    public final int f93218g;

    @NotNull
    public final gg.i f93219h;

    @Nullable
    public Object[] f93220i;

    public long f93221j;

    public long f93222k;

    public int f93223l;

    public int f93224m;

    public static final class a implements InterfaceC13128m0 {

        @Lf.g
        @NotNull
        public final J<?> f93225b;

        @Lf.g
        public long f93226c;

        @Lf.g
        @Nullable
        public final Object f93227d;

        @Lf.g
        @NotNull
        public final yf.f<P0> f93228e;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull J<?> j10, long j11, @Nullable Object obj, @NotNull yf.f<? super P0> fVar) {
            this.f93225b = j10;
            this.f93226c = j11;
            this.f93227d = obj;
            this.f93228e = fVar;
        }

        @Override
        public void dispose() {
            this.f93225b.C(this);
        }
    }

    public class b {

        public static final int[] f93229a;

        static {
            int[] iArr = new int[gg.i.values().length];
            try {
                iArr[gg.i.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[gg.i.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[gg.i.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f93229a = iArr;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {372, 379, 382}, m = "collect$suspendImpl", n = {"$this", "collector", "slot", "$this", "collector", "slot", "collectorJob", "$this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    public static final class c<T> extends Bf.d {

        public Object f93230b;

        public Object f93231c;

        public Object f93232d;

        public Object f93233e;

        public Object f93234f;

        public final J<T> f93235g;

        public int f93236h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(J<T> j10, yf.f<? super c> fVar) {
            super(fVar);
            this.f93235g = j10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93234f = obj;
            this.f93236h |= Integer.MIN_VALUE;
            return J.E(this.f93235g, null, this);
        }
    }

    public J(int i10, int i11, @NotNull gg.i iVar) {
        this.f93217f = i10;
        this.f93218g = i11;
        this.f93219h = iVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:41|42))(1:43)|12|13|14|15|(3:16|(3:28|29|(2:31|32)(1:33))(4:18|(1:20)|21|(2:23|24)(1:26))|27))(4:44|45|46|47)|37|38)(5:53|54|55|(2:57|(1:59))|61)|48|49|15|(3:16|(0)(0)|27)))|64|6|(0)(0)|48|49|15|(3:16|(0)(0)|27)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c3, code lost:
    
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> Object E(J<T> j10, InterfaceC13843j<? super T> interfaceC13843j, yf.f<?> fVar) {
        c cVar;
        int i10;
        J<T> j11;
        Throwable th2;
        L l10;
        InterfaceC13843j<? super T> interfaceC13843j2;
        K0 k02;
        InterfaceC13843j interfaceC13843j3;
        Object Z10;
        K0 k03;
        InterfaceC13843j interfaceC13843j4;
        if (fVar instanceof c) {
            cVar = (c) fVar;
            int i11 = cVar.f93236h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f93236h = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f93234f;
                Object l11 = Af.d.l();
                i10 = cVar.f93236h;
                if (i10 == 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            k03 = (K0) cVar.f93233e;
                            l10 = (L) cVar.f93232d;
                            interfaceC13843j4 = (InterfaceC13843j) cVar.f93231c;
                            j11 = (J) cVar.f93230b;
                        } else {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            k03 = (K0) cVar.f93233e;
                            l10 = (L) cVar.f93232d;
                            interfaceC13843j4 = (InterfaceC13843j) cVar.f93231c;
                            j11 = (J) cVar.f93230b;
                        }
                        try {
                            C14418j0.n(obj);
                            interfaceC13843j3 = interfaceC13843j4;
                            k02 = k03;
                            j10 = j11;
                            while (true) {
                                Z10 = j10.Z(l10);
                                if (Z10 == K.f93237a) {
                                    cVar.f93230b = j10;
                                    cVar.f93231c = interfaceC13843j3;
                                    cVar.f93232d = l10;
                                    cVar.f93233e = k02;
                                    cVar.f93236h = 2;
                                    if (j10.B(l10, cVar) == l11) {
                                        return l11;
                                    }
                                } else {
                                    if (k02 != null) {
                                        N0.z(k02);
                                    }
                                    cVar.f93230b = j10;
                                    cVar.f93231c = interfaceC13843j3;
                                    cVar.f93232d = l10;
                                    cVar.f93233e = k02;
                                    cVar.f93236h = 3;
                                    if (interfaceC13843j3.emit(Z10, cVar) == l11) {
                                        return l11;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th2 = th3;
                        }
                    } else {
                        l10 = (L) cVar.f93232d;
                        InterfaceC13843j<? super T> interfaceC13843j5 = (InterfaceC13843j) cVar.f93231c;
                        J<T> j12 = (J) cVar.f93230b;
                        try {
                            C14418j0.n(obj);
                            interfaceC13843j2 = interfaceC13843j5;
                            j10 = j12;
                        } catch (Throwable th4) {
                            th2 = th4;
                            j11 = j12;
                        }
                    }
                    j11.k(l10);
                    throw th2;
                }
                C14418j0.n(obj);
                L f10 = j10.f();
                try {
                    if (interfaceC13843j instanceof Y) {
                        cVar.f93230b = j10;
                        cVar.f93231c = interfaceC13843j;
                        cVar.f93232d = f10;
                        cVar.f93236h = 1;
                        if (((Y) interfaceC13843j).a(cVar) == l11) {
                            return l11;
                        }
                    }
                    interfaceC13843j2 = interfaceC13843j;
                    l10 = f10;
                } catch (Throwable th5) {
                    j11 = j10;
                    th2 = th5;
                    l10 = f10;
                }
                k02 = (K0) cVar.getContext().get(K0.f85619y4);
                interfaceC13843j3 = interfaceC13843j2;
                while (true) {
                    Z10 = j10.Z(l10);
                    if (Z10 == K.f93237a) {
                    }
                }
            }
        }
        cVar = new c(j10, fVar);
        Object obj2 = cVar.f93234f;
        Object l112 = Af.d.l();
        i10 = cVar.f93236h;
        if (i10 == 0) {
        }
        k02 = (K0) cVar.getContext().get(K0.f85619y4);
        interfaceC13843j3 = interfaceC13843j2;
        while (true) {
            Z10 = j10.Z(l10);
            if (Z10 == K.f93237a) {
            }
        }
    }

    public static <T> Object J(J<T> j10, T t10, yf.f<? super P0> fVar) {
        Object K10;
        return (!j10.w(t10) && (K10 = j10.K(t10, fVar)) == Af.d.l()) ? K10 : P0.f98194a;
    }

    public static void Q() {
    }

    public final Object B(L l10, yf.f<? super P0> fVar) {
        P0 p02;
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        synchronized (this) {
            try {
                if (Y(l10) < 0) {
                    l10.f93239b = c13135q;
                } else {
                    C14416i0.a aVar = C14416i0.f98201c;
                    c13135q.resumeWith(C14416i0.b(P0.f98194a));
                }
                p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : p02;
    }

    public final void C(a aVar) {
        Object f10;
        synchronized (this) {
            if (aVar.f93226c < O()) {
                return;
            }
            Object[] objArr = this.f93220i;
            kotlin.jvm.internal.M.m(objArr);
            f10 = K.f(objArr, aVar.f93226c);
            if (f10 != aVar) {
                return;
            }
            K.g(objArr, aVar.f93226c, K.f93237a);
            D();
            P0 p02 = P0.f98194a;
        }
    }

    public final void D() {
        Object f10;
        if (this.f93218g != 0 || this.f93224m > 1) {
            Object[] objArr = this.f93220i;
            kotlin.jvm.internal.M.m(objArr);
            while (this.f93224m > 0) {
                f10 = K.f(objArr, (O() + U()) - 1);
                if (f10 != K.f93237a) {
                    return;
                }
                this.f93224m--;
                K.g(objArr, O() + U(), null);
            }
        }
    }

    public final void F(long j10) {
        AbstractC13981c[] abstractC13981cArr;
        if (this.f95079c != 0 && (abstractC13981cArr = this.f95078b) != null) {
            for (AbstractC13981c abstractC13981c : abstractC13981cArr) {
                if (abstractC13981c != null) {
                    L l10 = (L) abstractC13981c;
                    long j11 = l10.f93238a;
                    if (j11 >= 0 && j11 < j10) {
                        l10.f93238a = j10;
                    }
                }
            }
        }
        this.f93222k = j10;
    }

    @Override
    @NotNull
    public L g() {
        return new L();
    }

    @Override
    @NotNull
    public L[] i(int i10) {
        return new L[i10];
    }

    public final void I() {
        Object[] objArr = this.f93220i;
        kotlin.jvm.internal.M.m(objArr);
        K.g(objArr, O(), null);
        this.f93223l--;
        long O10 = O() + 1;
        if (this.f93221j < O10) {
            this.f93221j = O10;
        }
        if (this.f93222k < O10) {
            F(O10);
        }
    }

    public final Object K(T t10, yf.f<? super P0> fVar) {
        yf.f<P0>[] fVarArr;
        a aVar;
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        yf.f<P0>[] fVarArr2 = C13980b.f95082a;
        synchronized (this) {
            try {
                if (W(t10)) {
                    C14416i0.a aVar2 = C14416i0.f98201c;
                    c13135q.resumeWith(C14416i0.b(P0.f98194a));
                    fVarArr = M(fVarArr2);
                    aVar = null;
                } else {
                    a aVar3 = new a(this, U() + O(), t10, c13135q);
                    L(aVar3);
                    this.f93224m++;
                    if (this.f93218g == 0) {
                        fVarArr2 = M(fVarArr2);
                    }
                    fVarArr = fVarArr2;
                    aVar = aVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVar != null) {
            C13138s.a(c13135q, aVar);
        }
        for (yf.f<P0> fVar2 : fVarArr) {
            if (fVar2 != null) {
                C14416i0.a aVar4 = C14416i0.f98201c;
                fVar2.resumeWith(C14416i0.b(P0.f98194a));
            }
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public final void L(Object obj) {
        int U10 = U();
        Object[] objArr = this.f93220i;
        if (objArr == null) {
            objArr = V(null, 0, 2);
        } else if (U10 >= objArr.length) {
            objArr = V(objArr, U10, objArr.length * 2);
        }
        K.g(objArr, O() + U10, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object[], java.lang.Object] */
    public final yf.f<P0>[] M(yf.f<P0>[] fVarArr) {
        AbstractC13981c[] abstractC13981cArr;
        L l10;
        yf.f<? super P0> fVar;
        int length = fVarArr.length;
        if (this.f95079c != 0 && (abstractC13981cArr = this.f95078b) != null) {
            int length2 = abstractC13981cArr.length;
            int i10 = 0;
            fVarArr = fVarArr;
            while (i10 < length2) {
                AbstractC13981c abstractC13981c = abstractC13981cArr[i10];
                if (abstractC13981c != null && (fVar = (l10 = (L) abstractC13981c).f93239b) != null && Y(l10) >= 0) {
                    int length3 = fVarArr.length;
                    fVarArr = fVarArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(fVarArr, Math.max(2, fVarArr.length * 2));
                        kotlin.jvm.internal.M.o(copyOf, "copyOf(this, newSize)");
                        fVarArr = copyOf;
                    }
                    fVarArr[length] = fVar;
                    l10.f93239b = null;
                    length++;
                }
                i10++;
                fVarArr = fVarArr;
            }
        }
        return fVarArr;
    }

    public final long N() {
        return O() + this.f93223l;
    }

    public final long O() {
        return Math.min(this.f93222k, this.f93221j);
    }

    public final T P() {
        Object f10;
        Object[] objArr = this.f93220i;
        kotlin.jvm.internal.M.m(objArr);
        f10 = K.f(objArr, (this.f93221j + T()) - 1);
        return (T) f10;
    }

    public final Object R(long j10) {
        Object f10;
        Object[] objArr = this.f93220i;
        kotlin.jvm.internal.M.m(objArr);
        f10 = K.f(objArr, j10);
        return f10 instanceof a ? ((a) f10).f93227d : f10;
    }

    public final long S() {
        return O() + this.f93223l + this.f93224m;
    }

    public final int T() {
        return (int) ((O() + this.f93223l) - this.f93221j);
    }

    public final int U() {
        return this.f93223l + this.f93224m;
    }

    public final Object[] V(Object[] objArr, int i10, int i11) {
        Object f10;
        if (i11 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i11];
        this.f93220i = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long O10 = O();
        for (int i12 = 0; i12 < i10; i12++) {
            long j10 = i12 + O10;
            f10 = K.f(objArr, j10);
            K.g(objArr2, j10, f10);
        }
        return objArr2;
    }

    public final boolean W(T t10) {
        if (l() == 0) {
            return X(t10);
        }
        if (this.f93223l >= this.f93218g && this.f93222k <= this.f93221j) {
            int i10 = b.f93229a[this.f93219h.ordinal()];
            if (i10 == 1) {
                return false;
            }
            if (i10 == 2) {
                return true;
            }
        }
        L(t10);
        int i11 = this.f93223l + 1;
        this.f93223l = i11;
        if (i11 > this.f93218g) {
            I();
        }
        if (T() > this.f93217f) {
            a0(this.f93221j + 1, this.f93222k, N(), S());
        }
        return true;
    }

    public final boolean X(T t10) {
        if (this.f93217f == 0) {
            return true;
        }
        L(t10);
        int i10 = this.f93223l + 1;
        this.f93223l = i10;
        if (i10 > this.f93217f) {
            I();
        }
        this.f93222k = O() + this.f93223l;
        return true;
    }

    public final long Y(L l10) {
        long j10 = l10.f93238a;
        if (j10 < N()) {
            return j10;
        }
        if (this.f93218g <= 0 && j10 <= O() && this.f93224m != 0) {
            return j10;
        }
        return -1L;
    }

    public final Object Z(L l10) {
        Object obj;
        yf.f<P0>[] fVarArr = C13980b.f95082a;
        synchronized (this) {
            try {
                long Y10 = Y(l10);
                if (Y10 < 0) {
                    obj = K.f93237a;
                } else {
                    long j10 = l10.f93238a;
                    Object R10 = R(Y10);
                    l10.f93238a = Y10 + 1;
                    fVarArr = b0(j10);
                    obj = R10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (yf.f<P0> fVar : fVarArr) {
            if (fVar != null) {
                C14416i0.a aVar = C14416i0.f98201c;
                fVar.resumeWith(C14416i0.b(P0.f98194a));
            }
        }
        return obj;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<?> fVar) {
        return E(this, interfaceC13843j, fVar);
    }

    public final void a0(long j10, long j11, long j12, long j13) {
        long min = Math.min(j11, j10);
        for (long O10 = O(); O10 < min; O10++) {
            Object[] objArr = this.f93220i;
            kotlin.jvm.internal.M.m(objArr);
            K.g(objArr, O10, null);
        }
        this.f93221j = j10;
        this.f93222k = j11;
        this.f93223l = (int) (j12 - min);
        this.f93224m = (int) (j13 - j12);
    }

    @Override
    @NotNull
    public List<T> b() {
        Object f10;
        synchronized (this) {
            int T10 = T();
            if (T10 == 0) {
                return pf.H.J();
            }
            ArrayList arrayList = new ArrayList(T10);
            Object[] objArr = this.f93220i;
            kotlin.jvm.internal.M.m(objArr);
            for (int i10 = 0; i10 < T10; i10++) {
                f10 = K.f(objArr, this.f93221j + i10);
                arrayList.add(f10);
            }
            return arrayList;
        }
    }

    @NotNull
    public final yf.f<P0>[] b0(long j10) {
        long j11;
        long j12;
        Object f10;
        Object f11;
        long j13;
        AbstractC13981c[] abstractC13981cArr;
        if (j10 > this.f93222k) {
            return C13980b.f95082a;
        }
        long O10 = O();
        long j14 = this.f93223l + O10;
        if (this.f93218g == 0 && this.f93224m > 0) {
            j14++;
        }
        if (this.f95079c != 0 && (abstractC13981cArr = this.f95078b) != null) {
            for (AbstractC13981c abstractC13981c : abstractC13981cArr) {
                if (abstractC13981c != null) {
                    long j15 = ((L) abstractC13981c).f93238a;
                    if (j15 >= 0 && j15 < j14) {
                        j14 = j15;
                    }
                }
            }
        }
        if (j14 <= this.f93222k) {
            return C13980b.f95082a;
        }
        long N10 = N();
        int min = l() > 0 ? Math.min(this.f93224m, this.f93218g - ((int) (N10 - j14))) : this.f93224m;
        yf.f<P0>[] fVarArr = C13980b.f95082a;
        long j16 = this.f93224m + N10;
        if (min > 0) {
            fVarArr = new yf.f[min];
            Object[] objArr = this.f93220i;
            kotlin.jvm.internal.M.m(objArr);
            long j17 = N10;
            int i10 = 0;
            while (true) {
                if (N10 >= j16) {
                    j11 = j14;
                    j12 = j16;
                    break;
                }
                f11 = K.f(objArr, N10);
                j11 = j14;
                mg.T t10 = K.f93237a;
                if (f11 != t10) {
                    kotlin.jvm.internal.M.n(f11, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) f11;
                    int i11 = i10 + 1;
                    j12 = j16;
                    fVarArr[i10] = aVar.f93228e;
                    K.g(objArr, N10, t10);
                    K.g(objArr, j17, aVar.f93227d);
                    j13 = 1;
                    j17++;
                    if (i11 >= min) {
                        break;
                    }
                    i10 = i11;
                } else {
                    j12 = j16;
                    j13 = 1;
                }
                N10 += j13;
                j14 = j11;
                j16 = j12;
            }
            N10 = j17;
        } else {
            j11 = j14;
            j12 = j16;
        }
        int i12 = (int) (N10 - O10);
        long j18 = l() == 0 ? N10 : j11;
        long max = Math.max(this.f93221j, N10 - Math.min(this.f93217f, i12));
        if (this.f93218g == 0 && max < j12) {
            Object[] objArr2 = this.f93220i;
            kotlin.jvm.internal.M.m(objArr2);
            f10 = K.f(objArr2, max);
            if (kotlin.jvm.internal.M.g(f10, K.f93237a)) {
                N10++;
                max++;
            }
        }
        a0(max, j18, N10, j12);
        D();
        return !(fVarArr.length == 0) ? M(fVarArr) : fVarArr;
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return K.e(this, jVar, i10, iVar);
    }

    public final long c0() {
        long j10 = this.f93221j;
        if (j10 < this.f93222k) {
            this.f93222k = j10;
        }
        return j10;
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        return J(this, t10, fVar);
    }

    @Override
    public void h() {
        synchronized (this) {
            a0(N(), this.f93222k, N(), S());
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public boolean w(T t10) {
        int i10;
        boolean z10;
        yf.f<P0>[] fVarArr = C13980b.f95082a;
        synchronized (this) {
            if (W(t10)) {
                fVarArr = M(fVarArr);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        for (yf.f<P0> fVar : fVarArr) {
            if (fVar != null) {
                C14416i0.a aVar = C14416i0.f98201c;
                fVar.resumeWith(C14416i0.b(P0.f98194a));
            }
        }
        return z10;
    }
}
