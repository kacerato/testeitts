package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2735o0<T, K, V> extends AbstractC2692a<T, Ee.b<K, V>> {

    public final Fe.o<? super T, ? extends K> f13007d;

    public final Fe.o<? super T, ? extends V> f13008e;

    public final int f13009f;

    public final boolean f13010g;

    public final Fe.o<? super Fe.g<Object>, ? extends Map<K, Object>> f13011h;

    public static final class a<K, V> implements Fe.g<c<K, V>> {

        public final Queue<c<K, V>> f13012b;

        public a(Queue<c<K, V>> queue) {
            this.f13012b = queue;
        }

        @Override
        public void accept(c<K, V> cVar) {
            this.f13012b.offer(cVar);
        }
    }

    public static final class b<T, K, V> extends Ue.c<Ee.b<K, V>> implements InterfaceC2367q<T> {

        public static final long f13013s = -3688291656102519502L;

        public static final Object f13014t = new Object();

        public final hn.c<? super Ee.b<K, V>> f13015c;

        public final Fe.o<? super T, ? extends K> f13016d;

        public final Fe.o<? super T, ? extends V> f13017e;

        public final int f13018f;

        public final boolean f13019g;

        public final Map<Object, c<K, V>> f13020h;

        public final Re.c<Ee.b<K, V>> f13021i;

        public final Queue<c<K, V>> f13022j;

        public hn.d f13023k;

        public final AtomicBoolean f13024l = new AtomicBoolean();

        public final AtomicLong f13025m = new AtomicLong();

        public final AtomicInteger f13026n = new AtomicInteger(1);

        public Throwable f13027o;

        public volatile boolean f13028p;

        public boolean f13029q;

        public boolean f13030r;

        public b(hn.c<? super Ee.b<K, V>> cVar, Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, int i10, boolean z10, Map<Object, c<K, V>> map, Queue<c<K, V>> queue) {
            this.f13015c = cVar;
            this.f13016d = oVar;
            this.f13017e = oVar2;
            this.f13018f = i10;
            this.f13019g = z10;
            this.f13020h = map;
            this.f13022j = queue;
            this.f13021i = new Re.c<>(i10);
        }

        @Override
        public void a() {
            if (this.f13029q) {
                return;
            }
            Iterator<c<K, V>> it = this.f13020h.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f13020h.clear();
            Queue<c<K, V>> queue = this.f13022j;
            if (queue != null) {
                queue.clear();
            }
            this.f13029q = true;
            this.f13028p = true;
            f();
        }

        @Override
        public void cancel() {
            if (this.f13024l.compareAndSet(false, true)) {
                p();
                if (this.f13026n.decrementAndGet() == 0) {
                    this.f13023k.cancel();
                }
            }
        }

        @Override
        public void clear() {
            this.f13021i.clear();
        }

        public void d(K k10) {
            if (k10 == null) {
                k10 = (K) f13014t;
            }
            this.f13020h.remove(k10);
            if (this.f13026n.decrementAndGet() == 0) {
                this.f13023k.cancel();
                if (getAndIncrement() == 0) {
                    this.f13021i.clear();
                }
            }
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f13030r) {
                q();
            } else {
                v();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void h(T t10) {
            boolean z10;
            c cVar;
            if (this.f13029q) {
                return;
            }
            Re.c<Ee.b<K, V>> cVar2 = this.f13021i;
            try {
                K apply = this.f13016d.apply(t10);
                Object obj = apply != null ? apply : f13014t;
                c<K, V> cVar3 = this.f13020h.get(obj);
                if (cVar3 != null) {
                    z10 = false;
                    cVar = cVar3;
                } else {
                    if (this.f13024l.get()) {
                        return;
                    }
                    c P82 = c.P8(apply, this.f13018f, this, this.f13019g);
                    this.f13020h.put(obj, P82);
                    this.f13026n.getAndIncrement();
                    z10 = true;
                    cVar = P82;
                }
                try {
                    cVar.h(He.b.g(this.f13017e.apply(t10), "The valueSelector returned null"));
                    p();
                    if (z10) {
                        cVar2.offer(cVar);
                        f();
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f13023k.cancel();
                    onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f13023k.cancel();
                onError(th3);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13025m, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f13021i.isEmpty();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13023k, dVar)) {
                this.f13023k = dVar;
                this.f13015c.j(this);
                dVar.i(this.f13018f);
            }
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f13030r = true;
            return 2;
        }

        public boolean n(boolean z10, boolean z11, hn.c<?> cVar, Re.c<?> cVar2) {
            if (this.f13024l.get()) {
                cVar2.clear();
                return true;
            }
            if (this.f13019g) {
                if (!z10 || !z11) {
                    return false;
                }
                Throwable th2 = this.f13027o;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                return true;
            }
            if (!z10) {
                return false;
            }
            Throwable th3 = this.f13027o;
            if (th3 != null) {
                cVar2.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.a();
            return true;
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13029q) {
                Ye.a.Y(th2);
                return;
            }
            this.f13029q = true;
            Iterator<c<K, V>> it = this.f13020h.values().iterator();
            while (it.hasNext()) {
                it.next().onError(th2);
            }
            this.f13020h.clear();
            Queue<c<K, V>> queue = this.f13022j;
            if (queue != null) {
                queue.clear();
            }
            this.f13027o = th2;
            this.f13028p = true;
            f();
        }

        public final void p() {
            if (this.f13022j != null) {
                int i10 = 0;
                while (true) {
                    c<K, V> poll = this.f13022j.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.a();
                    i10++;
                }
                if (i10 != 0) {
                    this.f13026n.addAndGet(-i10);
                }
            }
        }

        public void q() {
            Throwable th2;
            Re.c<Ee.b<K, V>> cVar = this.f13021i;
            hn.c<? super Ee.b<K, V>> cVar2 = this.f13015c;
            int i10 = 1;
            while (!this.f13024l.get()) {
                boolean z10 = this.f13028p;
                if (z10 && !this.f13019g && (th2 = this.f13027o) != null) {
                    cVar.clear();
                    cVar2.onError(th2);
                    return;
                }
                cVar2.h(null);
                if (z10) {
                    Throwable th3 = this.f13027o;
                    if (th3 != null) {
                        cVar2.onError(th3);
                        return;
                    } else {
                        cVar2.a();
                        return;
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
            cVar.clear();
        }

        public void v() {
            Re.c<Ee.b<K, V>> cVar = this.f13021i;
            hn.c<? super Ee.b<K, V>> cVar2 = this.f13015c;
            int i10 = 1;
            do {
                long j10 = this.f13025m.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z10 = this.f13028p;
                    Ee.b<K, V> poll = cVar.poll();
                    boolean z11 = poll == null;
                    if (n(z10, z11, cVar2, cVar)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    cVar2.h(poll);
                    j11++;
                }
                if (j11 == j10 && n(this.f13028p, cVar.isEmpty(), cVar2, cVar)) {
                    return;
                }
                if (j11 != 0) {
                    if (j10 != Long.MAX_VALUE) {
                        this.f13025m.addAndGet(-j11);
                    }
                    this.f13023k.i(j11);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        @Ce.g
        public Ee.b<K, V> poll() {
            return this.f13021i.poll();
        }
    }

    public static final class c<K, T> extends Ee.b<K, T> {

        public final d<T, K> f13031d;

        public c(K k10, d<T, K> dVar) {
            super(k10);
            this.f13031d = dVar;
        }

        public static <T, K> c<K, T> P8(K k10, int i10, b<?, K, T> bVar, boolean z10) {
            return new c<>(k10, new d(i10, bVar, k10, z10));
        }

        public void a() {
            this.f13031d.a();
        }

        public void h(T t10) {
            this.f13031d.h(t10);
        }

        @Override
        public void m6(hn.c<? super T> cVar) {
            this.f13031d.l(cVar);
        }

        public void onError(Throwable th2) {
            this.f13031d.onError(th2);
        }
    }

    public static final class d<T, K> extends Ue.c<T> implements hn.b<T> {

        public static final long f13032o = -3852313036005250360L;

        public final K f13033c;

        public final Re.c<T> f13034d;

        public final b<?, K, T> f13035e;

        public final boolean f13036f;

        public volatile boolean f13038h;

        public Throwable f13039i;

        public boolean f13043m;

        public int f13044n;

        public final AtomicLong f13037g = new AtomicLong();

        public final AtomicBoolean f13040j = new AtomicBoolean();

        public final AtomicReference<hn.c<? super T>> f13041k = new AtomicReference<>();

        public final AtomicBoolean f13042l = new AtomicBoolean();

        public d(int i10, b<?, K, T> bVar, K k10, boolean z10) {
            this.f13034d = new Re.c<>(i10);
            this.f13035e = bVar;
            this.f13033c = k10;
            this.f13036f = z10;
        }

        public void a() {
            this.f13038h = true;
            f();
        }

        @Override
        public void cancel() {
            if (this.f13040j.compareAndSet(false, true)) {
                this.f13035e.d(this.f13033c);
            }
        }

        @Override
        public void clear() {
            this.f13034d.clear();
        }

        public boolean d(boolean z10, boolean z11, hn.c<? super T> cVar, boolean z12) {
            if (this.f13040j.get()) {
                this.f13034d.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (z12) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.f13039i;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                return true;
            }
            Throwable th3 = this.f13039i;
            if (th3 != null) {
                this.f13034d.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.a();
            return true;
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f13043m) {
                n();
            } else {
                p();
            }
        }

        public void h(T t10) {
            this.f13034d.offer(t10);
            f();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13037g, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f13034d.isEmpty();
        }

        @Override
        public void l(hn.c<? super T> cVar) {
            if (!this.f13042l.compareAndSet(false, true)) {
                Ue.g.b(new IllegalStateException("Only one Subscriber allowed!"), cVar);
                return;
            }
            cVar.j(this);
            this.f13041k.lazySet(cVar);
            f();
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f13043m = true;
            return 2;
        }

        public void n() {
            Throwable th2;
            Re.c<T> cVar = this.f13034d;
            hn.c<? super T> cVar2 = this.f13041k.get();
            int i10 = 1;
            while (true) {
                if (cVar2 != null) {
                    if (this.f13040j.get()) {
                        cVar.clear();
                        return;
                    }
                    boolean z10 = this.f13038h;
                    if (z10 && !this.f13036f && (th2 = this.f13039i) != null) {
                        cVar.clear();
                        cVar2.onError(th2);
                        return;
                    }
                    cVar2.h(null);
                    if (z10) {
                        Throwable th3 = this.f13039i;
                        if (th3 != null) {
                            cVar2.onError(th3);
                            return;
                        } else {
                            cVar2.a();
                            return;
                        }
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (cVar2 == null) {
                    cVar2 = this.f13041k.get();
                }
            }
        }

        public void onError(Throwable th2) {
            this.f13039i = th2;
            this.f13038h = true;
            f();
        }

        public void p() {
            Re.c<T> cVar = this.f13034d;
            boolean z10 = this.f13036f;
            hn.c<? super T> cVar2 = this.f13041k.get();
            int i10 = 1;
            while (true) {
                if (cVar2 != null) {
                    long j10 = this.f13037g.get();
                    long j11 = 0;
                    while (j11 != j10) {
                        boolean z11 = this.f13038h;
                        T poll = cVar.poll();
                        boolean z12 = poll == null;
                        if (d(z11, z12, cVar2, z10)) {
                            return;
                        }
                        if (z12) {
                            break;
                        }
                        cVar2.h(poll);
                        j11++;
                    }
                    if (j11 == j10 && d(this.f13038h, cVar.isEmpty(), cVar2, z10)) {
                        return;
                    }
                    if (j11 != 0) {
                        if (j10 != Long.MAX_VALUE) {
                            this.f13037g.addAndGet(-j11);
                        }
                        this.f13035e.f13023k.i(j11);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (cVar2 == null) {
                    cVar2 = this.f13041k.get();
                }
            }
        }

        @Override
        @Ce.g
        public T poll() {
            T poll = this.f13034d.poll();
            if (poll != null) {
                this.f13044n++;
                return poll;
            }
            int i10 = this.f13044n;
            if (i10 == 0) {
                return null;
            }
            this.f13044n = 0;
            this.f13035e.f13023k.i(i10);
            return null;
        }
    }

    public C2735o0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, int i10, boolean z10, Fe.o<? super Fe.g<Object>, ? extends Map<K, Object>> oVar3) {
        super(abstractC2362l);
        this.f13007d = oVar;
        this.f13008e = oVar2;
        this.f13009f = i10;
        this.f13010g = z10;
        this.f13011h = oVar3;
    }

    @Override
    public void m6(hn.c<? super Ee.b<K, V>> cVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map<K, Object> apply;
        try {
            if (this.f13011h == null) {
                apply = new ConcurrentHashMap<>();
                concurrentLinkedQueue = null;
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                apply = this.f13011h.apply(new a(concurrentLinkedQueue));
            }
            this.f12507c.l6(new b(cVar, this.f13007d, this.f13008e, this.f13009f, this.f13010g, apply, concurrentLinkedQueue));
        } catch (Exception e10) {
            io.reactivex.exceptions.a.b(e10);
            cVar.j(io.reactivex.internal.util.h.INSTANCE);
            cVar.onError(e10);
        }
    }
}
