package jg;

import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,141:1\n1#2:142\n107#3:143\n107#3:144\n107#3:145\n107#3:146\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n22#1:143\n33#1:144\n52#1:145\n83#1:146\n*E\n"})
public final class C13854v {

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$1\n*L\n1#1,141:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {136}, m = "collectWhile", n = {"collector"}, s = {"L$0"})
    public static final class a<T> extends Bf.d {

        public Object f93569b;

        public Object f93570c;

        public int f93571d;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93570c = obj;
            this.f93571d |= Integer.MIN_VALUE;
            return C13854v.b(null, null, this);
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n*L\n1#1,141:1\n*E\n"})
    public static final class b<T> implements InterfaceC13843j<T> {

        public final Mf.p<T, yf.f<? super Boolean>, Object> f93572b;

        @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1\n*L\n1#1,141:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1", f = "Limit.kt", i = {0}, l = {130}, m = "emit", n = {"this"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93573b;

            public Object f93574c;

            public int f93576e;

            public a(yf.f<? super a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93574c = obj;
                this.f93576e |= Integer.MIN_VALUE;
                return b.this.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
            this.f93572b = pVar;
        }

        @Nullable
        public Object a(T t10, @NotNull yf.f<? super P0> fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            if (((Boolean) this.f93572b.invoke(t10, fVar)).booleanValue()) {
                return P0.f98194a;
            }
            throw new AbortFlowException(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object obj;
            int i10;
            b<T> bVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93576e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93576e = i11 - Integer.MIN_VALUE;
                    obj = aVar.f93574c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93576e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.p<T, yf.f<? super Boolean>, Object> pVar = this.f93572b;
                        aVar.f93573b = this;
                        aVar.f93576e = 1;
                        obj = pVar.invoke(t10, aVar);
                        if (obj == l10) {
                            return l10;
                        }
                        bVar = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        bVar = (b) aVar.f93573b;
                        C14418j0.n(obj);
                    }
                    if (((Boolean) obj).booleanValue()) {
                        throw new AbortFlowException(bVar);
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            obj = aVar.f93574c;
            Object l102 = Af.d.l();
            i10 = aVar.f93576e;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,113:1\n23#2,5:114\n*E\n"})
    public static final class c<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93577b;

        public final int f93578c;

        public c(InterfaceC13842i interfaceC13842i, int i10) {
            this.f93577b = interfaceC13842i;
            this.f93578c = i10;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = this.f93577b.a(new d(new m0.f(), this.f93578c, interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    public static final class d<T> implements InterfaceC13843j {

        public final m0.f f93579b;

        public final int f93580c;

        public final InterfaceC13843j<T> f93581d;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1", f = "Limit.kt", i = {}, l = {25}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93582b;

            public final d<T> f93583c;

            public int f93584d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(d<? super T> dVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93583c = dVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93582b = obj;
                this.f93584d |= Integer.MIN_VALUE;
                return this.f93583c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(m0.f fVar, int i10, InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93579b = fVar;
            this.f93580c = i10;
            this.f93581d = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93584d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93584d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93582b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93584d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        m0.f fVar2 = this.f93579b;
                        int i12 = fVar2.f95752b;
                        if (i12 < this.f93580c) {
                            fVar2.f95752b = i12 + 1;
                            return P0.f98194a;
                        }
                        InterfaceC13843j<T> interfaceC13843j = this.f93581d;
                        aVar.f93584d = 1;
                        if (interfaceC13843j.emit(t10, aVar) == l10) {
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
            aVar = new a(this, fVar);
            Object obj2 = aVar.f93582b;
            Object l102 = Af.d.l();
            i10 = aVar.f93584d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,113:1\n34#2,10:114\n*E\n"})
    public static final class e<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93585b;

        public final Mf.p f93586c;

        public e(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93585b = interfaceC13842i;
            this.f93586c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = this.f93585b.a(new f(new m0.a(), interfaceC13843j, this.f93586c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    public static final class f<T> implements InterfaceC13843j {

        public final m0.a f93587b;

        public final InterfaceC13843j<T> f93588c;

        public final Mf.p<T, yf.f<? super Boolean>, Object> f93589d;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", i = {1, 1}, l = {37, 38, 40}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93590b;

            public Object f93591c;

            public Object f93592d;

            public final f<T> f93593e;

            public int f93594f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(f<? super T> fVar, yf.f<? super a> fVar2) {
                super(fVar2);
                this.f93593e = fVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93592d = obj;
                this.f93594f |= Integer.MIN_VALUE;
                return this.f93593e.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public f(m0.a aVar, InterfaceC13843j<? super T> interfaceC13843j, Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
            this.f93587b = aVar;
            this.f93588c = interfaceC13843j;
            this.f93589d = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            f<T> fVar2;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93594f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93594f = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93592d;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93594f;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        if (this.f93587b.f95747b) {
                            InterfaceC13843j<T> interfaceC13843j = this.f93588c;
                            aVar.f93594f = 1;
                            if (interfaceC13843j.emit(t10, aVar) == l10) {
                                return l10;
                            }
                            return P0.f98194a;
                        }
                        Mf.p<T, yf.f<? super Boolean>, Object> pVar = this.f93589d;
                        aVar.f93590b = this;
                        aVar.f93591c = t10;
                        aVar.f93594f = 2;
                        obj = pVar.invoke(t10, aVar);
                        if (obj == l10) {
                            return l10;
                        }
                        fVar2 = this;
                        if (!((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i10 == 1) {
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        if (i10 == 2) {
                            t10 = (T) aVar.f93591c;
                            fVar2 = (f) aVar.f93590b;
                            C14418j0.n(obj);
                            if (!((Boolean) obj).booleanValue()) {
                                return P0.f98194a;
                            }
                            fVar2.f93587b.f95747b = true;
                            InterfaceC13843j<T> interfaceC13843j2 = fVar2.f93588c;
                            aVar.f93590b = null;
                            aVar.f93591c = null;
                            aVar.f93594f = 3;
                            if (interfaceC13843j2.emit(t10, aVar) == l10) {
                                return l10;
                            }
                        } else {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            Object obj2 = aVar.f93592d;
            Object l102 = Af.d.l();
            i10 = aVar.f93594f;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {73}, m = "emitAbort$FlowKt__LimitKt", n = {"$this$emitAbort"}, s = {"L$0"})
    public static final class g<T> extends Bf.d {

        public Object f93595b;

        public Object f93596c;

        public int f93597d;

        public g(yf.f<? super g> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93596c = obj;
            this.f93597d |= Integer.MIN_VALUE;
            return C13854v.f(null, null, this);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,113:1\n53#2,3:114\n66#2,4:117\n*E\n"})
    public static final class h<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93598b;

        public final int f93599c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1", f = "Limit.kt", i = {0}, l = {116}, m = "collect", n = {"$this$take_u24lambda_u244"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93600b;

            public int f93601c;

            public Object f93603e;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93600b = obj;
                this.f93601c |= Integer.MIN_VALUE;
                return h.this.a(null, this);
            }
        }

        public h(InterfaceC13842i interfaceC13842i, int i10) {
            this.f93598b = interfaceC13842i;
            this.f93599c = i10;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(2:10|11)(2:17|18))(3:19|20|(1:22))|12|13|14))|25|6|7|(0)(0)|12|13|14) */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x002d, code lost:
        
            r8 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        
            kg.o.b(r8, r7);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93601c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93601c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93600b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93601c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        m0.f fVar2 = new m0.f();
                        InterfaceC13842i interfaceC13842i = this.f93598b;
                        i iVar = new i(fVar2, this.f93599c, interfaceC13843j);
                        aVar.f93603e = interfaceC13843j;
                        aVar.f93601c = 1;
                        Object a10 = interfaceC13842i.a(iVar, aVar);
                        interfaceC13843j = a10;
                        if (a10 == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        InterfaceC13843j<? super T> interfaceC13843j2 = (InterfaceC13843j) aVar.f93603e;
                        C14418j0.n(obj);
                        interfaceC13843j = interfaceC13843j2;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93600b;
            Object l102 = Af.d.l();
            i10 = aVar.f93601c;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    public static final class i<T> implements InterfaceC13843j {

        public final m0.f f93604b;

        public final int f93605c;

        public final InterfaceC13843j<T> f93606d;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", i = {}, l = {61, 63}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93607b;

            public final i<T> f93608c;

            public int f93609d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(i<? super T> iVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93608c = iVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93607b = obj;
                this.f93609d |= Integer.MIN_VALUE;
                return this.f93608c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public i(m0.f fVar, int i10, InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93604b = fVar;
            this.f93605c = i10;
            this.f93606d = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93609d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93609d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93607b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93609d;
                    if (i10 == 0) {
                        if (i10 == 1) {
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                        return P0.f98194a;
                    }
                    C14418j0.n(obj);
                    m0.f fVar2 = this.f93604b;
                    int i12 = fVar2.f95752b + 1;
                    fVar2.f95752b = i12;
                    if (i12 < this.f93605c) {
                        InterfaceC13843j<T> interfaceC13843j = this.f93606d;
                        aVar.f93609d = 1;
                        if (interfaceC13843j.emit(t10, aVar) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                    InterfaceC13843j<T> interfaceC13843j2 = this.f93606d;
                    aVar.f93609d = 2;
                    if (C13854v.f(interfaceC13843j2, t10, aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            Object obj2 = aVar.f93607b;
            Object l102 = Af.d.l();
            i10 = aVar.f93609d;
            if (i10 == 0) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,113:1\n85#2:114\n126#2,15:115\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n85#1:115,15\n*E\n"})
    public static final class j<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93610b;

        public final Mf.p f93611c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", i = {0}, l = {125}, m = "collect", n = {"collector$iv"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93612b;

            public int f93613c;

            public Object f93615e;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93612b = obj;
                this.f93613c |= Integer.MIN_VALUE;
                return j.this.a(null, this);
            }
        }

        public j(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93610b = interfaceC13842i;
            this.f93611c = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            k kVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93613c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93613c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93612b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93613c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        InterfaceC13842i interfaceC13842i = this.f93610b;
                        k kVar2 = new k(this.f93611c, interfaceC13843j);
                        try {
                            aVar.f93615e = kVar2;
                            aVar.f93613c = 1;
                            if (interfaceC13842i.a(kVar2, aVar) == l10) {
                                return l10;
                            }
                        } catch (AbortFlowException e10) {
                            e = e10;
                            kVar = kVar2;
                            kg.o.b(e, kVar);
                            return P0.f98194a;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kVar = (k) aVar.f93615e;
                        try {
                            C14418j0.n(obj);
                        } catch (AbortFlowException e11) {
                            e = e11;
                            kg.o.b(e, kVar);
                            return P0.f98194a;
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93612b;
            Object l102 = Af.d.l();
            i10 = aVar.f93613c;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n86#2,5:142\n*E\n"})
    public static final class k<T> implements InterfaceC13843j<T> {

        public final Mf.p f93616b;

        public final InterfaceC13843j f93617c;

        @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1\n*L\n1#1,141:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1", f = "Limit.kt", i = {0, 0, 1}, l = {142, 143}, m = "emit", n = {"this", "value", "this"}, s = {"L$0", "L$1", "L$0"})
        public static final class a extends Bf.d {

            public Object f93618b;

            public Object f93619c;

            public int f93620d;

            public Object f93622f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93619c = obj;
                this.f93620d |= Integer.MIN_VALUE;
                return k.this.emit(null, this);
            }
        }

        public k(Mf.p pVar, InterfaceC13843j interfaceC13843j) {
            this.f93616b = pVar;
            this.f93617c = interfaceC13843j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            boolean z10;
            Object obj;
            T t11;
            k<T> kVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93620d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93620d = i11 - Integer.MIN_VALUE;
                    Object obj2 = aVar.f93619c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93620d;
                    z10 = true;
                    if (i10 != 0) {
                        C14418j0.n(obj2);
                        Mf.p pVar = this.f93616b;
                        aVar.f93618b = this;
                        aVar.f93622f = t10;
                        aVar.f93620d = 1;
                        kotlin.jvm.internal.J.e(6);
                        Object invoke = pVar.invoke(t10, aVar);
                        kotlin.jvm.internal.J.e(7);
                        if (invoke == l10) {
                            return l10;
                        }
                        obj = invoke;
                        t11 = t10;
                        kVar = this;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            kVar = (k) aVar.f93618b;
                            C14418j0.n(obj2);
                            if (z10) {
                                return P0.f98194a;
                            }
                            throw new AbortFlowException(kVar);
                        }
                        Object obj3 = aVar.f93622f;
                        k<T> kVar2 = (k) aVar.f93618b;
                        C14418j0.n(obj2);
                        t11 = obj3;
                        kVar = kVar2;
                        obj = obj2;
                    }
                    if (((Boolean) obj).booleanValue()) {
                        z10 = false;
                    } else {
                        InterfaceC13843j interfaceC13843j = kVar.f93617c;
                        aVar.f93618b = kVar;
                        aVar.f93622f = null;
                        aVar.f93620d = 2;
                        if (interfaceC13843j.emit(t11, aVar) == l10) {
                            return l10;
                        }
                    }
                    if (z10) {
                    }
                }
            }
            aVar = new a(fVar);
            Object obj22 = aVar.f93619c;
            Object l102 = Af.d.l();
            i10 = aVar.f93620d;
            z10 = true;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
            if (z10) {
            }
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n126#2,15:142\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n*L\n119#1:142,15\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", f = "Limit.kt", i = {0}, l = {152}, m = "invokeSuspend", n = {"collector$iv"}, s = {"L$0"})
    public static final class l<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93623b;

        public Object f93624c;

        public final InterfaceC13842i<T> f93625d;

        public final Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super Boolean>, Object> f93626e;

        @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n*L\n1#1,141:1\n120#2:142\n*E\n"})
        public static final class a<T> implements InterfaceC13843j<T> {

            public final Mf.q f93627b;

            public final InterfaceC13843j f93628c;

            @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1\n*L\n1#1,141:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1", f = "Limit.kt", i = {0}, l = {142}, m = "emit", n = {"this"}, s = {"L$0"})
            public static final class C1822a extends Bf.d {

                public Object f93629b;

                public Object f93630c;

                public int f93631d;

                public C1822a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93630c = obj;
                    this.f93631d |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(Mf.q qVar, InterfaceC13843j interfaceC13843j) {
                this.f93627b = qVar;
                this.f93628c = interfaceC13843j;
            }

            /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005b  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                C1822a c1822a;
                Object obj;
                int i10;
                a<T> aVar;
                if (fVar instanceof C1822a) {
                    c1822a = (C1822a) fVar;
                    int i11 = c1822a.f93631d;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1822a.f93631d = i11 - Integer.MIN_VALUE;
                        obj = c1822a.f93630c;
                        Object l10 = Af.d.l();
                        i10 = c1822a.f93631d;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            Mf.q qVar = this.f93627b;
                            InterfaceC13843j interfaceC13843j = this.f93628c;
                            c1822a.f93629b = this;
                            c1822a.f93631d = 1;
                            kotlin.jvm.internal.J.e(6);
                            obj = qVar.n(interfaceC13843j, t10, c1822a);
                            kotlin.jvm.internal.J.e(7);
                            if (obj == l10) {
                                return l10;
                            }
                            aVar = this;
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            aVar = (a) c1822a.f93629b;
                            C14418j0.n(obj);
                        }
                        if (((Boolean) obj).booleanValue()) {
                            throw new AbortFlowException(aVar);
                        }
                        return P0.f98194a;
                    }
                }
                c1822a = new C1822a(fVar);
                obj = c1822a.f93630c;
                Object l102 = Af.d.l();
                i10 = c1822a.f93631d;
                if (i10 != 0) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public l(InterfaceC13842i<? extends T> interfaceC13842i, Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super Boolean>, ? extends Object> qVar, yf.f<? super l> fVar) {
            super(2, fVar);
            this.f93625d = interfaceC13842i;
            this.f93626e = qVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            l lVar = new l(this.f93625d, this.f93626e, fVar);
            lVar.f93624c = obj;
            return lVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a aVar;
            Object l10 = Af.d.l();
            int i10 = this.f93623b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93624c;
                InterfaceC13842i<T> interfaceC13842i = this.f93625d;
                a aVar2 = new a(this.f93626e, interfaceC13843j);
                try {
                    this.f93624c = aVar2;
                    this.f93623b = 1;
                    if (interfaceC13842i.a(aVar2, this) == l10) {
                        return l10;
                    }
                } catch (AbortFlowException e10) {
                    e = e10;
                    aVar = aVar2;
                    kg.o.b(e, aVar);
                    return P0.f98194a;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (a) this.f93624c;
                try {
                    C14418j0.n(obj);
                } catch (AbortFlowException e11) {
                    e = e11;
                    kg.o.b(e, aVar);
                    return P0.f98194a;
                }
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            return ((l) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super P0> fVar) {
        a aVar;
        int i10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f93571d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f93571d = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f93570c;
                Object l10 = Af.d.l();
                i10 = aVar.f93571d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j<? super Object> bVar = new b<>(pVar);
                    try {
                        aVar.f93569b = bVar;
                        aVar.f93571d = 1;
                        if (interfaceC13842i.a(bVar, aVar) == l10) {
                            return l10;
                        }
                    } catch (AbortFlowException e10) {
                        e = e10;
                        interfaceC13843j = bVar;
                        kg.o.b(e, interfaceC13843j);
                        return P0.f98194a;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (b) aVar.f93569b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e11) {
                        e = e11;
                        kg.o.b(e, interfaceC13843j);
                        return P0.f98194a;
                    }
                }
                return P0.f98194a;
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f93570c;
        Object l102 = Af.d.l();
        i10 = aVar.f93571d;
        if (i10 != 0) {
        }
        return P0.f98194a;
    }

    public static final <T> Object c(InterfaceC13842i<? extends T> interfaceC13842i, Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super P0> fVar) {
        b bVar = new b(pVar);
        try {
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(bVar, fVar);
            kotlin.jvm.internal.J.e(1);
        } catch (AbortFlowException e10) {
            kg.o.b(e10, bVar);
        }
        return P0.f98194a;
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        if (i10 >= 0) {
            return new c(interfaceC13842i, i10);
        }
        throw new IllegalArgumentException(("Drop count should be non-negative, but had " + i10).toString());
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return new e(interfaceC13842i, pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object f(InterfaceC13843j<? super T> interfaceC13843j, T t10, yf.f<? super P0> fVar) {
        g gVar;
        int i10;
        if (fVar instanceof g) {
            gVar = (g) fVar;
            int i11 = gVar.f93597d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                gVar.f93597d = i11 - Integer.MIN_VALUE;
                Object obj = gVar.f93596c;
                Object l10 = Af.d.l();
                i10 = gVar.f93597d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    gVar.f93595b = interfaceC13843j;
                    gVar.f93597d = 1;
                    if (interfaceC13843j.emit(t10, gVar) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (InterfaceC13843j) gVar.f93595b;
                    C14418j0.n(obj);
                }
                throw new AbortFlowException(interfaceC13843j);
            }
        }
        gVar = new g(fVar);
        Object obj2 = gVar.f93596c;
        Object l102 = Af.d.l();
        i10 = gVar.f93597d;
        if (i10 != 0) {
        }
        throw new AbortFlowException(interfaceC13843j);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        if (i10 > 0) {
            return new h(interfaceC13842i, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " should be positive").toString());
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return new j(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super Boolean>, ? extends Object> qVar) {
        return C13844k.J0(new l(interfaceC13842i, qVar, null));
    }
}
