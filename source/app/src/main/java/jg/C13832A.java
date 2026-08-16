package jg;

import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import kotlin.reflect.KClass;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14968d0;

@t0({"SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,136:1\n21#1:143\n23#1:147\n21#1:148\n23#1:152\n50#2:137\n55#2:139\n50#2:140\n55#2:142\n50#2:144\n55#2:146\n50#2:149\n55#2:151\n50#2:153\n55#2:155\n50#2:156\n55#2:158\n50#2:159\n55#2:161\n50#2:163\n55#2:165\n107#3:138\n107#3:141\n107#3:145\n107#3:150\n107#3:154\n107#3:157\n107#3:160\n107#3:162\n107#3:164\n107#3:166\n107#3:167\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n36#1:143\n36#1:147\n41#1:148\n41#1:152\n21#1:137\n21#1:139\n28#1:140\n28#1:142\n36#1:144\n36#1:146\n41#1:149\n41#1:151\n46#1:153\n46#1:155\n53#1:156\n53#1:158\n60#1:159\n60#1:161\n78#1:163\n78#1:165\n21#1:138\n28#1:141\n36#1:145\n41#1:150\n46#1:154\n53#1:157\n60#1:160\n68#1:162\n78#1:164\n105#1:166\n125#1:167\n*E\n"})
public final class C13832A {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class a<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f92978b;

        public final Mf.p f92979c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class C1802a extends Bf.d {

            public Object f92980b;

            public int f92981c;

            public C1802a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f92980b = obj;
                this.f92981c |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n22#2,2:223\n*E\n"})
        public static final class b<T> implements InterfaceC13843j {

            public final InterfaceC13843j f92983b;

            public final Mf.p f92984c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {223, 223}, m = "emit", n = {"value", "$this$filter_u24lambda_u240"}, s = {"L$0", "L$1"})
            public static final class C1803a extends Bf.d {

                public Object f92985b;

                public int f92986c;

                public Object f92988e;

                public Object f92989f;

                public C1803a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f92985b = obj;
                    this.f92986c |= Integer.MIN_VALUE;
                    return b.this.emit(null, this);
                }
            }

            public b(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f92983b = interfaceC13843j;
                this.f92984c = pVar;
            }

