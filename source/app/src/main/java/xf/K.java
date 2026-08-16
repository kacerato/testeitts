package Xf;

import Xf.K;
import ag.C3643z;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.B0;
import nf.C14418j0;
import nf.F0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.P0;
import nf.Y;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C0;
import pf.C14960A;
import pf.C14968d0;
import pf.C14985q;
import pf.Z;
import pf.y0;
import pf.z0;
import tf.C15420g;
import x0.C16039a;

@t0({"SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,3242:1\n184#1,2:3243\n321#1,7:3245\n1353#1,3:3253\n756#1,4:3256\n719#1,4:3260\n738#1,4:3264\n793#1,4:3268\n1041#1,3:3272\n1044#1,3:3282\n1062#1,3:3285\n1065#1,3:3295\n1353#1,3:3312\n1342#1,2:3315\n1#2:3252\n383#3,7:3275\n383#3,7:3288\n383#3,7:3298\n383#3,7:3305\n*S KotlinDebug\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n92#1:3243,2\n104#1:3245,7\n464#1:3253,3\n672#1:3256,4\n688#1:3260,4\n703#1:3264,4\n777#1:3268,4\n1011#1:3272,3\n1011#1:3282,3\n1026#1:3285,3\n1026#1:3295,3\n1132#1:3312,3\n1172#1:3315,2\n1011#1:3275,7\n1026#1:3288,7\n1043#1:3298,7\n1064#1:3305,7\n*E\n"})
public class K extends z {

    @t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,70:1\n3051#2:71\n*E\n"})
    public static final class a<T> implements Iterable<T>, Nf.a {

        public final InterfaceC3312m f28655b;

        public a(InterfaceC3312m interfaceC3312m) {
            this.f28655b = interfaceC3312m;
        }

        @Override
        public Iterator<T> iterator() {
            return this.f28655b.iterator();
        }
    }

    @t0({"SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt$filterIsInstance$1\n*L\n1#1,3242:1\n*E\n"})
    public static final class b implements Mf.l<Object, Boolean> {

        public static final b f28656b = new b();

        @Override
        public final Boolean invoke(Object obj) {
            kotlin.jvm.internal.M.y(3, "R");
            return Boolean.valueOf(Objects.nonNull(obj));
        }
    }

    public static final class c<R> extends kotlin.jvm.internal.I implements Mf.l<Iterable<? extends R>, Iterator<? extends R>> {

        public static final c f28657b = new c();

        public c() {
            super(1, Iterable.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
        }

        @Override
        public final Iterator<R> invoke(Iterable<? extends R> p02) {
            kotlin.jvm.internal.M.p(p02, "p0");
            return p02.iterator();
        }
    }

    public static final class d<R> extends kotlin.jvm.internal.I implements Mf.l<InterfaceC3312m<? extends R>, Iterator<? extends R>> {

        public static final d f28658b = new d();

        public d() {
            super(1, InterfaceC3312m.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
        }

        @Override
        public final Iterator<R> invoke(InterfaceC3312m<? extends R> p02) {
            kotlin.jvm.internal.M.p(p02, "p0");
            return p02.iterator();
        }
    }

    public static final class e<R> extends kotlin.jvm.internal.I implements Mf.l<Iterable<? extends R>, Iterator<? extends R>> {

        public static final e f28659b = new e();

        public e() {
            super(1, Iterable.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
        }

        @Override
        public final Iterator<R> invoke(Iterable<? extends R> p02) {
            kotlin.jvm.internal.M.p(p02, "p0");
            return p02.iterator();
        }
    }

    public static final class f<R> extends kotlin.jvm.internal.I implements Mf.l<InterfaceC3312m<? extends R>, Iterator<? extends R>> {

        public static final f f28660b = new f();

        public f() {
            super(1, InterfaceC3312m.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
        }

        @Override
        public final Iterator<R> invoke(InterfaceC3312m<? extends R> p02) {
            kotlin.jvm.internal.M.p(p02, "p0");
            return p02.iterator();
        }
    }

    @t0({"SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt$groupingBy$1\n*L\n1#1,3242:1\n*E\n"})
    public static final class g<K, T> implements Z<T, K> {

        public final InterfaceC3312m<T> f28661a;

        public final Mf.l<T, K> f28662b;

        /* JADX WARN: Multi-variable type inference failed */
        public g(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends K> lVar) {
            this.f28661a = interfaceC3312m;
            this.f28662b = lVar;
        }

        @Override
        public K a(T t10) {
            return this.f28662b.invoke(t10);
        }

        @Override
        public Iterator<T> b() {
            return this.f28661a.iterator();
        }
    }

    public static final class h<T> implements InterfaceC3312m<T> {

        public final InterfaceC3312m<T> f28663a;

        public final T f28664b;

        /* JADX WARN: Multi-variable type inference failed */
        public h(InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
            this.f28663a = interfaceC3312m;
            this.f28664b = t10;
        }

        public static final boolean d(m0.a aVar, Object obj, Object obj2) {
            if (aVar.f95747b || !kotlin.jvm.internal.M.g(obj2, obj)) {
                return true;
            }
            aVar.f95747b = true;
            return false;
        }

        @Override
        public Iterator<T> iterator() {
            final m0.a aVar = new m0.a();
            InterfaceC3312m<T> interfaceC3312m = this.f28663a;
            final T t10 = this.f28664b;
            return K.P0(interfaceC3312m, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    boolean d10;
                    d10 = K.h.d(m0.a.this, t10, obj);
                    return Boolean.valueOf(d10);
                }
            }).iterator();
        }
    }

