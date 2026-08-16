package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class T1<T> extends AbstractC2692a<T, AbstractC2362l<T>> {

    public final long f12271d;

    public final long f12272e;

    public final int f12273f;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12274i = -2365647875069161133L;

        public final hn.c<? super AbstractC2362l<T>> f12275b;

        public final long f12276c;

        public final AtomicBoolean f12277d;

        public final int f12278e;

        public long f12279f;

        public hn.d f12280g;

        public Ze.h<T> f12281h;

        public a(hn.c<? super AbstractC2362l<T>> cVar, long j10, int i10) {
            super(1);
            this.f12275b = cVar;
            this.f12276c = j10;
            this.f12277d = new AtomicBoolean();
            this.f12278e = i10;
        }

        @Override
        public void a() {
            Ze.h<T> hVar = this.f12281h;
            if (hVar != null) {
                this.f12281h = null;
                hVar.a();
            }
            this.f12275b.a();
        }

        @Override
        public void cancel() {
            if (this.f12277d.compareAndSet(false, true)) {
                run();
            }
        }

        @Override
        public void h(T t10) {
            long j10 = this.f12279f;
            Ze.h<T> hVar = this.f12281h;
            if (j10 == 0) {
                getAndIncrement();
                hVar = Ze.h.W8(this.f12278e, this);
                this.f12281h = hVar;
                this.f12275b.h(hVar);
            }
            long j11 = j10 + 1;
            hVar.h(t10);
            if (j11 != this.f12276c) {
                this.f12279f = j11;
                return;
            }
            this.f12279f = 0L;
            this.f12281h = null;
            hVar.a();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                this.f12280g.i(io.reactivex.internal.util.d.d(this.f12276c, j10));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12280g, dVar)) {
                this.f12280g = dVar;
                this.f12275b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ze.h<T> hVar = this.f12281h;
            if (hVar != null) {
                this.f12281h = null;
                hVar.onError(th2);
            }
            this.f12275b.onError(th2);
        }

        @Override
        public void run() {
            if (decrementAndGet() == 0) {
                this.f12280g.cancel();
            }
        }
    }

    public static final class b<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12282r = 2428527070996323976L;

        public final hn.c<? super AbstractC2362l<T>> f12283b;

        public final Re.c<Ze.h<T>> f12284c;

        public final long f12285d;

        public final long f12286e;

        public final ArrayDeque<Ze.h<T>> f12287f;

        public final AtomicBoolean f12288g;

        public final AtomicBoolean f12289h;

        public final AtomicLong f12290i;

        public final AtomicInteger f12291j;

        public final int f12292k;

        public long f12293l;

        public long f12294m;

        public hn.d f12295n;

        public volatile boolean f12296o;

        public Throwable f12297p;

        public volatile boolean f12298q;

        public b(hn.c<? super AbstractC2362l<T>> cVar, long j10, long j11, int i10) {
            super(1);
            this.f12283b = cVar;
            this.f12285d = j10;
            this.f12286e = j11;
            this.f12284c = new Re.c<>(i10);
            this.f12287f = new ArrayDeque<>();
            this.f12288g = new AtomicBoolean();
            this.f12289h = new AtomicBoolean();
            this.f12290i = new AtomicLong();
            this.f12291j = new AtomicInteger();
            this.f12292k = i10;
        }

        @Override
        public void a() {
            if (this.f12296o) {
                return;
            }
            Iterator<Ze.h<T>> it = this.f12287f.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f12287f.clear();
            this.f12296o = true;
            c();
        }

        public boolean b(boolean z10, boolean z11, hn.c<?> cVar, Re.c<?> cVar2) {
            if (this.f12298q) {
                cVar2.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            Throwable th2 = this.f12297p;
            if (th2 != null) {
                cVar2.clear();
                cVar.onError(th2);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.a();
            return true;
        }

        public void c() {
            if (this.f12291j.getAndIncrement() != 0) {
                return;
            }
            hn.c<? super AbstractC2362l<T>> cVar = this.f12283b;
            Re.c<Ze.h<T>> cVar2 = this.f12284c;
            int i10 = 1;
            do {
                long j10 = this.f12290i.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z10 = this.f12296o;
                    Ze.h<T> poll = cVar2.poll();
                    boolean z11 = poll == null;
                    if (b(z10, z11, cVar, cVar2)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(poll);
                    j11++;
                }
                if (j11 == j10 && b(this.f12296o, cVar2.isEmpty(), cVar, cVar2)) {
                    return;
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f12290i.addAndGet(-j11);
                }
                i10 = this.f12291j.addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void cancel() {
            this.f12298q = true;
            if (this.f12288g.compareAndSet(false, true)) {
                run();
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12296o) {
                return;
            }
            long j10 = this.f12293l;
            if (j10 == 0 && !this.f12298q) {
                getAndIncrement();
                Ze.h<T> W82 = Ze.h.W8(this.f12292k, this);
                this.f12287f.offer(W82);
                this.f12284c.offer(W82);
                c();
            }
            long j11 = j10 + 1;
            Iterator<Ze.h<T>> it = this.f12287f.iterator();
            while (it.hasNext()) {
                it.next().h(t10);
            }
            long j12 = this.f12294m + 1;
            if (j12 == this.f12285d) {
                this.f12294m = j12 - this.f12286e;
                Ze.h<T> poll = this.f12287f.poll();
                if (poll != null) {
                    poll.a();
                }
            } else {
                this.f12294m = j12;
            }
            if (j11 == this.f12286e) {
                this.f12293l = 0L;
            } else {
                this.f12293l = j11;
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12290i, j10);
                if (this.f12289h.get() || !this.f12289h.compareAndSet(false, true)) {
                    this.f12295n.i(io.reactivex.internal.util.d.d(this.f12286e, j10));
                } else {
                    this.f12295n.i(io.reactivex.internal.util.d.c(this.f12285d, io.reactivex.internal.util.d.d(this.f12286e, j10 - 1)));
                }
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12295n, dVar)) {
                this.f12295n = dVar;
                this.f12283b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12296o) {
                Ye.a.Y(th2);
                return;
            }
            Iterator<Ze.h<T>> it = this.f12287f.iterator();
            while (it.hasNext()) {
                it.next().onError(th2);
            }
            this.f12287f.clear();
            this.f12297p = th2;
            this.f12296o = true;
            c();
        }

        @Override
        public void run() {
            if (decrementAndGet() == 0) {
                this.f12295n.cancel();
            }
        }
    }

    public static final class c<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12299k = -8792836352386833856L;

        public final hn.c<? super AbstractC2362l<T>> f12300b;

        public final long f12301c;

        public final long f12302d;

        public final AtomicBoolean f12303e;

        public final AtomicBoolean f12304f;

        public final int f12305g;

        public long f12306h;

        public hn.d f12307i;

        public Ze.h<T> f12308j;

        public c(hn.c<? super AbstractC2362l<T>> cVar, long j10, long j11, int i10) {
            super(1);
            this.f12300b = cVar;
            this.f12301c = j10;
            this.f12302d = j11;
            this.f12303e = new AtomicBoolean();
            this.f12304f = new AtomicBoolean();
            this.f12305g = i10;
        }

        @Override
        public void a() {
            Ze.h<T> hVar = this.f12308j;
            if (hVar != null) {
                this.f12308j = null;
                hVar.a();
            }
            this.f12300b.a();
        }

        @Override
        public void cancel() {
            if (this.f12303e.compareAndSet(false, true)) {
                run();
            }
        }

        @Override
        public void h(T t10) {
            long j10 = this.f12306h;
            Ze.h<T> hVar = this.f12308j;
            if (j10 == 0) {
                getAndIncrement();
                hVar = Ze.h.W8(this.f12305g, this);
                this.f12308j = hVar;
                this.f12300b.h(hVar);
            }
            long j11 = j10 + 1;
            if (hVar != null) {
                hVar.h(t10);
            }
            if (j11 == this.f12301c) {
                this.f12308j = null;
                hVar.a();
            }
            if (j11 == this.f12302d) {
                this.f12306h = 0L;
            } else {
                this.f12306h = j11;
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                if (this.f12304f.get() || !this.f12304f.compareAndSet(false, true)) {
                    this.f12307i.i(io.reactivex.internal.util.d.d(this.f12302d, j10));
                } else {
                    this.f12307i.i(io.reactivex.internal.util.d.c(io.reactivex.internal.util.d.d(this.f12301c, j10), io.reactivex.internal.util.d.d(this.f12302d - this.f12301c, j10 - 1)));
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12307i, dVar)) {
                this.f12307i = dVar;
                this.f12300b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ze.h<T> hVar = this.f12308j;
            if (hVar != null) {
                this.f12308j = null;
                hVar.onError(th2);
            }
            this.f12300b.onError(th2);
        }

        @Override
        public void run() {
            if (decrementAndGet() == 0) {
                this.f12307i.cancel();
            }
        }
    }

    public T1(AbstractC2362l<T> abstractC2362l, long j10, long j11, int i10) {
        super(abstractC2362l);
        this.f12271d = j10;
        this.f12272e = j11;
        this.f12273f = i10;
    }

    @Override
    public void m6(hn.c<? super AbstractC2362l<T>> cVar) {
        long j10 = this.f12272e;
        long j11 = this.f12271d;
        if (j10 == j11) {
            this.f12507c.l6(new a(cVar, this.f12271d, this.f12273f));
        } else if (j10 > j11) {
            this.f12507c.l6(new c(cVar, this.f12271d, this.f12272e, this.f12273f));
        } else {
            this.f12507c.l6(new b(cVar, this.f12271d, this.f12272e, this.f12273f));
        }
    }
}
