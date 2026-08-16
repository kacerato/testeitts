package jg;

import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,332:1\n272#1,3:334\n272#1,3:337\n261#1:340\n263#1:342\n272#1,3:343\n261#1:346\n263#1:348\n272#1,3:349\n261#1:352\n263#1:354\n272#1,3:355\n107#2:333\n107#2:341\n107#2:347\n107#2:353\n107#2:358\n107#2:359\n107#2:362\n37#3,2:360\n37#3,2:363\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n75#1:334,3\n103#1:337,3\n119#1:340\n119#1:342\n138#1:343,3\n156#1:346\n156#1:348\n177#1:349,3\n197#1:352\n197#1:354\n220#1:355,3\n32#1:333\n119#1:341\n156#1:347\n197#1:353\n237#1:358\n261#1:359\n288#1:362\n287#1:360,2\n306#1:363,2\n*E\n"})
public final class C13833B {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"})
    public static final class a<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93090b;

        public final Mf.r f93091c;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n120#2,4:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", i = {}, l = {333, 262}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1808a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93092b;

            public Object f93093c;

            public Object f93094d;

            public final Mf.r f93095e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1808a(yf.f fVar, Mf.r rVar) {
                super(3, fVar);
                this.f93095e = rVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                InterfaceC13843j interfaceC13843j;
                Object l10 = Af.d.l();
                int i10 = this.f93092b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    interfaceC13843j = (InterfaceC13843j) this.f93093c;
                    Object[] objArr = (Object[]) this.f93094d;
                    Mf.r rVar = this.f93095e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    this.f93093c = interfaceC13843j;
                    this.f93092b = 1;
                    kotlin.jvm.internal.J.e(6);
                    obj = rVar.invoke(obj2, obj3, obj4, this);
                    kotlin.jvm.internal.J.e(7);
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
                    interfaceC13843j = (InterfaceC13843j) this.f93093c;
                    C14418j0.n(obj);
                }
                this.f93093c = null;
                this.f93092b = 2;
                if (interfaceC13843j.emit(obj, this) == l10) {
                    return l10;
                }
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                C1808a c1808a = new C1808a(fVar, this.f93095e);
                c1808a.f93093c = interfaceC13843j;
                c1808a.f93094d = objArr;
                return c1808a.invokeSuspend(P0.f98194a);
            }
        }

        public a(InterfaceC13842i[] interfaceC13842iArr, Mf.r rVar) {
            this.f93090b = interfaceC13842iArr;
            this.f93091c = rVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = kg.k.a(interfaceC13843j, this.f93090b, C13833B.a(), new C1808a(null, this.f93091c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"})
    public static final class b<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93096b;

        public final Mf.s f93097c;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n157#2,5:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2", f = "Zip.kt", i = {}, l = {333, 262}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93098b;

            public Object f93099c;

            public Object f93100d;

            public final Mf.s f93101e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.s sVar) {
                super(3, fVar);
                this.f93101e = sVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                InterfaceC13843j interfaceC13843j;
                Object l10 = Af.d.l();
                int i10 = this.f93098b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    interfaceC13843j = (InterfaceC13843j) this.f93099c;
                    Object[] objArr = (Object[]) this.f93100d;
                    Mf.s sVar = this.f93101e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    this.f93099c = interfaceC13843j;
                    this.f93098b = 1;
                    kotlin.jvm.internal.J.e(6);
                    obj = sVar.s(obj2, obj3, obj4, obj5, this);
                    kotlin.jvm.internal.J.e(7);
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
                    interfaceC13843j = (InterfaceC13843j) this.f93099c;
                    C14418j0.n(obj);
                }
                this.f93099c = null;
                this.f93098b = 2;
                if (interfaceC13843j.emit(obj, this) == l10) {
                    return l10;
                }
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93101e);
                aVar.f93099c = interfaceC13843j;
                aVar.f93100d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        public b(InterfaceC13842i[] interfaceC13842iArr, Mf.s sVar) {
            this.f93096b = interfaceC13842iArr;
            this.f93097c = sVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = kg.k.a(interfaceC13843j, this.f93096b, C13833B.a(), new a(null, this.f93097c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"})
    public static final class c<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93102b;

        public final Mf.t f93103c;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n198#2,6:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", i = {}, l = {333, 262}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93104b;

            public Object f93105c;

            public Object f93106d;

            public final Mf.t f93107e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.t tVar) {
                super(3, fVar);
                this.f93107e = tVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                InterfaceC13843j interfaceC13843j;
                Object l10 = Af.d.l();
                int i10 = this.f93104b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    interfaceC13843j = (InterfaceC13843j) this.f93105c;
                    Object[] objArr = (Object[]) this.f93106d;
                    Mf.t tVar = this.f93107e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    Object obj6 = objArr[4];
                    this.f93105c = interfaceC13843j;
                    this.f93104b = 1;
                    kotlin.jvm.internal.J.e(6);
                    obj = tVar.H(obj2, obj3, obj4, obj5, obj6, this);
                    kotlin.jvm.internal.J.e(7);
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
                    interfaceC13843j = (InterfaceC13843j) this.f93105c;
                    C14418j0.n(obj);
                }
                this.f93105c = null;
                this.f93104b = 2;
                if (interfaceC13843j.emit(obj, this) == l10) {
                    return l10;
                }
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93107e);
                aVar.f93105c = interfaceC13843j;
                aVar.f93106d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        public c(InterfaceC13842i[] interfaceC13842iArr, Mf.t tVar) {
            this.f93102b = interfaceC13842iArr;
            this.f93103c = tVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            Object a10 = kg.k.a(interfaceC13843j, this.f93102b, C13833B.a(), new a(null, this.f93103c), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"})
    public static final class d<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i f93108b;

        public final InterfaceC13842i f93109c;

        public final Mf.q f93110d;

        public d(InterfaceC13842i interfaceC13842i, InterfaceC13842i interfaceC13842i2, Mf.q qVar) {
            this.f93108b = interfaceC13842i;
            this.f93109c = interfaceC13842i2;
            this.f93110d = qVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = kg.k.a(interfaceC13843j, new InterfaceC13842i[]{this.f93108b, this.f93109c}, C13833B.a(), new g(this.f93110d, null), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n238#2,2:114\n*E\n"})
    public static final class e<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93111b;

        public final Mf.p f93112c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93113b;

            public int f93114c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93113b = obj;
                this.f93114c |= Integer.MIN_VALUE;
                return e.this.a(null, this);
            }
        }

        public e(InterfaceC13842i[] interfaceC13842iArr, Mf.p pVar) {
            this.f93111b = interfaceC13842iArr;
            this.f93112c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            InterfaceC13842i[] interfaceC13842iArr = this.f93111b;
            kotlin.jvm.internal.M.w();
            h hVar = new h(this.f93111b);
            kotlin.jvm.internal.M.w();
            Object a10 = kg.k.a(interfaceC13843j, interfaceC13842iArr, hVar, new i(this.f93112c, null), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i[] interfaceC13842iArr = this.f93111b;
            kotlin.jvm.internal.M.w();
            h hVar = new h(this.f93111b);
            kotlin.jvm.internal.M.w();
            i iVar = new i(this.f93112c, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, hVar, iVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n289#2,5:114\n*E\n"})
    public static final class f<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93116b;

        public final Mf.p f93117c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93118b;

            public int f93119c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93118b = obj;
                this.f93119c |= Integer.MIN_VALUE;
                return f.this.a(null, this);
            }
        }

        public f(InterfaceC13842i[] interfaceC13842iArr, Mf.p pVar) {
            this.f93116b = interfaceC13842iArr;
            this.f93117c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            InterfaceC13842i[] interfaceC13842iArr = this.f93116b;
            kotlin.jvm.internal.M.w();
            j jVar = new j(this.f93116b);
            kotlin.jvm.internal.M.w();
            Object a10 = kg.k.a(interfaceC13843j, interfaceC13842iArr, jVar, new k(this.f93117c, null), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i[] interfaceC13842iArr = this.f93116b;
            kotlin.jvm.internal.M.w();
            j jVar = new j(this.f93116b);
            kotlin.jvm.internal.M.w();
            k kVar = new k(this.f93117c, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, jVar, kVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", i = {}, l = {33, 33}, m = "invokeSuspend", n = {}, s = {})
    public static final class g<R> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

        public int f93121b;

        public Object f93122c;

        public Object f93123d;

        public final Mf.q<T1, T2, yf.f<? super R>, Object> f93124e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public g(Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar, yf.f<? super g> fVar) {
            super(3, fVar);
            this.f93124e = qVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93121b;
            if (i10 == 0) {
                C14418j0.n(obj);
                interfaceC13843j = (InterfaceC13843j) this.f93122c;
                Object[] objArr = (Object[]) this.f93123d;
                Mf.q<T1, T2, yf.f<? super R>, Object> qVar = this.f93124e;
                Object obj2 = objArr[0];
                Object obj3 = objArr[1];
                this.f93122c = interfaceC13843j;
                this.f93121b = 1;
                obj = qVar.n(obj2, obj3, this);
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
                interfaceC13843j = (InterfaceC13843j) this.f93122c;
                C14418j0.n(obj);
            }
            this.f93122c = null;
            this.f93121b = 2;
            if (interfaceC13843j.emit(obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
            g gVar = new g(this.f93124e, fVar);
            gVar.f93122c = interfaceC13843j;
            gVar.f93123d = objArr;
            return gVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1\n*L\n1#1,332:1\n*E\n"})
    public static final class h<T> extends kotlin.jvm.internal.O implements Mf.a<T[]> {

        public final InterfaceC13842i<T>[] f93125b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public h(InterfaceC13842i<? extends T>[] interfaceC13842iArr) {
            super(0);
            this.f93125b = interfaceC13842iArr;
        }

        @Override
        @Nullable
        public final T[] invoke() {
            int length = this.f93125b.length;
            kotlin.jvm.internal.M.y(0, "T?");
            return (T[]) new Object[length];
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$5$2", f = "Zip.kt", i = {}, l = {238, 238}, m = "invokeSuspend", n = {}, s = {})
    public static final class i<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

        public int f93126b;

        public Object f93127c;

        public Object f93128d;

        public final Mf.p<T[], yf.f<? super R>, Object> f93129e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public i(Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar, yf.f<? super i> fVar) {
            super(3, fVar);
            this.f93129e = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93127c;
            Object invoke = this.f93129e.invoke((Object[]) this.f93128d, this);
            kotlin.jvm.internal.J.e(0);
            interfaceC13843j.emit(invoke, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93126b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f93127c;
                Object[] objArr = (Object[]) this.f93128d;
                Mf.p<T[], yf.f<? super R>, Object> pVar = this.f93129e;
                this.f93127c = interfaceC13843j2;
                this.f93126b = 1;
                obj = pVar.invoke(objArr, this);
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
                InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) this.f93127c;
                C14418j0.n(obj);
                interfaceC13843j = interfaceC13843j3;
            }
            this.f93127c = null;
            this.f93126b = 2;
            if (interfaceC13843j.emit(obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
            kotlin.jvm.internal.M.w();
            i iVar = new i(this.f93129e, fVar);
            iVar.f93127c = interfaceC13843j;
            iVar.f93128d = tArr;
            return iVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1\n*L\n1#1,332:1\n*E\n"})
    public static final class j<T> extends kotlin.jvm.internal.O implements Mf.a<T[]> {

        public final InterfaceC13842i<T>[] f93130b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(InterfaceC13842i<T>[] interfaceC13842iArr) {
            super(0);
            this.f93130b = interfaceC13842iArr;
        }

        @Override
        @Nullable
        public final T[] invoke() {
            int length = this.f93130b.length;
            kotlin.jvm.internal.M.y(0, "T?");
            return (T[]) new Object[length];
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$6$2", f = "Zip.kt", i = {}, l = {292, 292}, m = "invokeSuspend", n = {}, s = {})
    public static final class k<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

        public int f93131b;

        public Object f93132c;

        public Object f93133d;

        public final Mf.p<T[], yf.f<? super R>, Object> f93134e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public k(Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar, yf.f<? super k> fVar) {
            super(3, fVar);
            this.f93134e = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93132c;
            Object invoke = this.f93134e.invoke((Object[]) this.f93133d, this);
            kotlin.jvm.internal.J.e(0);
            interfaceC13843j.emit(invoke, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93131b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f93132c;
                Object[] objArr = (Object[]) this.f93133d;
                Mf.p<T[], yf.f<? super R>, Object> pVar = this.f93134e;
                this.f93132c = interfaceC13843j2;
                this.f93131b = 1;
                obj = pVar.invoke(objArr, this);
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
                InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) this.f93132c;
                C14418j0.n(obj);
                interfaceC13843j = interfaceC13843j3;
            }
            this.f93132c = null;
            this.f93131b = 2;
            if (interfaceC13843j.emit(obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
            kotlin.jvm.internal.M.w();
            k kVar = new k(this.f93134e, fVar);
            kVar.f93132c = interfaceC13843j;
            kVar.f93133d = tArr;
            return kVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class l<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93135b;

        public Object f93136c;

        public final InterfaceC13842i[] f93137d;

        public final Mf.r f93138e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n76#2,5:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1$1", f = "Zip.kt", i = {}, l = {333}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93139b;

            public Object f93140c;

            public Object f93141d;

            public final Mf.r f93142e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.r rVar) {
                super(3, fVar);
                this.f93142e = rVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93139b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93140c;
                    Object[] objArr = (Object[]) this.f93141d;
                    Mf.r rVar = this.f93142e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    this.f93139b = 1;
                    kotlin.jvm.internal.J.e(6);
                    Object invoke = rVar.invoke(interfaceC13843j, obj2, obj3, this);
                    kotlin.jvm.internal.J.e(7);
                    if (invoke == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93142e);
                aVar.f93140c = interfaceC13843j;
                aVar.f93141d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(InterfaceC13842i[] interfaceC13842iArr, yf.f fVar, Mf.r rVar) {
            super(2, fVar);
            this.f93137d = interfaceC13842iArr;
            this.f93138e = rVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            l lVar = new l(this.f93137d, fVar, this.f93138e);
            lVar.f93136c = obj;
            return lVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93135b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93136c;
                InterfaceC13842i[] interfaceC13842iArr = this.f93137d;
                Mf.a a10 = C13833B.a();
                a aVar = new a(null, this.f93138e);
                this.f93135b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((l) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$2", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class m<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93143b;

        public Object f93144c;

        public final InterfaceC13842i[] f93145d;

        public final Mf.r f93146e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n104#2,5:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$2$1", f = "Zip.kt", i = {}, l = {333}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93147b;

            public Object f93148c;

            public Object f93149d;

            public final Mf.r f93150e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.r rVar) {
                super(3, fVar);
                this.f93150e = rVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93147b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93148c;
                    Object[] objArr = (Object[]) this.f93149d;
                    Mf.r rVar = this.f93150e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    this.f93147b = 1;
                    kotlin.jvm.internal.J.e(6);
                    Object invoke = rVar.invoke(interfaceC13843j, obj2, obj3, this);
                    kotlin.jvm.internal.J.e(7);
                    if (invoke == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93150e);
                aVar.f93148c = interfaceC13843j;
                aVar.f93149d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(InterfaceC13842i[] interfaceC13842iArr, yf.f fVar, Mf.r rVar) {
            super(2, fVar);
            this.f93145d = interfaceC13842iArr;
            this.f93146e = rVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            m mVar = new m(this.f93145d, fVar, this.f93146e);
            mVar.f93144c = obj;
            return mVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93143b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93144c;
                InterfaceC13842i[] interfaceC13842iArr = this.f93145d;
                Mf.a a10 = C13833B.a();
                a aVar = new a(null, this.f93146e);
                this.f93143b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((m) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class n<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93151b;

        public Object f93152c;

        public final InterfaceC13842i[] f93153d;

        public final Mf.s f93154e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n139#2,6:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3$1", f = "Zip.kt", i = {}, l = {333}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93155b;

            public Object f93156c;

            public Object f93157d;

            public final Mf.s f93158e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.s sVar) {
                super(3, fVar);
                this.f93158e = sVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93155b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93156c;
                    Object[] objArr = (Object[]) this.f93157d;
                    Mf.s sVar = this.f93158e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    this.f93155b = 1;
                    kotlin.jvm.internal.J.e(6);
                    Object s10 = sVar.s(interfaceC13843j, obj2, obj3, obj4, this);
                    kotlin.jvm.internal.J.e(7);
                    if (s10 == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93158e);
                aVar.f93156c = interfaceC13843j;
                aVar.f93157d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(InterfaceC13842i[] interfaceC13842iArr, yf.f fVar, Mf.s sVar) {
            super(2, fVar);
            this.f93153d = interfaceC13842iArr;
            this.f93154e = sVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            n nVar = new n(this.f93153d, fVar, this.f93154e);
            nVar.f93152c = obj;
            return nVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93151b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93152c;
                InterfaceC13842i[] interfaceC13842iArr = this.f93153d;
                Mf.a a10 = C13833B.a();
                a aVar = new a(null, this.f93154e);
                this.f93151b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((n) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class o<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93159b;

        public Object f93160c;

        public final InterfaceC13842i[] f93161d;

        public final Mf.t f93162e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n178#2,7:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4$1", f = "Zip.kt", i = {}, l = {333}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93163b;

            public Object f93164c;

            public Object f93165d;

            public final Mf.t f93166e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.t tVar) {
                super(3, fVar);
                this.f93166e = tVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93163b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93164c;
                    Object[] objArr = (Object[]) this.f93165d;
                    Mf.t tVar = this.f93166e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    this.f93163b = 1;
                    kotlin.jvm.internal.J.e(6);
                    Object H10 = tVar.H(interfaceC13843j, obj2, obj3, obj4, obj5, this);
                    kotlin.jvm.internal.J.e(7);
                    if (H10 == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93166e);
                aVar.f93164c = interfaceC13843j;
                aVar.f93165d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(InterfaceC13842i[] interfaceC13842iArr, yf.f fVar, Mf.t tVar) {
            super(2, fVar);
            this.f93161d = interfaceC13842iArr;
            this.f93162e = tVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            o oVar = new o(this.f93161d, fVar, this.f93162e);
            oVar.f93160c = obj;
            return oVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93159b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93160c;
                InterfaceC13842i[] interfaceC13842iArr = this.f93161d;
                Mf.a a10 = C13833B.a();
                a aVar = new a(null, this.f93162e);
                this.f93159b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((o) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class p<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93167b;

        public Object f93168c;

        public final InterfaceC13842i[] f93169d;

        public final Mf.u f93170e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,332:1\n221#2,8:333\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5$1", f = "Zip.kt", i = {}, l = {333}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, Object[], yf.f<? super P0>, Object> {

            public int f93171b;

            public Object f93172c;

            public Object f93173d;

            public final Mf.u f93174e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(yf.f fVar, Mf.u uVar) {
                super(3, fVar);
                this.f93174e = uVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93171b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93172c;
                    Object[] objArr = (Object[]) this.f93173d;
                    Mf.u uVar = this.f93174e;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    Object obj6 = objArr[4];
                    this.f93171b = 1;
                    kotlin.jvm.internal.J.e(6);
                    Object L10 = uVar.L(interfaceC13843j, obj2, obj3, obj4, obj5, obj6, this);
                    kotlin.jvm.internal.J.e(7);
                    if (L10 == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull Object[] objArr, @Nullable yf.f<? super P0> fVar) {
                a aVar = new a(fVar, this.f93174e);
                aVar.f93172c = interfaceC13843j;
                aVar.f93173d = objArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(InterfaceC13842i[] interfaceC13842iArr, yf.f fVar, Mf.u uVar) {
            super(2, fVar);
            this.f93169d = interfaceC13842iArr;
            this.f93170e = uVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            p pVar = new p(this.f93169d, fVar, this.f93170e);
            pVar.f93168c = obj;
            return pVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93167b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93168c;
                InterfaceC13842i[] interfaceC13842iArr = this.f93169d;
                Mf.a a10 = C13833B.a();
                a aVar = new a(null, this.f93170e);
                this.f93167b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((p) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6", f = "Zip.kt", i = {}, l = {251}, m = "invokeSuspend", n = {}, s = {})
    public static final class q<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93175b;

        public Object f93176c;

        public final InterfaceC13842i<T>[] f93177d;

        public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93178e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1\n*L\n1#1,332:1\n*E\n"})
        public static final class a<T> extends kotlin.jvm.internal.O implements Mf.a<T[]> {

            public final InterfaceC13842i<T>[] f93179b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(InterfaceC13842i<? extends T>[] interfaceC13842iArr) {
                super(0);
                this.f93179b = interfaceC13842iArr;
            }

            @Override
            @Nullable
            public final T[] invoke() {
                int length = this.f93179b.length;
                kotlin.jvm.internal.M.y(0, "T?");
                return (T[]) new Object[length];
            }
        }

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2\n*L\n1#1,332:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2", f = "Zip.kt", i = {}, l = {251}, m = "invokeSuspend", n = {}, s = {})
        public static final class b<T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

            public int f93180b;

            public Object f93181c;

            public Object f93182d;

            public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93183e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super b> fVar) {
                super(3, fVar);
                this.f93183e = qVar;
            }

            @Nullable
            public final Object A(@NotNull Object obj) {
                this.f93183e.n((InterfaceC13843j) this.f93181c, (Object[]) this.f93182d, this);
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93180b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93181c;
                    Object[] objArr = (Object[]) this.f93182d;
                    Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> qVar = this.f93183e;
                    this.f93181c = null;
                    this.f93180b = 1;
                    if (qVar.n(interfaceC13843j, objArr, this) == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
                kotlin.jvm.internal.M.w();
                b bVar = new b(this.f93183e, fVar);
                bVar.f93181c = interfaceC13843j;
                bVar.f93182d = tArr;
                return bVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public q(InterfaceC13842i<? extends T>[] interfaceC13842iArr, Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super q> fVar) {
            super(2, fVar);
            this.f93177d = interfaceC13842iArr;
            this.f93178e = qVar;
        }

        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93176c;
            InterfaceC13842i<T>[] interfaceC13842iArr = this.f93177d;
            kotlin.jvm.internal.M.w();
            a aVar = new a(this.f93177d);
            kotlin.jvm.internal.M.w();
            b bVar = new b(this.f93178e, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, aVar, bVar, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            q qVar = new q(this.f93177d, this.f93178e, fVar);
            qVar.f93176c = obj;
            return qVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93175b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93176c;
                InterfaceC13842i<T>[] interfaceC13842iArr = this.f93177d;
                kotlin.jvm.internal.M.w();
                a aVar = new a(this.f93177d);
                kotlin.jvm.internal.M.w();
                b bVar = new b(this.f93178e, null);
                this.f93175b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, aVar, bVar, this) == l10) {
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
            return ((q) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
    public static final class r<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93184b;

        public Object f93185c;

        public final InterfaceC13842i<T>[] f93186d;

        public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93187e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$1\n*L\n1#1,332:1\n*E\n"})
        public static final class a<T> extends kotlin.jvm.internal.O implements Mf.a<T[]> {

            public final InterfaceC13842i<T>[] f93188b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(InterfaceC13842i<T>[] interfaceC13842iArr) {
                super(0);
                this.f93188b = interfaceC13842iArr;
            }

            @Override
            @Nullable
            public final T[] invoke() {
                int length = this.f93188b.length;
                kotlin.jvm.internal.M.y(0, "T?");
                return (T[]) new Object[length];
            }
        }

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2\n*L\n1#1,332:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
        public static final class b<T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

            public int f93189b;

            public Object f93190c;

            public Object f93191d;

            public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93192e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super b> fVar) {
                super(3, fVar);
                this.f93192e = qVar;
            }

            @Nullable
            public final Object A(@NotNull Object obj) {
                this.f93192e.n((InterfaceC13843j) this.f93190c, (Object[]) this.f93191d, this);
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93189b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93190c;
                    Object[] objArr = (Object[]) this.f93191d;
                    Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> qVar = this.f93192e;
                    this.f93190c = null;
                    this.f93189b = 1;
                    if (qVar.n(interfaceC13843j, objArr, this) == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
                kotlin.jvm.internal.M.w();
                b bVar = new b(this.f93192e, fVar);
                bVar.f93190c = interfaceC13843j;
                bVar.f93191d = tArr;
                return bVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public r(InterfaceC13842i<T>[] interfaceC13842iArr, Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super r> fVar) {
            super(2, fVar);
            this.f93186d = interfaceC13842iArr;
            this.f93187e = qVar;
        }

        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93185c;
            InterfaceC13842i<T>[] interfaceC13842iArr = this.f93186d;
            kotlin.jvm.internal.M.w();
            a aVar = new a(this.f93186d);
            kotlin.jvm.internal.M.w();
            b bVar = new b(this.f93187e, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, aVar, bVar, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            r rVar = new r(this.f93186d, this.f93187e, fVar);
            rVar.f93185c = obj;
            return rVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93184b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93185c;
                InterfaceC13842i<T>[] interfaceC13842iArr = this.f93186d;
                kotlin.jvm.internal.M.w();
                a aVar = new a(this.f93186d);
                kotlin.jvm.internal.M.w();
                b bVar = new b(this.f93187e, null);
                this.f93184b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, aVar, bVar, this) == l10) {
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
            return ((r) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    public static final class s<R> extends Bf.q implements Mf.p<InterfaceC13843j<? super R>, yf.f<? super P0>, Object> {

        public int f93193b;

        public Object f93194c;

        public final InterfaceC13842i<T>[] f93195d;

        public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93196e;

        @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1\n*L\n1#1,332:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1$1", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
        public static final class a<T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

            public int f93197b;

            public Object f93198c;

            public Object f93199d;

            public final Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> f93200e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super a> fVar) {
                super(3, fVar);
                this.f93200e = qVar;
            }

            @Nullable
            public final Object A(@NotNull Object obj) {
                this.f93200e.n((InterfaceC13843j) this.f93198c, (Object[]) this.f93199d, this);
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93197b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93198c;
                    Object[] objArr = (Object[]) this.f93199d;
                    Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> qVar = this.f93200e;
                    this.f93198c = null;
                    this.f93197b = 1;
                    if (qVar.n(interfaceC13843j, objArr, this) == l10) {
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
            public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
                kotlin.jvm.internal.M.w();
                a aVar = new a(this.f93200e, fVar);
                aVar.f93198c = interfaceC13843j;
                aVar.f93199d = tArr;
                return aVar.invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public s(InterfaceC13842i<? extends T>[] interfaceC13842iArr, Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super s> fVar) {
            super(2, fVar);
            this.f93195d = interfaceC13842iArr;
            this.f93196e = qVar;
        }

        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93194c;
            InterfaceC13842i<T>[] interfaceC13842iArr = this.f93195d;
            Mf.a a10 = C13833B.a();
            kotlin.jvm.internal.M.w();
            a aVar = new a(this.f93196e, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            s sVar = new s(this.f93195d, this.f93196e, fVar);
            sVar.f93194c = obj;
            return sVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93193b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93194c;
                InterfaceC13842i<T>[] interfaceC13842iArr = this.f93195d;
                Mf.a a10 = C13833B.a();
                kotlin.jvm.internal.M.w();
                a aVar = new a(this.f93196e, null);
                this.f93193b = 1;
                if (kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, aVar, this) == l10) {
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
            return ((s) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"})
    public static final class t<R> implements InterfaceC13842i<R> {

        public final InterfaceC13842i[] f93201b;

        public final Mf.p f93202c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93203b;

            public int f93204c;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93203b = obj;
                this.f93204c |= Integer.MIN_VALUE;
                return t.this.a(null, this);
            }
        }

        public t(InterfaceC13842i[] interfaceC13842iArr, Mf.p pVar) {
            this.f93201b = interfaceC13842iArr;
            this.f93202c = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            InterfaceC13842i[] interfaceC13842iArr = this.f93201b;
            Mf.a a10 = C13833B.a();
            kotlin.jvm.internal.M.w();
            Object a11 = kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, new u(this.f93202c, null), fVar);
            return a11 == Af.d.l() ? a11 : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j interfaceC13843j, @NotNull yf.f fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            InterfaceC13842i[] interfaceC13842iArr = this.f93201b;
            Mf.a a10 = C13833B.a();
            kotlin.jvm.internal.M.w();
            u uVar = new u(this.f93202c, null);
            kotlin.jvm.internal.J.e(0);
            kg.k.a(interfaceC13843j, interfaceC13842iArr, a10, uVar, fVar);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n*L\n1#1,332:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$1$1", f = "Zip.kt", i = {}, l = {262, 262}, m = "invokeSuspend", n = {}, s = {})
    public static final class u<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T[], yf.f<? super P0>, Object> {

        public int f93206b;

        public Object f93207c;

        public Object f93208d;

        public final Mf.p<T[], yf.f<? super R>, Object> f93209e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public u(Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar, yf.f<? super u> fVar) {
            super(3, fVar);
            this.f93209e = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final Object A(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93207c;
            Object invoke = this.f93209e.invoke((Object[]) this.f93208d, this);
            kotlin.jvm.internal.J.e(0);
            interfaceC13843j.emit(invoke, this);
            kotlin.jvm.internal.J.e(1);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93206b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f93207c;
                Object[] objArr = (Object[]) this.f93208d;
                Mf.p<T[], yf.f<? super R>, Object> pVar = this.f93209e;
                this.f93207c = interfaceC13843j2;
                this.f93206b = 1;
                obj = pVar.invoke(objArr, this);
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
                InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) this.f93207c;
                C14418j0.n(obj);
                interfaceC13843j = interfaceC13843j3;
            }
            this.f93207c = null;
            this.f93206b = 2;
            if (interfaceC13843j.emit(obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull T[] tArr, @Nullable yf.f<? super P0> fVar) {
            kotlin.jvm.internal.M.w();
            u uVar = new u(this.f93209e, fVar);
            uVar.f93207c = interfaceC13843j;
            uVar.f93208d = tArr;
            return uVar.invokeSuspend(P0.f98194a);
        }
    }

    public static final class v extends kotlin.jvm.internal.O implements Mf.a {

        public static final v f93210b = new v();

        public v() {
            super(0);
        }

        @Override
        @Nullable
        public final Void invoke() {
            return null;
        }
    }

    public static final Mf.a a() {
        return r();
    }

    public static final <T, R> InterfaceC13842i<R> b(Iterable<? extends InterfaceC13842i<? extends T>> iterable, Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar) {
        InterfaceC13842i[] interfaceC13842iArr = (InterfaceC13842i[]) pf.S.a6(iterable).toArray(new InterfaceC13842i[0]);
        kotlin.jvm.internal.M.w();
        return new f(interfaceC13842iArr, pVar);
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> c(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13844k.K0(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> d(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @InterfaceC14401b @NotNull Mf.r<? super T1, ? super T2, ? super T3, ? super yf.f<? super R>, ? extends Object> rVar) {
        return new a(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3}, rVar);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> e(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull Mf.s<? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super R>, ? extends Object> sVar) {
        return new b(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4}, sVar);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> f(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @NotNull Mf.t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super R>, ? extends Object> tVar) {
        return new c(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5}, tVar);
    }

    public static final <T, R> InterfaceC13842i<R> g(InterfaceC13842i<? extends T>[] interfaceC13842iArr, Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar) {
        kotlin.jvm.internal.M.w();
        return new e(interfaceC13842iArr, pVar);
    }

    public static final <T, R> InterfaceC13842i<R> h(Iterable<? extends InterfaceC13842i<? extends T>> iterable, @InterfaceC14401b Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar) {
        InterfaceC13842i[] interfaceC13842iArr = (InterfaceC13842i[]) pf.S.a6(iterable).toArray(new InterfaceC13842i[0]);
        kotlin.jvm.internal.M.w();
        return C13844k.J0(new r(interfaceC13842iArr, qVar, null));
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> i(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @InterfaceC14401b @NotNull Mf.r<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super yf.f<? super P0>, ? extends Object> rVar) {
        return C13844k.J0(new m(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2}, null, rVar));
    }

    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> j(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @InterfaceC14401b @NotNull Mf.s<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super yf.f<? super P0>, ? extends Object> sVar) {
        return C13844k.J0(new n(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3}, null, sVar));
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> k(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @InterfaceC14401b @NotNull Mf.t<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super P0>, ? extends Object> tVar) {
        return C13844k.J0(new o(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4}, null, tVar));
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> l(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @InterfaceC14401b @NotNull Mf.u<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super P0>, ? extends Object> uVar) {
        return C13844k.J0(new p(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5}, null, uVar));
    }

    public static final <T, R> InterfaceC13842i<R> m(InterfaceC13842i<? extends T>[] interfaceC13842iArr, @InterfaceC14401b Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar) {
        kotlin.jvm.internal.M.w();
        return C13844k.J0(new q(interfaceC13842iArr, qVar, null));
    }

    public static final <T, R> InterfaceC13842i<R> n(InterfaceC13842i<? extends T>[] interfaceC13842iArr, @InterfaceC14401b Mf.q<? super InterfaceC13843j<? super R>, ? super T[], ? super yf.f<? super P0>, ? extends Object> qVar) {
        kotlin.jvm.internal.M.w();
        return C13844k.J0(new s(interfaceC13842iArr, qVar, null));
    }

    public static final <T, R> InterfaceC13842i<R> o(InterfaceC13842i<? extends T>[] interfaceC13842iArr, Mf.p<? super T[], ? super yf.f<? super R>, ? extends Object> pVar) {
        kotlin.jvm.internal.M.w();
        return new t(interfaceC13842iArr, pVar);
    }

    @Lf.j(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> p(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return new d(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @Lf.j(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> q(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @InterfaceC14401b @NotNull Mf.r<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super yf.f<? super P0>, ? extends Object> rVar) {
        return C13844k.J0(new l(new InterfaceC13842i[]{interfaceC13842i, interfaceC13842i2}, null, rVar));
    }

    public static final <T> Mf.a<T[]> r() {
        return v.f93210b;
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> s(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return kg.k.b(interfaceC13842i, interfaceC13842i2, qVar);
    }
}
