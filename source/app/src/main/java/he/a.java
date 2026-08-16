package He;

import Fe.c;
import Fe.e;
import Fe.g;
import Fe.h;
import Fe.i;
import Fe.j;
import Fe.k;
import Fe.l;
import Fe.m;
import af.C3606d;
import hn.d;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class a {

    public static final Fe.o<Object, Object> f8375a = new x();

    public static final Runnable f8376b = new r();

    public static final Fe.a f8377c = new o();

    public static final g<Object> f8378d = new p();

    public static final g<Throwable> f8379e = new t();

    public static final g<Throwable> f8380f = new H();

    public static final Fe.q f8381g = new q();

    public static final Fe.r<Object> f8382h = new M();

    public static final Fe.r<Object> f8383i = new u();

    public static final Callable<Object> f8384j = new G();

    public static final Comparator<Object> f8385k = new C();

    public static final g<d> f8386l = new A();

    public static final class A implements g<d> {
        @Override
        public void accept(d dVar) throws Exception {
            dVar.i(Long.MAX_VALUE);
        }
    }

    public enum B implements Comparator<Object> {
        INSTANCE;

        @Override
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static final class C implements Comparator<Object> {
        @Override
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static final class D<T> implements Fe.a {

        public final g<? super Be.A<T>> f8387b;

        public D(g<? super Be.A<T>> gVar) {
            this.f8387b = gVar;
        }

        @Override
        public void run() throws Exception {
            this.f8387b.accept(Be.A.a());
        }
    }

    public static final class E<T> implements g<Throwable> {

        public final g<? super Be.A<T>> f8388b;

        public E(g<? super Be.A<T>> gVar) {
            this.f8388b = gVar;
        }

        @Override
        public void accept(Throwable th2) throws Exception {
            this.f8388b.accept(Be.A.b(th2));
        }
    }

    public static final class F<T> implements g<T> {

        public final g<? super Be.A<T>> f8389b;

        public F(g<? super Be.A<T>> gVar) {
            this.f8389b = gVar;
        }

        @Override
        public void accept(T t10) throws Exception {
            this.f8389b.accept(Be.A.c(t10));
        }
    }

    public static final class G implements Callable<Object> {
        @Override
        public Object call() {
            return null;
        }
    }

    public static final class H implements g<Throwable> {
        @Override
        public void accept(Throwable th2) {
            Ye.a.Y(new OnErrorNotImplementedException(th2));
        }
    }

    public static final class I<T> implements Fe.o<T, C3606d<T>> {

        public final TimeUnit f8390b;

        public final Be.J f8391c;

        public I(TimeUnit timeUnit, Be.J j10) {
            this.f8390b = timeUnit;
            this.f8391c = j10;
        }

        @Override
        public C3606d<T> apply(T t10) throws Exception {
            return new C3606d<>(t10, this.f8391c.e(this.f8390b), this.f8390b);
        }
    }

    public static final class J<K, T> implements Fe.b<Map<K, T>, T> {

        public final Fe.o<? super T, ? extends K> f8392a;

        public J(Fe.o<? super T, ? extends K> oVar) {
            this.f8392a = oVar;
        }

        @Override
        public void accept(Map<K, T> map, T t10) throws Exception {
            map.put(this.f8392a.apply(t10), t10);
        }
    }

    public static final class K<K, V, T> implements Fe.b<Map<K, V>, T> {

        public final Fe.o<? super T, ? extends V> f8393a;

        public final Fe.o<? super T, ? extends K> f8394b;

        public K(Fe.o<? super T, ? extends V> oVar, Fe.o<? super T, ? extends K> oVar2) {
            this.f8393a = oVar;
            this.f8394b = oVar2;
        }

        @Override
        public void accept(Map<K, V> map, T t10) throws Exception {
            map.put(this.f8394b.apply(t10), this.f8393a.apply(t10));
        }
    }

    public static final class L<K, V, T> implements Fe.b<Map<K, Collection<V>>, T> {

        public final Fe.o<? super K, ? extends Collection<? super V>> f8395a;

        public final Fe.o<? super T, ? extends V> f8396b;

        public final Fe.o<? super T, ? extends K> f8397c;

        public L(Fe.o<? super K, ? extends Collection<? super V>> oVar, Fe.o<? super T, ? extends V> oVar2, Fe.o<? super T, ? extends K> oVar3) {
            this.f8395a = oVar;
            this.f8396b = oVar2;
            this.f8397c = oVar3;
        }

        @Override
        public void accept(Map<K, Collection<V>> map, T t10) throws Exception {
            K apply = this.f8397c.apply(t10);
            Collection<? super V> collection = (Collection) map.get(apply);
            if (collection == null) {
                collection = this.f8395a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.f8396b.apply(t10));
        }
    }

    public static final class M implements Fe.r<Object> {
        @Override
        public boolean test(Object obj) {
            return true;
        }
    }

    public static final class C0182a<T> implements g<T> {

        public final Fe.a f8398b;

        public C0182a(Fe.a aVar) {
            this.f8398b = aVar;
        }

        @Override
        public void accept(T t10) throws Exception {
            this.f8398b.run();
        }
    }

    public static final class C2605b<T1, T2, R> implements Fe.o<Object[], R> {

        public final c<? super T1, ? super T2, ? extends R> f8399b;

        public C2605b(c<? super T1, ? super T2, ? extends R> cVar) {
            this.f8399b = cVar;
        }

        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f8399b.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    public static final class C2606c<T1, T2, T3, R> implements Fe.o<Object[], R> {

        public final h<T1, T2, T3, R> f8400b;

        public C2606c(h<T1, T2, T3, R> hVar) {
            this.f8400b = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f8400b.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    public static final class C2607d<T1, T2, T3, T4, R> implements Fe.o<Object[], R> {

        public final i<T1, T2, T3, T4, R> f8401b;

        public C2607d(i<T1, T2, T3, T4, R> iVar) {
            this.f8401b = iVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f8401b.a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    public static final class C2608e<T1, T2, T3, T4, T5, R> implements Fe.o<Object[], R> {

        public final j<T1, T2, T3, T4, T5, R> f8402b;

        public C2608e(j<T1, T2, T3, T4, T5, R> jVar) {
            this.f8402b = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f8402b.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    public static final class C2609f<T1, T2, T3, T4, T5, T6, R> implements Fe.o<Object[], R> {

        public final k<T1, T2, T3, T4, T5, T6, R> f8403b;

        public C2609f(k<T1, T2, T3, T4, T5, T6, R> kVar) {
            this.f8403b = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f8403b.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    public static final class C2610g<T1, T2, T3, T4, T5, T6, T7, R> implements Fe.o<Object[], R> {

        public final l<T1, T2, T3, T4, T5, T6, T7, R> f8404b;

        public C2610g(l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
            this.f8404b = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f8404b.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    public static final class C2611h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Fe.o<Object[], R> {

        public final m<T1, T2, T3, T4, T5, T6, T7, T8, R> f8405b;

        public C2611h(m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
            this.f8405b = mVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f8405b.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    public static final class C2612i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Fe.o<Object[], R> {

        public final Fe.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f8406b;

        public C2612i(Fe.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
            this.f8406b = nVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f8406b.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    public static final class CallableC2613j<T> implements Callable<List<T>> {

        public final int f8407b;

        public CallableC2613j(int i10) {
            this.f8407b = i10;
        }

        @Override
        public List<T> call() throws Exception {
            return new ArrayList(this.f8407b);
        }
    }

    public static final class C2614k<T> implements Fe.r<T> {

        public final e f8408b;

        public C2614k(e eVar) {
            this.f8408b = eVar;
        }

        @Override
        public boolean test(T t10) throws Exception {
            return !this.f8408b.getAsBoolean();
        }
    }

    public static class C2615l implements g<d> {

        public final int f8409b;

        public C2615l(int i10) {
            this.f8409b = i10;
        }

        @Override
        public void accept(d dVar) throws Exception {
            dVar.i(this.f8409b);
        }
    }

    public static final class C2616m<T, U> implements Fe.o<T, U> {

        public final Class<U> f8410b;

        public C2616m(Class<U> cls) {
            this.f8410b = cls;
        }

        @Override
        public U apply(T t10) throws Exception {
            return this.f8410b.cast(t10);
        }
    }

    public static final class n<T, U> implements Fe.r<T> {

        public final Class<U> f8411b;

        public n(Class<U> cls) {
            this.f8411b = cls;
        }

        @Override
        public boolean test(T t10) throws Exception {
            return this.f8411b.isInstance(t10);
        }
    }

    public static final class o implements Fe.a {
        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    public static final class p implements g<Object> {
        @Override
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class q implements Fe.q {
        @Override
        public void a(long j10) {
        }
    }

    public static final class r implements Runnable {
        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    public static final class s<T> implements Fe.r<T> {

        public final T f8412b;

        public s(T t10) {
            this.f8412b = t10;
        }

        @Override
        public boolean test(T t10) throws Exception {
            return b.c(t10, this.f8412b);
        }
    }

    public static final class t implements g<Throwable> {
        @Override
        public void accept(Throwable th2) {
            Ye.a.Y(th2);
        }
    }

    public static final class u implements Fe.r<Object> {
        @Override
        public boolean test(Object obj) {
            return false;
        }
    }

    public static final class v implements Fe.a {

        public final Future<?> f8413b;

        public v(Future<?> future) {
            this.f8413b = future;
        }

        @Override
        public void run() throws Exception {
            this.f8413b.get();
        }
    }

    public enum w implements Callable<Set<Object>> {
        INSTANCE;

        @Override
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    public static final class x implements Fe.o<Object, Object> {
        @Override
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    public static final class y<T, U> implements Callable<U>, Fe.o<T, U> {

        public final U f8414b;

        public y(U u10) {
            this.f8414b = u10;
        }

        @Override
        public U apply(T t10) throws Exception {
            return this.f8414b;
        }

        @Override
        public U call() throws Exception {
            return this.f8414b;
        }
    }

    public static final class z<T> implements Fe.o<List<T>, List<T>> {

        public final Comparator<? super T> f8415b;

        public z(Comparator<? super T> comparator) {
            this.f8415b = comparator;
        }

        @Override
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.f8415b);
            return list;
        }
    }

    public a() {
        throw new IllegalStateException("No instances!");
    }

    public static <T1, T2, T3, T4, T5, R> Fe.o<Object[], R> A(j<T1, T2, T3, T4, T5, R> jVar) {
        b.g(jVar, "f is null");
        return new C2608e(jVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> Fe.o<Object[], R> B(k<T1, T2, T3, T4, T5, T6, R> kVar) {
        b.g(kVar, "f is null");
        return new C2609f(kVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Fe.o<Object[], R> C(l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        b.g(lVar, "f is null");
        return new C2610g(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Fe.o<Object[], R> D(m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        b.g(mVar, "f is null");
        return new C2611h(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Fe.o<Object[], R> E(Fe.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        b.g(nVar, "f is null");
        return new C2612i(nVar);
    }

    public static <T, K> Fe.b<Map<K, T>, T> F(Fe.o<? super T, ? extends K> oVar) {
        return new J(oVar);
    }

    public static <T, K, V> Fe.b<Map<K, V>, T> G(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        return new K(oVar2, oVar);
    }

    public static <T, K, V> Fe.b<Map<K, Collection<V>>, T> H(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Fe.o<? super K, ? extends Collection<? super V>> oVar3) {
        return new L(oVar3, oVar2, oVar);
    }

    public static <T> g<T> a(Fe.a aVar) {
        return new C0182a(aVar);
    }

    public static <T> Fe.r<T> b() {
        return (Fe.r<T>) f8383i;
    }

    public static <T> Fe.r<T> c() {
        return (Fe.r<T>) f8382h;
    }

    public static <T> g<T> d(int i10) {
        return new C2615l(i10);
    }

    public static <T, U> Fe.o<T, U> e(Class<U> cls) {
        return new C2616m(cls);
    }

    public static <T> Callable<List<T>> f(int i10) {
        return new CallableC2613j(i10);
    }

    public static <T> Callable<Set<T>> g() {
        return w.INSTANCE;
    }

    public static <T> g<T> h() {
        return (g<T>) f8378d;
    }

    public static <T> Fe.r<T> i(T t10) {
        return new s(t10);
    }

    public static Fe.a j(Future<?> future) {
        return new v(future);
    }

    public static <T> Fe.o<T, T> k() {
        return (Fe.o<T, T>) f8375a;
    }

    public static <T, U> Fe.r<T> l(Class<U> cls) {
        return new n(cls);
    }

    public static <T> Callable<T> m(T t10) {
        return new y(t10);
    }

    public static <T, U> Fe.o<T, U> n(U u10) {
        return new y(u10);
    }

    public static <T> Fe.o<List<T>, List<T>> o(Comparator<? super T> comparator) {
        return new z(comparator);
    }

    public static <T> Comparator<T> p() {
        return B.INSTANCE;
    }

    public static <T> Comparator<T> q() {
        return (Comparator<T>) f8385k;
    }

    public static <T> Fe.a r(g<? super Be.A<T>> gVar) {
        return new D(gVar);
    }

    public static <T> g<Throwable> s(g<? super Be.A<T>> gVar) {
        return new E(gVar);
    }

    public static <T> g<T> t(g<? super Be.A<T>> gVar) {
        return new F(gVar);
    }

    public static <T> Callable<T> u() {
        return (Callable<T>) f8384j;
    }

    public static <T> Fe.r<T> v(e eVar) {
        return new C2614k(eVar);
    }

    public static <T> Fe.o<T, C3606d<T>> w(TimeUnit timeUnit, Be.J j10) {
        return new I(timeUnit, j10);
    }

    public static <T1, T2, R> Fe.o<Object[], R> x(c<? super T1, ? super T2, ? extends R> cVar) {
        b.g(cVar, "f is null");
        return new C2605b(cVar);
    }

    public static <T1, T2, T3, R> Fe.o<Object[], R> y(h<T1, T2, T3, R> hVar) {
        b.g(hVar, "f is null");
        return new C2606c(hVar);
    }

    public static <T1, T2, T3, T4, R> Fe.o<Object[], R> z(i<T1, T2, T3, T4, R> iVar) {
        b.g(iVar, "f is null");
        return new C2607d(iVar);
    }
}
