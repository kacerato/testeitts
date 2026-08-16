package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12556p0;
import com.google.common.collect.M1;
import com.google.common.util.concurrent.Q;
import java.io.Closeable;
import java.io.IOException;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import w2.C15904v;
import w2.InterfaceC15902t;

@com.google.common.util.concurrent.A
@I2.f("Use ClosingFuture.from(Futures.immediate*Future)")
public final class C12632w<V> {

    public static final Logger f67529d = Logger.getLogger(C12632w.class.getName());

    public final AtomicReference<y> f67530a;

    public final o f67531b;

    public final F<V> f67532c;

    public interface A<V> {
        void a(z<V> zVar);
    }

    public class RunnableC12633a implements Runnable {

        public final A f67533b;

        public RunnableC12633a(A a10) {
            this.f67533b = a10;
        }

        @Override
        public void run() {
            C12632w.x(this.f67533b, C12632w.this);
        }
    }

    public class b implements Runnable {

        public final Closeable f67535b;

        public b(Closeable closeable) {
            this.f67535b = closeable;
        }

        @Override
        public void run() {
            try {
                this.f67535b.close();
            } catch (IOException | RuntimeException e10) {
                C12632w.f67529d.log(Level.WARNING, "thrown by close()", e10);
            }
        }
    }

    public static class c {

        public static final int[] f67536a;

