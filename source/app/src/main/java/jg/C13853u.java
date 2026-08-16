package jg;

import eg.K0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.C14436t;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nErrors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,224:1\n107#2:225\n107#2:227\n1#3:226\n163#4:228\n*S KotlinDebug\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n58#1:225\n132#1:227\n221#1:228\n*E\n"})
public final class C13853u {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n59#2,3:114\n*E\n"})
    public static final class a<T> implements InterfaceC13842i<T> {

        public final InterfaceC13842i f93537b;

        public final Mf.q f93538c;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", i = {0, 0}, l = {114, 115}, m = "collect", n = {"this", "$this$catch_u24lambda_u240"}, s = {"L$0", "L$1"})
        public static final class C1821a extends Bf.d {

            public Object f93539b;

            public int f93540c;

            public Object f93542e;

            public Object f93543f;

            public C1821a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93539b = obj;
                this.f93540c |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        public a(InterfaceC13842i interfaceC13842i, Mf.q qVar) {
            this.f93537b = interfaceC13842i;
            this.f93538c = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            C1821a c1821a;
            int i10;
            a<T> aVar;
            Throwable th2;
            if (fVar instanceof C1821a) {
                c1821a = (C1821a) fVar;
                int i11 = c1821a.f93540c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1821a.f93540c = i11 - Integer.MIN_VALUE;
                    Object obj = c1821a.f93539b;
                    Object l10 = Af.d.l();
                    i10 = c1821a.f93540c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        InterfaceC13842i interfaceC13842i = this.f93537b;
                        c1821a.f93542e = this;
                        c1821a.f93543f = interfaceC13843j;
                        c1821a.f93540c = 1;
                        obj = C13844k.v(interfaceC13842i, interfaceC13843j, c1821a);
                        if (obj == l10) {
                            return l10;
                        }
                        aVar = this;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        interfaceC13843j = (InterfaceC13843j) c1821a.f93543f;
                        aVar = (a) c1821a.f93542e;
                        C14418j0.n(obj);
                    }
                    th2 = (Throwable) obj;
                    if (th2 != null) {
                        Mf.q qVar = aVar.f93538c;
                        c1821a.f93542e = null;
                        c1821a.f93543f = null;
                        c1821a.f93540c = 2;
                        kotlin.jvm.internal.J.e(6);
                        Object n10 = qVar.n(interfaceC13843j, th2, c1821a);
                        kotlin.jvm.internal.J.e(7);
                        if (n10 == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            c1821a = new C1821a(fVar);
            Object obj2 = c1821a.f93539b;
            Object l102 = Af.d.l();
            i10 = c1821a.f93540c;
            if (i10 != 0) {
            }
            th2 = (Throwable) obj2;
            if (th2 != null) {
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", i = {0}, l = {156}, m = "catchImpl", n = {"fromDownstream"}, s = {"L$0"})
    public static final class b<T> extends Bf.d {

        public Object f93544b;

        public Object f93545c;

        public int f93546d;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93545c = obj;
            this.f93546d |= Integer.MIN_VALUE;
            return C13844k.v(null, null, this);
        }
    }

    public static final class c<T> implements InterfaceC13843j {

        public final InterfaceC13843j<T> f93547b;

        public final m0.h<Throwable> f93548c;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", i = {0}, l = {158}, m = "emit", n = {"this"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93549b;

            public Object f93550c;

            public final c<T> f93551d;

            public int f93552e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(c<? super T> cVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93551d = cVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93550c = obj;
                this.f93552e |= Integer.MIN_VALUE;
                return this.f93551d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC13843j<? super T> interfaceC13843j, m0.h<Throwable> hVar) {
            this.f93547b = interfaceC13843j;
            this.f93548c = hVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            c<T> cVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93552e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93552e = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93550c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93552e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        try {
                            InterfaceC13843j<T> interfaceC13843j = this.f93547b;
                            aVar.f93549b = this;
                            aVar.f93552e = 1;
                            if (interfaceC13843j.emit(t10, aVar) == l10) {
                                return l10;
                            }
                        } catch (Throwable 
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                            	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:367)
                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:330)
                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            */
                        /*
                            this = this;
                            boolean r0 = r6 instanceof jg.C13853u.c.a
                            if (r0 == 0) goto L13
                            r0 = r6
                            jg.u$c$a r0 = (jg.C13853u.c.a) r0
                            int r1 = r0.f93552e
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.f93552e = r1
                            goto L18
                        L13:
                            jg.u$c$a r0 = new jg.u$c$a
                            r0.<init>(r4, r6)
                        L18:
                            java.lang.Object r6 = r0.f93550c
                            java.lang.Object r1 = Af.d.l()
                            int r2 = r0.f93552e
                            r3 = 1
                            if (r2 == 0) goto L37
                            if (r2 != r3) goto L2f
                            java.lang.Object r5 = r0.f93549b
                            jg.u$c r5 = (jg.C13853u.c) r5
                            nf.C14418j0.n(r6)     // Catch: java.lang.Throwable -> L2d
                            goto L47
                        L2d:
                            r6 = move-exception
                            goto L4c
                        L2f:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L37:
                            nf.C14418j0.n(r6)
                            jg.j<T> r6 = r4.f93547b     // Catch: java.lang.Throwable -> L4a
                            r0.f93549b = r4     // Catch: java.lang.Throwable -> L4a
                            r0.f93552e = r3     // Catch: java.lang.Throwable -> L4a
                            java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L4a
                            if (r5 != r1) goto L47
                            return r1
                        L47:
                            nf.P0 r5 = nf.P0.f98194a
                            return r5
                        L4a:
                            r6 = move-exception
                            r5 = r4
                        L4c:
                            kotlin.jvm.internal.m0$h<java.lang.Throwable> r5 = r5.f93548c
                            r5.f95754b = r6
                            throw r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: jg.C13853u.c.emit(java.lang.Object, yf.f):java.lang.Object");
                    }
                }

                @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$1", f = "Errors.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                public static final class d extends Bf.q implements Mf.p<Throwable, yf.f<? super Boolean>, Object> {

                    public int f93553b;

                    public d(yf.f<? super d> fVar) {
                        super(2, fVar);
                    }

                    @Override
                    @NotNull
                    public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                        return new d(fVar);
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Af.d.l();
                        if (this.f93553b != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                        return Bf.b.a(true);
                    }

                    @Override
                    @Nullable
                    public final Object invoke(@NotNull Throwable th2, @Nullable yf.f<? super Boolean> fVar) {
                        return ((d) create(th2, fVar)).invokeSuspend(P0.f98194a);
                    }
                }

                @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", f = "Errors.kt", i = {}, l = {95}, m = "invokeSuspend", n = {}, s = {})
                public static final class e<T> extends Bf.q implements Mf.r<InterfaceC13843j<? super T>, Throwable, Long, yf.f<? super Boolean>, Object> {

                    public int f93554b;

                    public Object f93555c;

                    public long f93556d;

                    public final long f93557e;

                    public final Mf.p<Throwable, yf.f<? super Boolean>, Object> f93558f;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public e(long j10, Mf.p<? super Throwable, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super e> fVar) {
                        super(4, fVar);
                        this.f93557e = j10;
                        this.f93558f = pVar;
                    }

                    @Override
                    public Object invoke(Object obj, Throwable th2, Long l10, yf.f<? super Boolean> fVar) {
                        return z((InterfaceC13843j) obj, th2, l10.longValue(), fVar);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:6:0x0037, code lost:
                    
                        if (((java.lang.Boolean) r8).booleanValue() != false) goto L36;
                     */
                    @Override
                    @Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object l10 = Af.d.l();
                        int i10 = this.f93554b;
                        boolean z10 = true;
                        if (i10 == 0) {
                            C14418j0.n(obj);
                            Throwable th2 = (Throwable) this.f93555c;
                            if (this.f93556d < this.f93557e) {
                                Mf.p<Throwable, yf.f<? super Boolean>, Object> pVar = this.f93558f;
                                this.f93554b = 1;
                                obj = pVar.invoke(th2, this);
                                if (obj == l10) {
                                    return l10;
                                }
                            }
                            z10 = false;
                            return Bf.b.a(z10);
                        }
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                    }

                    @Nullable
                    public final Object z(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull Throwable th2, long j10, @Nullable yf.f<? super Boolean> fVar) {
                        e eVar = new e(this.f93557e, this.f93558f, fVar);
                        eVar.f93555c = th2;
                        eVar.f93556d = j10;
                        return eVar.invokeSuspend(P0.f98194a);
                    }
                }

                @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n133#2,15:114\n*E\n"})
                public static final class f<T> implements InterfaceC13842i<T> {

                    public final InterfaceC13842i f93559b;

                    public final Mf.r f93560c;

                    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
                    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {118, 120}, m = "collect", n = {"this", "$this$retryWhen_u24lambda_u242", "attempt", "shallRetry", "this", "$this$retryWhen_u24lambda_u242", "cause", "attempt"}, s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "L$2", "J$0"})
                    public static final class a extends Bf.d {

                        public Object f93561b;

                        public int f93562c;

                        public Object f93564e;

                        public Object f93565f;

                        public Object f93566g;

                        public long f93567h;

                        public int f93568i;

                        public a(yf.f fVar) {
                            super(fVar);
                        }

                        @Override
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) {
                            this.f93561b = obj;
                            this.f93562c |= Integer.MIN_VALUE;
                            return f.this.a(null, this);
                        }
                    }

