package jg;

import eg.A0;
import eg.InterfaceC13153z0;
import kg.C13984f;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;

@t0({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n53#2:219\n55#2:223\n53#2:224\n55#2:228\n50#3:220\n55#3:222\n50#3:225\n55#3:227\n107#4:221\n107#4:226\n107#4:229\n1#5:230\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n47#1:219\n47#1:223\n74#1:224\n74#1:228\n47#1:220\n47#1:222\n74#1:225\n74#1:227\n47#1:221\n74#1:226\n82#1:229\n*E\n"})
public final class C13855w {

    public static final int f93633a = mg.W.b(C13844k.f93318a, 16, 1, Integer.MAX_VALUE);

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class a<R> implements InterfaceC13842i<InterfaceC13842i<? extends R>> {

        public final InterfaceC13842i f93634b;

        public final Mf.p f93635c;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n54#2:223\n*E\n"})
        public static final class C1823a<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93636b;

            public final Mf.p f93637c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
            public static final class C1824a extends Bf.d {

                public Object f93638b;

                public int f93639c;

                public Object f93640d;

                public C1824a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93638b = obj;
                    this.f93639c |= Integer.MIN_VALUE;
                    return C1823a.this.emit(null, this);
                }
            }

            public C1823a(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93636b = interfaceC13843j;
                this.f93637c = pVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(Object obj, @NotNull yf.f fVar) {
                C1824a c1824a;
                Object obj2;
                Object l10;
                int i10;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof C1824a) {
                    c1824a = (C1824a) fVar;
                    int i11 = c1824a.f93639c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1824a.f93639c = i11 - Integer.MIN_VALUE;
                        obj2 = c1824a.f93638b;
                        l10 = Af.d.l();
                        i10 = c1824a.f93639c;
                        if (i10 != 0) {
                            C14418j0.n(obj2);
                            InterfaceC13843j interfaceC13843j2 = this.f93636b;
                            Mf.p pVar = this.f93637c;
                            c1824a.f93640d = interfaceC13843j2;
                            c1824a.f93639c = 1;
                            Object invoke = pVar.invoke(obj, c1824a);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj2 = invoke;
                            interfaceC13843j = interfaceC13843j2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj2);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1824a.f93640d;
                            C14418j0.n(obj2);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        c1824a.f93640d = null;
                        c1824a.f93639c = 2;
                        if (interfaceC13843j.emit(obj2, c1824a) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                }
                c1824a = new C1824a(fVar);
                obj2 = c1824a.f93638b;
                l10 = Af.d.l();
                i10 = c1824a.f93639c;
                if (i10 != 0) {
                }
                c1824a.f93640d = null;
                c1824a.f93639c = 2;
                if (interfaceC13843j.emit(obj2, c1824a) == l10) {
                }
                return P0.f98194a;
            }
        }

        public a(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93634b = interfaceC13842i;
            this.f93635c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93634b.a(new C1823a(interfaceC13843j, this.f93635c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n*L\n1#1,218:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", f = "Merge.kt", i = {}, l = {193, 193}, m = "invokeSuspend", n = {}, s = {})
    public static final class b<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> {

        public int f93642b;

        public Object f93643c;

        public Object f93644d;

        public final Mf.p<T, yf.f<? super InterfaceC13842i<? extends R>>, Object> f93645e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar, yf.f<? super b> fVar) {
            super(3, fVar);
            this.f93645e = pVar;
        }

        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93643c;
            InterfaceC13842i interfaceC13842i = (InterfaceC13842i) this.f93645e.invoke(this.f93644d, this);
            kotlin.jvm.internal.J.e(0);
            C13844k.m0(interfaceC13843j, interfaceC13842i, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93642b;
            if (i10 == 0) {
                C14418j0.n(obj);
                interfaceC13843j = (InterfaceC13843j) this.f93643c;
                Object obj2 = this.f93644d;
                Mf.p<T, yf.f<? super InterfaceC13842i<? extends R>>, Object> pVar = this.f93645e;
                this.f93643c = interfaceC13843j;
                this.f93642b = 1;
                obj = pVar.invoke(obj2, this);
                if (obj == l10) {
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
                interfaceC13843j = (InterfaceC13843j) this.f93643c;
                C14418j0.n(obj);
            }
            this.f93643c = null;
            this.f93642b = 2;
            if (C13844k.m0(interfaceC13843j, (InterfaceC13842i) obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, T t10, @Nullable yf.f<? super P0> fVar) {
            b bVar = new b(this.f93645e, fVar);
            bVar.f93643c = interfaceC13843j;
            bVar.f93644d = t10;
            return bVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class c<R> implements InterfaceC13842i<InterfaceC13842i<? extends R>> {

        public final InterfaceC13842i f93646b;

        public final Mf.p f93647c;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n54#2:223\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93648b;

            public final Mf.p f93649c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
            public static final class C1825a extends Bf.d {

                public Object f93650b;

                public int f93651c;

                public Object f93652d;

                public C1825a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93650b = obj;
                    this.f93651c |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93648b = interfaceC13843j;
                this.f93649c = pVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(Object obj, @NotNull yf.f fVar) {
                C1825a c1825a;
                Object obj2;
                Object l10;
                int i10;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof C1825a) {
                    c1825a = (C1825a) fVar;
                    int i11 = c1825a.f93651c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1825a.f93651c = i11 - Integer.MIN_VALUE;
                        obj2 = c1825a.f93650b;
                        l10 = Af.d.l();
                        i10 = c1825a.f93651c;
                        if (i10 != 0) {
                            C14418j0.n(obj2);
                            InterfaceC13843j interfaceC13843j2 = this.f93648b;
                            Mf.p pVar = this.f93649c;
                            c1825a.f93652d = interfaceC13843j2;
                            c1825a.f93651c = 1;
                            Object invoke = pVar.invoke(obj, c1825a);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj2 = invoke;
                            interfaceC13843j = interfaceC13843j2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj2);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1825a.f93652d;
                            C14418j0.n(obj2);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        c1825a.f93652d = null;
                        c1825a.f93651c = 2;
                        if (interfaceC13843j.emit(obj2, c1825a) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                }
                c1825a = new C1825a(fVar);
                obj2 = c1825a.f93650b;
                l10 = Af.d.l();
                i10 = c1825a.f93651c;
                if (i10 != 0) {
                }
                c1825a.f93652d = null;
                c1825a.f93651c = 2;
                if (interfaceC13843j.emit(obj2, c1825a) == l10) {
                }
                return P0.f98194a;
            }
        }

        public c(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93646b = interfaceC13842i;
            this.f93647c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93646b.a(new a(interfaceC13843j, this.f93647c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,113:1\n83#2,2:114\n*E\n"})
    public static final class d<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93654b;

        public d(InterfaceC13842i interfaceC13842i) {
            this.f93654b = interfaceC13842i;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = this.f93654b.a(new e(interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    public static final class e<T> implements InterfaceC13843j {

        public final InterfaceC13843j<T> f93655b;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1", f = "Merge.kt", i = {}, l = {83}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93656b;

            public final e<T> f93657c;

            public int f93658d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(e<? super T> eVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93657c = eVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93656b = obj;
                this.f93658d |= Integer.MIN_VALUE;
                return this.f93657c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public e(InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93655b = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93658d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93658d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93656b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93658d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        InterfaceC13843j<T> interfaceC13843j = this.f93655b;
                        aVar.f93658d = 1;
                        if (C13844k.m0(interfaceC13843j, interfaceC13842i, aVar) == l10) {
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
            Object obj2 = aVar.f93656b;
            Object l102 = Af.d.l();
            i10 = aVar.f93658d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", i = {}, l = {217, 217}, m = "invokeSuspend", n = {}, s = {})
    public static final class f<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> {

        public int f93659b;

        public Object f93660c;

        public Object f93661d;

        public final Mf.p<T, yf.f<? super R>, Object> f93662e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public f(Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar, yf.f<? super f> fVar) {
            super(3, fVar);
            this.f93662e = pVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93659b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f93660c;
                Object obj2 = this.f93661d;
                Mf.p<T, yf.f<? super R>, Object> pVar = this.f93662e;
                this.f93660c = interfaceC13843j2;
                this.f93659b = 1;
                obj = pVar.invoke(obj2, this);
                interfaceC13843j = interfaceC13843j2;
                if (obj == l10) {
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
                InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) this.f93660c;
                C14418j0.n(obj);
                interfaceC13843j = interfaceC13843j3;
            }
            this.f93660c = null;
            this.f93659b = 2;
            if (interfaceC13843j.emit(obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, T t10, @Nullable yf.f<? super P0> fVar) {
            f fVar2 = new f(this.f93662e, fVar);
            fVar2.f93660c = interfaceC13843j;
            fVar2.f93661d = t10;
            return fVar2.invokeSuspend(P0.f98194a);
        }
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13844k.G0(new a(interfaceC13842i, pVar));
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13844k.d2(interfaceC13842i, new b(pVar, null));
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> c(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13844k.H0(new c(interfaceC13842i, pVar), i10);
    }

    public static InterfaceC13842i d(InterfaceC13842i interfaceC13842i, int i10, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = f93633a;
        }
        return C13844k.D0(interfaceC13842i, i10, pVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        return new d(interfaceC13842i);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T> InterfaceC13842i<T> f(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i, int i10) {
        if (i10 > 0) {
            return i10 == 1 ? C13844k.G0(interfaceC13842i) : new C13984f(interfaceC13842i, i10, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(("Expected positive concurrency level, but had " + i10).toString());
    }

    public static InterfaceC13842i g(InterfaceC13842i interfaceC13842i, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = f93633a;
        }
        return C13844k.H0(interfaceC13842i, i10);
    }

    public static final int h() {
        return f93633a;
    }

    @A0
    public static void i() {
    }

    @A0
    public static void j() {
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> k(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return C13844k.d2(interfaceC13842i, new f(pVar, null));
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> l(@NotNull Iterable<? extends InterfaceC13842i<? extends T>> iterable) {
        return new kg.j(iterable, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> m(@NotNull InterfaceC13842i<? extends T>... interfaceC13842iArr) {
        return C13844k.Z0(C14960A.K5(interfaceC13842iArr));
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> n(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return new kg.i(qVar, interfaceC13842i, null, 0, null, 28, null);
    }
}
