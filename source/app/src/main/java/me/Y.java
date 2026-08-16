package Me;

import Be.AbstractC2362l;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class Y<T> extends AbstractC2362l<T> {

    public final Be.y<? extends T>[] f14958c;

    public static final class a<T> extends ConcurrentLinkedQueue<T> implements d<T> {

        public static final long f14959d = -4025173261791142821L;

        public int f14960b;

        public final AtomicInteger f14961c = new AtomicInteger();

        @Override
        public void k() {
            poll();
        }

        @Override
        public boolean o(T t10, T t11) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean offer(T t10) {
            this.f14961c.getAndIncrement();
            return super.offer(t10);
        }

        @Override
        @Ce.g
        public T poll() {
            T t10 = (T) super.poll();
            if (t10 != null) {
                this.f14960b++;
            }
            return t10;
        }

        @Override
        public int r() {
            return this.f14960b;
        }

        @Override
        public int s() {
            return this.f14961c.get();
        }
    }

    public static final class b<T> extends Ue.c<T> implements Be.v<T> {

        public static final long f14962l = -660395290758764731L;

        public final hn.c<? super T> f14963c;

        public final d<Object> f14966f;

        public final int f14968h;

        public volatile boolean f14969i;

        public boolean f14970j;

        public long f14971k;

        public final De.b f14964d = new De.b();

        public final AtomicLong f14965e = new AtomicLong();

        public final io.reactivex.internal.util.c f14967g = new io.reactivex.internal.util.c();

        public b(hn.c<? super T> cVar, int i10, d<Object> dVar) {
            this.f14963c = cVar;
            this.f14968h = i10;
            this.f14966f = dVar;
        }

        @Override
        public void a() {
            this.f14966f.offer(io.reactivex.internal.util.p.COMPLETE);
            f();
        }

        @Override
        public void b(T t10) {
            this.f14966f.offer(t10);
            f();
        }

        @Override
        public void cancel() {
            if (this.f14969i) {
                return;
            }
            this.f14969i = true;
            this.f14964d.dispose();
            if (getAndIncrement() == 0) {
                this.f14966f.clear();
            }
        }

        @Override
        public void clear() {
            this.f14966f.clear();
        }

        public void d() {
            hn.c<? super T> cVar = this.f14963c;
            d<Object> dVar = this.f14966f;
            int i10 = 1;
            while (!this.f14969i) {
                Throwable th2 = this.f14967g.get();
                if (th2 != null) {
                    dVar.clear();
                    cVar.onError(th2);
                    return;
                }
                boolean z10 = dVar.s() == this.f14968h;
                if (!dVar.isEmpty()) {
                    cVar.h(null);
                }
                if (z10) {
                    cVar.a();
                    return;
                } else {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
            dVar.clear();
        }

        @Override
        public void e(De.c cVar) {
            this.f14964d.a(cVar);
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f14970j) {
                d();
            } else {
                n();
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f14965e, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f14966f.isEmpty();
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f14970j = true;
            return 2;
        }

        public void n() {
            hn.c<? super T> cVar = this.f14963c;
            d<Object> dVar = this.f14966f;
            long j10 = this.f14971k;
            int i10 = 1;
            do {
                long j11 = this.f14965e.get();
                while (j10 != j11) {
                    if (this.f14969i) {
                        dVar.clear();
                        return;
                    }
                    if (this.f14967g.get() != null) {
                        dVar.clear();
                        cVar.onError(this.f14967g.c());
                        return;
                    } else {
                        if (dVar.r() == this.f14968h) {
                            cVar.a();
                            return;
                        }
                        Object poll = dVar.poll();
                        if (poll == null) {
                            break;
                        } else if (poll != io.reactivex.internal.util.p.COMPLETE) {
                            cVar.h(poll);
                            j10++;
                        }
                    }
                }
                if (j10 == j11) {
                    if (this.f14967g.get() != null) {
                        dVar.clear();
                        cVar.onError(this.f14967g.c());
                        return;
                    } else {
                        while (dVar.peek() == io.reactivex.internal.util.p.COMPLETE) {
                            dVar.k();
                        }
                        if (dVar.r() == this.f14968h) {
                            cVar.a();
                            return;
                        }
                    }
                }
                this.f14971k = j10;
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f14967g.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            this.f14964d.dispose();
            this.f14966f.offer(io.reactivex.internal.util.p.COMPLETE);
            f();
        }

        public boolean p() {
            return this.f14969i;
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T t10;
            do {
                t10 = (T) this.f14966f.poll();
            } while (t10 == io.reactivex.internal.util.p.COMPLETE);
            return t10;
        }
    }

    public static final class c<T> extends AtomicReferenceArray<T> implements d<T> {

        public static final long f14972d = -7969063454040569579L;

        public final AtomicInteger f14973b;

        public int f14974c;

        public c(int i10) {
            super(i10);
            this.f14973b = new AtomicInteger();
        }

        @Override
        public void clear() {
            while (poll() != null && !isEmpty()) {
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f14974c == s();
        }

        @Override
        public void k() {
            int i10 = this.f14974c;
            lazySet(i10, null);
            this.f14974c = i10 + 1;
        }

        @Override
        public boolean o(T t10, T t11) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean offer(T t10) {
            He.b.g(t10, "value is null");
            int andIncrement = this.f14973b.getAndIncrement();
            if (andIncrement >= length()) {
                return false;
            }
            lazySet(andIncrement, t10);
            return true;
        }

        @Override
        public T peek() {
            int i10 = this.f14974c;
            if (i10 == length()) {
                return null;
            }
            return get(i10);
        }

        @Override
        @Ce.g
        public T poll() {
            int i10 = this.f14974c;
            if (i10 == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f14973b;
            do {
                T t10 = get(i10);
                if (t10 != null) {
                    this.f14974c = i10 + 1;
                    lazySet(i10, null);
                    return t10;
                }
            } while (atomicInteger.get() != i10);
            return null;
        }

        @Override
        public int r() {
            return this.f14974c;
        }

        @Override
        public int s() {
            return this.f14973b.get();
        }
    }

    public interface d<T> extends Ie.o<T> {
        void k();

        T peek();

        @Override
        @Ce.g
        T poll();

        int r();

        int s();
    }

    public Y(Be.y<? extends T>[] yVarArr) {
        this.f14958c = yVarArr;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Be.y[] yVarArr = this.f14958c;
        int length = yVarArr.length;
        b bVar = new b(cVar, length, length <= AbstractC2362l.a0() ? new c(length) : new a());
        cVar.j(bVar);
        io.reactivex.internal.util.c cVar2 = bVar.f14967g;
        for (Be.y yVar : yVarArr) {
            if (bVar.p() || cVar2.get() != null) {
                return;
            }
            yVar.d(bVar);
        }
    }
}
