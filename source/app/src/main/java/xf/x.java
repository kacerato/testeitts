package Xf;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14422l0;
import nf.P0;
import nf.Z;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;

public class x extends r {

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n*L\n1#1,730:1\n*E\n"})
    public static final class a<T> implements InterfaceC3312m<T> {

        public final Mf.a<Iterator<T>> f28803a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.a<? extends Iterator<? extends T>> aVar) {
            this.f28803a = aVar;
        }

        @Override
        public Iterator<T> iterator() {
            return this.f28803a.invoke();
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt\n*L\n1#1,730:1\n31#2:731\n*E\n"})
    public static final class b<T> implements InterfaceC3312m<T> {

        public final Iterator f28804a;

        public b(Iterator it) {
            this.f28804a = it;
        }

        @Override
        public Iterator<T> iterator() {
            return this.f28804a;
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", f = "Sequences.kt", i = {0, 0, 0, 0}, l = {383}, m = "invokeSuspend", n = {"$this$sequence", "element", "result", FirebaseAnalytics.d.f67690b0}, nl = {385}, s = {"L$0", "L$2", "L$3", "I$0"}, v = 2)
    public static final class c<R> extends Bf.l implements Mf.p<AbstractC3314o<? super R>, yf.f<? super P0>, Object> {

        public Object f28805b;

        public Object f28806c;

        public Object f28807d;

        public int f28808e;

        public int f28809f;

        public Object f28810g;

        public final InterfaceC3312m<T> f28811h;

        public final Mf.p<Integer, T, C> f28812i;

        public final Mf.l<C, Iterator<R>> f28813j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC3312m<? extends T> interfaceC3312m, Mf.p<? super Integer, ? super T, ? extends C> pVar, Mf.l<? super C, ? extends Iterator<? extends R>> lVar, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f28811h = interfaceC3312m;
            this.f28812i = pVar;
            this.f28813j = lVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            c cVar = new c(this.f28811h, this.f28812i, this.f28813j, fVar);
            cVar.f28810g = obj;
            return cVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super R> abstractC3314o, yf.f<? super P0> fVar) {
            return ((c) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            int i10;
            Iterator it;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28810g;
            Object l10 = Af.d.l();
            int i11 = this.f28809f;
            if (i11 == 0) {
                C14418j0.n(obj);
                i10 = 0;
                it = this.f28811h.iterator();
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.f28808e;
                it = (Iterator) this.f28805b;
                C14418j0.n(obj);
            }
            while (it.hasNext()) {
                Object next = it.next();
                Mf.p<Integer, T, C> pVar = this.f28812i;
                int i12 = i10 + 1;
                if (i10 < 0) {
                    pf.H.b0();
                }
                Object invoke = pVar.invoke(Bf.b.f(i10), next);
                Iterator<R> invoke2 = this.f28813j.invoke(invoke);
                this.f28810g = abstractC3314o;
                this.f28805b = it;
                this.f28806c = Bf.o.a(next);
                this.f28807d = Bf.o.a(invoke);
                this.f28808e = i12;
                this.f28809f = 1;
                if (abstractC3314o.f(invoke2, this) == l10) {
                    return l10;
                }
                i10 = i12;
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1", f = "Sequences.kt", i = {0, 0, 1, 1}, l = {102, 104}, m = "invokeSuspend", n = {"$this$sequence", "iterator", "$this$sequence", "iterator"}, nl = {104, 106}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 2)
    public static final class d<T> extends Bf.l implements Mf.p<AbstractC3314o<? super T>, yf.f<? super P0>, Object> {

        public Object f28814b;

        public int f28815c;

        public Object f28816d;

        public final InterfaceC3312m<T> f28817e;

        public final Mf.a<InterfaceC3312m<T>> f28818f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(InterfaceC3312m<? extends T> interfaceC3312m, Mf.a<? extends InterfaceC3312m<? extends T>> aVar, yf.f<? super d> fVar) {
            super(2, fVar);
            this.f28817e = interfaceC3312m;
            this.f28818f = aVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            d dVar = new d(this.f28817e, this.f28818f, fVar);
            dVar.f28816d = obj;
            return dVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super T> abstractC3314o, yf.f<? super P0> fVar) {
            return ((d) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28816d;
            Object l10 = Af.d.l();
            int i10 = this.f28815c;
            if (i10 == 0) {
                C14418j0.n(obj);
                Iterator<? extends T> it = this.f28817e.iterator();
                if (it.hasNext()) {
                    this.f28816d = Bf.o.a(abstractC3314o);
                    this.f28814b = Bf.o.a(it);
                    this.f28815c = 1;
                    if (abstractC3314o.f(it, this) == l10) {
                        return l10;
                    }
                } else {
                    InterfaceC3312m<T> invoke = this.f28818f.invoke();
                    this.f28816d = Bf.o.a(abstractC3314o);
                    this.f28814b = Bf.o.a(it);
                    this.f28815c = 2;
                    if (abstractC3314o.c(invoke, this) == l10) {
                        return l10;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt\n*L\n1#1,730:1\n49#2,11:731\n*E\n"})
    public static final class e<T> implements InterfaceC3312m<T> {

        public final Object f28819a;

        public e(Object obj) {
            this.f28819a = obj;
        }

        @Override
        public Iterator<T> iterator() {
            return new f(this.f28819a);
        }
    }

    public static final class f<T> implements Iterator<T>, Nf.a {

        public boolean f28820b = true;

        public final T f28821c;

        public f(T t10) {
            this.f28821c = t10;
        }

        @Override
        public boolean hasNext() {
            return this.f28820b;
        }

        @Override
        public T next() {
            if (!this.f28820b) {
                throw new NoSuchElementException();
            }
            this.f28820b = false;
            return this.f28821c;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Bf.f(c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1", f = "Sequences.kt", i = {0, 0, 0, 0, 0}, l = {178}, m = "invokeSuspend", n = {"$this$sequence", "buffer", "last", "value", "j"}, nl = {180}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 2)
    public static final class g<T> extends Bf.l implements Mf.p<AbstractC3314o<? super T>, yf.f<? super P0>, Object> {

        public Object f28822b;

        public Object f28823c;

        public Object f28824d;

        public int f28825e;

        public int f28826f;

        public Object f28827g;

        public final InterfaceC3312m<T> f28828h;

        public final Tf.f f28829i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public g(InterfaceC3312m<? extends T> interfaceC3312m, Tf.f fVar, yf.f<? super g> fVar2) {
            super(2, fVar2);
            this.f28828h = interfaceC3312m;
            this.f28829i = fVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            g gVar = new g(this.f28828h, this.f28829i, fVar);
            gVar.f28827g = obj;
            return gVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super T> abstractC3314o, yf.f<? super P0> fVar) {
            return ((g) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            List J32;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f28827g;
            Object l10 = Af.d.l();
            int i10 = this.f28826f;
            if (i10 == 0) {
                C14418j0.n(obj);
                J32 = K.J3(this.f28828h);
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                J32 = (List) this.f28822b;
                C14418j0.n(obj);
            }
            while (!J32.isEmpty()) {
                int m10 = this.f28829i.m(J32.size());
                Object Q02 = pf.M.Q0(J32);
                Object obj2 = m10 < J32.size() ? J32.set(m10, Q02) : Q02;
                this.f28827g = abstractC3314o;
                this.f28822b = J32;
                this.f28823c = Bf.o.a(Q02);
                this.f28824d = Bf.o.a(obj2);
                this.f28825e = m10;
                this.f28826f = 1;
                if (abstractC3314o.a(obj2, this) == l10) {
                    return l10;
                }
            }
            return P0.f98194a;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "2.2")
    public static final <T> InterfaceC3312m<T> A() {
        return l();
    }

    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static <T> InterfaceC3312m<T> B(T t10) {
        return new e(t10);
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> C(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return C14960A.T5(elements);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> InterfaceC3312m<T> D(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return E(interfaceC3312m, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> InterfaceC3312m<T> E(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        return C3316q.b(new g(interfaceC3312m, random, null));
    }

    @NotNull
    public static final <T, R> Z<List<T>, List<R>> F(@NotNull InterfaceC3312m<? extends Z<? extends T, ? extends R>> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Z<? extends T, ? extends R> z10 : interfaceC3312m) {
            arrayList.add(z10.e());
            arrayList2.add(z10.f());
        }
        return v0.a(arrayList, arrayList2);
    }

    @Ef.f
    public static final <T> InterfaceC3312m<T> i(Mf.a<? extends Iterator<? extends T>> iterator) {
        kotlin.jvm.internal.M.p(iterator, "iterator");
        return new a(iterator);
    }

    @NotNull
    public static <T> InterfaceC3312m<T> j(@NotNull Iterator<? extends T> it) {
        kotlin.jvm.internal.M.p(it, "<this>");
        return k(new b(it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> InterfaceC3312m<T> k(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return interfaceC3312m instanceof C3300a ? interfaceC3312m : new C3300a(interfaceC3312m);
    }

    @NotNull
    public static <T> InterfaceC3312m<T> l() {
        return C3306g.f28757a;
    }

    @NotNull
    public static final <T, C, R> InterfaceC3312m<R> m(@NotNull InterfaceC3312m<? extends T> source, @NotNull Mf.p<? super Integer, ? super T, ? extends C> transform, @NotNull Mf.l<? super C, ? extends Iterator<? extends R>> iterator) {
        kotlin.jvm.internal.M.p(source, "source");
        kotlin.jvm.internal.M.p(transform, "transform");
        kotlin.jvm.internal.M.p(iterator, "iterator");
        return C3316q.b(new c(source, transform, iterator, null));
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> n(@NotNull InterfaceC3312m<? extends InterfaceC3312m<? extends T>> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return o(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Iterator p10;
                p10 = x.p((InterfaceC3312m) obj);
                return p10;
            }
        });
    }

    public static final <T, R> InterfaceC3312m<R> o(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends Iterator<? extends R>> lVar) {
        return interfaceC3312m instanceof U ? ((U) interfaceC3312m).e(lVar) : new C3308i(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object r10;
                r10 = x.r(obj);
                return r10;
            }
        }, lVar);
    }

    public static final Iterator p(InterfaceC3312m it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.iterator();
    }

    public static final Iterator q(Iterable it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.iterator();
    }

    public static final Object r(Object obj) {
        return obj;
    }

    @Lf.j(name = "flattenSequenceOfIterable")
    @NotNull
    public static final <T> InterfaceC3312m<T> s(@NotNull InterfaceC3312m<? extends Iterable<? extends T>> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return o(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Iterator q10;
                q10 = x.q((Iterable) obj);
                return q10;
            }
        });
    }

    @NotNull
    public static final <T> InterfaceC3312m<T> t(@NotNull final Mf.a<? extends T> nextFunction) {
        kotlin.jvm.internal.M.p(nextFunction, "nextFunction");
        return k(new C3309j(nextFunction, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object w10;
                w10 = x.w(Mf.a.this, obj);
                return w10;
            }
        }));
    }

    @NotNull
    public static <T> InterfaceC3312m<T> u(@NotNull Mf.a<? extends T> seedFunction, @NotNull Mf.l<? super T, ? extends T> nextFunction) {
        kotlin.jvm.internal.M.p(seedFunction, "seedFunction");
        kotlin.jvm.internal.M.p(nextFunction, "nextFunction");
        return new C3309j(seedFunction, nextFunction);
    }

    @Ef.i
    @NotNull
    public static <T> InterfaceC3312m<T> v(@Nullable final T t10, @NotNull Mf.l<? super T, ? extends T> nextFunction) {
        kotlin.jvm.internal.M.p(nextFunction, "nextFunction");
        return t10 == null ? C3306g.f28757a : new C3309j(new Mf.a() {
            @Override
            public final Object invoke() {
                Object x10;
                x10 = x.x(Object.this);
                return x10;
            }
        }, nextFunction);
    }

    public static final Object w(Mf.a aVar, Object it) {
        kotlin.jvm.internal.M.p(it, "it");
        return aVar.invoke();
    }

    public static final Object x(Object obj) {
        return obj;
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <T> InterfaceC3312m<T> y(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Mf.a<? extends InterfaceC3312m<? extends T>> defaultValue) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return C3316q.b(new d(interfaceC3312m, defaultValue, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> InterfaceC3312m<T> z(InterfaceC3312m<? extends T> interfaceC3312m) {
        return interfaceC3312m == 0 ? l() : interfaceC3312m;
    }
}