                    public f(InterfaceC13842i interfaceC13842i, Mf.r rVar) {
                        this.f93559b = interfaceC13842i;
                        this.f93560c = rVar;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:13:0x00a2  */
                    /* JADX WARN: Removed duplicated region for block: B:16:0x00ab  */
                    /* JADX WARN: Removed duplicated region for block: B:19:0x00ae  */
                    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
                    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
                    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
                    /* JADX WARN: Removed duplicated region for block: B:34:0x0052  */
                    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0076 -> B:14:0x00a6). Please report as a decompilation issue!!! */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0097 -> B:11:0x009a). Please report as a decompilation issue!!! */
                    @Override
                    @Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
                        a aVar;
                        int i10;
                        long j10;
                        f<T> fVar2;
                        int i11;
                        f<T> fVar3;
                        InterfaceC13843j<? super T> interfaceC13843j2;
                        Throwable th2;
                        Object v10;
                        if (fVar instanceof a) {
                            aVar = (a) fVar;
                            int i12 = aVar.f93562c;
                            if ((i12 & Integer.MIN_VALUE) != 0) {
                                aVar.f93562c = i12 - Integer.MIN_VALUE;
                                Object obj = aVar.f93561b;
                                Object l10 = Af.d.l();
                                i10 = aVar.f93562c;
                                if (i10 != 0) {
                                    C14418j0.n(obj);
                                    j10 = 0;
                                    fVar2 = this;
                                    InterfaceC13842i interfaceC13842i = fVar2.f93559b;
                                    aVar.f93564e = fVar2;
                                    aVar.f93565f = interfaceC13843j;
                                    aVar.f93566g = null;
                                    aVar.f93567h = j10;
                                    aVar.f93568i = 0;
                                    aVar.f93562c = 1;
                                    v10 = C13844k.v(interfaceC13842i, interfaceC13843j, aVar);
                                    if (v10 != l10) {
                                    }
                                } else if (i10 == 1) {
                                    i11 = aVar.f93568i;
                                    j10 = aVar.f93567h;
                                    interfaceC13843j2 = (InterfaceC13843j) aVar.f93565f;
                                    fVar3 = (f) aVar.f93564e;
                                    C14418j0.n(obj);
                                    th2 = (Throwable) obj;
                                    if (th2 != null) {
                                    }
                                    fVar2 = fVar3;
                                    if (i11 == 0) {
                                    }
                                } else {
                                    if (i10 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    j10 = aVar.f93567h;
                                    Throwable th3 = (Throwable) aVar.f93566g;
                                    interfaceC13843j2 = (InterfaceC13843j) aVar.f93565f;
                                    fVar3 = (f) aVar.f93564e;
                                    C14418j0.n(obj);
                                    if (!((Boolean) obj).booleanValue()) {
                                        j10++;
                                        i11 = 1;
                                        fVar2 = fVar3;
                                        if (i11 == 0) {
                                            return P0.f98194a;
                                        }
                                        interfaceC13843j = interfaceC13843j2;
                                        InterfaceC13842i interfaceC13842i2 = fVar2.f93559b;
                                        aVar.f93564e = fVar2;
                                        aVar.f93565f = interfaceC13843j;
                                        aVar.f93566g = null;
                                        aVar.f93567h = j10;
                                        aVar.f93568i = 0;
                                        aVar.f93562c = 1;
                                        v10 = C13844k.v(interfaceC13842i2, interfaceC13843j, aVar);
                                        if (v10 != l10) {
                                            return l10;
                                        }
                                        interfaceC13843j2 = interfaceC13843j;
                                        i11 = 0;
                                        fVar3 = fVar2;
                                        obj = v10;
                                        th2 = (Throwable) obj;
                                        if (th2 != null) {
                                            Mf.r rVar = fVar3.f93560c;
                                            Long g10 = Bf.b.g(j10);
                                            aVar.f93564e = fVar3;
                                            aVar.f93565f = interfaceC13843j2;
                                            aVar.f93566g = th2;
                                            aVar.f93567h = j10;
                                            aVar.f93562c = 2;
                                            kotlin.jvm.internal.J.e(6);
                                            Object invoke = rVar.invoke(interfaceC13843j2, th2, g10, aVar);
                                            kotlin.jvm.internal.J.e(7);
                                            if (invoke == l10) {
                                                return l10;
                                            }
                                            obj = invoke;
                                            th3 = th2;
                                            if (!((Boolean) obj).booleanValue()) {
                                                throw th3;
                                            }
                                        }
                                        fVar2 = fVar3;
                                        if (i11 == 0) {
                                        }
                                    }
                                }
                            }
                        }
                        aVar = new a(fVar);
                        Object obj2 = aVar.f93561b;
                        Object l102 = Af.d.l();
                        i10 = aVar.f93562c;
                        if (i10 != 0) {
                        }
                    }
                }