    public static final class i<T> implements InterfaceC3312m<T> {

        public final InterfaceC3312m<T> f28665a;

        public final T[] f28666b;

        /* JADX WARN: Multi-variable type inference failed */
        public i(InterfaceC3312m<? extends T> interfaceC3312m, T[] tArr) {
            this.f28665a = interfaceC3312m;
            this.f28666b = tArr;
        }

        public static final boolean d(Object[] objArr, Object obj) {
            return C14960A.B8(objArr, obj);
        }

        @Override
        public Iterator<T> iterator() {
            InterfaceC3312m<T> interfaceC3312m = this.f28665a;
            final T[] tArr = this.f28666b;
            return K.W0(interfaceC3312m, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    boolean d10;
                    d10 = K.i.d(tArr, obj);
                    return Boolean.valueOf(d10);
                }
            }).iterator();
        }
    }

    public static final class j<T> implements InterfaceC3312m<T> {

        public final Iterable<T> f28667a;

        public final InterfaceC3312m<T> f28668b;

        /* JADX WARN: Multi-variable type inference failed */
        public j(Iterable<? extends T> iterable, InterfaceC3312m<? extends T> interfaceC3312m) {
            this.f28667a = iterable;
            this.f28668b = interfaceC3312m;
        }

        public static final boolean d(Collection collection, Object obj) {
            return collection.contains(obj);
        }

