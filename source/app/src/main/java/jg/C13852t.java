package jg;

import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.C14436t;
import nf.InterfaceC14401b;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n107#2:223\n107#2:224\n107#2:225\n107#2:226\n75#3:227\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n50#1:223\n76#1:224\n146#1:225\n181#1:226\n218#1:227\n*E\n"})
public final class C13852t {

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", i = {0}, l = {216}, m = "invokeSafely$FlowKt__EmittersKt", n = {"cause"}, s = {"L$0"})
    public static final class a<T> extends Bf.d {

        public Object f93487b;

        public Object f93488c;

        public int f93489d;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93488c = obj;
            this.f93489d |= Integer.MIN_VALUE;
            return C13852t.c(null, null, null, this);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n147#2,13:114\n160#2,6:128\n329#3:127\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n159#1:127\n*E\n"})
    public static final class b<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93490b;

        public final Mf.q f93491c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 1, 2}, l = {115, 122, 129}, m = "collect", n = {"this", "$this$onCompletion_u24lambda_u242", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "sc"}, s = {"L$0", "L$1", "L$0", "L$0"})
        public static final class a extends Bf.d {

            public Object f93492b;

            public int f93493c;

            public Object f93495e;

            public Object f93496f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93492b = obj;
                this.f93493c |= Integer.MIN_VALUE;
                return b.this.a(null, this);
            }
        }

        public b(InterfaceC13842i interfaceC13842i, Mf.q qVar) {
            this.f93490b = interfaceC13842i;
            this.f93491c = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ab A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object l10;
            int i10;
            b<T> bVar;
            a0 a0Var;
            Mf.q qVar;
            kg.t tVar;
            Throwable th2;
            kg.t tVar2;
            Object n10;
            try {
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f93493c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f93493c = i11 - Integer.MIN_VALUE;
                        Object obj = aVar.f93492b;
                        l10 = Af.d.l();
                        i10 = aVar.f93493c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            try {
                                InterfaceC13842i interfaceC13842i = this.f93490b;
                                aVar.f93495e = this;
                                aVar.f93496f = interfaceC13843j;
                                aVar.f93493c = 1;
                                if (interfaceC13842i.a(interfaceC13843j, aVar) == l10) {
                                    return l10;
                                }
                                bVar = this;
                            } catch (Throwable th3) {
                                th = th3;
                                bVar = this;
                                a0Var = new a0(th);
                                qVar = bVar.f93491c;
                                aVar.f93495e = th;
                                aVar.f93496f = null;
                                aVar.f93493c = 2;
                                if (C13852t.c(a0Var, qVar, th, aVar) != l10) {
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    Throwable th4 = (Throwable) aVar.f93495e;
                                    C14418j0.n(obj);
                                    throw th4;
                                }
                                if (i10 != 3) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                tVar2 = (kg.t) aVar.f93495e;
                                try {
                                    C14418j0.n(obj);
                                    tVar2.releaseIntercepted();
                                    return P0.f98194a;
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    tVar2.releaseIntercepted();
                                    throw th2;
                                }
                            }
                            interfaceC13843j = (InterfaceC13843j) aVar.f93496f;
                            bVar = (b) aVar.f93495e;
                            try {
                                C14418j0.n(obj);
                            } catch (Throwable th6) {
                                th = th6;
                                a0Var = new a0(th);
                                qVar = bVar.f93491c;
                                aVar.f93495e = th;
                                aVar.f93496f = null;
                                aVar.f93493c = 2;
                                if (C13852t.c(a0Var, qVar, th, aVar) != l10) {
                                    return l10;
                                }
                                throw th;
                            }
                        }
                        tVar = new kg.t(interfaceC13843j, aVar.getContext());
                        Mf.q qVar2 = bVar.f93491c;
                        aVar.f93495e = tVar;
                        aVar.f93496f = null;
                        aVar.f93493c = 3;
                        kotlin.jvm.internal.J.e(6);
                        n10 = qVar2.n(tVar, null, aVar);
                        kotlin.jvm.internal.J.e(7);
                        if (n10 != l10) {
                            return l10;
                        }
                        tVar2 = tVar;
                        tVar2.releaseIntercepted();
                        return P0.f98194a;
                    }
                }
                Mf.q qVar22 = bVar.f93491c;
                aVar.f93495e = tVar;
                aVar.f93496f = null;
                aVar.f93493c = 3;
                kotlin.jvm.internal.J.e(6);
                n10 = qVar22.n(tVar, null, aVar);
                kotlin.jvm.internal.J.e(7);
                if (n10 != l10) {
                }
            } catch (Throwable th7) {
                th2 = th7;
                tVar2 = tVar;
                tVar2.releaseIntercepted();
                throw th2;
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93492b;
            l10 = Af.d.l();
            i10 = aVar.f93493c;
            if (i10 != 0) {
            }
            tVar = new kg.t(interfaceC13843j, aVar.getContext());
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n182#2,7:114\n189#2,7:122\n329#3:121\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n188#1:121\n*E\n"})
    public static final class c<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93497b;

        public final Mf.p f93498c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 0, 1}, l = {115, 123}, m = "collect", n = {"this", "$this$onEmpty_u24lambda_u243", "isEmpty", "collector"}, s = {"L$0", "L$1", "L$2", "L$0"})
        public static final class a extends Bf.d {

            public Object f93499b;

            public int f93500c;

            public Object f93502e;

            public Object f93503f;

            public Object f93504g;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93499b = obj;
                this.f93500c |= Integer.MIN_VALUE;
                return c.this.a(null, this);
            }
        }

        public c(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93497b = interfaceC13842i;
            this.f93498c = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
        /* JADX WARN: Type inference failed for: r7v0, types: [jg.j<? super T>, jg.j, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v1, types: [kg.t] */
        /* JADX WARN: Type inference failed for: r7v15 */
        /* JADX WARN: Type inference failed for: r7v16 */
        /* JADX WARN: Type inference failed for: r7v7, types: [kg.t] */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            c<T> cVar;
            InterfaceC13843j interfaceC13843j2;
            m0.a aVar2;
            try {
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f93500c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f93500c = i11 - Integer.MIN_VALUE;
                        Object obj = aVar.f93499b;
                        Object l10 = Af.d.l();
                        i10 = aVar.f93500c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            m0.a aVar3 = new m0.a();
                            aVar3.f95747b = true;
                            InterfaceC13842i interfaceC13842i = this.f93497b;
                            d dVar = new d(aVar3, interfaceC13843j);
                            aVar.f93502e = this;
                            aVar.f93503f = interfaceC13843j;
                            aVar.f93504g = aVar3;
                            aVar.f93500c = 1;
                            if (interfaceC13842i.a(dVar, aVar) == l10) {
                                return l10;
                            }
                            cVar = this;
                            interfaceC13843j2 = interfaceC13843j;
                            aVar2 = aVar3;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                kg.t tVar = (kg.t) aVar.f93502e;
                                C14418j0.n(obj);
                                interfaceC13843j = tVar;
                                return P0.f98194a;
                            }
                            aVar2 = (m0.a) aVar.f93504g;
                            interfaceC13843j2 = (InterfaceC13843j) aVar.f93503f;
                            cVar = (c) aVar.f93502e;
                            C14418j0.n(obj);
                        }
                        if (aVar2.f95747b) {
                            kg.t tVar2 = new kg.t(interfaceC13843j2, aVar.getContext());
                            Mf.p pVar = cVar.f93498c;
                            aVar.f93502e = tVar2;
                            aVar.f93503f = null;
                            aVar.f93504g = null;
                            aVar.f93500c = 2;
                            kotlin.jvm.internal.J.e(6);
                            Object invoke = pVar.invoke(tVar2, aVar);
                            kotlin.jvm.internal.J.e(7);
                            interfaceC13843j = tVar2;
                            if (invoke == l10) {
                                return l10;
                            }
                        }
                        return P0.f98194a;
                    }
                }
                if (i10 != 0) {
                }
                if (aVar2.f95747b) {
                }
                return P0.f98194a;
            } finally {
                interfaceC13843j.releaseIntercepted();
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93499b;
            Object l102 = Af.d.l();
            i10 = aVar.f93500c;
        }
    }

    public static final class d<T> implements InterfaceC13843j {

        public final m0.a f93505b;

        public final InterfaceC13843j<T> f93506c;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$1$1", f = "Emitters.kt", i = {}, l = {185}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93507b;

            public final d<T> f93508c;

            public int f93509d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(d<? super T> dVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93508c = dVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93507b = obj;
                this.f93509d |= Integer.MIN_VALUE;
                return this.f93508c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(m0.a aVar, InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93505b = aVar;
            this.f93506c = interfaceC13843j;
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
                int i11 = aVar.f93509d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93509d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93507b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93509d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        this.f93505b.f95747b = false;
                        InterfaceC13843j<T> interfaceC13843j = this.f93506c;
                        aVar.f93509d = 1;
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
            Object obj2 = aVar.f93507b;
            Object l102 = Af.d.l();
            i10 = aVar.f93509d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"})
    public static final class e<T> implements InterfaceC13842i<T> {

        public final Mf.p f93510b;

        public final InterfaceC13842i f93511c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 0}, l = {117, 121}, m = "collect", n = {"this", "$this$onStart_u24lambda_u241", "safeCollector"}, s = {"L$0", "L$1", "L$2"})
        public static final class a extends Bf.d {

            public Object f93512b;

            public int f93513c;

            public Object f93515e;

            public Object f93516f;

            public Object f93517g;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93512b = obj;
                this.f93513c |= Integer.MIN_VALUE;
                return e.this.a(null, this);
            }
        }

        public e(Mf.p pVar, InterfaceC13842i interfaceC13842i) {
            this.f93510b = pVar;
            this.f93511c = interfaceC13842i;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0082 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object l10;
            int i10;
            Throwable th2;
            kg.t tVar;
            e<T> eVar;
            InterfaceC13843j<? super T> interfaceC13843j2;
            InterfaceC13842i interfaceC13842i;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93513c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93513c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93512b;
                    l10 = Af.d.l();
                    i10 = aVar.f93513c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        kg.t tVar2 = new kg.t(interfaceC13843j, aVar.getContext());
                        try {
                            Mf.p pVar = this.f93510b;
                            aVar.f93515e = this;
                            aVar.f93516f = interfaceC13843j;
                            aVar.f93517g = tVar2;
                            aVar.f93513c = 1;
                            kotlin.jvm.internal.J.e(6);
                            Object invoke = pVar.invoke(tVar2, aVar);
                            kotlin.jvm.internal.J.e(7);
                            if (invoke == l10) {
                                return l10;
                            }
                            eVar = this;
                            interfaceC13843j2 = interfaceC13843j;
                            tVar = tVar2;
                        } catch (Throwable th3) {
                            th2 = th3;
                            tVar = tVar2;
                            tVar.releaseIntercepted();
                            throw th2;
                        }
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        tVar = (kg.t) aVar.f93517g;
                        interfaceC13843j2 = (InterfaceC13843j) aVar.f93516f;
                        eVar = (e) aVar.f93515e;
                        try {
                            C14418j0.n(obj);
                        } catch (Throwable th4) {
                            th2 = th4;
                            tVar.releaseIntercepted();
                            throw th2;
                        }
                    }
                    tVar.releaseIntercepted();
                    interfaceC13842i = eVar.f93511c;
                    aVar.f93515e = null;
                    aVar.f93516f = null;
                    aVar.f93517g = null;
                    aVar.f93513c = 2;
                    if (interfaceC13842i.a(interfaceC13843j2, aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93512b;
            l10 = Af.d.l();
            i10 = aVar.f93513c;
            if (i10 != 0) {
            }
            tVar.releaseIntercepted();
            interfaceC13842i = eVar.f93511c;
            aVar.f93515e = null;
            aVar.f93516f = null;
            aVar.f93517g = null;
            aVar.f93513c = 2;
            if (interfaceC13842i.a(interfaceC13843j2, aVar) == l10) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1\n*L\n1#1,222:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", f = "Emitters.kt", i = {}, l = {40}, m = "invokeSuspend", n = {}, s = {})
    public static final class f<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93518b;

        public Object f93519c;

        public final InterfaceC13842i<T> f93520d;

        public final Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> f93521e;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1\n*L\n1#1,222:1\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> f93522b;

            public final InterfaceC13843j<R> f93523c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1$1", f = "Emitters.kt", i = {}, l = {42}, m = "emit", n = {}, s = {})
            public static final class C1820a extends Bf.d {

                public Object f93524b;

                public final a<T> f93525c;

                public int f93526d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C1820a(a<? super T> aVar, yf.f<? super C1820a> fVar) {
                    super(fVar);
                    this.f93525c = aVar;
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93524b = obj;
                    this.f93526d |= Integer.MIN_VALUE;
                    return this.f93525c.emit(null, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a(Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, InterfaceC13843j<? super R> interfaceC13843j) {
                this.f93522b = qVar;
                this.f93523c = interfaceC13843j;
            }

            @Nullable
            public final Object a(T t10, @NotNull yf.f<? super P0> fVar) {
                kotlin.jvm.internal.J.e(4);
                new C1820a(this, fVar);
                kotlin.jvm.internal.J.e(5);
                this.f93522b.n(this.f93523c, t10, fVar);
                return P0.f98194a;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                C1820a c1820a;
                int i10;
                if (fVar instanceof C1820a) {
                    c1820a = (C1820a) fVar;
                    int i11 = c1820a.f93526d;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1820a.f93526d = i11 - Integer.MIN_VALUE;
                        Object obj = c1820a.f93524b;
                        Object l10 = Af.d.l();
                        i10 = c1820a.f93526d;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> qVar = this.f93522b;
                            InterfaceC13843j<R> interfaceC13843j = this.f93523c;
                            c1820a.f93526d = 1;
                            if (qVar.n(interfaceC13843j, t10, c1820a) == l10) {
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
                c1820a = new C1820a(this, fVar);
                Object obj2 = c1820a.f93524b;
                Object l102 = Af.d.l();
                i10 = c1820a.f93526d;
                if (i10 != 0) {
                }
                return P0.f98194a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public f(InterfaceC13842i<? extends T> interfaceC13842i, Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super f> fVar) {
            super(2, fVar);
            this.f93520d = interfaceC13842i;
            this.f93521e = qVar;
        }

        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93519c;
            InterfaceC13842i<T> interfaceC13842i = this.f93520d;
            a aVar = new a(this.f93521e, interfaceC13843j);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(aVar, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            f fVar2 = new f(this.f93520d, this.f93521e, fVar);
            fVar2.f93519c = obj;
            return fVar2;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93518b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93519c;
                InterfaceC13842i<T> interfaceC13842i = this.f93520d;
                a aVar = new a(this.f93521e, interfaceC13843j);
                this.f93518b = 1;
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
        public final Object invoke(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            return ((f) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class g<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i f93527b;

        public final Mf.q f93528c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93529b;

            public int f93530c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93529b = obj;
                this.f93530c |= Integer.MIN_VALUE;
                return g.this.a(null, this);
            }
        }

        public g(InterfaceC13842i interfaceC13842i, Mf.q qVar) {
            this.f93527b = interfaceC13842i;
            this.f93528c = qVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = this.f93527b.a(new h(this.f93528c, interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f93527b;
            h hVar = new h(this.f93528c, interfaceC13843j);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(hVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n*L\n1#1,222:1\n*E\n"})
    public static final class h<T> implements InterfaceC13843j {

        public final Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> f93532b;

        public final InterfaceC13843j<R> f93533c;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$unsafeTransform$1$1", f = "Emitters.kt", i = {}, l = {53}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93534b;

            public final h<T> f93535c;

            public int f93536d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(h<? super T> hVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93535c = hVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93534b = obj;
                this.f93536d |= Integer.MIN_VALUE;
                return this.f93535c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public h(Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, InterfaceC13843j<? super R> interfaceC13843j) {
            this.f93532b = qVar;
            this.f93533c = interfaceC13843j;
        }

        @Nullable
        public final Object a(T t10, @NotNull yf.f<? super P0> fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(this, fVar);
            kotlin.jvm.internal.J.e(5);
            this.f93532b.n(this.f93533c, t10, fVar);
            return P0.f98194a;
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
                int i11 = aVar.f93536d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93536d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93534b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93536d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> qVar = this.f93532b;
                        Object obj2 = this.f93533c;
                        aVar.f93536d = 1;
                        if (qVar.n(obj2, t10, aVar) == l10) {
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
            Object obj3 = aVar.f93534b;
            Object l102 = Af.d.l();
            i10 = aVar.f93536d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    public static final void b(@NotNull InterfaceC13843j<?> interfaceC13843j) {
        if (interfaceC13843j instanceof a0) {
            throw ((a0) interfaceC13843j).f93293b;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object c(InterfaceC13843j<? super T> interfaceC13843j, Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar, Throwable th2, yf.f<? super P0> fVar) {
        a aVar;
        int i10;
        try {
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93489d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93489d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93488c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93489d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        aVar.f93487b = th2;
                        aVar.f93489d = 1;
                        if (qVar.n(interfaceC13843j, th2, aVar) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th2 = (Throwable) aVar.f93487b;
                        C14418j0.n(obj);
                    }
                    return P0.f98194a;
                }
            }
            if (i10 != 0) {
            }
            return P0.f98194a;
        } catch (Throwable th3) {
            if (th2 != null && th2 != th3) {
                C14436t.a(th3, th2);
            }
            throw th3;
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f93488c;
        Object l102 = Af.d.l();
        i10 = aVar.f93489d;
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return new b(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new c(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> f(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new e(pVar, interfaceC13842i);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13844k.J0(new f(interfaceC13842i, qVar, null));
    }

    @InterfaceC14410f0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return new g(interfaceC13842i, qVar);
    }
}
