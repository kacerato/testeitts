package kg;

import eg.A1;
import eg.C13123k;
import eg.InterfaceC13089B;
import eg.S;
import eg.T;
import gg.E;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import gg.p;
import java.util.concurrent.atomic.AtomicInteger;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import mg.Z;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14968d0;
import pf.C14985q;

@t0({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,143:1\n107#2:144\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n86#1:144\n*E\n"})
public final class k {

    @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {54, 76, 79}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public Object f95135b;

        public Object f95136c;

        public int f95137d;

        public int f95138e;

        public int f95139f;

        public Object f95140g;

        public final InterfaceC13842i<T>[] f95141h;

        public final Mf.a<T[]> f95142i;

        public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f95143j;

        public final InterfaceC13843j<R> f95144k;

        @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {31}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1847a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

            public int f95145b;

            public final InterfaceC13842i<T>[] f95146c;

            public final int f95147d;

            public final AtomicInteger f95148e;

            public final gg.l<C14968d0<Object>> f95149f;

            public static final class C1848a<T> implements InterfaceC13843j {

                public final gg.l<C14968d0<Object>> f95150b;

                public final int f95151c;

                @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", i = {}, l = {32, 33}, m = "emit", n = {}, s = {})
                public static final class C1849a extends Bf.d {

                    public Object f95152b;

                    public final C1848a<T> f95153c;

                    public int f95154d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1849a(C1848a<? super T> c1848a, yf.f<? super C1849a> fVar) {
                        super(fVar);
                        this.f95153c = c1848a;
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f95152b = obj;
                        this.f95154d |= Integer.MIN_VALUE;
                        return this.f95153c.emit(null, this);
                    }
                }

                public C1848a(gg.l<C14968d0<Object>> lVar, int i10) {
                    this.f95150b = lVar;
                    this.f95151c = i10;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                    C1849a c1849a;
                    Object l10;
                    int i10;
                    if (fVar instanceof C1849a) {
                        c1849a = (C1849a) fVar;
                        int i11 = c1849a.f95154d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c1849a.f95154d = i11 - Integer.MIN_VALUE;
                            Object obj = c1849a.f95152b;
                            l10 = Af.d.l();
                            i10 = c1849a.f95154d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                gg.l<C14968d0<Object>> lVar = this.f95150b;
                                C14968d0<Object> c14968d0 = new C14968d0<>(this.f95151c, t10);
                                c1849a.f95154d = 1;
                                if (lVar.M(c14968d0, c1849a) == l10) {
                                    return l10;
                                }
                            } else {
                                if (i10 != 1) {
                                    if (i10 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    C14418j0.n(obj);
                                    return P0.f98194a;
                                }
                                C14418j0.n(obj);
                            }
                            c1849a.f95154d = 2;
                            if (A1.a(c1849a) == l10) {
                                return l10;
                            }
                            return P0.f98194a;
                        }
                    }
                    c1849a = new C1849a(this, fVar);
                    Object obj2 = c1849a.f95152b;
                    l10 = Af.d.l();
                    i10 = c1849a.f95154d;
                    if (i10 != 0) {
                    }
                    c1849a.f95154d = 2;
                    if (A1.a(c1849a) == l10) {
                    }
                    return P0.f98194a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1847a(InterfaceC13842i<? extends T>[] interfaceC13842iArr, int i10, AtomicInteger atomicInteger, gg.l<C14968d0<Object>> lVar, yf.f<? super C1847a> fVar) {
                super(2, fVar);
                this.f95146c = interfaceC13842iArr;
                this.f95147d = i10;
                this.f95148e = atomicInteger;
                this.f95149f = lVar;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                return new C1847a(this.f95146c, this.f95147d, this.f95148e, this.f95149f, fVar);
            }

            @Override
            @Nullable
            public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
                return ((C1847a) create(s10, fVar)).invokeSuspend(P0.f98194a);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                AtomicInteger atomicInteger;
                Object l10 = Af.d.l();
                int i10 = this.f95145b;
                try {
                    if (i10 == 0) {
                        C14418j0.n(obj);
                        InterfaceC13842i[] interfaceC13842iArr = this.f95146c;
                        int i11 = this.f95147d;
                        InterfaceC13842i interfaceC13842i = interfaceC13842iArr[i11];
                        C1848a c1848a = new C1848a(this.f95149f, i11);
                        this.f95145b = 1;
                        if (interfaceC13842i.a(c1848a, this) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        E.a.a(this.f95149f, null, 1, null);
                    }
                    return P0.f98194a;
                } finally {
                    if (this.f95148e.decrementAndGet() == 0) {
                        E.a.a(this.f95149f, null, 1, null);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(InterfaceC13842i<? extends T>[] interfaceC13842iArr, Mf.a<T[]> aVar, Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, InterfaceC13843j<? super R> interfaceC13843j, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95141h = interfaceC13842iArr;
            this.f95142i = aVar;
            this.f95143j = qVar;
            this.f95144k = interfaceC13843j;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f95141h, this.f95142i, this.f95143j, this.f95144k, fVar);
            aVar.f95140g = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:13:0x00bd A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00ef A[EDGE_INSN: B:38:0x00ef->B:27:0x00ef BREAK  A[LOOP:0: B:19:0x00ca->B:37:?], SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r15v0, types: [jg.i<T>[], jg.i[]] */
        /* JADX WARN: Type inference failed for: r2v7, types: [int] */
        /* JADX WARN: Type inference failed for: r2v9, types: [int] */
        /* JADX WARN: Type inference failed for: r6v0, types: [jg.i<T>[]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0135 -> B:10:0x0137). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            Object[] objArr;
            byte b10;
            byte[] bArr;
            int i10;
            gg.l lVar;
            Object obj2;
            Object[] objArr2;
            byte b11;
            C14968d0 c14968d0;
            int e10;
            Object obj3;
            Object l10 = Af.d.l();
            int i11 = this.f95139f;
            if (i11 == 0) {
                C14418j0.n(obj);
                S s10 = (S) this.f95140g;
                int length = this.f95141h.length;
                if (length == 0) {
                    return P0.f98194a;
                }
                objArr = new Object[length];
                C14985q.V1(objArr, s.f95205b, 0, 0, 6, null);
                gg.l d10 = gg.o.d(length, null, null, 6, null);
                AtomicInteger atomicInteger = new AtomicInteger(length);
                b10 = 0;
                int i12 = 0;
                while (i12 < length) {
                    int i13 = i12;
                    C13123k.f(s10, null, null, new C1847a(this.f95141h, i13, atomicInteger, d10, null), 3, null);
                    i12 = i13 + 1;
                    atomicInteger = atomicInteger;
                }
                bArr = new byte[length];
                i10 = length;
                lVar = d10;
                b11 = (byte) (b10 + 1);
                this.f95140g = objArr;
                this.f95135b = lVar;
                this.f95136c = bArr;
                this.f95137d = i10;
                this.f95138e = b11;
                this.f95139f = 1;
                obj2 = lVar.u(this);
                if (obj2 != l10) {
                }
            } else if (i11 == 1) {
                ?? r22 = this.f95138e;
                i10 = this.f95137d;
                byte[] bArr2 = (byte[]) this.f95136c;
                gg.l lVar2 = (gg.l) this.f95135b;
                objArr2 = (Object[]) this.f95140g;
                C14418j0.n(obj);
                obj2 = ((gg.p) obj).o();
                b11 = r22;
                bArr = bArr2;
                lVar = lVar2;
                c14968d0 = (C14968d0) gg.p.h(obj2);
                if (c14968d0 == null) {
                }
                do {
                    e10 = c14968d0.e();
                    obj3 = objArr2[e10];
                    objArr2[e10] = c14968d0.f();
                    if (obj3 == s.f95205b) {
                    }
                    if (bArr[e10] != b11) {
                    }
                } while (c14968d0 != null);
                if (i10 == 0) {
                }
                b10 = b11;
                objArr = objArr2;
                b11 = (byte) (b10 + 1);
                this.f95140g = objArr;
                this.f95135b = lVar;
                this.f95136c = bArr;
                this.f95137d = i10;
                this.f95138e = b11;
                this.f95139f = 1;
                obj2 = lVar.u(this);
                if (obj2 != l10) {
                }
            } else {
                if (i11 != 2 && i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ?? r23 = this.f95138e;
                i10 = this.f95137d;
                byte[] bArr3 = (byte[]) this.f95136c;
                gg.l lVar3 = (gg.l) this.f95135b;
                objArr2 = (Object[]) this.f95140g;
                C14418j0.n(obj);
                b10 = r23;
                bArr = bArr3;
                lVar = lVar3;
                objArr = objArr2;
                b11 = (byte) (b10 + 1);
                this.f95140g = objArr;
                this.f95135b = lVar;
                this.f95136c = bArr;
                this.f95137d = i10;
                this.f95138e = b11;
                this.f95139f = 1;
                obj2 = lVar.u(this);
                if (obj2 != l10) {
                    return l10;
                }
                objArr2 = objArr;
                c14968d0 = (C14968d0) gg.p.h(obj2);
                if (c14968d0 == null) {
                    return P0.f98194a;
                }
                do {
                    e10 = c14968d0.e();
                    obj3 = objArr2[e10];
                    objArr2[e10] = c14968d0.f();
                    if (obj3 == s.f95205b) {
                        i10--;
                    }
                    if (bArr[e10] != b11) {
                        break;
                    }
                    bArr[e10] = b11;
                    c14968d0 = (C14968d0) gg.p.h(lVar.v());
                } while (c14968d0 != null);
                if (i10 == 0) {
                    Object[] objArr3 = (Object[]) this.f95142i.invoke();
                    if (objArr3 == null) {
                        Mf.q qVar = this.f95143j;
                        Object obj4 = this.f95144k;
                        this.f95140g = objArr2;
                        this.f95135b = lVar;
                        this.f95136c = bArr;
                        this.f95137d = i10;
                        this.f95138e = b11;
                        this.f95139f = 2;
                        if (qVar.n(obj4, objArr2, this) == l10) {
                            return l10;
                        }
                    } else {
                        C14985q.K0(objArr2, objArr3, 0, 0, 0, 14, null);
                        Mf.q qVar2 = this.f95143j;
                        Object obj5 = this.f95144k;
                        this.f95140g = objArr2;
                        this.f95135b = lVar;
                        this.f95136c = bArr;
                        this.f95137d = i10;
                        this.f95138e = b11;
                        this.f95139f = 3;
                        if (qVar2.n(obj5, objArr3, this) == l10) {
                            return l10;
                        }
                    }
                }
                b10 = b11;
                objArr = objArr2;
                b11 = (byte) (b10 + 1);
                this.f95140g = objArr;
                this.f95135b = lVar;
                this.f95136c = bArr;
                this.f95137d = i10;
                this.f95138e = b11;
                this.f95139f = 1;
                obj2 = lVar.u(this);
                if (obj2 != l10) {
                }
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n1#1,113:1\n87#2:114\n142#2:115\n*E\n"})
    public static final class b<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i f95155b;

        public final InterfaceC13842i f95156c;

        public final Mf.q f95157d;

        public b(InterfaceC13842i interfaceC13842i, InterfaceC13842i interfaceC13842i2, Mf.q qVar) {
            this.f95155b = interfaceC13842i;
            this.f95156c = interfaceC13842i2;
            this.f95157d = qVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object g10 = T.g(new c(interfaceC13843j, this.f95155b, this.f95156c, this.f95157d, null), fVar);
            return g10 == Af.d.l() ? g10 : P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0}, l = {126}, m = "invokeSuspend", n = {"second"}, s = {"L$0"})
    public static final class c extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f95158b;

        public Object f95159c;

        public final InterfaceC13843j<R> f95160d;

        public final InterfaceC13842i<T2> f95161e;

        public final InterfaceC13842i<T1> f95162f;

        public final Mf.q<T1, T2, yf.f<? super R>, Object> f95163g;

        public static final class a extends O implements Mf.l<Throwable, P0> {

            public final InterfaceC13089B f95164b;

            public final InterfaceC13843j<R> f95165c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(InterfaceC13089B interfaceC13089B, InterfaceC13843j<? super R> interfaceC13843j) {
                super(1);
                this.f95164b = interfaceC13089B;
                this.f95165c = interfaceC13843j;
            }

            @Override
            public P0 invoke(Throwable th2) {
                invoke2(th2);
                return P0.f98194a;
            }

            public final void invoke2(@Nullable Throwable th2) {
                if (this.f95164b.isActive()) {
                    this.f95164b.a(new AbortFlowException(this.f95165c));
                }
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {127}, m = "invokeSuspend", n = {}, s = {})
        public static final class b extends Bf.q implements Mf.p<P0, yf.f<? super P0>, Object> {

            public int f95166b;

            public final InterfaceC13842i<T1> f95167c;

            public final yf.j f95168d;

            public final Object f95169e;

            public final InterfaceC13360D<Object> f95170f;

            public final InterfaceC13843j<R> f95171g;

            public final Mf.q<T1, T2, yf.f<? super R>, Object> f95172h;

            public static final class a<T> implements InterfaceC13843j {

                public final yf.j f95173b;

                public final Object f95174c;

                public final InterfaceC13360D<Object> f95175d;

                public final InterfaceC13843j<R> f95176e;

                public final Mf.q<T1, T2, yf.f<? super R>, Object> f95177f;

                @t0({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,143:1\n501#2,5:144\n18#3:149\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n129#1:144,5\n132#1:149\n*E\n"})
                @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {129, 132, 132}, m = "invokeSuspend", n = {}, s = {})
                public static final class C1850a extends Bf.q implements Mf.p<P0, yf.f<? super P0>, Object> {

                    public Object f95178b;

                    public int f95179c;

                    public final InterfaceC13360D<Object> f95180d;

                    public final InterfaceC13843j<R> f95181e;

                    public final Mf.q<T1, T2, yf.f<? super R>, Object> f95182f;

                    public final T1 f95183g;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1850a(InterfaceC13360D<? extends Object> interfaceC13360D, InterfaceC13843j<? super R> interfaceC13843j, Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar, T1 t12, yf.f<? super C1850a> fVar) {
                        super(2, fVar);
                        this.f95180d = interfaceC13360D;
                        this.f95181e = interfaceC13843j;
                        this.f95182f = qVar;
                        this.f95183g = t12;
                    }

                    @Override
                    @NotNull
                    public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                        return new C1850a(this.f95180d, this.f95181e, this.f95182f, this.f95183g, fVar);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[RETURN] */
                    @Override
                    @Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object u10;
                        InterfaceC13843j interfaceC13843j;
                        Object l10 = Af.d.l();
                        int i10 = this.f95179c;
                        if (i10 == 0) {
                            C14418j0.n(obj);
                            InterfaceC13360D<Object> interfaceC13360D = this.f95180d;
                            this.f95179c = 1;
                            u10 = interfaceC13360D.u(this);
                            if (u10 == l10) {
                                return l10;
                            }
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    if (i10 != 3) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    C14418j0.n(obj);
                                    return P0.f98194a;
                                }
                                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f95178b;
                                C14418j0.n(obj);
                                interfaceC13843j = interfaceC13843j2;
                                this.f95178b = null;
                                this.f95179c = 3;
                                if (interfaceC13843j.emit(obj, this) == l10) {
                                    return l10;
                                }
                                return P0.f98194a;
                            }
                            C14418j0.n(obj);
                            u10 = ((gg.p) obj).o();
                        }
                        InterfaceC13843j interfaceC13843j3 = this.f95181e;
                        if (u10 instanceof p.c) {
                            Throwable f10 = gg.p.f(u10);
                            if (f10 == null) {
                                throw new AbortFlowException(interfaceC13843j3);
                            }
                            throw f10;
                        }
                        Mf.q<T1, T2, yf.f<? super R>, Object> qVar = this.f95182f;
                        T1 t12 = this.f95183g;
                        if (u10 == s.f95204a) {
                            u10 = null;
                        }
                        this.f95178b = interfaceC13843j3;
                        this.f95179c = 2;
                        obj = qVar.n(t12, u10, this);
                        interfaceC13843j = interfaceC13843j3;
                        if (obj == l10) {
                            return l10;
                        }
                        this.f95178b = null;
                        this.f95179c = 3;
                        if (interfaceC13843j.emit(obj, this) == l10) {
                        }
                        return P0.f98194a;
                    }

                    @Override
                    @Nullable
                    public final Object invoke(@NotNull P0 p02, @Nullable yf.f<? super P0> fVar) {
                        return ((C1850a) create(p02, fVar)).invokeSuspend(P0.f98194a);
                    }
                }

                @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1", f = "Combine.kt", i = {}, l = {128}, m = "emit", n = {}, s = {})
                public static final class C1851b extends Bf.d {

                    public Object f95184b;

                    public final a<T> f95185c;

                    public int f95186d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1851b(a<? super T> aVar, yf.f<? super C1851b> fVar) {
                        super(fVar);
                        this.f95185c = aVar;
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f95184b = obj;
                        this.f95186d |= Integer.MIN_VALUE;
                        return this.f95185c.emit(null, this);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                public a(yf.j jVar, Object obj, InterfaceC13360D<? extends Object> interfaceC13360D, InterfaceC13843j<? super R> interfaceC13843j, Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
                    this.f95173b = jVar;
                    this.f95174c = obj;
                    this.f95175d = interfaceC13360D;
                    this.f95176e = interfaceC13843j;
                    this.f95177f = qVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T1 t12, @NotNull yf.f<? super P0> fVar) {
                    C1851b c1851b;
                    int i10;
                    if (fVar instanceof C1851b) {
                        c1851b = (C1851b) fVar;
                        int i11 = c1851b.f95186d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c1851b.f95186d = i11 - Integer.MIN_VALUE;
                            Object obj = c1851b.f95184b;
                            Object l10 = Af.d.l();
                            i10 = c1851b.f95186d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                yf.j jVar = this.f95173b;
                                P0 p02 = P0.f98194a;
                                Object obj2 = this.f95174c;
                                C1850a c1850a = new C1850a(this.f95175d, this.f95176e, this.f95177f, t12, null);
                                c1851b.f95186d = 1;
                                if (C13983e.c(jVar, p02, obj2, c1850a, c1851b) == l10) {
                                    return l10;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                            }
                            return P0.f98194a;
                        }
                    }
                    c1851b = new C1851b(this, fVar);
                    Object obj3 = c1851b.f95184b;
                    Object l102 = Af.d.l();
                    i10 = c1851b.f95186d;
                    if (i10 != 0) {
                    }
                    return P0.f98194a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(InterfaceC13842i<? extends T1> interfaceC13842i, yf.j jVar, Object obj, InterfaceC13360D<? extends Object> interfaceC13360D, InterfaceC13843j<? super R> interfaceC13843j, Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar, yf.f<? super b> fVar) {
                super(2, fVar);
                this.f95167c = interfaceC13842i;
                this.f95168d = jVar;
                this.f95169e = obj;
                this.f95170f = interfaceC13360D;
                this.f95171g = interfaceC13843j;
                this.f95172h = qVar;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                return new b(this.f95167c, this.f95168d, this.f95169e, this.f95170f, this.f95171g, this.f95172h, fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f95166b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13842i<T1> interfaceC13842i = this.f95167c;
                    a aVar = new a(this.f95168d, this.f95169e, this.f95170f, this.f95171g, this.f95172h);
                    this.f95166b = 1;
                    if (interfaceC13842i.a(aVar, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invoke(@NotNull P0 p02, @Nullable yf.f<? super P0> fVar) {
                return ((b) create(p02, fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1", f = "Combine.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1852c extends Bf.q implements Mf.p<InterfaceC13358B<? super Object>, yf.f<? super P0>, Object> {

            public int f95187b;

            public Object f95188c;

            public final InterfaceC13842i<T2> f95189d;

            public static final class a<T> implements InterfaceC13843j {

                public final InterfaceC13358B<Object> f95190b;

                @Bf.f(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1$1", f = "Combine.kt", i = {}, l = {90}, m = "emit", n = {}, s = {})
                public static final class C1853a extends Bf.d {

                    public Object f95191b;

                    public final a<T> f95192c;

                    public int f95193d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1853a(a<? super T> aVar, yf.f<? super C1853a> fVar) {
                        super(fVar);
                        this.f95192c = aVar;
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f95191b = obj;
                        this.f95193d |= Integer.MIN_VALUE;
                        return this.f95192c.emit(null, this);
                    }
                }

                public a(InterfaceC13358B<Object> interfaceC13358B) {
                    this.f95190b = interfaceC13358B;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T2 t22, @NotNull yf.f<? super P0> fVar) {
                    C1853a c1853a;
                    int i10;
                    if (fVar instanceof C1853a) {
                        c1853a = (C1853a) fVar;
                        int i11 = c1853a.f95193d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c1853a.f95193d = i11 - Integer.MIN_VALUE;
                            Object obj = c1853a.f95191b;
                            Object l10 = Af.d.l();
                            i10 = c1853a.f95193d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                E<Object> channel = this.f95190b.getChannel();
                                mg.T t10 = t22;
                                if (t22 == 0) {
                                    t10 = s.f95204a;
                                }
                                c1853a.f95193d = 1;
                                if (channel.M(t10, c1853a) == l10) {
                                    return l10;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                            }
                            return P0.f98194a;
                        }
                    }
                    c1853a = new C1853a(this, fVar);
                    Object obj2 = c1853a.f95191b;
                    Object l102 = Af.d.l();
                    i10 = c1853a.f95193d;
                    if (i10 != 0) {
                    }
                    return P0.f98194a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1852c(InterfaceC13842i<? extends T2> interfaceC13842i, yf.f<? super C1852c> fVar) {
                super(2, fVar);
                this.f95189d = interfaceC13842i;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                C1852c c1852c = new C1852c(this.f95189d, fVar);
                c1852c.f95188c = obj;
                return c1852c;
            }

            @Nullable
            public final Object invoke2(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
                return ((C1852c) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f95187b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.f95188c;
                    InterfaceC13842i<T2> interfaceC13842i = this.f95189d;
                    a aVar = new a(interfaceC13358B);
                    this.f95187b = 1;
                    if (interfaceC13842i.a(aVar, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return P0.f98194a;
            }

            @Override
            public Object invoke(InterfaceC13358B<? super Object> interfaceC13358B, yf.f<? super P0> fVar) {
                return invoke2((InterfaceC13358B<Object>) interfaceC13358B, fVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC13843j<? super R> interfaceC13843j, InterfaceC13842i<? extends T2> interfaceC13842i, InterfaceC13842i<? extends T1> interfaceC13842i2, Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f95160d = interfaceC13843j;
            this.f95161e = interfaceC13842i;
            this.f95162f = interfaceC13842i2;
            this.f95163g = qVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            c cVar = new c(this.f95160d, this.f95161e, this.f95162f, this.f95163g, fVar);
            cVar.f95159c = obj;
            return cVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((c) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v12, types: [gg.D] */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v2, types: [gg.D] */
        /* JADX WARN: Type inference failed for: r1v5 */
        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13089B c10;
            InterfaceC13360D interfaceC13360D;
            InterfaceC13360D interfaceC13360D2;
            yf.j plus;
            P0 p02;
            b bVar;
            Object l10 = Af.d.l();
            ?? r12 = this.f95158b;
            try {
                if (r12 != 0) {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13360D2 = (InterfaceC13360D) this.f95159c;
                    try {
                        C14418j0.n(obj);
                        r12 = interfaceC13360D2;
                    } catch (AbortFlowException e10) {
                        e = e10;
                    }
                    InterfaceC13360D.a.b(r12, null, 1, null);
                    return P0.f98194a;
                }
                C14418j0.n(obj);
                S s10 = (S) this.f95159c;
                InterfaceC13360D f10 = gg.z.f(s10, null, 0, new C1852c(this.f95161e, null), 3, null);
                c10 = eg.P0.c(null, 1, null);
                M.n(f10, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
                ((E) f10).F(new a(c10, this.f95160d));
                try {
                    yf.j coroutineContext = s10.getCoroutineContext();
                    Object b10 = Z.b(coroutineContext);
                    plus = s10.getCoroutineContext().plus(c10);
                    p02 = P0.f98194a;
                    bVar = new b(this.f95162f, coroutineContext, b10, f10, this.f95160d, this.f95163g, null);
                    this.f95159c = f10;
                    this.f95158b = 1;
                    interfaceC13360D = f10;
                } catch (AbortFlowException e11) {
                    e = e11;
                    interfaceC13360D = f10;
                } catch (Throwable th2) {
                    th = th2;
                    interfaceC13360D = f10;
                }
                try {
                } catch (AbortFlowException e12) {
                    e = e12;
                    interfaceC13360D2 = interfaceC13360D;
                    o.b(e, this.f95160d);
                    r12 = interfaceC13360D2;
                    InterfaceC13360D.a.b(r12, null, 1, null);
                    return P0.f98194a;
                } catch (Throwable th3) {
                    th = th3;
                    r12 = interfaceC13360D;
                    InterfaceC13360D.a.b(r12, null, 1, null);
                    throw th;
                }
                if (C13983e.d(plus, p02, null, bVar, this, 4, null) == l10) {
                    return l10;
                }
                r12 = interfaceC13360D;
                InterfaceC13360D.a.b(r12, null, 1, null);
                return P0.f98194a;
                o.b(e, this.f95160d);
                r12 = interfaceC13360D2;
                InterfaceC13360D.a.b(r12, null, 1, null);
                return P0.f98194a;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @InterfaceC14410f0
    @Nullable
    public static final <R, T> Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull InterfaceC13842i<? extends T>[] interfaceC13842iArr, @NotNull Mf.a<T[]> aVar, @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, @NotNull yf.f<? super P0> fVar) {
        Object a10 = n.a(new a(interfaceC13842iArr, aVar, qVar, interfaceC13843j, null), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> b(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return new b(interfaceC13842i2, interfaceC13842i, qVar);
    }
}