        @Override
        public Iterator<T> iterator() {
            final Collection v02 = pf.M.v0(this.f28667a);
            return v02.isEmpty() ? this.f28668b.iterator() : K.W0(this.f28668b, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    boolean d10;
                    d10 = K.j.d(Collection.this, obj);
                    return Boolean.valueOf(d10);
                }
            }).iterator();
        }
    }

    public static final class k<T> implements InterfaceC3312m<T> {

        public final InterfaceC3312m<T> f28669a;

        public final InterfaceC3312m<T> f28670b;

        /* JADX WARN: Multi-variable type inference failed */
        public k(InterfaceC3312m<? extends T> interfaceC3312m, InterfaceC3312m<? extends T> interfaceC3312m2) {
            this.f28669a = interfaceC3312m;
            this.f28670b = interfaceC3312m2;
        }

        public static final boolean d(List list, Object obj) {
            return list.contains(obj);
        }

        @Override
        public Iterator<T> iterator() {
            final List I32 = K.I3(this.f28669a);
            return I32.isEmpty() ? this.f28670b.iterator() : K.W0(this.f28670b, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    boolean d10;
                    d10 = K.k.d(List.this, obj);
                    return Boolean.valueOf(d10);
                }
            }).iterator();
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", i = {0, 1, 1, 1}, l = {2444, 2448}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence", "accumulator", "element"}, nl = {2445, 2450}, s = {"L$0", "L$0", "L$1", "L$3"}, v = 2)
    public static final class l<R> extends Bf.l implements Mf.p<AbstractC3314o<? super R>, yf.f<? super P0>, Object> {

        public Object f28671b;

        public Object f28672c;

        public Object f28673d;

        public int f28674e;

        public Object f28675f;

        public final R f28676g;

        public final InterfaceC3312m<T> f28677h;

        public final Mf.p<R, T, R> f28678i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public l(R r10, InterfaceC3312m<? extends T> interfaceC3312m, Mf.p<? super R, ? super T, ? extends R> pVar, yf.f<? super l> fVar) {
            super(2, fVar);
            this.f28676g = r10;
            this.f28677h = interfaceC3312m;
            this.f28678i = pVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            l lVar = new l(this.f28676g, this.f28677h, this.f28678i, fVar);
            lVar.f28675f = obj;
            return lVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super R> abstractC3314o, yf.f<? super P0> fVar) {
            return ((l) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Iterator it;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28675f;
            Object l10 = Af.d.l();
            int i10 = this.f28674e;
            if (i10 == 0) {
                C14418j0.n(obj);
                R r10 = this.f28676g;
                this.f28675f = abstractC3314o;
                this.f28674e = 1;
                if (abstractC3314o.a(r10, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) this.f28672c;
                    Object obj3 = this.f28671b;
                    C14418j0.n(obj);
                    obj2 = obj3;
                    while (it.hasNext()) {
                        Object next = it.next();
                        obj2 = this.f28678i.invoke(obj2, next);
                        this.f28675f = abstractC3314o;
                        this.f28671b = obj2;
                        this.f28672c = it;
                        this.f28673d = Bf.o.a(next);
                        this.f28674e = 2;
                        if (abstractC3314o.a(obj2, this) == l10) {
                            return l10;
                        }
                    }
                    return P0.f98194a;
                }
                C14418j0.n(obj);
            }
            obj2 = this.f28676g;
            it = this.f28677h.iterator();
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1", f = "_Sequences.kt", i = {0, 1, 1, 1, 1}, l = {2472, 2477}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence", "accumulator", "element", FirebaseAnalytics.d.f67690b0}, nl = {2473, 2479}, s = {"L$0", "L$0", "L$1", "L$3", "I$0"}, v = 2)
    public static final class m<R> extends Bf.l implements Mf.p<AbstractC3314o<? super R>, yf.f<? super P0>, Object> {

        public Object f28679b;

        public Object f28680c;

        public Object f28681d;

        public int f28682e;

        public int f28683f;

        public Object f28684g;

        public final R f28685h;

        public final InterfaceC3312m<T> f28686i;

        public final Mf.q<Integer, R, T, R> f28687j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public m(R r10, InterfaceC3312m<? extends T> interfaceC3312m, Mf.q<? super Integer, ? super R, ? super T, ? extends R> qVar, yf.f<? super m> fVar) {
            super(2, fVar);
            this.f28685h = r10;
            this.f28686i = interfaceC3312m;
            this.f28687j = qVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            m mVar = new m(this.f28685h, this.f28686i, this.f28687j, fVar);
            mVar.f28684g = obj;
            return mVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super R> abstractC3314o, yf.f<? super P0> fVar) {
            return ((m) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Iterator it;
            int i10;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28684g;
            Object l10 = Af.d.l();
            int i11 = this.f28683f;
            if (i11 == 0) {
                C14418j0.n(obj);
                R r10 = this.f28685h;
                this.f28684g = abstractC3314o;
                this.f28683f = 1;
                if (abstractC3314o.a(r10, this) == l10) {
                    return l10;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i10 = this.f28682e;
                    it = (Iterator) this.f28680c;
                    Object obj3 = this.f28679b;
                    C14418j0.n(obj);
                    obj2 = obj3;
                    while (it.hasNext()) {
                        Object next = it.next();
                        Mf.q<Integer, R, T, R> qVar = this.f28687j;
                        int i12 = i10 + 1;
                        if (i10 < 0) {
                            pf.H.b0();
                        }
                        obj2 = qVar.n(Bf.b.f(i10), obj2, next);
                        this.f28684g = abstractC3314o;
                        this.f28679b = obj2;
                        this.f28680c = it;
                        this.f28681d = Bf.o.a(next);
                        this.f28682e = i12;
                        this.f28683f = 2;
                        if (abstractC3314o.a(obj2, this) == l10) {
                            return l10;
                        }
                        i10 = i12;
                    }
                    return P0.f98194a;
                }
                C14418j0.n(obj);
            }
            obj2 = this.f28685h;
            it = this.f28686i.iterator();
            i10 = 0;
            while (it.hasNext()) {
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduce$1", f = "_Sequences.kt", i = {0, 0, 0, 1, 1, 1}, l = {2501, 2504}, m = "invokeSuspend", n = {"$this$sequence", "iterator", "accumulator", "$this$sequence", "iterator", "accumulator"}, nl = {2502, 2507}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"}, v = 2)
    public static final class n<S> extends Bf.l implements Mf.p<AbstractC3314o<? super S>, yf.f<? super P0>, Object> {

        public Object f28688b;

        public Object f28689c;

        public int f28690d;

        public Object f28691e;

        public final InterfaceC3312m<T> f28692f;

        public final Mf.p<S, T, S> f28693g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public n(InterfaceC3312m<? extends T> interfaceC3312m, Mf.p<? super S, ? super T, ? extends S> pVar, yf.f<? super n> fVar) {
            super(2, fVar);
            this.f28692f = interfaceC3312m;
            this.f28693g = pVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            n nVar = new n(this.f28692f, this.f28693g, fVar);
            nVar.f28691e = obj;
            return nVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super S> abstractC3314o, yf.f<? super P0> fVar) {
            return ((n) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            Object next;
            Iterator it;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28691e;
            Object l10 = Af.d.l();
            int i10 = this.f28690d;
            if (i10 == 0) {
                C14418j0.n(obj);
                Iterator it2 = this.f28692f.iterator();
                if (it2.hasNext()) {
                    next = it2.next();
                    this.f28691e = abstractC3314o;
                    this.f28688b = it2;
                    this.f28689c = next;
                    this.f28690d = 1;
                    if (abstractC3314o.a(next, this) == l10) {
                        return l10;
                    }
                    it = it2;
                }
                return P0.f98194a;
            }
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            next = this.f28689c;
            it = (Iterator) this.f28688b;
            C14418j0.n(obj);
            while (it.hasNext()) {
                next = this.f28693g.invoke(next, it.next());
                this.f28691e = abstractC3314o;
                this.f28688b = it;
                this.f28689c = next;
                this.f28690d = 2;
                if (abstractC3314o.a(next, this) == l10) {
                    return l10;
                }
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1", f = "_Sequences.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {2530, 2534}, m = "invokeSuspend", n = {"$this$sequence", "iterator", "accumulator", "$this$sequence", "iterator", "accumulator", FirebaseAnalytics.d.f67690b0}, nl = {2531, 2537}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "I$0"}, v = 2)
    public static final class o<S> extends Bf.l implements Mf.p<AbstractC3314o<? super S>, yf.f<? super P0>, Object> {

        public Object f28694b;

        public Object f28695c;

        public int f28696d;

        public int f28697e;

        public Object f28698f;

        public final InterfaceC3312m<T> f28699g;

        public final Mf.q<Integer, S, T, S> f28700h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public o(InterfaceC3312m<? extends T> interfaceC3312m, Mf.q<? super Integer, ? super S, ? super T, ? extends S> qVar, yf.f<? super o> fVar) {
            super(2, fVar);
            this.f28699g = interfaceC3312m;
            this.f28700h = qVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            o oVar = new o(this.f28699g, this.f28700h, fVar);
            oVar.f28698f = obj;
            return oVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super S> abstractC3314o, yf.f<? super P0> fVar) {
            return ((o) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            Iterator it;
            Object next;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28698f;
            Object l10 = Af.d.l();
            int i10 = this.f28697e;
            int i11 = 1;
            if (i10 == 0) {
                C14418j0.n(obj);
                it = this.f28699g.iterator();
                if (it.hasNext()) {
                    next = it.next();
                    this.f28698f = abstractC3314o;
                    this.f28694b = it;
                    this.f28695c = next;
                    this.f28697e = 1;
                    if (abstractC3314o.a(next, this) == l10) {
                        return l10;
                    }
                }
                return P0.f98194a;
            }
            if (i10 == 1) {
                next = this.f28695c;
                it = (Iterator) this.f28694b;
                C14418j0.n(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int i12 = this.f28696d;
                Object obj2 = this.f28695c;
                it = (Iterator) this.f28694b;
                C14418j0.n(obj);
                i11 = i12;
                next = obj2;
            }
            while (it.hasNext()) {
                Mf.q<Integer, S, T, S> qVar = this.f28700h;
                int i13 = i11 + 1;
                if (i11 < 0) {
                    pf.H.b0();
                }
                Object n10 = qVar.n(Bf.b.f(i11), next, it.next());
                this.f28698f = abstractC3314o;
                this.f28694b = it;
                this.f28695c = n10;
                this.f28696d = i13;
                this.f28697e = 2;
                if (abstractC3314o.a(n10, this) == l10) {
                    return l10;
                }
                next = n10;
                i11 = i13;
            }
            return P0.f98194a;
        }
    }

    public static final class p<T> implements InterfaceC3312m<T> {

        public final InterfaceC3312m<T> f28701a;

        /* JADX WARN: Multi-variable type inference failed */
        public p(InterfaceC3312m<? extends T> interfaceC3312m) {
            this.f28701a = interfaceC3312m;
        }

        @Override
        public Iterator<T> iterator() {
            List J32 = K.J3(this.f28701a);
            pf.L.o0(J32);
            return J32.iterator();
        }
    }

    public static final class q<T> implements InterfaceC3312m<T> {

        public final InterfaceC3312m<T> f28702a;

        public final Comparator<? super T> f28703b;

        /* JADX WARN: Multi-variable type inference failed */
        public q(InterfaceC3312m<? extends T> interfaceC3312m, Comparator<? super T> comparator) {
            this.f28702a = interfaceC3312m;
            this.f28703b = comparator;
        }

        @Override
        public Iterator<T> iterator() {
            List J32 = K.J3(this.f28702a);
            pf.L.r0(J32, this.f28703b);
            return J32.iterator();
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt___SequencesKt$zipWithNext$2", f = "_Sequences.kt", i = {0, 0, 0, 0}, l = {3000}, m = "invokeSuspend", n = {"$this$result", "iterator", "current", "next"}, nl = {C16039a.f127854u}, s = {"L$0", "L$1", "L$2", "L$3"}, v = 2)
    public static final class r<R> extends Bf.l implements Mf.p<AbstractC3314o<? super R>, yf.f<? super P0>, Object> {

        public Object f28704b;

        public Object f28705c;

        public Object f28706d;

        public int f28707e;

        public Object f28708f;

        public final InterfaceC3312m<T> f28709g;

        public final Mf.p<T, T, R> f28710h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public r(InterfaceC3312m<? extends T> interfaceC3312m, Mf.p<? super T, ? super T, ? extends R> pVar, yf.f<? super r> fVar) {
            super(2, fVar);
            this.f28709g = interfaceC3312m;
            this.f28710h = pVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            r rVar = new r(this.f28709g, this.f28710h, fVar);
            rVar.f28708f = obj;
            return rVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super R> abstractC3314o, yf.f<? super P0> fVar) {
            return ((r) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object next;
            Iterator it;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28708f;
            Object l10 = Af.d.l();
            int i10 = this.f28707e;
            if (i10 == 0) {
                C14418j0.n(obj);
                Iterator it2 = this.f28709g.iterator();
                if (!it2.hasNext()) {
                    return P0.f98194a;
                }
                next = it2.next();
                it = it2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                next = this.f28706d;
                it = (Iterator) this.f28704b;
                C14418j0.n(obj);
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                R invoke = this.f28710h.invoke(next, next2);
                this.f28708f = abstractC3314o;
                this.f28704b = it;
                this.f28705c = Bf.o.a(next);
                this.f28706d = next2;
                this.f28707e = 1;
                if (abstractC3314o.a(invoke, this) == l10) {
                    return l10;
                }
                next = next2;
            }
            return P0.f98194a;
        }
    }

    @Lf.j(name = "averageOfShort")
    public static final double A0(@NotNull InterfaceC3312m<Short> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Short> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().shortValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K> Z<T, K> A1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        return new g(interfaceC3312m, keySelector);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double A2(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, it.next().doubleValue());
        }
        return doubleValue;
    }

    @Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> long A3(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Long> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += selector.invoke(it.next()).longValue();
        }
        return j10;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> InterfaceC3312m<List<T>> B0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return M3(interfaceC3312m, i10, i10, true);
    }

    public static final <T> int B1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        int i10 = 0;
        for (T t11 : interfaceC3312m) {
            if (i10 < 0) {
                pf.H.b0();
            }
            if (kotlin.jvm.internal.M.g(t10, t11)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float B2(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, it.next().floatValue());
        }
        return floatValue;
    }

    @Lf.j(name = "sumOfShort")
    public static final int B3(@NotNull InterfaceC3312m<Short> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Short> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().shortValue();
        }
        return i10;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> C0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10, @NotNull Mf.l<? super List<? extends T>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return N3(interfaceC3312m, i10, i10, true, transform);
    }

    public static final <T> int C1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            if (i10 < 0) {
                pf.H.b0();
            }
            if (predicate.invoke(t10).booleanValue()) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T C2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> int C3(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, B0> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = B0.o(0);
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            o10 = B0.o(o10 + selector.invoke(it.next()).q0());
        }
        return o10;
    }

    public static final <T> boolean D0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return B1(interfaceC3312m, t10) >= 0;
    }

    public static final <T> int D1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = -1;
        int i11 = 0;
        for (T t10 : interfaceC3312m) {
            if (i11 < 0) {
                pf.H.b0();
            }
            if (predicate.invoke(t10).booleanValue()) {
                i10 = i11;
            }
            i11++;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T D2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) > 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    @Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> long D3(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, F0> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = F0.i(0L);
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            i10 = F0.i(i10 + selector.invoke(it.next()).l0());
        }
        return i10;
    }

    public static <T> int E0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, A extends Appendable> A E1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t10 : interfaceC3312m) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            C3643z.b(buffer, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T E2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) > 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> E3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        if (i10 >= 0) {
            return i10 == 0 ? x.l() : interfaceC3312m instanceof InterfaceC3304e ? ((InterfaceC3304e) interfaceC3312m).b(i10) : new Q(interfaceC3312m, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final <T> int F0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue() && (i10 = i10 + 1) < 0) {
                pf.H.a0();
            }
        }
        return i10;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> F2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return new k(elements, interfaceC3312m);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> F3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return new S(interfaceC3312m, predicate);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> G0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return I0(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object H02;
                H02 = K.H0(obj);
                return H02;
            }
        });
    }

    @NotNull
    public static final <T> String G1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) E1(interfaceC3312m, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> G2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return new j(elements, interfaceC3312m);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C G3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static final Object H0(Object obj) {
        return obj;
    }

    public static String H1(InterfaceC3312m interfaceC3312m, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return G1(interfaceC3312m, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> H2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return new h(interfaceC3312m, t10);
    }

    @NotNull
    public static final <T> HashSet<T> H3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return (HashSet) G3(interfaceC3312m, new HashSet());
    }

    @NotNull
    public static final <T, K> InterfaceC3312m<T> I0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return new C3302c(interfaceC3312m, selector);
    }

    public static <T> T I1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Sequence is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> InterfaceC3312m<T> I2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return elements.length == 0 ? interfaceC3312m : new i(interfaceC3312m, elements);
    }

    @NotNull
    public static <T> List<T> I3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return pf.H.J();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return pf.G.l(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> InterfaceC3312m<T> J0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        if (i10 >= 0) {
            return i10 == 0 ? interfaceC3312m : interfaceC3312m instanceof InterfaceC3304e ? ((InterfaceC3304e) interfaceC3312m).a(i10) : new C3303d(interfaceC3312m, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    public static final <T> T J1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : interfaceC3312m) {
            if (predicate.invoke(t11).booleanValue()) {
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    @Ef.f
    public static final <T> InterfaceC3312m<T> J2(InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return H2(interfaceC3312m, t10);
    }

    @NotNull
    public static final <T> List<T> J3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return (List) G3(interfaceC3312m, new ArrayList());
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> K0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return new C3305f(interfaceC3312m, predicate);
    }

    public static final <T> int K1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        int i10 = -1;
        int i11 = 0;
        for (T t11 : interfaceC3312m) {
            if (i11 < 0) {
                pf.H.b0();
            }
            if (kotlin.jvm.internal.M.g(t10, t11)) {
                i10 = i11;
            }
            i11++;
        }
        return i10;
    }

    public static final <T> boolean K2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return !interfaceC3312m.iterator().hasNext();
    }

    @NotNull
    public static final <T> Set<T> K3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }

    public static final <T> T L0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, final int i10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return (T) N0(interfaceC3312m, i10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object M02;
                M02 = K.M0(i10, ((Integer) obj).intValue());
                return M02;
            }
        });
    }

    @Nullable
    public static final <T> T L1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static final <T> boolean L2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <T> Set<T> L3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return z0.k();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return y0.f(next);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }

    public static final Object M0(int i10, int i11) {
        throw new IndexOutOfBoundsException("Sequence doesn't contain element at index " + i10 + '.');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @Nullable
    public static final <T> T M1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        for (T t11 : interfaceC3312m) {
            if (predicate.invoke(t11).booleanValue()) {
                t10 = t11;
            }
        }
        return t10;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T> InterfaceC3312m<T> M2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull final Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        return N1(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object N22;
                N22 = K.N2(Mf.l.this, obj);
                return N22;
            }
        });
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> InterfaceC3312m<List<T>> M3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return C0.c(interfaceC3312m, i10, i11, z10, false);
    }

    public static final <T> T N0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10, @NotNull Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        if (i10 < 0) {
            return defaultValue.invoke(Integer.valueOf(i10));
        }
        int i11 = 0;
        for (T t10 : interfaceC3312m) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t10;
            }
            i11 = i12;
        }
        return defaultValue.invoke(Integer.valueOf(i10));
    }

    @NotNull
    public static <T, R> InterfaceC3312m<R> N1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return new U(interfaceC3312m, transform);
    }

    public static final Object N2(Mf.l lVar, Object obj) {
        lVar.invoke(obj);
        return obj;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> N3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10, int i11, boolean z10, @NotNull Mf.l<? super List<? extends T>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return N1(C0.c(interfaceC3312m, i10, i11, z10, true), transform);
    }

    @Nullable
    public static final <T> T O0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        if (i10 < 0) {
            return null;
        }
        int i11 = 0;
        for (T t10 : interfaceC3312m) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t10;
            }
            i11 = i12;
        }
        return null;
    }

    @NotNull
    public static final <T, R> InterfaceC3312m<R> O1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return new T(interfaceC3312m, transform);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> InterfaceC3312m<T> O2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull final Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        return O1(interfaceC3312m, new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                Object P22;
                P22 = K.P2(Mf.p.this, ((Integer) obj).intValue(), obj2);
                return P22;
            }
        });
    }

    public static InterfaceC3312m O3(InterfaceC3312m interfaceC3312m, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return M3(interfaceC3312m, i10, i11, z10);
    }

    @NotNull
    public static <T> InterfaceC3312m<T> P0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return new C3307h(interfaceC3312m, true, predicate);
    }

    @NotNull
    public static final <T, R> InterfaceC3312m<R> P1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return X0(new T(interfaceC3312m, transform));
    }

    public static final Object P2(Mf.p pVar, int i10, Object obj) {
        pVar.invoke(Integer.valueOf(i10), obj);
        return obj;
    }

    public static InterfaceC3312m P3(InterfaceC3312m interfaceC3312m, int i10, int i11, boolean z10, Mf.l lVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return N3(interfaceC3312m, i10, i11, z10, lVar);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> Q0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull final Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return new U(new C3307h(new C3310k(interfaceC3312m), true, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean R02;
                R02 = K.R0(Mf.p.this, (C14968d0) obj);
                return Boolean.valueOf(R02);
            }
        }), new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object S02;
                S02 = K.S0((C14968d0) obj);
                return S02;
            }
        });
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C Q1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            R invoke = transform.invoke(Integer.valueOf(i10), t10);
            if (invoke != null) {
                destination.add(invoke);
            }
            i10 = i11;
        }
        return destination;
    }

    @NotNull
    public static final <T> nf.Z<List<T>, List<T>> Q2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (T t10 : interfaceC3312m) {
            if (predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            } else {
                arrayList2.add(t10);
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    @NotNull
    public static final <T> InterfaceC3312m<C14968d0<T>> Q3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return new C3310k(interfaceC3312m);
    }

    public static final boolean R0(Mf.p pVar, C14968d0 it) {
        kotlin.jvm.internal.M.p(it, "it");
        return ((Boolean) pVar.invoke(Integer.valueOf(it.e()), it.f())).booleanValue();
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C R1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            destination.add(transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> R2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return x.n(x.C(interfaceC3312m, elements));
    }

    @NotNull
    public static final <T, R> InterfaceC3312m<nf.Z<T, R>> R3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull InterfaceC3312m<? extends R> other) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        return new C3311l(interfaceC3312m, other, new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                nf.Z T32;
                T32 = K.T3(obj, obj2);
                return T32;
            }
        });
    }

    public static final Object S0(C14968d0 it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.f();
    }

    @NotNull
    public static <T, R> InterfaceC3312m<R> S1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return X0(new U(interfaceC3312m, transform));
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> S2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return x.n(x.C(interfaceC3312m, pf.S.E1(elements)));
    }

    @NotNull
    public static final <T, R, V> InterfaceC3312m<V> S3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull InterfaceC3312m<? extends R> other, @NotNull Mf.p<? super T, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        return new C3311l(interfaceC3312m, other, transform);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C T0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            if (predicate.invoke(Integer.valueOf(i10), t10).booleanValue()) {
                destination.add(t10);
            }
            i10 = i11;
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C T1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                destination.add(invoke);
            }
        }
        return destination;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> T2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return x.n(x.C(interfaceC3312m, x.B(t10)));
    }

    public static final nf.Z T3(Object obj, Object obj2) {
        return v0.a(obj, obj2);
    }

    public static final <R> InterfaceC3312m<R> U0(InterfaceC3312m<?> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.w();
        InterfaceC3312m<R> P02 = P0(interfaceC3312m, b.f28656b);
        kotlin.jvm.internal.M.n(P02, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        return P02;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C U1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            destination.add(transform.invoke(it.next()));
        }
        return destination;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> U2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return S2(interfaceC3312m, C14985q.t(elements));
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> InterfaceC3312m<nf.Z<T, T>> U3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return V3(interfaceC3312m, new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                nf.Z W32;
                W32 = K.W3(obj, obj2);
                return W32;
            }
        });
    }

    @InterfaceC14394D
    public static final <R, C extends Collection<? super R>> C V0(InterfaceC3312m<?> interfaceC3312m, C destination) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (Object obj : interfaceC3312m) {
            kotlin.jvm.internal.M.y(3, "R");
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T V1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        R invoke = selector.invoke(next);
        do {
            T next2 = it.next();
            R invoke2 = selector.invoke(next2);
            next = next;
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
                next = next2;
            }
        } while (it.hasNext());
        return (T) next;
    }

    @Ef.f
    public static final <T> InterfaceC3312m<T> V2(InterfaceC3312m<? extends T> interfaceC3312m, T t10) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return T2(interfaceC3312m, t10);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> V3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super T, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return C3316q.b(new r(interfaceC3312m, transform, null));
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> W0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return new C3307h(interfaceC3312m, false, predicate);
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T W1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        R invoke = selector.invoke(next);
        do {
            T next2 = it.next();
            R invoke2 = selector.invoke(next2);
            next = next;
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
                next = next2;
            }
        } while (it.hasNext());
        return (T) next;
    }

    public static final <S, T extends S> S W2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty sequence can't be reduced.");
        }
        S next = it.next();
        while (it.hasNext()) {
            next = operation.invoke(next, it.next());
        }
        return next;
    }

    public static final nf.Z W3(Object obj, Object obj2) {
        return v0.a(obj, obj2);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> X0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        InterfaceC3312m<T> W02 = W0(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean Y02;
                Y02 = K.Y0(obj);
                return Boolean.valueOf(Y02);
            }
        });
        kotlin.jvm.internal.M.n(W02, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return W02;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double X1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return doubleValue;
    }

    public static final <S, T extends S> S X2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty sequence can't be reduced.");
        }
        S next = it.next();
        int i10 = 1;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            next = operation.n(Integer.valueOf(i10), next, it.next());
            i10 = i11;
        }
        return next;
    }

    public static final boolean Y0(Object obj) {
        return obj == null;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float Y1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, selector.invoke(it.next()).floatValue());
        }
        return floatValue;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S Y2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        S next = it.next();
        int i10 = 1;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            next = operation.n(Integer.valueOf(i10), next, it.next());
            i10 = i11;
        }
        return next;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super T>, T> C Z0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (T t10 : interfaceC3312m) {
            if (t10 != null) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R Z1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S Z2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        S next = it.next();
        while (it.hasNext()) {
            next = operation.invoke(next, it.next());
        }
        return next;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C a1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : interfaceC3312m) {
            if (!predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R a2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> a3(@NotNull final InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return N1(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object b32;
                b32 = K.b3(InterfaceC3312m.this, obj);
                return b32;
            }
        });
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C b1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : interfaceC3312m) {
            if (predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double b2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    public static final Object b3(InterfaceC3312m interfaceC3312m, Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new IllegalArgumentException("null element found in " + ((Object) interfaceC3312m) + '.');
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Ef.f
    public static final <T> T c1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : interfaceC3312m) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float c2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> c3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return C3316q.b(new l(r10, interfaceC3312m, operation, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @Ef.f
    public static final <T> T d1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        for (T t11 : interfaceC3312m) {
            if (predicate.invoke(t11).booleanValue()) {
                t10 = t11;
            }
        }
        return t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R d2(InterfaceC3312m<? extends T> interfaceC3312m, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> d3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return C3316q.b(new m(r10, interfaceC3312m, operation, null));
    }

    public static final <T> T e1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Sequence is empty.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R e2(InterfaceC3312m<? extends T> interfaceC3312m, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> InterfaceC3312m<S> e3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return C3316q.b(new n(interfaceC3312m, operation, null));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public static final <T> T f1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : interfaceC3312m) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T extends Comparable<? super T>> T f2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> InterfaceC3312m<S> f3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return C3316q.b(new o(interfaceC3312m, operation, null));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R g1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> transform) {
        R r10;
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (true) {
            if (!it.hasNext()) {
                r10 = null;
                break;
            }
            r10 = transform.invoke(it.next());
            if (r10 != null) {
                break;
            }
        }
        if (r10 != null) {
            return r10;
        }
        throw new NoSuchElementException("No element of the sequence was transformed to a non-null value.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double g2(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, it.next().doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> g3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return c3(interfaceC3312m, r10, operation);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R h1(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                return invoke;
            }
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float h2(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> InterfaceC3312m<R> h3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        return d3(interfaceC3312m, r10, operation);
    }

    public static final <T> boolean i0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            if (!predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public static <T> T i1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double i2(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, it.next().doubleValue());
        }
        return doubleValue;
    }

    public static final <T> T i3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Sequence is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Sequence has more than one element.");
        }
        return next;
    }

    public static final <T> boolean j0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return interfaceC3312m.iterator().hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Nullable
    public static final <T> T j1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : interfaceC3312m) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float j2(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, it.next().floatValue());
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    public static final <T> T j3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : interfaceC3312m) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Sequence contains more than one matching element.");
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    public static final <T> boolean k0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <T, R> InterfaceC3312m<R> k1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return new C3308i(interfaceC3312m, transform, d.f28658b);
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T k2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @Nullable
    public static final <T> T k3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    @NotNull
    public static <T> Iterable<T> l0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return new a(interfaceC3312m);
    }

    @Y
    @NotNull
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> InterfaceC3312m<R> l1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return x.m(interfaceC3312m, transform, e.f28659b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T l2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) < 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object] */
    @Nullable
    public static final <T> T l3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        boolean z10 = false;
        T t10 = null;
        for (T t11 : interfaceC3312m) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    return null;
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> InterfaceC3312m<T> m0(InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return interfaceC3312m;
    }

    @Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C m1(InterfaceC3312m<? extends T> interfaceC3312m, C destination, Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T m2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) < 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> InterfaceC3312m<T> m3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return new p(interfaceC3312m);
    }

    @NotNull
    public static final <T, K, V> Map<K, V> n0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(it.next());
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Y
    @NotNull
    @Lf.j(name = "flatMapIndexedSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> InterfaceC3312m<R> n1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return x.m(interfaceC3312m, transform, f.f28660b);
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T n2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        R invoke = selector.invoke(next);
        do {
            T next2 = it.next();
            R invoke2 = selector.invoke(next2);
            next = next;
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
                next = next2;
            }
        } while (it.hasNext());
        return (T) next;
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> InterfaceC3312m<T> n3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return q3(interfaceC3312m, new C15420g.a(selector));
    }

    @NotNull
    public static final <T, K> Map<K, T> o0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : interfaceC3312m) {
            linkedHashMap.put(keySelector.invoke(t10), t10);
        }
        return linkedHashMap;
    }

    @Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C o1(InterfaceC3312m<? extends T> interfaceC3312m, C destination, Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            pf.M.s0(destination, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T o2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        R invoke = selector.invoke(next);
        do {
            T next2 = it.next();
            R invoke2 = selector.invoke(next2);
            next = next;
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
                next = next2;
            }
        } while (it.hasNext());
        return (T) next;
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> InterfaceC3312m<T> o3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return q3(interfaceC3312m, new C15420g.c(selector));
    }

    @NotNull
    public static final <T, K, V> Map<K, V> p0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : interfaceC3312m) {
            linkedHashMap.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return linkedHashMap;
    }

    @Y
    @NotNull
    @Lf.j(name = "flatMapIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> InterfaceC3312m<R> p1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return new C3308i(interfaceC3312m, transform, c.f28657b);
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double p2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return doubleValue;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> InterfaceC3312m<T> p3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return q3(interfaceC3312m, C15420g.x());
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, ? super T>> M q0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : interfaceC3312m) {
            destination.put(keySelector.invoke(t10), t10);
        }
        return destination;
    }

    @Y
    @NotNull
    @Lf.j(name = "flatMapIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C q1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            pf.M.t0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float q2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return floatValue;
    }

    @NotNull
    public static <T> InterfaceC3312m<T> q3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return new q(interfaceC3312m, comparator);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M r0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : interfaceC3312m) {
            destination.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C r1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull C destination, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            pf.M.s0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R r2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> int r3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += selector.invoke(it.next()).intValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M s0(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(it.next());
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    public static final <T, R> R s1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            r10 = operation.invoke(r10, it.next());
        }
        return r10;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R s2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> double s3(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += selector.invoke(it.next()).doubleValue();
        }
        return d10;
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <K, V> Map<K, V> t0(@NotNull InterfaceC3312m<? extends K> interfaceC3312m, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (K k10 : interfaceC3312m) {
            linkedHashMap.put(k10, valueSelector.invoke(k10));
        }
        return linkedHashMap;
    }

    public static final <T, R> R t1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            r10 = operation.n(Integer.valueOf(i10), r10, t10);
            i10 = i11;
        }
        return r10;
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double t2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "sumOfByte")
    public static final int t3(@NotNull InterfaceC3312m<Byte> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Byte> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().byteValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M u0(@NotNull InterfaceC3312m<? extends K> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (K k10 : interfaceC3312m) {
            destination.put(k10, valueSelector.invoke(k10));
        }
        return destination;
    }

    public static final <T> void u1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
    }

    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float u2(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "sumOfDouble")
    public static final double u3(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += it.next().doubleValue();
        }
        return d10;
    }

    @Lf.j(name = "averageOfByte")
    public static final double v0(@NotNull InterfaceC3312m<Byte> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Byte> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().byteValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static final <T> void v1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        for (T t10 : interfaceC3312m) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            action.invoke(Integer.valueOf(i10), t10);
            i10 = i11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R v2(InterfaceC3312m<? extends T> interfaceC3312m, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    @Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double v3(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += selector.invoke(it.next()).doubleValue();
        }
        return d10;
    }

    @Lf.j(name = "averageOfDouble")
    public static final double w0(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().doubleValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @NotNull
    public static final <T, K> Map<K, List<T>> w1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : interfaceC3312m) {
            K invoke = keySelector.invoke(t10);
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R w2(InterfaceC3312m<? extends T> interfaceC3312m, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "sumOfFloat")
    public static final float w3(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        float f10 = 0.0f;
        while (it.hasNext()) {
            f10 += it.next().floatValue();
        }
        return f10;
    }

    @Lf.j(name = "averageOfFloat")
    public static final double x0(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().floatValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @NotNull
    public static final <T, K, V> Map<K, List<V>> x1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : interfaceC3312m) {
            K invoke = keySelector.invoke(t10);
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(t10));
        }
        return linkedHashMap;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T extends Comparable<? super T>> T x2(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    @Lf.j(name = "sumOfInt")
    public static final int x3(@NotNull InterfaceC3312m<Integer> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Integer> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().intValue();
        }
        return i10;
    }

    @Lf.j(name = "averageOfInt")
    public static final double y0(@NotNull InterfaceC3312m<Integer> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Integer> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().intValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, List<T>>> M y1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : interfaceC3312m) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double y2(@NotNull InterfaceC3312m<Double> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Double> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, it.next().doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> int y3(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += selector.invoke(it.next()).intValue();
        }
        return i10;
    }

    @Lf.j(name = "averageOfLong")
    public static final double z0(@NotNull InterfaceC3312m<Long> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Long> it = interfaceC3312m.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().longValue();
            i10++;
            if (i10 < 0) {
                pf.H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, List<V>>> M z1(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : interfaceC3312m) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(t10));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float z2(@NotNull InterfaceC3312m<Float> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Float> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "sumOfLong")
    public static final long z3(@NotNull InterfaceC3312m<Long> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<Long> it = interfaceC3312m.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += it.next().longValue();
        }
        return j10;
    }
}
