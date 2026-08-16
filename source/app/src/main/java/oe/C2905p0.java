package Oe;

import Be.InterfaceC2361k;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class C2905p0 {

    public static final class a<T> implements Callable<Ve.a<T>> {

        public final Be.B<T> f19722b;

        public final int f19723c;

        public a(Be.B<T> b10, int i10) {
            this.f19722b = b10;
            this.f19723c = i10;
        }

        @Override
        public Ve.a<T> call() {
            return this.f19722b.G4(this.f19723c);
        }
    }

    public static final class b<T> implements Callable<Ve.a<T>> {

        public final Be.B<T> f19724b;

        public final int f19725c;

        public final long f19726d;

        public final TimeUnit f19727e;

        public final Be.J f19728f;

        public b(Be.B<T> b10, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f19724b = b10;
            this.f19725c = i10;
            this.f19726d = j10;
            this.f19727e = timeUnit;
            this.f19728f = j11;
        }

        @Override
        public Ve.a<T> call() {
            return this.f19724b.I4(this.f19725c, this.f19726d, this.f19727e, this.f19728f);
        }
    }

    public static final class c<T, U> implements Fe.o<T, Be.G<U>> {

        public final Fe.o<? super T, ? extends Iterable<? extends U>> f19729b;

        public c(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f19729b = oVar;
        }

        @Override
        public Be.G<U> apply(T t10) throws Exception {
            return new C2878g0((Iterable) He.b.g(this.f19729b.apply(t10), "The mapper returned a null Iterable"));
        }
    }

    public static final class d<U, R, T> implements Fe.o<U, R> {

        public final Fe.c<? super T, ? super U, ? extends R> f19730b;

        public final T f19731c;

        public d(Fe.c<? super T, ? super U, ? extends R> cVar, T t10) {
            this.f19730b = cVar;
            this.f19731c = t10;
        }

        @Override
        public R apply(U u10) throws Exception {
            return this.f19730b.apply(this.f19731c, u10);
        }
    }

    public static final class e<T, R, U> implements Fe.o<T, Be.G<R>> {

        public final Fe.c<? super T, ? super U, ? extends R> f19732b;

        public final Fe.o<? super T, ? extends Be.G<? extends U>> f19733c;

        public e(Fe.c<? super T, ? super U, ? extends R> cVar, Fe.o<? super T, ? extends Be.G<? extends U>> oVar) {
            this.f19732b = cVar;
            this.f19733c = oVar;
        }

        @Override
        public Be.G<R> apply(T t10) throws Exception {
            return new C2920x0((Be.G) He.b.g(this.f19733c.apply(t10), "The mapper returned a null ObservableSource"), new d(this.f19732b, t10));
        }
    }

    public static final class f<T, U> implements Fe.o<T, Be.G<T>> {

        public final Fe.o<? super T, ? extends Be.G<U>> f19734b;

        public f(Fe.o<? super T, ? extends Be.G<U>> oVar) {
            this.f19734b = oVar;
        }

        @Override
        public Be.G<T> apply(T t10) throws Exception {
            return new C2903o1((Be.G) He.b.g(this.f19734b.apply(t10), "The itemDelay returned a null ObservableSource"), 1L).B3(He.a.n(t10)).w1(t10);
        }
    }

    public enum g implements Fe.o<Object, Object> {
        INSTANCE;

        @Override
        public Object apply(Object obj) throws Exception {
            return 0;
        }
    }

    public static final class h<T> implements Fe.a {

        public final Be.I<T> f19735b;

        public h(Be.I<T> i10) {
            this.f19735b = i10;
        }

        @Override
        public void run() throws Exception {
            this.f19735b.a();
        }
    }

    public static final class i<T> implements Fe.g<Throwable> {

        public final Be.I<T> f19736b;

        public i(Be.I<T> i10) {
            this.f19736b = i10;
        }

        @Override
        public void accept(Throwable th2) throws Exception {
            this.f19736b.onError(th2);
        }
    }

    public static final class j<T> implements Fe.g<T> {

        public final Be.I<T> f19737b;

        public j(Be.I<T> i10) {
            this.f19737b = i10;
        }

        @Override
        public void accept(T t10) throws Exception {
            this.f19737b.h(t10);
        }
    }

    public static final class k<T> implements Callable<Ve.a<T>> {

        public final Be.B<T> f19738b;

        public k(Be.B<T> b10) {
            this.f19738b = b10;
        }

        @Override
        public Ve.a<T> call() {
            return this.f19738b.F4();
        }
    }

    public static final class l<T, R> implements Fe.o<Be.B<T>, Be.G<R>> {

        public final Fe.o<? super Be.B<T>, ? extends Be.G<R>> f19739b;

        public final Be.J f19740c;

        public l(Fe.o<? super Be.B<T>, ? extends Be.G<R>> oVar, Be.J j10) {
            this.f19739b = oVar;
            this.f19740c = j10;
        }

        @Override
        public Be.G<R> apply(Be.B<T> b10) throws Exception {
            return Be.B.Q7((Be.G) He.b.g(this.f19739b.apply(b10), "The selector returned a null ObservableSource")).c4(this.f19740c);
        }
    }

    public static final class m<T, S> implements Fe.c<S, InterfaceC2361k<T>, S> {

        public final Fe.b<S, InterfaceC2361k<T>> f19741b;

        public m(Fe.b<S, InterfaceC2361k<T>> bVar) {
            this.f19741b = bVar;
        }

        @Override
        public S apply(S s10, InterfaceC2361k<T> interfaceC2361k) throws Exception {
            this.f19741b.accept(s10, interfaceC2361k);
            return s10;
        }
    }

    public static final class n<T, S> implements Fe.c<S, InterfaceC2361k<T>, S> {

        public final Fe.g<InterfaceC2361k<T>> f19742b;

        public n(Fe.g<InterfaceC2361k<T>> gVar) {
            this.f19742b = gVar;
        }

        @Override
        public S apply(S s10, InterfaceC2361k<T> interfaceC2361k) throws Exception {
            this.f19742b.accept(interfaceC2361k);
            return s10;
        }
    }

    public static final class o<T> implements Callable<Ve.a<T>> {

        public final Be.B<T> f19743b;

        public final long f19744c;

        public final TimeUnit f19745d;

        public final Be.J f19746e;

        public o(Be.B<T> b10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f19743b = b10;
            this.f19744c = j10;
            this.f19745d = timeUnit;
            this.f19746e = j11;
        }

        @Override
        public Ve.a<T> call() {
            return this.f19743b.L4(this.f19744c, this.f19745d, this.f19746e);
        }
    }

    public static final class p<T, R> implements Fe.o<List<Be.G<? extends T>>, Be.G<? extends R>> {

        public final Fe.o<? super Object[], ? extends R> f19747b;

        public p(Fe.o<? super Object[], ? extends R> oVar) {
            this.f19747b = oVar;
        }

        @Override
        public Be.G<? extends R> apply(List<Be.G<? extends T>> list) {
            return Be.B.e8(list, this.f19747b, false, Be.B.V());
        }
    }

    public C2905p0() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Fe.o<T, Be.G<U>> a(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> Fe.o<T, Be.G<R>> b(Fe.o<? super T, ? extends Be.G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> Fe.o<T, Be.G<T>> c(Fe.o<? super T, ? extends Be.G<U>> oVar) {
        return new f(oVar);
    }

    public static <T> Fe.a d(Be.I<T> i10) {
        return new h(i10);
    }

    public static <T> Fe.g<Throwable> e(Be.I<T> i10) {
        return new i(i10);
    }

    public static <T> Fe.g<T> f(Be.I<T> i10) {
        return new j(i10);
    }

    public static <T> Callable<Ve.a<T>> g(Be.B<T> b10) {
        return new k(b10);
    }

    public static <T> Callable<Ve.a<T>> h(Be.B<T> b10, int i10) {
        return new a(b10, i10);
    }

    public static <T> Callable<Ve.a<T>> i(Be.B<T> b10, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
        return new b(b10, i10, j10, timeUnit, j11);
    }

    public static <T> Callable<Ve.a<T>> j(Be.B<T> b10, long j10, TimeUnit timeUnit, Be.J j11) {
        return new o(b10, j10, timeUnit, j11);
    }

    public static <T, R> Fe.o<Be.B<T>, Be.G<R>> k(Fe.o<? super Be.B<T>, ? extends Be.G<R>> oVar, Be.J j10) {
        return new l(oVar, j10);
    }

    public static <T, S> Fe.c<S, InterfaceC2361k<T>, S> l(Fe.b<S, InterfaceC2361k<T>> bVar) {
        return new m(bVar);
    }

    public static <T, S> Fe.c<S, InterfaceC2361k<T>, S> m(Fe.g<InterfaceC2361k<T>> gVar) {
        return new n(gVar);
    }

    public static <T, R> Fe.o<List<Be.G<? extends T>>, Be.G<? extends R>> n(Fe.o<? super Object[], ? extends R> oVar) {
        return new p(oVar);
    }
}
