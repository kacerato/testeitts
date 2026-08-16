package jg;

import Xf.InterfaceC3312m;
import gg.InterfaceC13358B;
import java.util.Iterator;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14974g0;
import pf.AbstractC14976h0;

@t0({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,354:1\n107#2:355\n107#2:356\n107#2:357\n107#2:358\n107#2:359\n107#2:360\n107#2:361\n107#2:362\n107#2:363\n107#2:364\n107#2:365\n107#2:366\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n68#1:355\n82#1:356\n89#1:357\n98#1:358\n107#1:359\n122#1:360\n131#1:361\n153#1:362\n164#1:363\n175#1:364\n184#1:365\n193#1:366\n*E\n"})
public final class C13845l {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n194#2:114\n195#2,2:116\n197#2:119\n1855#3:115\n1856#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n194#1:115\n194#1:118\n*E\n"})
    public static final class a implements InterfaceC13842i<Long> {

        public final Vf.o f93319b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10", f = "Builders.kt", i = {0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u2419"}, s = {"L$0"})
        public static final class C1814a extends Bf.d {

            public Object f93320b;

            public int f93321c;

            public Object f93323e;

            public Object f93324f;

            public C1814a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93320b = obj;
                this.f93321c |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        public a(Vf.o oVar) {
            this.f93319b = oVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super Long> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            C1814a c1814a;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            Iterator<Long> it;
            if (fVar instanceof C1814a) {
                c1814a = (C1814a) fVar;
                int i11 = c1814a.f93321c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1814a.f93321c = i11 - Integer.MIN_VALUE;
                    Object obj = c1814a.f93320b;
                    Object l10 = Af.d.l();
                    i10 = c1814a.f93321c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j;
                        it = this.f93319b.iterator();
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (Iterator) c1814a.f93324f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1814a.f93323e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    }
                    while (it.hasNext()) {
                        Long g10 = Bf.b.g(((AbstractC14976h0) it).nextLong());
                        c1814a.f93323e = interfaceC13843j2;
                        c1814a.f93324f = it;
                        c1814a.f93321c = 1;
                        if (interfaceC13843j2.emit(g10, c1814a) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            c1814a = new C1814a(fVar);
            Object obj2 = c1814a.f93320b;
            Object l102 = Af.d.l();
            i10 = c1814a.f93321c;
            if (i10 != 0) {
            }
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n1#1,113:1\n69#2,2:114\n*E\n"})
    public static final class b<T> implements InterfaceC13842i<T> {

        public final Mf.a f93325b;

        public b(Mf.a aVar) {
            this.f93325b = aVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object emit = interfaceC13843j.emit((Object) this.f93325b.invoke(), fVar);
            return emit == Af.d.l() ? emit : P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n1#1,113:1\n83#2,2:114\n*E\n"})
    public static final class c<T> implements InterfaceC13842i<T> {

        public final Mf.l f93326b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$2", f = "Builders.kt", i = {}, l = {114, 114}, m = "collect", n = {}, s = {})
        public static final class a extends Bf.d {

            public Object f93327b;

            public int f93328c;

            public Object f93330e;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93327b = obj;
                this.f93328c |= Integer.MIN_VALUE;
                return c.this.a(null, this);
            }
        }

        public c(Mf.l lVar) {
            this.f93326b = lVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x005f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object obj;
            Object l10;
            int i10;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93328c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93328c = i11 - Integer.MIN_VALUE;
                    obj = aVar.f93327b;
                    l10 = Af.d.l();
                    i10 = aVar.f93328c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.l lVar = this.f93326b;
                        aVar.f93330e = interfaceC13843j;
                        aVar.f93328c = 1;
                        kotlin.jvm.internal.J.e(6);
                        obj = lVar.invoke(aVar);
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
                        interfaceC13843j = (InterfaceC13843j) aVar.f93330e;
                        C14418j0.n(obj);
                    }
                    aVar.f93330e = null;
                    aVar.f93328c = 2;
                    if (interfaceC13843j.emit(obj, aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            obj = aVar.f93327b;
            l10 = Af.d.l();
            i10 = aVar.f93328c;
            if (i10 != 0) {
            }
            aVar.f93330e = null;
            aVar.f93328c = 2;
            if (interfaceC13843j.emit(obj, aVar) == l10) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n90#2:114\n91#2,2:116\n93#2:119\n1855#3:115\n1856#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n90#1:115\n90#1:118\n*E\n"})
    public static final class d<T> implements InterfaceC13842i<T> {

        public final Iterable f93331b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3", f = "Builders.kt", i = {0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u243"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93332b;

            public int f93333c;

            public Object f93335e;

            public Object f93336f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93332b = obj;
                this.f93333c |= Integer.MIN_VALUE;
                return d.this.a(null, this);
            }
        }

        public d(Iterable iterable) {
            this.f93331b = iterable;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            Iterator<T> it;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93333c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93333c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93332b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93333c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j;
                        it = this.f93331b.iterator();
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (Iterator) aVar.f93336f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93335e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    }
                    while (it.hasNext()) {
                        T next = it.next();
                        aVar.f93335e = interfaceC13843j2;
                        aVar.f93336f = it;
                        aVar.f93333c = 1;
                        if (interfaceC13843j2.emit(next, aVar) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93332b;
            Object l102 = Af.d.l();
            i10 = aVar.f93333c;
            if (i10 != 0) {
            }
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,113:1\n99#2:114\n100#2,2:116\n102#2:119\n32#3:115\n33#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n99#1:115\n99#1:118\n*E\n"})
    public static final class e<T> implements InterfaceC13842i<T> {

        public final Iterator f93337b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4", f = "Builders.kt", i = {0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u245"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93338b;

            public int f93339c;

            public Object f93341e;

            public Object f93342f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93338b = obj;
                this.f93339c |= Integer.MIN_VALUE;
                return e.this.a(null, this);
            }
        }

        public e(Iterator it) {
            this.f93337b = it;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            Iterator it;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93339c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93339c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93338b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93339c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j;
                        it = this.f93337b;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (Iterator) aVar.f93342f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93341e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    }
                    while (it.hasNext()) {
                        Object next = it.next();
                        aVar.f93341e = interfaceC13843j2;
                        aVar.f93342f = it;
                        aVar.f93339c = 1;
                        if (interfaceC13843j2.emit(next, aVar) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93338b;
            Object l102 = Af.d.l();
            i10 = aVar.f93339c;
            if (i10 != 0) {
            }
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,113:1\n108#2:114\n109#2,2:116\n111#2:119\n1295#3:115\n1296#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n108#1:115\n108#1:118\n*E\n"})
    public static final class f<T> implements InterfaceC13842i<T> {

        public final InterfaceC3312m f93343b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5", f = "Builders.kt", i = {0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u247"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93344b;

            public int f93345c;

            public Object f93347e;

            public Object f93348f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93344b = obj;
                this.f93345c |= Integer.MIN_VALUE;
                return f.this.a(null, this);
            }
        }

        public f(InterfaceC3312m interfaceC3312m) {
            this.f93343b = interfaceC3312m;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            Iterator<T> it;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93345c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93345c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93344b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93345c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j;
                        it = this.f93343b.iterator();
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (Iterator) aVar.f93348f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93347e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    }
                    while (it.hasNext()) {
                        T next = it.next();
                        aVar.f93347e = interfaceC13843j2;
                        aVar.f93348f = it;
                        aVar.f93345c = 1;
                        if (interfaceC13843j2.emit(next, aVar) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93344b;
            Object l102 = Af.d.l();
            i10 = aVar.f93345c;
            if (i10 != 0) {
            }
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n154#2:114\n155#2,2:116\n157#2:119\n13579#3:115\n13580#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n154#1:115\n154#1:118\n*E\n"})
    public static final class g<T> implements InterfaceC13842i<T> {

        public final Object[] f93349b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6", f = "Builders.kt", i = {0, 0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u2411", "$this$forEach$iv"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93350b;

            public int f93351c;

            public Object f93353e;

            public Object f93354f;

            public int f93355g;

            public int f93356h;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93350b = obj;
                this.f93351c |= Integer.MIN_VALUE;
                return g.this.a(null, this);
            }
        }

        public g(Object[] objArr) {
            this.f93349b = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005c -> B:10:0x005f). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            int i11;
            int i12;
            Object[] objArr;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i13 = aVar.f93351c;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    aVar.f93351c = i13 - Integer.MIN_VALUE;
                    Object obj = aVar.f93350b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93351c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Object[] objArr2 = this.f93349b;
                        int length = objArr2.length;
                        interfaceC13843j2 = interfaceC13843j;
                        i11 = length;
                        i12 = 0;
                        objArr = objArr2;
                        if (i12 < i11) {
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i11 = aVar.f93356h;
                        i12 = aVar.f93355g;
                        objArr = (Object[]) aVar.f93354f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93353e;
                        C14418j0.n(obj);
                        InterfaceC13843j interfaceC13843j4 = interfaceC13843j3;
                        i12++;
                        interfaceC13843j2 = interfaceC13843j4;
                        if (i12 < i11) {
                            Object obj2 = objArr[i12];
                            aVar.f93353e = interfaceC13843j2;
                            aVar.f93354f = objArr;
                            aVar.f93355g = i12;
                            aVar.f93356h = i11;
                            aVar.f93351c = 1;
                            Object emit = interfaceC13843j2.emit(obj2, aVar);
                            interfaceC13843j4 = interfaceC13843j2;
                            if (emit == l10) {
                                return l10;
                            }
                            i12++;
                            interfaceC13843j2 = interfaceC13843j4;
                            if (i12 < i11) {
                                return P0.f98194a;
                            }
                        }
                    }
                }
            }
            aVar = new a(fVar);
            Object obj3 = aVar.f93350b;
            Object l102 = Af.d.l();
            i10 = aVar.f93351c;
            if (i10 != 0) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n165#2:114\n166#2,2:116\n168#2:119\n13600#3:115\n13601#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n165#1:115\n165#1:118\n*E\n"})
    public static final class h implements InterfaceC13842i<Integer> {

        public final int[] f93357b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$7", f = "Builders.kt", i = {0, 0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u2413", "$this$forEach$iv"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93358b;

            public int f93359c;

            public Object f93361e;

            public Object f93362f;

            public int f93363g;

            public int f93364h;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93358b = obj;
                this.f93359c |= Integer.MIN_VALUE;
                return h.this.a(null, this);
            }
        }

        public h(int[] iArr) {
            this.f93357b = iArr;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0060 -> B:10:0x0063). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super Integer> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            int i11;
            int i12;
            int[] iArr;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i13 = aVar.f93359c;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    aVar.f93359c = i13 - Integer.MIN_VALUE;
                    Object obj = aVar.f93358b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93359c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        int[] iArr2 = this.f93357b;
                        int length = iArr2.length;
                        interfaceC13843j2 = interfaceC13843j;
                        i11 = length;
                        i12 = 0;
                        iArr = iArr2;
                        if (i12 < i11) {
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i11 = aVar.f93364h;
                        i12 = aVar.f93363g;
                        iArr = (int[]) aVar.f93362f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93361e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                        i12++;
                        if (i12 < i11) {
                            Integer f10 = Bf.b.f(iArr[i12]);
                            aVar.f93361e = interfaceC13843j2;
                            aVar.f93362f = iArr;
                            aVar.f93363g = i12;
                            aVar.f93364h = i11;
                            aVar.f93359c = 1;
                            if (interfaceC13843j2.emit(f10, aVar) == l10) {
                                return l10;
                            }
                            i12++;
                            if (i12 < i11) {
                                return P0.f98194a;
                            }
                        }
                    }
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93358b;
            Object l102 = Af.d.l();
            i10 = aVar.f93359c;
            if (i10 != 0) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n176#2:114\n177#2,2:116\n179#2:119\n13607#3:115\n13608#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n176#1:115\n176#1:118\n*E\n"})
    public static final class i implements InterfaceC13842i<Long> {

        public final long[] f93365b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8", f = "Builders.kt", i = {0, 0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u2415", "$this$forEach$iv"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93366b;

            public int f93367c;

            public Object f93369e;

            public Object f93370f;

            public int f93371g;

            public int f93372h;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93366b = obj;
                this.f93367c |= Integer.MIN_VALUE;
                return i.this.a(null, this);
            }
        }

        public i(long[] jArr) {
            this.f93365b = jArr;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0060 -> B:10:0x0063). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super Long> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            int i11;
            int i12;
            long[] jArr;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i13 = aVar.f93367c;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    aVar.f93367c = i13 - Integer.MIN_VALUE;
                    Object obj = aVar.f93366b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93367c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        long[] jArr2 = this.f93365b;
                        int length = jArr2.length;
                        interfaceC13843j2 = interfaceC13843j;
                        i11 = length;
                        i12 = 0;
                        jArr = jArr2;
                        if (i12 < i11) {
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i11 = aVar.f93372h;
                        i12 = aVar.f93371g;
                        jArr = (long[]) aVar.f93370f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93369e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                        i12++;
                        if (i12 < i11) {
                            Long g10 = Bf.b.g(jArr[i12]);
                            aVar.f93369e = interfaceC13843j2;
                            aVar.f93370f = jArr;
                            aVar.f93371g = i12;
                            aVar.f93372h = i11;
                            aVar.f93367c = 1;
                            if (interfaceC13843j2.emit(g10, aVar) == l10) {
                                return l10;
                            }
                            i12++;
                            if (i12 < i11) {
                                return P0.f98194a;
                            }
                        }
                    }
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93366b;
            Object l102 = Af.d.l();
            i10 = aVar.f93367c;
            if (i10 != 0) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n185#2:114\n186#2,2:116\n188#2:119\n1855#3:115\n1856#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n185#1:115\n185#1:118\n*E\n"})
    public static final class j implements InterfaceC13842i<Integer> {

        public final Vf.l f93373b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9", f = "Builders.kt", i = {0}, l = {116}, m = "collect", n = {"$this$asFlow_u24lambda_u2417"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93374b;

            public int f93375c;

            public Object f93377e;

            public Object f93378f;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93374b = obj;
                this.f93375c |= Integer.MIN_VALUE;
                return j.this.a(null, this);
            }
        }

        public j(Vf.l lVar) {
            this.f93373b = lVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super Integer> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            InterfaceC13843j interfaceC13843j2;
            Iterator<Integer> it;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93375c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93375c = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f93374b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93375c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j;
                        it = this.f93373b.iterator();
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (Iterator) aVar.f93378f;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93377e;
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    }
                    while (it.hasNext()) {
                        Integer f10 = Bf.b.f(((AbstractC14974g0) it).nextInt());
                        aVar.f93377e = interfaceC13843j2;
                        aVar.f93378f = it;
                        aVar.f93375c = 1;
                        if (interfaceC13843j2.emit(f10, aVar) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(fVar);
            Object obj2 = aVar.f93374b;
            Object l102 = Af.d.l();
            i10 = aVar.f93375c;
            if (i10 != 0) {
            }
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n1#1,113:1\n123#2,4:114\n*E\n"})
    public static final class k<T> implements InterfaceC13842i<T> {

        public final Object[] f93379b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1", f = "Builders.kt", i = {0, 0}, l = {115}, m = "collect", n = {"this", "$this$flowOf_u24lambda_u248"}, s = {"L$0", "L$1"})
        public static final class a extends Bf.d {

            public Object f93380b;

            public int f93381c;

            public Object f93383e;

            public Object f93384f;

            public int f93385g;

            public int f93386h;

            public a(yf.f fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93380b = obj;
                this.f93381c |= Integer.MIN_VALUE;
                return k.this.a(null, this);
            }
        }

        public k(Object[] objArr) {
            this.f93379b = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005d -> B:10:0x0060). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            int i10;
            int i11;
            k<T> kVar;
            InterfaceC13843j interfaceC13843j2;
            int length;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i12 = aVar.f93381c;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    aVar.f93381c = i12 - Integer.MIN_VALUE;
                    Object obj = aVar.f93380b;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93381c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        i11 = 0;
                        kVar = this;
                        interfaceC13843j2 = interfaceC13843j;
                        length = this.f93379b.length;
                        if (i11 < length) {
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        length = aVar.f93386h;
                        i11 = aVar.f93385g;
                        InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) aVar.f93384f;
                        kVar = (k) aVar.f93383e;
                        C14418j0.n(obj);
                        InterfaceC13843j interfaceC13843j4 = interfaceC13843j3;
                        i11++;
                        interfaceC13843j2 = interfaceC13843j4;
                        if (i11 < length) {
                            Object obj2 = kVar.f93379b[i11];
                            aVar.f93383e = kVar;
                            aVar.f93384f = interfaceC13843j2;
                            aVar.f93385g = i11;
                            aVar.f93386h = length;
                            aVar.f93381c = 1;
                            Object emit = interfaceC13843j2.emit(obj2, aVar);
                            interfaceC13843j4 = interfaceC13843j2;
                            if (emit == l10) {
                                return l10;
                            }
                            i11++;
                            interfaceC13843j2 = interfaceC13843j4;
                            if (i11 < length) {
                                return P0.f98194a;
                            }
                        }
                    }
                }
            }
            aVar = new a(fVar);
            Object obj3 = aVar.f93380b;
            Object l102 = Af.d.l();
            i10 = aVar.f93381c;
            if (i10 != 0) {
            }
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n1#1,113:1\n136#2,2:114\n*E\n"})
    public static final class C1815l<T> implements InterfaceC13842i<T> {

        public final Object f93387b;

        public C1815l(Object obj) {
            this.f93387b = obj;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object emit = interfaceC13843j.emit((Object) this.f93387b, fVar);
            return emit == Af.d.l() ? emit : P0.f98194a;
        }
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull Mf.a<? extends T> aVar) {
        return new b(aVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull Mf.l<? super yf.f<? super T>, ? extends Object> lVar) {
        return new c(lVar);
    }

    @NotNull
    public static final InterfaceC13842i<Integer> c(@NotNull Vf.l lVar) {
        return new j(lVar);
    }

    @NotNull
    public static final InterfaceC13842i<Long> d(@NotNull Vf.o oVar) {
        return new a(oVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        return new f(interfaceC3312m);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> f(@NotNull Iterable<? extends T> iterable) {
        return new d(iterable);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull Iterator<? extends T> it) {
        return new e(it);
    }

    @NotNull
    public static final InterfaceC13842i<Integer> h(@NotNull int[] iArr) {
        return new h(iArr);
    }

    @NotNull
    public static final InterfaceC13842i<Long> i(@NotNull long[] jArr) {
        return new i(jArr);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> j(@NotNull T[] tArr) {
        return new g(tArr);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> k(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new C13835b(pVar, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> l(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new C13839f(pVar, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> m() {
        return C13841h.f93317b;
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> n(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new H(pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> o(T t10) {
        return new C1815l(t10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> p(@NotNull T... tArr) {
        return new k(tArr);
    }
}