                @NotNull
                public static final <T> InterfaceC13842i<T> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar) {
                    return new a(interfaceC13842i, qVar);
                }

                /* JADX WARN: Removed duplicated region for block: B:31:0x0037  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public static final <T> Object b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super Throwable> fVar) {
                    b bVar;
                    int i10;
                    m0.h hVar;
                    Throwable th2;
                    if (fVar instanceof b) {
                        bVar = (b) fVar;
                        int i11 = bVar.f93546d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            bVar.f93546d = i11 - Integer.MIN_VALUE;
                            Object obj = bVar.f93545c;
                            Object l10 = Af.d.l();
                            i10 = bVar.f93546d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                m0.h hVar2 = new m0.h();
                                try {
                                    InterfaceC13843j<? super Object> cVar = new c<>(interfaceC13843j, hVar2);
                                    bVar.f93544b = hVar2;
                                    bVar.f93546d = 1;
                                    if (interfaceC13842i.a(cVar, bVar) == l10) {
                                        return l10;
                                    }
                                    return null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    hVar = hVar2;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                hVar = (m0.h) bVar.f93544b;
                                try {
                                    C14418j0.n(obj);
                                    return null;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                            th2 = (Throwable) hVar.f95754b;
                            if (!d(th, th2) || c(th, bVar.getContext())) {
                                throw th;
                            }
                            if (th2 == null) {
                                return th;
                            }
                            if (th instanceof CancellationException) {
                                C14436t.a(th2, th);
                                throw th2;
                            }
                            C14436t.a(th, th2);
                            throw th;
                        }
                    }
                    bVar = new b(fVar);
                    Object obj2 = bVar.f93545c;
                    Object l102 = Af.d.l();
                    i10 = bVar.f93546d;
                    if (i10 != 0) {
                    }
                    th2 = (Throwable) hVar.f95754b;
                    if (d(th, th2)) {
                    }
                    throw th;
                }

                public static final boolean c(Throwable th2, yf.j jVar) {
                    K0 k02 = (K0) jVar.get(K0.f85619y4);
                    if (k02 == null || !k02.isCancelled()) {
                        return false;
                    }
                    return d(th2, k02.Q());
                }

                public static final boolean d(Throwable th2, Throwable th3) {
                    return th3 != null && kotlin.jvm.internal.M.g(th3, th2);
                }

                @NotNull
                public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10, @NotNull Mf.p<? super Throwable, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
                    if (j10 > 0) {
                        return C13844k.y1(interfaceC13842i, new e(j10, pVar, null));
                    }
                    throw new IllegalArgumentException(("Expected positive amount of retries, but had " + j10).toString());
                }

                public static InterfaceC13842i f(InterfaceC13842i interfaceC13842i, long j10, Mf.p pVar, int i10, Object obj) {
                    if ((i10 & 1) != 0) {
                        j10 = Long.MAX_VALUE;
                    }
                    if ((i10 & 2) != 0) {
                        pVar = new d(null);
                    }
                    return C13844k.w1(interfaceC13842i, j10, pVar);
                }

                @NotNull
                public static final <T> InterfaceC13842i<T> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.r<? super InterfaceC13843j<? super T>, ? super Throwable, ? super Long, ? super yf.f<? super Boolean>, ? extends Object> rVar) {
                    return new f(interfaceC13842i, rVar);
                }
            }
