package Oe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2890k0<T, K, V> extends AbstractC2859a<T, Ve.b<K, V>> {

    public final Fe.o<? super T, ? extends K> f19564c;

    public final Fe.o<? super T, ? extends V> f19565d;

    public final int f19566e;

    public final boolean f19567f;

    public static final class a<T, K, V> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19568j = -3688291656102519502L;

        public static final Object f19569k = new Object();

        public final Be.I<? super Ve.b<K, V>> f19570b;

        public final Fe.o<? super T, ? extends K> f19571c;

        public final Fe.o<? super T, ? extends V> f19572d;

        public final int f19573e;

        public final boolean f19574f;

        public De.c f19576h;

        public final AtomicBoolean f19577i = new AtomicBoolean();

        public final Map<Object, b<K, V>> f19575g = new ConcurrentHashMap();

        public a(Be.I<? super Ve.b<K, V>> i10, Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, int i11, boolean z10) {
            this.f19570b = i10;
            this.f19571c = oVar;
            this.f19572d = oVar2;
            this.f19573e = i11;
            this.f19574f = z10;
            lazySet(1);
        }

        @Override
        public void a() {
            ArrayList arrayList = new ArrayList(this.f19575g.values());
            this.f19575g.clear();
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
            this.f19570b.a();
        }

        public void b(K k10) {
            if (k10 == null) {
                k10 = (K) f19569k;
            }
            this.f19575g.remove(k10);
            if (decrementAndGet() == 0) {
                this.f19576h.dispose();
            }
        }

        @Override
        public boolean d() {
            return this.f19577i.get();
        }

        @Override
        public void dispose() {
            if (this.f19577i.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f19576h.dispose();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19576h, cVar)) {
                this.f19576h = cVar;
                this.f19570b.e(this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Map<java.lang.Object, Oe.k0$b<K, V>>, java.util.Map] */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v3, types: [Oe.k0$b] */
        @Override
        public void h(T t10) {
            try {
                K apply = this.f19571c.apply(t10);
                Object obj = apply != null ? apply : f19569k;
                b<K, V> bVar = this.f19575g.get(obj);
                ?? r22 = bVar;
                if (bVar == false) {
                    if (this.f19577i.get()) {
                        return;
                    }
                    Object k82 = b.k8(apply, this.f19573e, this, this.f19574f);
                    this.f19575g.put(obj, k82);
                    getAndIncrement();
                    this.f19570b.h(k82);
                    r22 = k82;
                }
                try {
                    r22.h(He.b.g(this.f19572d.apply(t10), "The value supplied is null"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f19576h.dispose();
                    onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f19576h.dispose();
                onError(th3);
            }
        }

        @Override
        public void onError(Throwable th2) {
            ArrayList arrayList = new ArrayList(this.f19575g.values());
            this.f19575g.clear();
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                ((b) it.next()).onError(th2);
            }
            this.f19570b.onError(th2);
        }
    }

    public static final class b<K, T> extends Ve.b<K, T> {

        public final c<T, K> f19578c;

        public b(K k10, c<T, K> cVar) {
            super(k10);
            this.f19578c = cVar;
        }

        public static <T, K> b<K, T> k8(K k10, int i10, a<?, K, T> aVar, boolean z10) {
            return new b<>(k10, new c(i10, aVar, k10, z10));
        }

        @Override
        public void J5(Be.I<? super T> i10) {
            this.f19578c.c(i10);
        }

        public void a() {
            this.f19578c.e();
        }

        public void h(T t10) {
            this.f19578c.g(t10);
        }

        public void onError(Throwable th2) {
            this.f19578c.f(th2);
        }
    }

    public static final class c<T, K> extends AtomicInteger implements De.c, Be.G<T> {

        public static final long f19579k = -3852313036005250360L;

        public final K f19580b;

        public final Re.c<T> f19581c;

        public final a<?, K, T> f19582d;

        public final boolean f19583e;

        public volatile boolean f19584f;

        public Throwable f19585g;

        public final AtomicBoolean f19586h = new AtomicBoolean();

        public final AtomicBoolean f19587i = new AtomicBoolean();

        public final AtomicReference<Be.I<? super T>> f19588j = new AtomicReference<>();

        public c(int i10, a<?, K, T> aVar, K k10, boolean z10) {
            this.f19581c = new Re.c<>(i10);
            this.f19582d = aVar;
            this.f19580b = k10;
            this.f19583e = z10;
        }

        public boolean a(boolean z10, boolean z11, Be.I<? super T> i10, boolean z12) {
            if (this.f19586h.get()) {
                this.f19581c.clear();
                this.f19582d.b(this.f19580b);
                this.f19588j.lazySet(null);
                return true;
            }
            if (!z10) {
                return false;
            }
            if (z12) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.f19585g;
                this.f19588j.lazySet(null);
                if (th2 != null) {
                    i10.onError(th2);
                } else {
                    i10.a();
                }
                return true;
            }
            Throwable th3 = this.f19585g;
            if (th3 != null) {
                this.f19581c.clear();
                this.f19588j.lazySet(null);
                i10.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            this.f19588j.lazySet(null);
            i10.a();
            return true;
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<T> cVar = this.f19581c;
            boolean z10 = this.f19583e;
            Be.I<? super T> i10 = this.f19588j.get();
            int i11 = 1;
            while (true) {
                if (i10 != null) {
                    while (true) {
                        boolean z11 = this.f19584f;
                        T poll = cVar.poll();
                        boolean z12 = poll == null;
                        if (a(z11, z12, i10, z10)) {
                            return;
                        }
                        if (z12) {
                            break;
                        } else {
                            i10.h(poll);
                        }
                    }
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
                if (i10 == null) {
                    i10 = this.f19588j.get();
                }
            }
        }

        @Override
        public void c(Be.I<? super T> i10) {
            if (!this.f19587i.compareAndSet(false, true)) {
                Ge.e.h(new IllegalStateException("Only one Observer allowed!"), i10);
                return;
            }
            i10.e(this);
            this.f19588j.lazySet(i10);
            if (this.f19586h.get()) {
                this.f19588j.lazySet(null);
            } else {
                b();
            }
        }

        @Override
        public boolean d() {
            return this.f19586h.get();
        }

        @Override
        public void dispose() {
            if (this.f19586h.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f19588j.lazySet(null);
                this.f19582d.b(this.f19580b);
            }
        }

        public void e() {
            this.f19584f = true;
            b();
        }

        public void f(Throwable th2) {
            this.f19585g = th2;
            this.f19584f = true;
            b();
        }

        public void g(T t10) {
            this.f19581c.offer(t10);
            b();
        }
    }

    public C2890k0(Be.G<T> g10, Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, int i10, boolean z10) {
        super(g10);
        this.f19564c = oVar;
        this.f19565d = oVar2;
        this.f19566e = i10;
        this.f19567f = z10;
    }

    @Override
    public void J5(Be.I<? super Ve.b<K, V>> i10) {
        this.f19344b.c(new a(i10, this.f19564c, this.f19565d, this.f19566e, this.f19567f));
    }
}