            @Nullable
            public final Object a(Object obj, @NotNull yf.f fVar) {
                kotlin.jvm.internal.J.e(4);
                new C1803a(fVar);
                kotlin.jvm.internal.J.e(5);
                InterfaceC13843j interfaceC13843j = this.f92983b;
                if (((Boolean) this.f92984c.invoke(obj, fVar)).booleanValue()) {
                    kotlin.jvm.internal.J.e(0);
                    interfaceC13843j.emit(obj, fVar);
                    kotlin.jvm.internal.J.e(1);
                }
                return P0.f98194a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                C1803a c1803a;
                Object obj;
                int i10;
                Object obj2;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof C1803a) {
                    c1803a = (C1803a) fVar;
                    int i11 = c1803a.f92986c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1803a.f92986c = i11 - Integer.MIN_VALUE;
                        obj = c1803a.f92985b;
                        Object l10 = Af.d.l();
                        i10 = c1803a.f92986c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            InterfaceC13843j interfaceC13843j2 = this.f92983b;
                            Mf.p pVar = this.f92984c;
                            c1803a.f92988e = t10;
                            c1803a.f92989f = interfaceC13843j2;
                            c1803a.f92986c = 1;
                            Object invoke = pVar.invoke(t10, c1803a);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj2 = t10;
                            interfaceC13843j = interfaceC13843j2;
                            obj = invoke;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1803a.f92989f;
                            obj2 = c1803a.f92988e;
                            C14418j0.n(obj);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        if (((Boolean) obj).booleanValue()) {
                            c1803a.f92988e = null;
                            c1803a.f92989f = null;
                            c1803a.f92986c = 2;
                            if (interfaceC13843j.emit(obj2, c1803a) == l10) {
                                return l10;
                            }
                        }
                        return P0.f98194a;
                    }
                }
                c1803a = new C1803a(fVar);
                obj = c1803a.f92985b;
                Object l102 = Af.d.l();
                i10 = c1803a.f92986c;
                if (i10 != 0) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                return P0.f98194a;
            }
        }

        public a(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f92978b = interfaceC13842i;
            this.f92979c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f92978b.a(new b(interfaceC13843j, this.f92979c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new C1802a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f92978b;
            b bVar = new b(interfaceC13843j, this.f92979c);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(bVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class b implements InterfaceC13842i<Object> {

        public final InterfaceC13842i f92990b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f92991b;

            public int f92992c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f92991b = obj;
                this.f92992c |= Integer.MIN_VALUE;
                return b.this.a(null, this);
            }
        }

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n22#2:223\n36#2:224\n23#2:225\n*E\n"})
        public static final class C1804b<T> implements InterfaceC13843j {

            public final InterfaceC13843j f92994b;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2", f = "Transform.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
            public static final class a extends Bf.d {

                public Object f92995b;

                public int f92996c;

                public Object f92997d;

                public Object f92998e;

                public a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f92995b = obj;
                    this.f92996c |= Integer.MIN_VALUE;
                    return C1804b.this.emit(null, this);
                }
            }

            public C1804b(InterfaceC13843j interfaceC13843j) {
                this.f92994b = interfaceC13843j;
            }

            @Nullable
            public final Object a(Object obj, @NotNull yf.f fVar) {
                kotlin.jvm.internal.J.e(4);
                new a(fVar);
                kotlin.jvm.internal.J.e(5);
                InterfaceC13843j interfaceC13843j = this.f92994b;
                kotlin.jvm.internal.M.y(3, "R");
                if (obj != null) {
                    kotlin.jvm.internal.J.e(0);
                    interfaceC13843j.emit(obj, fVar);
                    kotlin.jvm.internal.J.e(1);
                }
                return P0.f98194a;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(Object obj, @NotNull yf.f fVar) {
                a aVar;
                int i10;
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f92996c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f92996c = i11 - Integer.MIN_VALUE;
                        Object obj2 = aVar.f92995b;
                        Object l10 = Af.d.l();
                        i10 = aVar.f92996c;
                        if (i10 != 0) {
                            C14418j0.n(obj2);
                            InterfaceC13843j interfaceC13843j = this.f92994b;
                            kotlin.jvm.internal.M.y(3, "R");
                            if (obj != null) {
                                aVar.f92996c = 1;
                                if (interfaceC13843j.emit(obj, aVar) == l10) {
                                    return l10;
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj2);
                        }
                        return P0.f98194a;
                    }
                }
                aVar = new a(fVar);
                Object obj22 = aVar.f92995b;
                Object l102 = Af.d.l();
                i10 = aVar.f92996c;
                if (i10 != 0) {
                }
                return P0.f98194a;
            }
        }

        public b(InterfaceC13842i interfaceC13842i) {
            this.f92990b = interfaceC13842i;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super Object> interfaceC13843j, @NotNull yf.f fVar) {
            InterfaceC13842i interfaceC13842i = this.f92990b;
            kotlin.jvm.internal.M.w();
            Object a10 = interfaceC13842i.a(new C1804b(interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f92990b;
            kotlin.jvm.internal.M.w();
            C1804b c1804b = new C1804b(interfaceC13843j);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(c1804b, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class c implements InterfaceC13842i<Object> {

        public final InterfaceC13842i f93000b;

        public final KClass f93001c;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n22#2:223\n41#2:224\n23#2:225\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93002b;

            public final KClass f93003c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2", f = "Transform.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
            public static final class C1805a extends Bf.d {

                public Object f93004b;

                public int f93005c;

                public Object f93006d;

                public Object f93007e;

                public C1805a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93004b = obj;
                    this.f93005c |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(InterfaceC13843j interfaceC13843j, KClass kClass) {
                this.f93002b = interfaceC13843j;
                this.f93003c = kClass;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(Object obj, @NotNull yf.f fVar) {
                C1805a c1805a;
                int i10;
                if (fVar instanceof C1805a) {
                    c1805a = (C1805a) fVar;
                    int i11 = c1805a.f93005c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1805a.f93005c = i11 - Integer.MIN_VALUE;
                        Object obj2 = c1805a.f93004b;
                        Object l10 = Af.d.l();
                        i10 = c1805a.f93005c;
                        if (i10 != 0) {
                            C14418j0.n(obj2);
                            InterfaceC13843j interfaceC13843j = this.f93002b;
                            if (this.f93003c.K(obj)) {
                                c1805a.f93005c = 1;
                                if (interfaceC13843j.emit(obj, c1805a) == l10) {
                                    return l10;
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj2);
                        }
                        return P0.f98194a;
                    }
                }
                c1805a = new C1805a(fVar);
                Object obj22 = c1805a.f93004b;
                Object l102 = Af.d.l();
                i10 = c1805a.f93005c;
                if (i10 != 0) {
                }
                return P0.f98194a;
            }
        }

        public c(InterfaceC13842i interfaceC13842i, KClass kClass) {
            this.f93000b = interfaceC13842i;
            this.f93001c = kClass;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super Object> interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93000b.a(new a(interfaceC13843j, this.f93001c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class d<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93009b;

        public final Mf.p f93010c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93011b;

            public int f93012c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93011b = obj;
                this.f93012c |= Integer.MIN_VALUE;
                return d.this.a(null, this);
            }
        }

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n29#2,2:223\n*E\n"})
        public static final class b<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93014b;

            public final Mf.p f93015c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {223, 223}, m = "emit", n = {"value", "$this$filterNot_u24lambda_u241"}, s = {"L$0", "L$1"})
            public static final class a extends Bf.d {

                public Object f93016b;

                public int f93017c;

                public Object f93019e;

                public Object f93020f;

                public a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93016b = obj;
                    this.f93017c |= Integer.MIN_VALUE;
                    return b.this.emit(null, this);
                }
            }

            public b(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93014b = interfaceC13843j;
                this.f93015c = pVar;
            }

            @Nullable
            public final Object a(Object obj, @NotNull yf.f fVar) {
                kotlin.jvm.internal.J.e(4);
                new a(fVar);
                kotlin.jvm.internal.J.e(5);
                InterfaceC13843j interfaceC13843j = this.f93014b;
                if (!((Boolean) this.f93015c.invoke(obj, fVar)).booleanValue()) {
                    kotlin.jvm.internal.J.e(0);
                    interfaceC13843j.emit(obj, fVar);
                    kotlin.jvm.internal.J.e(1);
                }
                return P0.f98194a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                a aVar;
                Object obj;
                int i10;
                Object obj2;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f93017c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f93017c = i11 - Integer.MIN_VALUE;
                        obj = aVar.f93016b;
                        Object l10 = Af.d.l();
                        i10 = aVar.f93017c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            InterfaceC13843j interfaceC13843j2 = this.f93014b;
                            Mf.p pVar = this.f93015c;
                            aVar.f93019e = t10;
                            aVar.f93020f = interfaceC13843j2;
                            aVar.f93017c = 1;
                            Object invoke = pVar.invoke(t10, aVar);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj2 = t10;
                            interfaceC13843j = interfaceC13843j2;
                            obj = invoke;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93020f;
                            obj2 = aVar.f93019e;
                            C14418j0.n(obj);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        if (!((Boolean) obj).booleanValue()) {
                            aVar.f93019e = null;
                            aVar.f93020f = null;
                            aVar.f93017c = 2;
                            if (interfaceC13843j.emit(obj2, aVar) == l10) {
                                return l10;
                            }
                        }
                        return P0.f98194a;
                    }
                }
                aVar = new a(fVar);
                obj = aVar.f93016b;
                Object l102 = Af.d.l();
                i10 = aVar.f93017c;
                if (i10 != 0) {
                }
                if (!((Boolean) obj).booleanValue()) {
                }
                return P0.f98194a;
            }
        }

        public d(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93009b = interfaceC13842i;
            this.f93010c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93009b.a(new b(interfaceC13843j, this.f93010c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f93009b;
            b bVar = new b(interfaceC13843j, this.f93010c);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(bVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class e<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93021b;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n47#2,2:223\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93022b;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
            public static final class C1806a extends Bf.d {

                public Object f93023b;

                public int f93024c;

                public C1806a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93023b = obj;
                    this.f93024c |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(InterfaceC13843j interfaceC13843j) {
                this.f93022b = interfaceC13843j;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                C1806a c1806a;
                int i10;
                if (fVar instanceof C1806a) {
                    c1806a = (C1806a) fVar;
                    int i11 = c1806a.f93024c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1806a.f93024c = i11 - Integer.MIN_VALUE;
                        Object obj = c1806a.f93023b;
                        Object l10 = Af.d.l();
                        i10 = c1806a.f93024c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            InterfaceC13843j interfaceC13843j = this.f93022b;
                            if (t10 != null) {
                                c1806a.f93024c = 1;
                                if (interfaceC13843j.emit(t10, c1806a) == l10) {
                                    return l10;
                                }
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
                c1806a = new C1806a(fVar);
                Object obj2 = c1806a.f93023b;
                Object l102 = Af.d.l();
                i10 = c1806a.f93024c;
                if (i10 != 0) {
                }
                return P0.f98194a;
            }
        }

        public e(InterfaceC13842i interfaceC13842i) {
            this.f93021b = interfaceC13842i;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93021b.a(new a(interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class f<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i f93026b;

        public final Mf.p f93027c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93028b;

            public int f93029c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93028b = obj;
                this.f93029c |= Integer.MIN_VALUE;
                return f.this.a(null, this);
            }
        }

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n54#2:223\n*E\n"})
        public static final class b<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93031b;

            public final Mf.p f93032c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
            public static final class a extends Bf.d {

                public Object f93033b;

                public int f93034c;

                public Object f93036e;

                public a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93033b = obj;
                    this.f93034c |= Integer.MIN_VALUE;
                    return b.this.emit(null, this);
                }
            }

            public b(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93031b = interfaceC13843j;
                this.f93032c = pVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public final Object a(Object obj, @NotNull yf.f fVar) {
                kotlin.jvm.internal.J.e(4);
                new a(fVar);
                kotlin.jvm.internal.J.e(5);
                InterfaceC13843j interfaceC13843j = this.f93031b;
                Object invoke = this.f93032c.invoke(obj, fVar);
                kotlin.jvm.internal.J.e(0);
                interfaceC13843j.emit(invoke, fVar);
                kotlin.jvm.internal.J.e(1);
                return P0.f98194a;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                a aVar;
                Object obj;
                Object l10;
                int i10;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f93034c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f93034c = i11 - Integer.MIN_VALUE;
                        obj = aVar.f93033b;
                        l10 = Af.d.l();
                        i10 = aVar.f93034c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            InterfaceC13843j interfaceC13843j2 = this.f93031b;
                            Mf.p pVar = this.f93032c;
                            aVar.f93036e = interfaceC13843j2;
                            aVar.f93034c = 1;
                            Object invoke = pVar.invoke(t10, aVar);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj = invoke;
                            interfaceC13843j = interfaceC13843j2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93036e;
                            C14418j0.n(obj);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        aVar.f93036e = null;
                        aVar.f93034c = 2;
                        if (interfaceC13843j.emit(obj, aVar) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                }
                aVar = new a(fVar);
                obj = aVar.f93033b;
                l10 = Af.d.l();
                i10 = aVar.f93034c;
                if (i10 != 0) {
                }
                aVar.f93036e = null;
                aVar.f93034c = 2;
                if (interfaceC13843j.emit(obj, aVar) == l10) {
                }
                return P0.f98194a;
            }
        }

        public f(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93026b = interfaceC13842i;
            this.f93027c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93026b.a(new b(interfaceC13843j, this.f93027c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f93026b;
            b bVar = new b(interfaceC13843j, this.f93027c);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(bVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class g<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i f93037b;

        public final Mf.p f93038c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93039b;

            public int f93040c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93039b = obj;
                this.f93040c |= Integer.MIN_VALUE;
                return g.this.a(null, this);
            }
        }

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n61#2,2:223\n*E\n"})
        public static final class b<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93042b;

            public final Mf.p f93043c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0}, l = {223, 224}, m = "emit", n = {"$this$mapNotNull_u24lambda_u246"}, s = {"L$0"})
            public static final class a extends Bf.d {

                public Object f93044b;

                public int f93045c;

                public Object f93047e;

                public a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93044b = obj;
                    this.f93045c |= Integer.MIN_VALUE;
                    return b.this.emit(null, this);
                }
            }

            public b(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93042b = interfaceC13843j;
                this.f93043c = pVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public final Object a(Object obj, @NotNull yf.f fVar) {
                kotlin.jvm.internal.J.e(4);
                new a(fVar);
                kotlin.jvm.internal.J.e(5);
                InterfaceC13843j interfaceC13843j = this.f93042b;
                Object invoke = this.f93043c.invoke(obj, fVar);
                if (invoke != null) {
                    kotlin.jvm.internal.J.e(0);
                    interfaceC13843j.emit(invoke, fVar);
                    kotlin.jvm.internal.J.e(1);
                }
                return P0.f98194a;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                a aVar;
                Object obj;
                int i10;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof a) {
                    aVar = (a) fVar;
                    int i11 = aVar.f93045c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f93045c = i11 - Integer.MIN_VALUE;
                        obj = aVar.f93044b;
                        Object l10 = Af.d.l();
                        i10 = aVar.f93045c;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            InterfaceC13843j interfaceC13843j2 = this.f93042b;
                            Mf.p pVar = this.f93043c;
                            aVar.f93047e = interfaceC13843j2;
                            aVar.f93045c = 1;
                            Object invoke = pVar.invoke(t10, aVar);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj = invoke;
                            interfaceC13843j = interfaceC13843j2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93047e;
                            C14418j0.n(obj);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        if (obj != null) {
                            aVar.f93047e = null;
                            aVar.f93045c = 2;
                            if (interfaceC13843j.emit(obj, aVar) == l10) {
                                return l10;
                            }
                        }
                        return P0.f98194a;
                    }
                }
                aVar = new a(fVar);
                obj = aVar.f93044b;
                Object l102 = Af.d.l();
                i10 = aVar.f93045c;
                if (i10 != 0) {
                }
                if (obj != null) {
                }
                return P0.f98194a;
            }
        }

        public g(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93037b = interfaceC13842i;
            this.f93038c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93037b.a(new b(interfaceC13843j, this.f93038c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i interfaceC13842i = this.f93037b;
            b bVar = new b(interfaceC13843j, this.f93038c);
            kotlin.jvm.internal.J.e(0);
            interfaceC13842i.a(bVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"})
    public static final class h<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93048b;

        public final Mf.p f93049c;

        @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n79#2,2:223\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final InterfaceC13843j f93050b;

            public final Mf.p f93051c;

            @t0({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
            @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {223, 224}, m = "emit", n = {"value", "$this$onEach_u24lambda_u248"}, s = {"L$0", "L$1"})
            public static final class C1807a extends Bf.d {

                public Object f93052b;

                public int f93053c;

                public Object f93055e;

                public Object f93056f;

                public C1807a(yf.f fVar) {
                    super(fVar);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93052b = obj;
                    this.f93053c |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(InterfaceC13843j interfaceC13843j, Mf.p pVar) {
                this.f93050b = interfaceC13843j;
                this.f93051c = pVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0069 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                C1807a c1807a;
                Object l10;
                int i10;
                Object obj;
                InterfaceC13843j interfaceC13843j;
                if (fVar instanceof C1807a) {
                    c1807a = (C1807a) fVar;
                    int i11 = c1807a.f93053c;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c1807a.f93053c = i11 - Integer.MIN_VALUE;
                        Object obj2 = c1807a.f93052b;
                        l10 = Af.d.l();
                        i10 = c1807a.f93053c;
                        if (i10 != 0) {
                            C14418j0.n(obj2);
                            InterfaceC13843j interfaceC13843j2 = this.f93050b;
                            Mf.p pVar = this.f93051c;
                            c1807a.f93055e = t10;
                            c1807a.f93056f = interfaceC13843j2;
                            c1807a.f93053c = 1;
                            kotlin.jvm.internal.J.e(6);
                            Object invoke = pVar.invoke(t10, c1807a);
                            kotlin.jvm.internal.J.e(7);
                            if (invoke == l10) {
                                return l10;
                            }
                            obj = t10;
                            interfaceC13843j = interfaceC13843j2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                C14418j0.n(obj2);
                                return P0.f98194a;
                            }
                            InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1807a.f93056f;
                            obj = c1807a.f93055e;
                            C14418j0.n(obj2);
                            interfaceC13843j = interfaceC13843j3;
                        }
                        c1807a.f93055e = null;
                        c1807a.f93056f = null;
                        c1807a.f93053c = 2;
                        if (interfaceC13843j.emit(obj, c1807a) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                }
                c1807a = new C1807a(fVar);
                Object obj22 = c1807a.f93052b;
                l10 = Af.d.l();
                i10 = c1807a.f93053c;
                if (i10 != 0) {
                }
                c1807a.f93055e = null;
                c1807a.f93056f = null;
                c1807a.f93053c = 2;
                if (interfaceC13843j.emit(obj, c1807a) == l10) {
                }
                return P0.f98194a;
            }
        }

        public h(InterfaceC13842i interfaceC13842i, Mf.p pVar) {
            this.f93048b = interfaceC13842i;
            this.f93049c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = this.f93048b.a(new a(interfaceC13843j, this.f93049c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,113:1\n106#2,7:114\n*E\n"})
    public static final class i<R> implements InterfaceC13842i<R> {

        public final Object f93057b;

        public final InterfaceC13842i f93058c;

        public final Mf.q f93059d;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1", f = "Transform.kt", i = {0, 0, 0}, l = {115, 116}, m = "collect", n = {"this", "$this$runningFold_u24lambda_u249", "accumulator"}, s = {"L$0", "L$1", "L$2"})
        public static final class a extends Bf.d {

            public Object f93060b;

            public int f93061c;

            public Object f93063e;

            public Object f93064f;

            public Object f93065g;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93060b = obj;
                this.f93061c |= Integer.MIN_VALUE;
                return i.this.a(null, this);
            }
        }

        public i(Object obj, InterfaceC13842i interfaceC13842i, Mf.q qVar) {
            this.f93057b = obj;
            this.f93058c = interfaceC13842i;
            this.f93059d = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x007a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object l10;
            int i10;
            i<R> iVar;
            InterfaceC13843j<? super R> interfaceC13843j2;
            m0.h hVar;
            InterfaceC13842i interfaceC13842i;
            j jVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93061c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93061c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93060b;
                    l10 = Af.d.l();
                    i10 = aVar.f93061c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        m0.h hVar2 = new m0.h();
                        ?? r22 = this.f93057b;
                        hVar2.f95754b = r22;
                        aVar.f93063e = this;
                        aVar.f93064f = interfaceC13843j;
                        aVar.f93065g = hVar2;
                        aVar.f93061c = 1;
                        if (interfaceC13843j.emit(r22, aVar) == l10) {
                            return l10;
                        }
                        iVar = this;
                        interfaceC13843j2 = interfaceC13843j;
                        hVar = hVar2;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        hVar = (m0.h) aVar.f93065g;
                        interfaceC13843j2 = (InterfaceC13843j) aVar.f93064f;
                        iVar = (i) aVar.f93063e;
                        C14418j0.n(obj);
                    }
                    interfaceC13842i = iVar.f93058c;
                    jVar = new j(hVar, iVar.f93059d, interfaceC13843j2);
                    aVar.f93063e = null;
                    aVar.f93064f = null;
                    aVar.f93065g = null;
                    aVar.f93061c = 2;
                    if (interfaceC13842i.a(jVar, aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93060b;
            l10 = Af.d.l();
            i10 = aVar.f93061c;
            if (i10 != 0) {
            }
            interfaceC13842i = iVar.f93058c;
            jVar = new j(hVar, iVar.f93059d, interfaceC13843j2);
            aVar.f93063e = null;
            aVar.f93064f = null;
            aVar.f93065g = null;
            aVar.f93061c = 2;
            if (interfaceC13842i.a(jVar, aVar) == l10) {
            }
            return P0.f98194a;
        }
    }

    public static final class j<T> implements InterfaceC13843j {

        public final m0.h<R> f93066b;

        public final Mf.q<R, T, yf.f<? super R>, Object> f93067c;

        public final InterfaceC13843j<R> f93068d;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$1$1", f = "Transform.kt", i = {0}, l = {109, 110}, m = "emit", n = {"this"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93069b;

            public Object f93070c;

            public Object f93071d;

            public final j<T> f93072e;

            public int f93073f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(j<? super T> jVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93072e = jVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93071d = obj;
                this.f93073f |= Integer.MIN_VALUE;
                return this.f93072e.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public j(m0.h<R> hVar, Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar, InterfaceC13843j<? super R> interfaceC13843j) {
            this.f93066b = hVar;
            this.f93067c = qVar;
            this.f93068d = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x006f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object l10;
            int i10;
            j<T> jVar;
            m0.h hVar;
            InterfaceC13843j<R> interfaceC13843j;
            T t11;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93073f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93073f = i11 - Integer.MIN_VALUE;
                    T t12 = (T) aVar.f93071d;
                    l10 = Af.d.l();
                    i10 = aVar.f93073f;
                    if (i10 != 0) {
                        C14418j0.n(t12);
                        m0.h hVar2 = this.f93066b;
                        Mf.q<R, T, yf.f<? super R>, Object> qVar = this.f93067c;
                        T t13 = hVar2.f95754b;
                        aVar.f93069b = this;
                        aVar.f93070c = hVar2;
                        aVar.f93073f = 1;
                        Object n10 = qVar.n(t13, t10, aVar);
                        if (n10 == l10) {
                            return l10;
                        }
                        jVar = this;
                        t12 = (T) n10;
                        hVar = hVar2;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(t12);
                            return P0.f98194a;
                        }
                        hVar = (m0.h) aVar.f93070c;
                        jVar = (j) aVar.f93069b;
                        C14418j0.n(t12);
                    }
                    hVar.f95754b = t12;
                    interfaceC13843j = jVar.f93068d;
                    t11 = jVar.f93066b.f95754b;
                    aVar.f93069b = null;
                    aVar.f93070c = null;
                    aVar.f93073f = 2;
                    if (interfaceC13843j.emit(t11, aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            T t122 = (T) aVar.f93071d;
            l10 = Af.d.l();
            i10 = aVar.f93073f;
            if (i10 != 0) {
            }
            hVar.f95754b = t122;
            interfaceC13843j = jVar.f93068d;
            t11 = jVar.f93066b.f95754b;
            aVar.f93069b = null;
            aVar.f93070c = null;
            aVar.f93073f = 2;
            if (interfaceC13843j.emit(t11, aVar) == l10) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,113:1\n126#2,10:114\n*E\n"})
    public static final class k<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93074b;

        public final Mf.q f93075c;

        public k(InterfaceC13842i interfaceC13842i, Mf.q qVar) {
            this.f93074b = interfaceC13842i;
            this.f93075c = qVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            m0.h hVar = new m0.h();
            hVar.f95754b = (T) kg.s.f95204a;
            Object a10 = this.f93074b.a(new l(hVar, this.f93075c, interfaceC13843j), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    public static final class l<T> implements InterfaceC13843j {

        public final m0.h<Object> f93076b;

        public final Mf.q<T, T, yf.f<? super T>, Object> f93077c;

        public final InterfaceC13843j<T> f93078d;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$1$1", f = "Transform.kt", i = {0}, l = {131, 133}, m = "emit", n = {"this"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93079b;

            public Object f93080c;

            public Object f93081d;

            public final l<T> f93082e;

            public int f93083f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(l<? super T> lVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93082e = lVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93081d = obj;
                this.f93083f |= Integer.MIN_VALUE;
                return this.f93082e.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public l(m0.h<Object> hVar, Mf.q<? super T, ? super T, ? super yf.f<? super T>, ? extends Object> qVar, InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93076b = hVar;
            this.f93077c = qVar;
            this.f93078d = interfaceC13843j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0078 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object l10;
            int i10;
            m0.h<Object> hVar;
            l<T> lVar;
            T t11;
            m0.h<Object> hVar2;
            InterfaceC13843j<T> interfaceC13843j;
            T t12;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93083f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93083f = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93081d;
                    l10 = Af.d.l();
                    i10 = aVar.f93083f;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        hVar = this.f93076b;
                        Object obj2 = hVar.f95754b;
                        if (obj2 == kg.s.f95204a) {
                            lVar = this;
                            hVar.f95754b = t10;
                            interfaceC13843j = lVar.f93078d;
                            t12 = lVar.f93076b.f95754b;
                            aVar.f93079b = null;
                            aVar.f93080c = null;
                            aVar.f93083f = 2;
                            if (interfaceC13843j.emit(t12, aVar) == l10) {
                                return l10;
                            }
                            return P0.f98194a;
                        }
                        Mf.q<T, T, yf.f<? super T>, Object> qVar = this.f93077c;
                        aVar.f93079b = this;
                        aVar.f93080c = hVar;
                        aVar.f93083f = 1;
                        Object n10 = qVar.n(obj2, t10, aVar);
                        if (n10 == l10) {
                            return l10;
                        }
                        lVar = this;
                        t11 = n10;
                        hVar2 = hVar;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        hVar2 = (m0.h) aVar.f93080c;
                        lVar = (l) aVar.f93079b;
                        C14418j0.n(obj);
                        t11 = obj;
                    }
                    T t13 = t11;
                    hVar = hVar2;
                    t10 = t13;
                    hVar.f95754b = t10;
                    interfaceC13843j = lVar.f93078d;
                    t12 = lVar.f93076b.f95754b;
                    aVar.f93079b = null;
                    aVar.f93080c = null;
                    aVar.f93083f = 2;
                    if (interfaceC13843j.emit(t12, aVar) == l10) {
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            Object obj3 = aVar.f93081d;
            l10 = Af.d.l();
            i10 = aVar.f93083f;
            if (i10 != 0) {
            }
            T t132 = t11;
            hVar = hVar2;
            t10 = t132;
            hVar.f95754b = t10;
            interfaceC13843j = lVar.f93078d;
            t12 = lVar.f93076b.f95754b;
            aVar.f93079b = null;
            aVar.f93080c = null;
            aVar.f93083f = 2;
            if (interfaceC13843j.emit(t12, aVar) == l10) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,113:1\n69#2,5:114\n*E\n"})
    public static final class m<T> implements InterfaceC13842i<C14968d0<? extends T>> {

        public final InterfaceC13842i f93084b;

        public m(InterfaceC13842i interfaceC13842i) {
            this.f93084b = interfaceC13842i;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super C14968d0<? extends T>> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = this.f93084b.a(new n(interfaceC13843j, new m0.f()), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n+ 2 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n*L\n1#1,136:1\n32#2,4:137\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n*L\n71#1:137,4\n*E\n"})
    public static final class n<T> implements InterfaceC13843j {

        public final InterfaceC13843j<C14968d0<? extends T>> f93085b;

        public final m0.f f93086c;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1", f = "Transform.kt", i = {}, l = {71}, m = "emit", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93087b;

            public final n<T> f93088c;

            public int f93089d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(n<? super T> nVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93088c = nVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93087b = obj;
                this.f93089d |= Integer.MIN_VALUE;
                return this.f93088c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public n(InterfaceC13843j<? super C14968d0<? extends T>> interfaceC13843j, m0.f fVar) {
            this.f93085b = interfaceC13843j;
            this.f93086c = fVar;
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
                int i11 = aVar.f93089d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93089d = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93087b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93089d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        InterfaceC13843j<C14968d0<? extends T>> interfaceC13843j = this.f93085b;
                        m0.f fVar2 = this.f93086c;
                        int i12 = fVar2.f95752b;
                        fVar2.f95752b = i12 + 1;
                        if (i12 < 0) {
                            throw new ArithmeticException("Index overflow has happened");
                        }
                        C14968d0<? extends T> c14968d0 = new C14968d0<>(i12, t10);
                        aVar.f93089d = 1;
                        if (interfaceC13843j.emit(c14968d0, aVar) == l10) {
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
            Object obj2 = aVar.f93087b;
            Object l102 = Af.d.l();
            i10 = aVar.f93089d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return new a(interfaceC13842i, pVar);
    }

    public static final <R> InterfaceC13842i<R> b(InterfaceC13842i<?> interfaceC13842i) {
        kotlin.jvm.internal.M.w();
        return new b(interfaceC13842i);
    }

    @NotNull
    public static final <R> InterfaceC13842i<R> c(@NotNull InterfaceC13842i<?> interfaceC13842i, @NotNull KClass<R> kClass) {
        return new c(interfaceC13842i, kClass);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return new d(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return new e(interfaceC13842i);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> f(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return new f(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return new g(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new h(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        return new i(r10, interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> j(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super T, ? super T, ? super yf.f<? super T>, ? extends Object> qVar) {
        return new k(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> k(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13844k.z1(interfaceC13842i, r10, qVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<C14968d0<T>> l(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return new m(interfaceC13842i);
    }
}
