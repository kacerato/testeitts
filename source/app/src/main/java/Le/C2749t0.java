package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2361k;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class C2749t0 {

    public static final class a<T> implements Callable<Ee.a<T>> {

        public final AbstractC2362l<T> f13190b;

        public final int f13191c;

        public a(AbstractC2362l<T> abstractC2362l, int i10) {
            this.f13190b = abstractC2362l;
            this.f13191c = i10;
        }

        @Override
        public Ee.a<T> call() {
            return this.f13190b.i5(this.f13191c);
        }
    }

    public static final class b<T> implements Callable<Ee.a<T>> {

        public final AbstractC2362l<T> f13192b;

        public final int f13193c;

        public final long f13194d;

        public final TimeUnit f13195e;

        public final Be.J f13196f;

        public b(AbstractC2362l<T> abstractC2362l, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f13192b = abstractC2362l;
            this.f13193c = i10;
            this.f13194d = j10;
            this.f13195e = timeUnit;
            this.f13196f = j11;
        }

        @Override
        public Ee.a<T> call() {
            return this.f13192b.k5(this.f13193c, this.f13194d, this.f13195e, this.f13196f);
        }
    }

    public static final class c<T, U> implements Fe.o<T, hn.b<U>> {

        public final Fe.o<? super T, ? extends Iterable<? extends U>> f13197b;

        public c(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f13197b = oVar;
        }

        @Override
        public hn.b<U> apply(T t10) throws Exception {
            return new C2723k0((Iterable) He.b.g(this.f13197b.apply(t10), "The mapper returned a null Iterable"));
        }
    }

    public static final class d<U, R, T> implements Fe.o<U, R> {

        public final Fe.c<? super T, ? super U, ? extends R> f13198b;

        public final T f13199c;

        public d(Fe.c<? super T, ? super U, ? extends R> cVar, T t10) {
            this.f13198b = cVar;
            this.f13199c = t10;
        }

        @Override
        public R apply(U u10) throws Exception {
            return this.f13198b.apply(this.f13199c, u10);
        }
    }

    public static final class e<T, R, U> implements Fe.o<T, hn.b<R>> {

        public final Fe.c<? super T, ? super U, ? extends R> f13200b;

        public final Fe.o<? super T, ? extends hn.b<? extends U>> f13201c;

        public e(Fe.c<? super T, ? super U, ? extends R> cVar, Fe.o<? super T, ? extends hn.b<? extends U>> oVar) {
            this.f13200b = cVar;
            this.f13201c = oVar;
        }

        @Override
        public hn.b<R> apply(T t10) throws Exception {
            return new E0((hn.b) He.b.g(this.f13201c.apply(t10), "The mapper returned a null Publisher"), new d(this.f13200b, t10));
        }
    }

    public static final class f<T, U> implements Fe.o<T, hn.b<T>> {

        public final Fe.o<? super T, ? extends hn.b<U>> f13202b;

        public f(Fe.o<? super T, ? extends hn.b<U>> oVar) {
            this.f13202b = oVar;
        }

        @Override
        public hn.b<T> apply(T t10) throws Exception {
            return new F1((hn.b) He.b.g(this.f13202b.apply(t10), "The itemDelay returned a null Publisher"), 1L).M3(He.a.n(t10)).C1(t10);
        }
    }

    public static final class g<T> implements Callable<Ee.a<T>> {

        public final AbstractC2362l<T> f13203b;

        public g(AbstractC2362l<T> abstractC2362l) {
            this.f13203b = abstractC2362l;
        }

        @Override
        public Ee.a<T> call() {
            return this.f13203b.h5();
        }
    }

    public static final class h<T, R> implements Fe.o<AbstractC2362l<T>, hn.b<R>> {

        public final Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> f13204b;

        public final Be.J f13205c;

        public h(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, Be.J j10) {
            this.f13204b = oVar;
            this.f13205c = j10;
        }

        @Override
        public hn.b<R> apply(AbstractC2362l<T> abstractC2362l) throws Exception {
            return AbstractC2362l.a3((hn.b) He.b.g(this.f13204b.apply(abstractC2362l), "The selector returned a null Publisher")).n4(this.f13205c);
        }
    }

    public enum i implements Fe.g<hn.d> {
        INSTANCE;

        @Override
        public void accept(hn.d dVar) throws Exception {
            dVar.i(Long.MAX_VALUE);
        }
    }

    public static final class j<T, S> implements Fe.c<S, InterfaceC2361k<T>, S> {

        public final Fe.b<S, InterfaceC2361k<T>> f13206b;

        public j(Fe.b<S, InterfaceC2361k<T>> bVar) {
            this.f13206b = bVar;
        }

        @Override
        public S apply(S s10, InterfaceC2361k<T> interfaceC2361k) throws Exception {
            this.f13206b.accept(s10, interfaceC2361k);
            return s10;
        }
    }

    public static final class k<T, S> implements Fe.c<S, InterfaceC2361k<T>, S> {

        public final Fe.g<InterfaceC2361k<T>> f13207b;

        public k(Fe.g<InterfaceC2361k<T>> gVar) {
            this.f13207b = gVar;
        }

        @Override
        public S apply(S s10, InterfaceC2361k<T> interfaceC2361k) throws Exception {
            this.f13207b.accept(interfaceC2361k);
            return s10;
        }
    }

    public static final class l<T> implements Fe.a {

        public final hn.c<T> f13208b;

        public l(hn.c<T> cVar) {
            this.f13208b = cVar;
        }

        @Override
        public void run() throws Exception {
            this.f13208b.a();
        }
    }

    public static final class m<T> implements Fe.g<Throwable> {

        public final hn.c<T> f13209b;

        public m(hn.c<T> cVar) {
            this.f13209b = cVar;
        }

        @Override
        public void accept(Throwable th2) throws Exception {
            this.f13209b.onError(th2);
        }
    }

    public static final class n<T> implements Fe.g<T> {

        public final hn.c<T> f13210b;

        public n(hn.c<T> cVar) {
            this.f13210b = cVar;
        }

        @Override
        public void accept(T t10) throws Exception {
            this.f13210b.h(t10);
        }
    }

    public static final class o<T> implements Callable<Ee.a<T>> {

        public final AbstractC2362l<T> f13211b;

        public final long f13212c;

        public final TimeUnit f13213d;

        public final Be.J f13214e;

        public o(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f13211b = abstractC2362l;
            this.f13212c = j10;
            this.f13213d = timeUnit;
            this.f13214e = j11;
        }

        @Override
        public Ee.a<T> call() {
            return this.f13211b.n5(this.f13212c, this.f13213d, this.f13214e);
        }
    }

    public static final class p<T, R> implements Fe.o<List<hn.b<? extends T>>, hn.b<? extends R>> {

        public final Fe.o<? super Object[], ? extends R> f13215b;

        public p(Fe.o<? super Object[], ? extends R> oVar) {
            this.f13215b = oVar;
        }

        @Override
        public hn.b<? extends R> apply(List<hn.b<? extends T>> list) {
            return AbstractC2362l.J8(list, this.f13215b, false, AbstractC2362l.a0());
        }
    }

    public C2749t0() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Fe.o<T, hn.b<U>> a(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> Fe.o<T, hn.b<R>> b(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> Fe.o<T, hn.b<T>> c(Fe.o<? super T, ? extends hn.b<U>> oVar) {
        return new f(oVar);
    }

    public static <T> Callable<Ee.a<T>> d(AbstractC2362l<T> abstractC2362l) {
        return new g(abstractC2362l);
    }

    public static <T> Callable<Ee.a<T>> e(AbstractC2362l<T> abstractC2362l, int i10) {
        return new a(abstractC2362l, i10);
    }

    public static <T> Callable<Ee.a<T>> f(AbstractC2362l<T> abstractC2362l, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
        return new b(abstractC2362l, i10, j10, timeUnit, j11);
    }

    public static <T> Callable<Ee.a<T>> g(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11) {
        return new o(abstractC2362l, j10, timeUnit, j11);
    }

    public static <T, R> Fe.o<AbstractC2362l<T>, hn.b<R>> h(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, Be.J j10) {
        return new h(oVar, j10);
    }

    public static <T, S> Fe.c<S, InterfaceC2361k<T>, S> i(Fe.b<S, InterfaceC2361k<T>> bVar) {
        return new j(bVar);
    }

    public static <T, S> Fe.c<S, InterfaceC2361k<T>, S> j(Fe.g<InterfaceC2361k<T>> gVar) {
        return new k(gVar);
    }

    public static <T> Fe.a k(hn.c<T> cVar) {
        return new l(cVar);
    }

    public static <T> Fe.g<Throwable> l(hn.c<T> cVar) {
        return new m(cVar);
    }

    public static <T> Fe.g<T> m(hn.c<T> cVar) {
        return new n(cVar);
    }

    public static <T, R> Fe.o<List<hn.b<? extends T>>, hn.b<? extends R>> n(Fe.o<? super Object[], ? extends R> oVar) {
        return new p(oVar);
    }
}
