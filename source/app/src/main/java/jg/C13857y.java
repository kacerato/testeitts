package jg;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"})
public final class C13857y {

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n93#2,2:142\n*E\n"})
    public static final class a<T> implements InterfaceC13843j<T> {

        public final m0.h f93677b;

        public a(m0.h hVar) {
            this.f93677b = hVar;
        }

        @Override
        @Nullable
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93677b.f95754b = t10;
            throw new AbortFlowException(this);
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n107#2,5:142\n*E\n"})
    public static final class b<T> implements InterfaceC13843j<T> {

        public final Mf.p f93678b;

        public final m0.h f93679c;

        @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1\n*L\n1#1,141:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", i = {0, 0}, l = {142}, m = "emit", n = {"this", "it"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93680b;

            public Object f93681c;

            public int f93682d;

            public Object f93684f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93681c = obj;
                this.f93682d |= Integer.MIN_VALUE;
                return b.this.emit(null, this);
            }
        }

        public b(Mf.p pVar, m0.h hVar) {
            this.f93678b = pVar;
            this.f93679c = hVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
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
                int i11 = aVar.f93682d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93682d = i11 - Integer.MIN_VALUE;
                    obj = aVar.f93681c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93682d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.p pVar = this.f93678b;
                        aVar.f93680b = this;
                        aVar.f93684f = t10;
                        aVar.f93682d = 1;
                        kotlin.jvm.internal.J.e(6);
                        obj = pVar.invoke(t10, aVar);
                        kotlin.jvm.internal.J.e(7);
                        if (obj == l10) {
                            return l10;
                        }
                        bVar = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        t10 = (T) aVar.f93684f;
                        bVar = (b) aVar.f93680b;
                        C14418j0.n(obj);
                    }
                    if (((Boolean) obj).booleanValue()) {
                        return P0.f98194a;
                    }
                    bVar.f93679c.f95754b = t10;
                    throw new AbortFlowException(bVar);
                }
            }
            aVar = new a(fVar);
            obj = aVar.f93681c;
            Object l102 = Af.d.l();
            i10 = aVar.f93682d;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class c<T> extends Bf.d {

        public Object f93685b;

        public Object f93686c;

        public Object f93687d;

        public int f93688e;

        public c(yf.f<? super c> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93687d = obj;
            this.f93688e |= Integer.MIN_VALUE;
            return C13844k.v0(null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0, 0}, l = {183}, m = "first", n = {"predicate", "result", "collector$iv"}, s = {"L$0", "L$1", "L$2"})
    public static final class d<T> extends Bf.d {

        public Object f93689b;

        public Object f93690c;

        public Object f93691d;

        public Object f93692e;

        public int f93693f;

        public d(yf.f<? super d> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93692e = obj;
            this.f93693f |= Integer.MIN_VALUE;
            return C13844k.u0(null, null, this);
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n125#2,2:142\n*E\n"})
    public static final class e<T> implements InterfaceC13843j<T> {

        public final m0.h f93694b;

        public e(m0.h hVar) {
            this.f93694b = hVar;
        }

        @Override
        @Nullable
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93694b.f95754b = t10;
            throw new AbortFlowException(this);
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n138#2,5:142\n*E\n"})
    public static final class f<T> implements InterfaceC13843j<T> {

        public final Mf.p f93695b;

        public final m0.h f93696c;

        @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1\n*L\n1#1,141:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2", f = "Reduce.kt", i = {0, 0}, l = {142}, m = "emit", n = {"this", "it"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93697b;

            public Object f93698c;

            public int f93699d;

            public Object f93701f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93698c = obj;
                this.f93699d |= Integer.MIN_VALUE;
                return f.this.emit(null, this);
            }
        }

        public f(Mf.p pVar, m0.h hVar) {
            this.f93695b = pVar;
            this.f93696c = hVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
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
            f<T> fVar2;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93699d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93699d = i11 - Integer.MIN_VALUE;
                    obj = aVar.f93698c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93699d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.p pVar = this.f93695b;
                        aVar.f93697b = this;
                        aVar.f93701f = t10;
                        aVar.f93699d = 1;
                        kotlin.jvm.internal.J.e(6);
                        obj = pVar.invoke(t10, aVar);
                        kotlin.jvm.internal.J.e(7);
                        if (obj == l10) {
                            return l10;
                        }
                        fVar2 = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        t10 = (T) aVar.f93701f;
                        fVar2 = (f) aVar.f93697b;
                        C14418j0.n(obj);
                    }
                    if (((Boolean) obj).booleanValue()) {
                        return P0.f98194a;
                    }
                    fVar2.f93696c.f95754b = t10;
                    throw new AbortFlowException(fVar2);
                }
            }
            aVar = new a(fVar);
            obj = aVar.f93698c;
            Object l102 = Af.d.l();
            i10 = aVar.f93699d;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class g<T> extends Bf.d {

        public Object f93702b;

        public Object f93703c;

        public Object f93704d;

        public int f93705e;

        public g(yf.f<? super g> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93704d = obj;
            this.f93705e |= Integer.MIN_VALUE;
            return C13844k.x0(null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class h<T> extends Bf.d {

        public Object f93706b;

        public Object f93707c;

        public Object f93708d;

        public int f93709e;

        public h(yf.f<? super h> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93708d = obj;
            this.f93709e |= Integer.MIN_VALUE;
            return C13844k.w0(null, null, this);
        }
    }

    @t0({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1\n*L\n1#1,172:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {44}, m = "fold", n = {"accumulator"}, s = {"L$0"})
    public static final class i<T, R> extends Bf.d {

        public Object f93710b;

        public Object f93711c;

        public int f93712d;

        public i(yf.f<? super i> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93711c = obj;
            this.f93712d |= Integer.MIN_VALUE;
            return C13857y.e(null, null, null, this);
        }
    }

    @t0({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2\n*L\n1#1,172:1\n*E\n"})
    public static final class j<T> implements InterfaceC13843j {

        public final m0.h<R> f93713b;

        public final Mf.q<R, T, yf.f<? super R>, Object> f93714c;

        @t0({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1\n*L\n1#1,172:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", i = {}, l = {45}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93715b;

            public Object f93716c;

            public final j<T> f93717d;

            public int f93718e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(j<? super T> jVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93717d = jVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93716c = obj;
                this.f93718e |= Integer.MIN_VALUE;
                return this.f93717d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public j(m0.h<R> hVar, Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
            this.f93713b = hVar;
            this.f93714c = qVar;
        }

        @Nullable
        public final Object a(T t10, @NotNull yf.f<? super P0> fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(this, fVar);
            kotlin.jvm.internal.J.e(5);
            m0.h<R> hVar = this.f93713b;
            hVar.f95754b = (T) this.f93714c.n(hVar.f95754b, t10, fVar);
            return P0.f98194a;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            m0.h hVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93718e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93718e = i11 - Integer.MIN_VALUE;
                    T t11 = (T) aVar.f93716c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93718e;
                    if (i10 != 0) {
                        C14418j0.n(t11);
                        m0.h hVar2 = this.f93713b;
                        Mf.q<R, T, yf.f<? super R>, Object> qVar = this.f93714c;
                        T t12 = hVar2.f95754b;
                        aVar.f93715b = hVar2;
                        aVar.f93718e = 1;
                        Object n10 = qVar.n(t12, t10, aVar);
                        if (n10 == l10) {
                            return l10;
                        }
                        t11 = (T) n10;
                        hVar = hVar2;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        hVar = (m0.h) aVar.f93715b;
                        C14418j0.n(t11);
                    }
                    hVar.f95754b = t11;
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            T t112 = (T) aVar.f93716c;
            Object l102 = Af.d.l();
            i10 = aVar.f93718e;
            if (i10 != 0) {
            }
            hVar.f95754b = t112;
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {155}, m = "last", n = {"result"}, s = {"L$0"})
    public static final class k<T> extends Bf.d {

        public Object f93719b;

        public Object f93720c;

        public int f93721d;

        public k(yf.f<? super k> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93720c = obj;
            this.f93721d |= Integer.MIN_VALUE;
            return C13844k.T0(null, this);
        }
    }

    public static final class l<T> implements InterfaceC13843j {

        public final m0.h<Object> f93722b;

        public l(m0.h<Object> hVar) {
            this.f93722b = hVar;
        }

        @Override
        @Nullable
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93722b.f95754b = t10;
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {167}, m = "lastOrNull", n = {"result"}, s = {"L$0"})
    public static final class m<T> extends Bf.d {

        public Object f93723b;

        public Object f93724c;

        public int f93725d;

        public m(yf.f<? super m> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93724c = obj;
            this.f93725d |= Integer.MIN_VALUE;
            return C13844k.U0(null, this);
        }
    }

    public static final class n<T> implements InterfaceC13843j {

        public final m0.h<T> f93726b;

        public n(m0.h<T> hVar) {
            this.f93726b = hVar;
        }

        @Override
        @Nullable
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93726b.f95754b = t10;
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {22}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
    public static final class o<S, T extends S> extends Bf.d {

        public Object f93727b;

        public Object f93728c;

        public int f93729d;

        public o(yf.f<? super o> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93728c = obj;
            this.f93729d |= Integer.MIN_VALUE;
            return C13844k.t1(null, null, this);
        }
    }

    public static final class p<T> implements InterfaceC13843j {

        public final m0.h<Object> f93730b;

        public final Mf.q<S, T, yf.f<? super S>, Object> f93731c;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2", f = "Reduce.kt", i = {}, l = {25}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93732b;

            public Object f93733c;

            public final p<T> f93734d;

            public int f93735e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(p<? super T> pVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93734d = pVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93733c = obj;
                this.f93735e |= Integer.MIN_VALUE;
                return this.f93734d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public p(m0.h<Object> hVar, Mf.q<? super S, ? super T, ? super yf.f<? super S>, ? extends Object> qVar) {
            this.f93730b = hVar;
            this.f93731c = qVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            m0.h<Object> hVar;
            T t11;
            m0.h<Object> hVar2;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93735e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93735e = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93733c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93735e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        hVar = this.f93730b;
                        Object obj2 = hVar.f95754b;
                        if (obj2 != kg.s.f95204a) {
                            Mf.q<S, T, yf.f<? super S>, Object> qVar = this.f93731c;
                            aVar.f93732b = hVar;
                            aVar.f93735e = 1;
                            Object n10 = qVar.n(obj2, t10, aVar);
                            if (n10 == l10) {
                                return l10;
                            }
                            t11 = n10;
                            hVar2 = hVar;
                        }
                        hVar.f95754b = t10;
                        return P0.f98194a;
                    }
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar2 = (m0.h) aVar.f93732b;
                    C14418j0.n(obj);
                    t11 = obj;
                    T t12 = t11;
                    hVar = hVar2;
                    t10 = t12;
                    hVar.f95754b = t10;
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            Object obj3 = aVar.f93733c;
            Object l102 = Af.d.l();
            i10 = aVar.f93735e;
            if (i10 != 0) {
            }
            T t122 = t11;
            hVar = hVar2;
            t10 = t122;
            hVar.f95754b = t10;
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {57}, m = "single", n = {"result"}, s = {"L$0"})
    public static final class q<T> extends Bf.d {

        public Object f93736b;

        public Object f93737c;

        public int f93738d;

        public q(yf.f<? super q> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93737c = obj;
            this.f93738d |= Integer.MIN_VALUE;
            return C13844k.I1(null, this);
        }
    }

    @t0({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$single$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1#2:173\n*E\n"})
    public static final class r<T> implements InterfaceC13843j {

        public final m0.h<Object> f93739b;

        public r(m0.h<Object> hVar) {
            this.f93739b = hVar;
        }

        @Override
        @Nullable
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            m0.h<Object> hVar = this.f93739b;
            if (hVar.f95754b != kg.s.f95204a) {
                throw new IllegalArgumentException("Flow has more than one element");
            }
            hVar.f95754b = t10;
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n74#2,7:142\n*E\n"})
    public static final class s<T> implements InterfaceC13843j<T> {

        public final m0.h f93740b;

        public s(m0.h hVar) {
            this.f93740b = hVar;
        }

        @Override
        @Nullable
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            m0.h hVar = this.f93740b;
            T t11 = hVar.f95754b;
            T t12 = (T) kg.s.f95204a;
            if (t11 == t12) {
                hVar.f95754b = t10;
                return P0.f98194a;
            }
            hVar.f95754b = t12;
            throw new AbortFlowException(this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class t<T> extends Bf.d {

        public Object f93741b;

        public Object f93742c;

        public Object f93743d;

        public int f93744e;

        public t(yf.f<? super t> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93743d = obj;
            this.f93744e |= Integer.MIN_VALUE;
            return C13844k.J1(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        d dVar;
        int i10;
        Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar2;
        m0.h hVar;
        AbortFlowException e10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        T t10;
        if (fVar instanceof d) {
            dVar = (d) fVar;
            int i11 = dVar.f93693f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar.f93693f = i11 - Integer.MIN_VALUE;
                Object obj = dVar.f93692e;
                Object l10 = Af.d.l();
                i10 = dVar.f93693f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = (T) kg.s.f95204a;
                    InterfaceC13843j<? super Object> bVar = new b<>(pVar, hVar2);
                    try {
                        dVar.f93689b = pVar;
                        dVar.f93690c = hVar2;
                        dVar.f93691d = bVar;
                        dVar.f93693f = 1;
                        if (interfaceC13842i.a(bVar, dVar) == l10) {
                            return l10;
                        }
                        pVar2 = pVar;
                        hVar = hVar2;
                    } catch (AbortFlowException e11) {
                        pVar2 = pVar;
                        hVar = hVar2;
                        e10 = e11;
                        interfaceC13843j = bVar;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 == kg.s.f95204a) {
                        }
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (b) dVar.f93691d;
                    hVar = (m0.h) dVar.f93690c;
                    pVar2 = (Mf.p) dVar.f93689b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e12) {
                        e10 = e12;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 == kg.s.f95204a) {
                        }
                    }
                }
                t10 = hVar.f95754b;
                if (t10 == kg.s.f95204a) {
                    return t10;
                }
                throw new NoSuchElementException("Expected at least one element matching the predicate " + ((Object) pVar2));
            }
        }
        dVar = new d(fVar);
        Object obj2 = dVar.f93692e;
        Object l102 = Af.d.l();
        i10 = dVar.f93693f;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 == kg.s.f95204a) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        c cVar;
        int i10;
        m0.h hVar;
        AbortFlowException e10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        T t10;
        if (fVar instanceof c) {
            cVar = (c) fVar;
            int i11 = cVar.f93688e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f93688e = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f93687d;
                Object l10 = Af.d.l();
                i10 = cVar.f93688e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = (T) kg.s.f95204a;
                    InterfaceC13843j<? super Object> aVar = new a<>(hVar2);
                    try {
                        cVar.f93685b = hVar2;
                        cVar.f93686c = aVar;
                        cVar.f93688e = 1;
                        if (interfaceC13842i.a(aVar, cVar) == l10) {
                            return l10;
                        }
                        hVar = hVar2;
                    } catch (AbortFlowException e11) {
                        hVar = hVar2;
                        e10 = e11;
                        interfaceC13843j = aVar;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 == kg.s.f95204a) {
                        }
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (a) cVar.f93686c;
                    hVar = (m0.h) cVar.f93685b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e12) {
                        e10 = e12;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 == kg.s.f95204a) {
                        }
                    }
                }
                t10 = hVar.f95754b;
                if (t10 == kg.s.f95204a) {
                    return t10;
                }
                throw new NoSuchElementException("Expected at least one element");
            }
        }
        cVar = new c(fVar);
        Object obj2 = cVar.f93687d;
        Object l102 = Af.d.l();
        i10 = cVar.f93688e;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 == kg.s.f95204a) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object c(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        h hVar;
        int i10;
        m0.h hVar2;
        AbortFlowException e10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        if (fVar instanceof h) {
            hVar = (h) fVar;
            int i11 = hVar.f93709e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hVar.f93709e = i11 - Integer.MIN_VALUE;
                Object obj = hVar.f93708d;
                Object l10 = Af.d.l();
                i10 = hVar.f93709e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar3 = new m0.h();
                    InterfaceC13843j<? super Object> fVar2 = new f<>(pVar, hVar3);
                    try {
                        hVar.f93706b = hVar3;
                        hVar.f93707c = fVar2;
                        hVar.f93709e = 1;
                        if (interfaceC13842i.a(fVar2, hVar) == l10) {
                            return l10;
                        }
                        hVar2 = hVar3;
                    } catch (AbortFlowException e11) {
                        hVar2 = hVar3;
                        e10 = e11;
                        interfaceC13843j = fVar2;
                        kg.o.b(e10, interfaceC13843j);
                        return hVar2.f95754b;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (f) hVar.f93707c;
                    hVar2 = (m0.h) hVar.f93706b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e12) {
                        e10 = e12;
                        kg.o.b(e10, interfaceC13843j);
                        return hVar2.f95754b;
                    }
                }
                return hVar2.f95754b;
            }
        }
        hVar = new h(fVar);
        Object obj2 = hVar.f93708d;
        Object l102 = Af.d.l();
        i10 = hVar.f93709e;
        if (i10 != 0) {
        }
        return hVar2.f95754b;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        g gVar;
        int i10;
        m0.h hVar;
        AbortFlowException e10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        if (fVar instanceof g) {
            gVar = (g) fVar;
            int i11 = gVar.f93705e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                gVar.f93705e = i11 - Integer.MIN_VALUE;
                Object obj = gVar.f93704d;
                Object l10 = Af.d.l();
                i10 = gVar.f93705e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    InterfaceC13843j<? super Object> eVar = new e<>(hVar2);
                    try {
                        gVar.f93702b = hVar2;
                        gVar.f93703c = eVar;
                        gVar.f93705e = 1;
                        if (interfaceC13842i.a(eVar, gVar) == l10) {
                            return l10;
                        }
                        hVar = hVar2;
                    } catch (AbortFlowException e11) {
                        hVar = hVar2;
                        e10 = e11;
                        interfaceC13843j = eVar;
                        kg.o.b(e10, interfaceC13843j);
                        return hVar.f95754b;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (e) gVar.f93703c;
                    hVar = (m0.h) gVar.f93702b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e12) {
                        e10 = e12;
                        kg.o.b(e10, interfaceC13843j);
                        return hVar.f95754b;
                    }
                }
                return hVar.f95754b;
            }
        }
        gVar = new g(fVar);
        Object obj2 = gVar.f93704d;
        Object l102 = Af.d.l();
        i10 = gVar.f93705e;
        if (i10 != 0) {
        }
        return hVar.f95754b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T, R> Object e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar, @NotNull yf.f<? super R> fVar) {
        i iVar;
        int i10;
        m0.h hVar;
        if (fVar instanceof i) {
            iVar = (i) fVar;
            int i11 = iVar.f93712d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                iVar.f93712d = i11 - Integer.MIN_VALUE;
                Object obj = iVar.f93711c;
                Object l10 = Af.d.l();
                i10 = iVar.f93712d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = r10;
                    InterfaceC13843j<? super Object> jVar = new j<>(hVar2, qVar);
                    iVar.f93710b = hVar2;
                    iVar.f93712d = 1;
                    if (interfaceC13842i.a(jVar, iVar) == l10) {
                        return l10;
                    }
                    hVar = hVar2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) iVar.f93710b;
                    C14418j0.n(obj);
                }
                return hVar.f95754b;
            }
        }
        iVar = new i(fVar);
        Object obj2 = iVar.f93711c;
        Object l102 = Af.d.l();
        i10 = iVar.f93712d;
        if (i10 != 0) {
        }
        return hVar.f95754b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> Object f(InterfaceC13842i<? extends T> interfaceC13842i, R r10, Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar, yf.f<? super R> fVar) {
        m0.h hVar = new m0.h();
        hVar.f95754b = r10;
        j jVar = new j(hVar, qVar);
        kotlin.jvm.internal.J.e(0);
        interfaceC13842i.a(jVar, fVar);
        kotlin.jvm.internal.J.e(1);
        return hVar.f95754b;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        k kVar;
        int i10;
        m0.h hVar;
        T t10;
        if (fVar instanceof k) {
            kVar = (k) fVar;
            int i11 = kVar.f93721d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                kVar.f93721d = i11 - Integer.MIN_VALUE;
                Object obj = kVar.f93720c;
                Object l10 = Af.d.l();
                i10 = kVar.f93721d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = (T) kg.s.f95204a;
                    InterfaceC13843j<? super Object> lVar = new l<>(hVar2);
                    kVar.f93719b = hVar2;
                    kVar.f93721d = 1;
                    if (interfaceC13842i.a(lVar, kVar) == l10) {
                        return l10;
                    }
                    hVar = hVar2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) kVar.f93719b;
                    C14418j0.n(obj);
                }
                t10 = hVar.f95754b;
                if (t10 == kg.s.f95204a) {
                    return t10;
                }
                throw new NoSuchElementException("Expected at least one element");
            }
        }
        kVar = new k(fVar);
        Object obj2 = kVar.f93720c;
        Object l102 = Af.d.l();
        i10 = kVar.f93721d;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 == kg.s.f95204a) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        m mVar;
        int i10;
        m0.h hVar;
        if (fVar instanceof m) {
            mVar = (m) fVar;
            int i11 = mVar.f93725d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                mVar.f93725d = i11 - Integer.MIN_VALUE;
                Object obj = mVar.f93724c;
                Object l10 = Af.d.l();
                i10 = mVar.f93725d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    InterfaceC13843j<? super Object> nVar = new n<>(hVar2);
                    mVar.f93723b = hVar2;
                    mVar.f93725d = 1;
                    if (interfaceC13842i.a(nVar, mVar) == l10) {
                        return l10;
                    }
                    hVar = hVar2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) mVar.f93723b;
                    C14418j0.n(obj);
                }
                return hVar.f95754b;
            }
        }
        mVar = new m(fVar);
        Object obj2 = mVar.f93724c;
        Object l102 = Af.d.l();
        i10 = mVar.f93725d;
        if (i10 != 0) {
        }
        return hVar.f95754b;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v1, types: [mg.T, T] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <S, T extends S> Object i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super S, ? super T, ? super yf.f<? super S>, ? extends Object> qVar, @NotNull yf.f<? super S> fVar) {
        o oVar;
        int i10;
        m0.h hVar;
        T t10;
        if (fVar instanceof o) {
            oVar = (o) fVar;
            int i11 = oVar.f93729d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                oVar.f93729d = i11 - Integer.MIN_VALUE;
                Object obj = oVar.f93728c;
                Object l10 = Af.d.l();
                i10 = oVar.f93729d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = kg.s.f95204a;
                    InterfaceC13843j<? super Object> pVar = new p<>(hVar2, qVar);
                    oVar.f93727b = hVar2;
                    oVar.f93729d = 1;
                    if (interfaceC13842i.a(pVar, oVar) == l10) {
                        return l10;
                    }
                    hVar = hVar2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) oVar.f93727b;
                    C14418j0.n(obj);
                }
                t10 = hVar.f95754b;
                if (t10 == kg.s.f95204a) {
                    return t10;
                }
                throw new NoSuchElementException("Empty flow can't be reduced");
            }
        }
        oVar = new o(fVar);
        Object obj2 = oVar.f93728c;
        Object l102 = Af.d.l();
        i10 = oVar.f93729d;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 == kg.s.f95204a) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object j(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        q qVar;
        int i10;
        m0.h hVar;
        T t10;
        if (fVar instanceof q) {
            qVar = (q) fVar;
            int i11 = qVar.f93738d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                qVar.f93738d = i11 - Integer.MIN_VALUE;
                Object obj = qVar.f93737c;
                Object l10 = Af.d.l();
                i10 = qVar.f93738d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = (T) kg.s.f95204a;
                    InterfaceC13843j<? super Object> rVar = new r<>(hVar2);
                    qVar.f93736b = hVar2;
                    qVar.f93738d = 1;
                    if (interfaceC13842i.a(rVar, qVar) == l10) {
                        return l10;
                    }
                    hVar = hVar2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    hVar = (m0.h) qVar.f93736b;
                    C14418j0.n(obj);
                }
                t10 = hVar.f95754b;
                if (t10 == kg.s.f95204a) {
                    return t10;
                }
                throw new NoSuchElementException("Flow is empty");
            }
        }
        qVar = new q(fVar);
        Object obj2 = qVar.f93737c;
        Object l102 = Af.d.l();
        i10 = qVar.f93738d;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 == kg.s.f95204a) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0068 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object k(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        t tVar;
        int i10;
        m0.h hVar;
        AbortFlowException e10;
        InterfaceC13843j<? super Object> interfaceC13843j;
        T t10;
        if (fVar instanceof t) {
            tVar = (t) fVar;
            int i11 = tVar.f93744e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tVar.f93744e = i11 - Integer.MIN_VALUE;
                Object obj = tVar.f93743d;
                Object l10 = Af.d.l();
                i10 = tVar.f93744e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.h hVar2 = new m0.h();
                    hVar2.f95754b = (T) kg.s.f95204a;
                    InterfaceC13843j<? super Object> sVar = new s<>(hVar2);
                    try {
                        tVar.f93741b = hVar2;
                        tVar.f93742c = sVar;
                        tVar.f93744e = 1;
                        if (interfaceC13842i.a(sVar, tVar) == l10) {
                            return l10;
                        }
                        hVar = hVar2;
                    } catch (AbortFlowException e11) {
                        hVar = hVar2;
                        e10 = e11;
                        interfaceC13843j = sVar;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 != kg.s.f95204a) {
                        }
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13843j = (s) tVar.f93742c;
                    hVar = (m0.h) tVar.f93741b;
                    try {
                        C14418j0.n(obj);
                    } catch (AbortFlowException e12) {
                        e10 = e12;
                        kg.o.b(e10, interfaceC13843j);
                        t10 = hVar.f95754b;
                        if (t10 != kg.s.f95204a) {
                        }
                    }
                }
                t10 = hVar.f95754b;
                if (t10 != kg.s.f95204a) {
                    return null;
                }
                return t10;
            }
        }
        tVar = new t(fVar);
        Object obj2 = tVar.f93743d;
        Object l102 = Af.d.l();
        i10 = tVar.f93744e;
        if (i10 != 0) {
        }
        t10 = hVar.f95754b;
        if (t10 != kg.s.f95204a) {
        }
    }
}