        static {
            int[] iArr = new int[y.values().length];
            f67536a = iArr;
            try {
                iArr[y.SUBSUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67536a[y.WILL_CREATE_VALUE_AND_CLOSER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67536a[y.WILL_CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67536a[y.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67536a[y.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f67536a[y.OPEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class d implements P<Closeable> {

        public final Executor f67538b;

        public d(Executor executor) {
            this.f67538b = executor;
        }

        @Override
        public void a(Throwable th2) {
        }

        @Override
        public void b(@CheckForNull Closeable closeable) {
            C12632w.this.f67531b.f67553b.a(closeable, this.f67538b);
        }
    }

    public class e implements Callable<V> {

        public final p f67539b;

        public e(p pVar) {
            this.f67539b = pVar;
        }

        @Override
        @InterfaceC12618j0
        public V call() throws Exception {
            return (V) this.f67539b.a(C12632w.this.f67531b.f67553b);
        }

        public String toString() {
            return this.f67539b.toString();
        }
    }

    public class f implements InterfaceC12621l<V> {

        public final m f67541a;

        public f(m mVar) {
            this.f67541a = mVar;
        }

        @Override
        public Z<V> call() throws Exception {
            o oVar = new o(null);
            try {
                C12632w<V> a10 = this.f67541a.a(oVar.f67553b);
                a10.i(C12632w.this.f67531b);
                return a10.f67532c;
            } finally {
                C12632w.this.f67531b.b(oVar, C12612g0.c());
            }
        }

        public String toString() {
            return this.f67541a.toString();
        }
    }

    public class g<U> implements InterfaceC12623m<V, U> {

        public final q f67543a;

        public g(q qVar) {
            this.f67543a = qVar;
        }

        @Override
        public Z<U> apply(V v10) throws Exception {
            return C12632w.this.f67531b.d(this.f67543a, v10);
        }

        public String toString() {
            return this.f67543a.toString();
        }
    }

    public class h<U> implements InterfaceC12623m<V, U> {

        public final n f67545a;

        public h(n nVar) {
            this.f67545a = nVar;
        }

        @Override
        public Z<U> apply(V v10) throws Exception {
            return C12632w.this.f67531b.c(this.f67545a, v10);
        }

        public String toString() {
            return this.f67545a.toString();
        }
    }

    public class i<U> implements n<V, U> {

        public final InterfaceC12623m f67547a;

        public i(InterfaceC12623m interfaceC12623m) {
            this.f67547a = interfaceC12623m;
        }

        @Override
        public C12632w<U> a(C1024w c1024w, V v10) throws Exception {
            return C12632w.w(this.f67547a.apply(v10));
        }
    }

    public class j<W, X> implements InterfaceC12623m<X, W> {

        public final q f67548a;

        public j(q qVar) {
            this.f67548a = qVar;
        }

        /* JADX WARN: Incorrect types in method signature: (TX;)Lcom/google/common/util/concurrent/Z<TW;>; */
        @Override
        public Z apply(Throwable th2) throws Exception {
            return C12632w.this.f67531b.d(this.f67548a, th2);
        }

        public String toString() {
            return this.f67548a.toString();
        }
    }

    public class k<W, X> implements InterfaceC12623m<X, W> {

        public final n f67550a;

        public k(n nVar) {
            this.f67550a = nVar;
        }

        /* JADX WARN: Incorrect types in method signature: (TX;)Lcom/google/common/util/concurrent/Z<TW;>; */
        @Override
        public Z apply(Throwable th2) throws Exception {
            return C12632w.this.f67531b.c(this.f67550a, th2);
        }

        public String toString() {
            return this.f67550a.toString();
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override
        public void run() {
            C12632w c12632w = C12632w.this;
            y yVar = y.WILL_CLOSE;
            y yVar2 = y.CLOSING;
            c12632w.o(yVar, yVar2);
            C12632w.this.p();
            C12632w.this.o(yVar2, y.CLOSED);
        }
    }

    public interface m<V> {
        C12632w<V> a(C1024w c1024w) throws Exception;
    }

    public interface n<T, U> {
        C12632w<U> a(C1024w c1024w, @InterfaceC12618j0 T t10) throws Exception;
    }

    public interface p<V> {
        @InterfaceC12618j0
        V a(C1024w c1024w) throws Exception;
    }

    public interface q<T, U> {
        @InterfaceC12618j0
        U a(C1024w c1024w, @InterfaceC12618j0 T t10) throws Exception;
    }

    @I2.f("Use ClosingFuture.whenAllSucceed() or .whenAllComplete() instead.")
    public static class r {

        public static final InterfaceC15902t<C12632w<?>, F<?>> f67556d = new c();

        public final o f67557a;

        public final boolean f67558b;

        public final AbstractC12521g1<C12632w<?>> f67559c;

        public class a implements Callable<V> {

            public final e f67560b;

            public a(e eVar) {
                this.f67560b = eVar;
            }

            @Override
            @InterfaceC12618j0
            public V call() throws Exception {
                return (V) new x(r.this.f67559c, null).c(this.f67560b, r.this.f67557a);
            }

            public String toString() {
                return this.f67560b.toString();
            }
        }

        public class b implements InterfaceC12621l<V> {

            public final d f67562a;

            public b(d dVar) {
                this.f67562a = dVar;
            }

            @Override
            public Z<V> call() throws Exception {
                return new x(r.this.f67559c, null).d(this.f67562a, r.this.f67557a);
            }

            public String toString() {
                return this.f67562a.toString();
            }
        }

        public class c implements InterfaceC15902t<C12632w<?>, F<?>> {
            @Override
            public F<?> apply(C12632w<?> c12632w) {
                return c12632w.f67532c;
            }
        }

        public interface d<V> {
            C12632w<V> a(C1024w c1024w, x xVar) throws Exception;
        }

        public interface e<V> {
            @InterfaceC12618j0
            V a(C1024w c1024w, x xVar) throws Exception;
        }

        public r(boolean z10, Iterable iterable, d dVar) {
            this(z10, iterable);
        }

        public <V> C12632w<V> b(e<V> eVar, Executor executor) {
            C12632w<V> c12632w = new C12632w<>(d().a(new a(eVar), executor), (d) null);
            c12632w.f67531b.b(this.f67557a, C12612g0.c());
            return c12632w;
        }

        public <V> C12632w<V> c(d<V> dVar, Executor executor) {
            C12632w<V> c12632w = new C12632w<>(d().b(new b(dVar), executor), (d) null);
            c12632w.f67531b.b(this.f67557a, C12612g0.c());
            return c12632w;
        }

        public final Q.e<Object> d() {
            return this.f67558b ? Q.B(e()) : Q.z(e());
        }

        public final AbstractC12521g1<F<?>> e() {
            return AbstractC12556p0.s(this.f67559c).J(f67556d).D();
        }

        public r(boolean z10, Iterable<? extends C12632w<?>> iterable) {
            this.f67557a = new o(null);
            this.f67558b = z10;
            this.f67559c = AbstractC12521g1.p(iterable);
            Iterator<? extends C12632w<?>> it = iterable.iterator();
            while (it.hasNext()) {
                it.next().i(this.f67557a);
            }
        }
    }

    public static final class s<V1, V2> extends r {

        public final C12632w<V1> f67564e;

        public final C12632w<V2> f67565f;

        public class a<U> implements r.e<U> {

            public final d f67566a;

            public a(d dVar) {
                this.f67566a = dVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @InterfaceC12618j0
            public U a(C1024w c1024w, x xVar) throws Exception {
                return (U) this.f67566a.a(c1024w, xVar.e(s.this.f67564e), xVar.e(s.this.f67565f));
            }

            public String toString() {
                return this.f67566a.toString();
            }
        }

        public class b<U> implements r.d<U> {

            public final c f67568a;

            public b(c cVar) {
                this.f67568a = cVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public C12632w<U> a(C1024w c1024w, x xVar) throws Exception {
                return this.f67568a.a(c1024w, xVar.e(s.this.f67564e), xVar.e(s.this.f67565f));
            }

            public String toString() {
                return this.f67568a.toString();
            }
        }

        public interface c<V1, V2, U> {
            C12632w<U> a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22) throws Exception;
        }

        public interface d<V1, V2, U> {
            @InterfaceC12618j0
            U a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22) throws Exception;
        }

        public s(C12632w c12632w, C12632w c12632w2, d dVar) {
            this(c12632w, c12632w2);
        }

        public <U> C12632w<U> h(d<V1, V2, U> dVar, Executor executor) {
            return b(new a(dVar), executor);
        }

        public <U> C12632w<U> i(c<V1, V2, U> cVar, Executor executor) {
            return c(new b(cVar), executor);
        }

        public s(C12632w<V1> c12632w, C12632w<V2> c12632w2) {
            super(true, AbstractC12521g1.z(c12632w, c12632w2), null);
            this.f67564e = c12632w;
            this.f67565f = c12632w2;
        }
    }

    public static final class t<V1, V2, V3> extends r {

        public final C12632w<V1> f67570e;

        public final C12632w<V2> f67571f;

        public final C12632w<V3> f67572g;

        public class a<U> implements r.e<U> {

            public final d f67573a;

            public a(d dVar) {
                this.f67573a = dVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @InterfaceC12618j0
            public U a(C1024w c1024w, x xVar) throws Exception {
                return (U) this.f67573a.a(c1024w, xVar.e(t.this.f67570e), xVar.e(t.this.f67571f), xVar.e(t.this.f67572g));
            }

            public String toString() {
                return this.f67573a.toString();
            }
        }

        public class b<U> implements r.d<U> {

            public final c f67575a;

            public b(c cVar) {
                this.f67575a = cVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public C12632w<U> a(C1024w c1024w, x xVar) throws Exception {
                return this.f67575a.a(c1024w, xVar.e(t.this.f67570e), xVar.e(t.this.f67571f), xVar.e(t.this.f67572g));
            }

            public String toString() {
                return this.f67575a.toString();
            }
        }

        public interface c<V1, V2, V3, U> {
            C12632w<U> a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32) throws Exception;
        }

        public interface d<V1, V2, V3, U> {
            @InterfaceC12618j0
            U a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32) throws Exception;
        }

        public t(C12632w c12632w, C12632w c12632w2, C12632w c12632w3, d dVar) {
            this(c12632w, c12632w2, c12632w3);
        }

        public <U> C12632w<U> i(d<V1, V2, V3, U> dVar, Executor executor) {
            return b(new a(dVar), executor);
        }

        public <U> C12632w<U> j(c<V1, V2, V3, U> cVar, Executor executor) {
            return c(new b(cVar), executor);
        }

        public t(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3) {
            super(true, AbstractC12521g1.A(c12632w, c12632w2, c12632w3), null);
            this.f67570e = c12632w;
            this.f67571f = c12632w2;
            this.f67572g = c12632w3;
        }
    }

    public static final class u<V1, V2, V3, V4> extends r {

        public final C12632w<V1> f67577e;

        public final C12632w<V2> f67578f;

        public final C12632w<V3> f67579g;

        public final C12632w<V4> f67580h;

        public class a<U> implements r.e<U> {

            public final d f67581a;

            public a(d dVar) {
                this.f67581a = dVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @InterfaceC12618j0
            public U a(C1024w c1024w, x xVar) throws Exception {
                return (U) this.f67581a.a(c1024w, xVar.e(u.this.f67577e), xVar.e(u.this.f67578f), xVar.e(u.this.f67579g), xVar.e(u.this.f67580h));
            }

            public String toString() {
                return this.f67581a.toString();
            }
        }

        public class b<U> implements r.d<U> {

            public final c f67583a;

            public b(c cVar) {
                this.f67583a = cVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public C12632w<U> a(C1024w c1024w, x xVar) throws Exception {
                return this.f67583a.a(c1024w, xVar.e(u.this.f67577e), xVar.e(u.this.f67578f), xVar.e(u.this.f67579g), xVar.e(u.this.f67580h));
            }

            public String toString() {
                return this.f67583a.toString();
            }
        }

        public interface c<V1, V2, V3, V4, U> {
            C12632w<U> a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32, @InterfaceC12618j0 V4 v42) throws Exception;
        }

        public interface d<V1, V2, V3, V4, U> {
            @InterfaceC12618j0
            U a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32, @InterfaceC12618j0 V4 v42) throws Exception;
        }

        public u(C12632w c12632w, C12632w c12632w2, C12632w c12632w3, C12632w c12632w4, d dVar) {
            this(c12632w, c12632w2, c12632w3, c12632w4);
        }

        public <U> C12632w<U> j(d<V1, V2, V3, V4, U> dVar, Executor executor) {
            return b(new a(dVar), executor);
        }

        public <U> C12632w<U> k(c<V1, V2, V3, V4, U> cVar, Executor executor) {
            return c(new b(cVar), executor);
        }

        public u(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3, C12632w<V4> c12632w4) {
            super(true, AbstractC12521g1.B(c12632w, c12632w2, c12632w3, c12632w4), null);
            this.f67577e = c12632w;
            this.f67578f = c12632w2;
            this.f67579g = c12632w3;
            this.f67580h = c12632w4;
        }
    }

    public static final class v<V1, V2, V3, V4, V5> extends r {

        public final C12632w<V1> f67585e;

        public final C12632w<V2> f67586f;

        public final C12632w<V3> f67587g;

        public final C12632w<V4> f67588h;

        public final C12632w<V5> f67589i;

        public class a<U> implements r.e<U> {

            public final d f67590a;

            public a(d dVar) {
                this.f67590a = dVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @InterfaceC12618j0
            public U a(C1024w c1024w, x xVar) throws Exception {
                return (U) this.f67590a.a(c1024w, xVar.e(v.this.f67585e), xVar.e(v.this.f67586f), xVar.e(v.this.f67587g), xVar.e(v.this.f67588h), xVar.e(v.this.f67589i));
            }

            public String toString() {
                return this.f67590a.toString();
            }
        }

        public class b<U> implements r.d<U> {

            public final c f67592a;

            public b(c cVar) {
                this.f67592a = cVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public C12632w<U> a(C1024w c1024w, x xVar) throws Exception {
                return this.f67592a.a(c1024w, xVar.e(v.this.f67585e), xVar.e(v.this.f67586f), xVar.e(v.this.f67587g), xVar.e(v.this.f67588h), xVar.e(v.this.f67589i));
            }

            public String toString() {
                return this.f67592a.toString();
            }
        }

        public interface c<V1, V2, V3, V4, V5, U> {
            C12632w<U> a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32, @InterfaceC12618j0 V4 v42, @InterfaceC12618j0 V5 v52) throws Exception;
        }

        public interface d<V1, V2, V3, V4, V5, U> {
            @InterfaceC12618j0
            U a(C1024w c1024w, @InterfaceC12618j0 V1 v12, @InterfaceC12618j0 V2 v22, @InterfaceC12618j0 V3 v32, @InterfaceC12618j0 V4 v42, @InterfaceC12618j0 V5 v52) throws Exception;
        }

        public v(C12632w c12632w, C12632w c12632w2, C12632w c12632w3, C12632w c12632w4, C12632w c12632w5, d dVar) {
            this(c12632w, c12632w2, c12632w3, c12632w4, c12632w5);
        }

        public <U> C12632w<U> k(d<V1, V2, V3, V4, V5, U> dVar, Executor executor) {
            return b(new a(dVar), executor);
        }

        public <U> C12632w<U> l(c<V1, V2, V3, V4, V5, U> cVar, Executor executor) {
            return c(new b(cVar), executor);
        }

        public v(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3, C12632w<V4> c12632w4, C12632w<V5> c12632w5) {
            super(true, AbstractC12521g1.C(c12632w, c12632w2, c12632w3, c12632w4, c12632w5), null);
            this.f67585e = c12632w;
            this.f67586f = c12632w2;
            this.f67587g = c12632w3;
            this.f67588h = c12632w4;
            this.f67589i = c12632w5;
        }
    }

    public static final class C1024w {

        @q3.h
        public final o f67594a;

        public C1024w(o oVar) {
            this.f67594a = oVar;
        }

        @I2.a
        @InterfaceC12618j0
        public <C extends Closeable> C a(@InterfaceC12618j0 C c10, Executor executor) {
            w2.H.E(executor);
            if (c10 != null) {
                this.f67594a.b(c10, executor);
            }
            return c10;
        }
    }

    public static final class x {

        public final AbstractC12521g1<C12632w<?>> f67595a;

        public volatile boolean f67596b;

        public x(AbstractC12521g1 abstractC12521g1, d dVar) {
            this(abstractC12521g1);
        }

        @InterfaceC12618j0
        public final <V> V c(r.e<V> eVar, o oVar) throws Exception {
            this.f67596b = true;
            o oVar2 = new o(null);
            try {
                return eVar.a(oVar2.f67553b, this);
            } finally {
                oVar.b(oVar2, C12612g0.c());
                this.f67596b = false;
            }
        }

        public final <V> F<V> d(r.d<V> dVar, o oVar) throws Exception {
            this.f67596b = true;
            o oVar2 = new o(null);
            try {
                C12632w<V> a10 = dVar.a(oVar2.f67553b, this);
                a10.i(oVar);
                return a10.f67532c;
            } finally {
                oVar.b(oVar2, C12612g0.c());
                this.f67596b = false;
            }
        }

        @InterfaceC12618j0
        public final <D> D e(C12632w<D> c12632w) throws ExecutionException {
            w2.H.g0(this.f67596b);
            w2.H.d(this.f67595a.contains(c12632w));
            return (D) Q.h(c12632w.f67532c);
        }

        public x(AbstractC12521g1<C12632w<?>> abstractC12521g1) {
            this.f67595a = (AbstractC12521g1) w2.H.E(abstractC12521g1);
        }
    }

    public enum y {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    public static final class z<V> {

        public final C12632w<? extends V> f67597a;

        public z(C12632w<? extends V> c12632w) {
            this.f67597a = (C12632w) w2.H.E(c12632w);
        }

        public void a() {
            this.f67597a.p();
        }

        @InterfaceC12618j0
        public V b() throws ExecutionException {
            return (V) Q.h(this.f67597a.f67532c);
        }
    }

    public C12632w(Z z10, d dVar) {
        this(z10);
    }

    public static <V> C12632w<V> A(m<V> mVar, Executor executor) {
        return new C12632w<>(mVar, executor);
    }

    public static r D(C12632w<?> c12632w, C12632w<?>... c12632wArr) {
        return E(M1.c(c12632w, c12632wArr));
    }

    public static r E(Iterable<? extends C12632w<?>> iterable) {
        return new r(false, iterable, null);
    }

    public static <V1, V2> s<V1, V2> F(C12632w<V1> c12632w, C12632w<V2> c12632w2) {
        return new s<>(c12632w, c12632w2, null);
    }

    public static <V1, V2, V3> t<V1, V2, V3> G(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3) {
        return new t<>(c12632w, c12632w2, c12632w3, null);
    }

    public static <V1, V2, V3, V4> u<V1, V2, V3, V4> H(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3, C12632w<V4> c12632w4) {
        return new u<>(c12632w, c12632w2, c12632w3, c12632w4, null);
    }

    public static <V1, V2, V3, V4, V5> v<V1, V2, V3, V4, V5> I(C12632w<V1> c12632w, C12632w<V2> c12632w2, C12632w<V3> c12632w3, C12632w<V4> c12632w4, C12632w<V5> c12632w5) {
        return new v<>(c12632w, c12632w2, c12632w3, c12632w4, c12632w5, null);
    }

    public static r J(C12632w<?> c12632w, C12632w<?> c12632w2, C12632w<?> c12632w3, C12632w<?> c12632w4, C12632w<?> c12632w5, C12632w<?> c12632w6, C12632w<?>... c12632wArr) {
        return K(AbstractC12556p0.A(c12632w, c12632w2, c12632w3, c12632w4, c12632w5, c12632w6).d(c12632wArr));
    }

    public static r K(Iterable<? extends C12632w<?>> iterable) {
        return new r(true, iterable, null);
    }

    public static <V, U> n<V, U> M(InterfaceC12623m<V, U> interfaceC12623m) {
        w2.H.E(interfaceC12623m);
        return new i(interfaceC12623m);
    }

    public static void q(@CheckForNull Closeable closeable, Executor executor) {
        if (closeable == null) {
            return;
        }
        try {
            executor.execute(new b(closeable));
        } catch (RejectedExecutionException e10) {
            Logger logger = f67529d;
            Level level = Level.WARNING;
            if (logger.isLoggable(level)) {
                logger.log(level, String.format("while submitting close to %s; will close inline", executor), (Throwable) e10);
            }
            q(closeable, C12612g0.c());
        }
    }

    @Deprecated
    public static <C extends Closeable> C12632w<C> t(Z<C> z10, Executor executor) {
        w2.H.E(executor);
        C12632w<C> c12632w = new C12632w<>(Q.q(z10));
        Q.a(z10, new d(executor), C12612g0.c());
        return c12632w;
    }

    public static <V> C12632w<V> w(Z<V> z10) {
        return new C12632w<>(z10);
    }

    public static <C, V extends C> void x(A<C> a10, C12632w<V> c12632w) {
        a10.a(new z<>(c12632w));
    }

    public static <V> C12632w<V> z(p<V> pVar, Executor executor) {
        return new C12632w<>(pVar, executor);
    }

    public <U> C12632w<U> B(q<? super V, U> qVar, Executor executor) {
        w2.H.E(qVar);
        return s(this.f67532c.M(new g(qVar), executor));
    }

    public <U> C12632w<U> C(n<? super V, U> nVar, Executor executor) {
        w2.H.E(nVar);
        return s(this.f67532c.M(new h(nVar), executor));
    }

    @v2.d
    public CountDownLatch L() {
        return this.f67531b.e();
    }

    public void finalize() {
        if (this.f67530a.get().equals(y.OPEN)) {
            f67529d.log(Level.SEVERE, "Uh oh! An open ClosingFuture has leaked and will close: {0}", this);
            u();
        }
    }

    public final void i(o oVar) {
        o(y.OPEN, y.SUBSUMED);
        oVar.b(this.f67531b, C12612g0.c());
    }

    @I2.a
    public boolean j(boolean z10) {
        f67529d.log(Level.FINER, "cancelling {0}", this);
        boolean cancel = this.f67532c.cancel(z10);
        if (cancel) {
            p();
        }
        return cancel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <X extends Throwable> C12632w<V> k(Class<X> cls, q<? super X, ? extends V> qVar, Executor executor) {
        return n(cls, qVar, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <X extends Throwable> C12632w<V> l(Class<X> cls, n<? super X, ? extends V> nVar, Executor executor) {
        return m(cls, nVar, executor);
    }

    public final <X extends Throwable, W extends V> C12632w<V> m(Class<X> cls, n<? super X, W> nVar, Executor executor) {
        w2.H.E(nVar);
        return (C12632w<V>) s(this.f67532c.I(cls, new k(nVar), executor));
    }

    public final <X extends Throwable, W extends V> C12632w<V> n(Class<X> cls, q<? super X, W> qVar, Executor executor) {
        w2.H.E(qVar);
        return (C12632w<V>) s(this.f67532c.I(cls, new j(qVar), executor));
    }

    public final void o(y yVar, y yVar2) {
        w2.H.B0(r(yVar, yVar2), "Expected state to be %s, but it was %s", yVar, yVar2);
    }

    public final void p() {
        f67529d.log(Level.FINER, "closing {0}", this);
        this.f67531b.close();
    }

    public final boolean r(y yVar, y yVar2) {
        return androidx.lifecycle.c.a(this.f67530a, yVar, yVar2);
    }

    public final <U> C12632w<U> s(F<U> f10) {
        C12632w<U> c12632w = new C12632w<>(f10);
        i(c12632w.f67531b);
        return c12632w;
    }

    public String toString() {
        return w2.z.c(this).f("state", this.f67530a.get()).s(this.f67532c).toString();
    }

    public F<V> u() {
        if (!r(y.OPEN, y.WILL_CLOSE)) {
            switch (c.f67536a[this.f67530a.get().ordinal()]) {
                case 1:
                    throw new IllegalStateException("Cannot call finishToFuture() after deriving another step");
                case 2:
                    throw new IllegalStateException("Cannot call finishToFuture() after calling finishToValueAndCloser()");
                case 3:
                case 4:
                case 5:
                    throw new IllegalStateException("Cannot call finishToFuture() twice");
                case 6:
                    throw new AssertionError();
            }
        }
        f67529d.log(Level.FINER, "will close {0}", this);
        this.f67532c.addListener(new l(), C12612g0.c());
        return this.f67532c;
    }

    public void v(A<? super V> a10, Executor executor) {
        w2.H.E(a10);
        if (r(y.OPEN, y.WILL_CREATE_VALUE_AND_CLOSER)) {
            this.f67532c.addListener(new RunnableC12633a(a10), executor);
            return;
        }
        int i10 = c.f67536a[this.f67530a.get().ordinal()];
        if (i10 == 1) {
            throw new IllegalStateException("Cannot call finishToValueAndCloser() after deriving another step");
        }
        if (i10 == 2) {
            throw new IllegalStateException("Cannot call finishToValueAndCloser() twice");
        }
        if (i10 != 3 && i10 != 4 && i10 != 5) {
            throw new AssertionError(this.f67530a);
        }
        throw new IllegalStateException("Cannot call finishToValueAndCloser() after calling finishToFuture()");
    }

    public Z<?> y() {
        return Q.q(this.f67532c.L(C15904v.b(null), C12612g0.c()));
    }

    public static final class o extends IdentityHashMap<Closeable, Executor> implements Closeable {

        public final C1024w f67553b;

        public volatile boolean f67554c;

        @CheckForNull
        public volatile CountDownLatch f67555d;

        public o() {
            this.f67553b = new C1024w(this);
        }

        public void b(@CheckForNull Closeable closeable, Executor executor) {
            w2.H.E(executor);
            if (closeable == null) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f67554c) {
                        C12632w.q(closeable, executor);
                    } else {
                        put(closeable, executor);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public <V, U> F<U> c(n<V, U> nVar, @InterfaceC12618j0 V v10) throws Exception {
            o oVar = new o();
            try {
                C12632w<U> a10 = nVar.a(oVar.f67553b, v10);
                a10.i(oVar);
                return a10.f67532c;
            } finally {
                b(oVar, C12612g0.c());
            }
        }

        @Override
        public void close() {
            if (this.f67554c) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f67554c) {
                        return;
                    }
                    this.f67554c = true;
                    for (Map.Entry<Closeable, Executor> entry : entrySet()) {
                        C12632w.q(entry.getKey(), entry.getValue());
                    }
                    clear();
                    if (this.f67555d != null) {
                        this.f67555d.countDown();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <V, U> Z<U> d(q<? super V, U> qVar, @InterfaceC12618j0 V v10) throws Exception {
            o oVar = new o();
            try {
                return Q.m(qVar.a(oVar.f67553b, v10));
            } finally {
                b(oVar, C12612g0.c());
            }
        }

        public CountDownLatch e() {
            if (this.f67554c) {
                return new CountDownLatch(0);
            }
            synchronized (this) {
                try {
                    if (this.f67554c) {
                        return new CountDownLatch(0);
                    }
                    w2.H.g0(this.f67555d == null);
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    this.f67555d = countDownLatch;
                    return countDownLatch;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public o(d dVar) {
            this();
        }
    }

    public C12632w(Z<V> z10) {
        this.f67530a = new AtomicReference<>(y.OPEN);
        this.f67531b = new o(null);
        this.f67532c = F.K(z10);
    }

    public C12632w(p<V> pVar, Executor executor) {
        this.f67530a = new AtomicReference<>(y.OPEN);
        this.f67531b = new o(null);
        w2.H.E(pVar);
        F0 Q10 = F0.Q(new e(pVar));
        executor.execute(Q10);
        this.f67532c = Q10;
    }

    public C12632w(m<V> mVar, Executor executor) {
        this.f67530a = new AtomicReference<>(y.OPEN);
        this.f67531b = new o(null);
        w2.H.E(mVar);
        F0 O10 = F0.O(new f(mVar));
        executor.execute(O10);
        this.f67532c = O10;
    }
}
