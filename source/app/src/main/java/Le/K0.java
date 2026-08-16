package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

public final class K0<T> extends AbstractC2692a<T, T> {

    public final Be.J f11985d;

    public final boolean f11986e;

    public final int f11987f;

    public static abstract class a<T> extends Ue.c<T> implements InterfaceC2367q<T>, Runnable {

        public static final long f11988p = -8241002408341274697L;

        public final J.c f11989c;

        public final boolean f11990d;

        public final int f11991e;

        public final int f11992f;

        public final AtomicLong f11993g = new AtomicLong();

        public hn.d f11994h;

        public Ie.o<T> f11995i;

        public volatile boolean f11996j;

        public volatile boolean f11997k;

        public Throwable f11998l;

        public int f11999m;

        public long f12000n;

        public boolean f12001o;

        public a(J.c cVar, boolean z10, int i10) {
            this.f11989c = cVar;
            this.f11990d = z10;
            this.f11991e = i10;
            this.f11992f = i10 - (i10 >> 2);
        }

        @Override
        public final void a() {
            if (this.f11997k) {
                return;
            }
            this.f11997k = true;
            v();
        }

        @Override
        public final void cancel() {
            if (this.f11996j) {
                return;
            }
            this.f11996j = true;
            this.f11994h.cancel();
            this.f11989c.dispose();
            if (getAndIncrement() == 0) {
                this.f11995i.clear();
            }
        }

        @Override
        public final void clear() {
            this.f11995i.clear();
        }

        public final boolean d(boolean z10, boolean z11, hn.c<?> cVar) {
            if (this.f11996j) {
                clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.f11990d) {
                if (!z11) {
                    return false;
                }
                this.f11996j = true;
                Throwable th2 = this.f11998l;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                this.f11989c.dispose();
                return true;
            }
            Throwable th3 = this.f11998l;
            if (th3 != null) {
                this.f11996j = true;
                clear();
                cVar.onError(th3);
                this.f11989c.dispose();
                return true;
            }
            if (!z11) {
                return false;
            }
            this.f11996j = true;
            cVar.a();
            this.f11989c.dispose();
            return true;
        }

        @Override
        public final void h(T t10) {
            if (this.f11997k) {
                return;
            }
            if (this.f11999m == 2) {
                v();
                return;
            }
            if (!this.f11995i.offer(t10)) {
                this.f11994h.cancel();
                this.f11998l = new MissingBackpressureException("Queue is full?!");
                this.f11997k = true;
            }
            v();
        }

        @Override
        public final void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f11993g, j10);
                v();
            }
        }

        @Override
        public final boolean isEmpty() {
            return this.f11995i.isEmpty();
        }

        @Override
        public final int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f12001o = true;
            return 2;
        }

        public abstract void n();

        @Override
        public final void onError(Throwable th2) {
            if (this.f11997k) {
                Ye.a.Y(th2);
                return;
            }
            this.f11998l = th2;
            this.f11997k = true;
            v();
        }

        public abstract void p();

        public abstract void q();

        @Override
        public final void run() {
            if (this.f12001o) {
                p();
            } else if (this.f11999m == 1) {
                q();
            } else {
                n();
            }
        }

        public final void v() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.f11989c.b(this);
        }
    }

    public static final class b<T> extends a<T> {

        public static final long f12002s = 644624475404284533L;

        public final Ie.a<? super T> f12003q;

        public long f12004r;

        public b(Ie.a<? super T> aVar, J.c cVar, boolean z10, int i10) {
            super(cVar, z10, i10);
            this.f12003q = aVar;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11994h, dVar)) {
                this.f11994h = dVar;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f11999m = 1;
                        this.f11995i = lVar;
                        this.f11997k = true;
                        this.f12003q.j(this);
                        return;
                    }
                    if (m10 == 2) {
                        this.f11999m = 2;
                        this.f11995i = lVar;
                        this.f12003q.j(this);
                        dVar.i(this.f11991e);
                        return;
                    }
                }
                this.f11995i = new Re.b(this.f11991e);
                this.f12003q.j(this);
                dVar.i(this.f11991e);
            }
        }

        @Override
        public void n() {
            Ie.a<? super T> aVar = this.f12003q;
            Ie.o<T> oVar = this.f11995i;
            long j10 = this.f12000n;
            long j11 = this.f12004r;
            int i10 = 1;
            while (true) {
                long j12 = this.f11993g.get();
                while (j10 != j12) {
                    boolean z10 = this.f11997k;
                    try {
                        T poll = oVar.poll();
                        boolean z11 = poll == null;
                        if (d(z10, z11, aVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        if (aVar.u(poll)) {
                            j10++;
                        }
                        j11++;
                        if (j11 == this.f11992f) {
                            this.f11994h.i(j11);
                            j11 = 0;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f11996j = true;
                        this.f11994h.cancel();
                        oVar.clear();
                        aVar.onError(th2);
                        this.f11989c.dispose();
                        return;
                    }
                }
                if (j10 == j12 && d(this.f11997k, oVar.isEmpty(), aVar)) {
                    return;
                }
                int i11 = get();
                if (i10 == i11) {
                    this.f12000n = j10;
                    this.f12004r = j11;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    i10 = i11;
                }
            }
        }

        @Override
        public void p() {
            int i10 = 1;
            while (!this.f11996j) {
                boolean z10 = this.f11997k;
                this.f12003q.h(null);
                if (z10) {
                    this.f11996j = true;
                    Throwable th2 = this.f11998l;
                    if (th2 != null) {
                        this.f12003q.onError(th2);
                    } else {
                        this.f12003q.a();
                    }
                    this.f11989c.dispose();
                    return;
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f11995i.poll();
            if (poll != null && this.f11999m != 1) {
                long j10 = this.f12004r + 1;
                if (j10 == this.f11992f) {
                    this.f12004r = 0L;
                    this.f11994h.i(j10);
                } else {
                    this.f12004r = j10;
                }
            }
            return poll;
        }

        @Override
        public void q() {
            Ie.a<? super T> aVar = this.f12003q;
            Ie.o<T> oVar = this.f11995i;
            long j10 = this.f12000n;
            int i10 = 1;
            while (true) {
                long j11 = this.f11993g.get();
                while (j10 != j11) {
                    try {
                        T poll = oVar.poll();
                        if (this.f11996j) {
                            return;
                        }
                        if (poll == null) {
                            this.f11996j = true;
                            aVar.a();
                            this.f11989c.dispose();
                            return;
                        } else if (aVar.u(poll)) {
                            j10++;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f11996j = true;
                        this.f11994h.cancel();
                        aVar.onError(th2);
                        this.f11989c.dispose();
                        return;
                    }
                }
                if (this.f11996j) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f11996j = true;
                    aVar.a();
                    this.f11989c.dispose();
                    return;
                } else {
                    int i11 = get();
                    if (i10 == i11) {
                        this.f12000n = j10;
                        i10 = addAndGet(-i10);
                        if (i10 == 0) {
                            return;
                        }
                    } else {
                        i10 = i11;
                    }
                }
            }
        }
    }

    public static final class c<T> extends a<T> implements InterfaceC2367q<T> {

        public static final long f12005r = -4547113800637756442L;

        public final hn.c<? super T> f12006q;

        public c(hn.c<? super T> cVar, J.c cVar2, boolean z10, int i10) {
            super(cVar2, z10, i10);
            this.f12006q = cVar;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11994h, dVar)) {
                this.f11994h = dVar;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f11999m = 1;
                        this.f11995i = lVar;
                        this.f11997k = true;
                        this.f12006q.j(this);
                        return;
                    }
                    if (m10 == 2) {
                        this.f11999m = 2;
                        this.f11995i = lVar;
                        this.f12006q.j(this);
                        dVar.i(this.f11991e);
                        return;
                    }
                }
                this.f11995i = new Re.b(this.f11991e);
                this.f12006q.j(this);
                dVar.i(this.f11991e);
            }
        }

        @Override
        public void n() {
            hn.c<? super T> cVar = this.f12006q;
            Ie.o<T> oVar = this.f11995i;
            long j10 = this.f12000n;
            int i10 = 1;
            while (true) {
                long j11 = this.f11993g.get();
                while (j10 != j11) {
                    boolean z10 = this.f11997k;
                    try {
                        T poll = oVar.poll();
                        boolean z11 = poll == null;
                        if (d(z10, z11, cVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        cVar.h(poll);
                        j10++;
                        if (j10 == this.f11992f) {
                            if (j11 != Long.MAX_VALUE) {
                                j11 = this.f11993g.addAndGet(-j10);
                            }
                            this.f11994h.i(j10);
                            j10 = 0;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f11996j = true;
                        this.f11994h.cancel();
                        oVar.clear();
                        cVar.onError(th2);
                        this.f11989c.dispose();
                        return;
                    }
                }
                if (j10 == j11 && d(this.f11997k, oVar.isEmpty(), cVar)) {
                    return;
                }
                int i11 = get();
                if (i10 == i11) {
                    this.f12000n = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    i10 = i11;
                }
            }
        }

        @Override
        public void p() {
            int i10 = 1;
            while (!this.f11996j) {
                boolean z10 = this.f11997k;
                this.f12006q.h(null);
                if (z10) {
                    this.f11996j = true;
                    Throwable th2 = this.f11998l;
                    if (th2 != null) {
                        this.f12006q.onError(th2);
                    } else {
                        this.f12006q.a();
                    }
                    this.f11989c.dispose();
                    return;
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f11995i.poll();
            if (poll != null && this.f11999m != 1) {
                long j10 = this.f12000n + 1;
                if (j10 == this.f11992f) {
                    this.f12000n = 0L;
                    this.f11994h.i(j10);
                } else {
                    this.f12000n = j10;
                }
            }
            return poll;
        }

        @Override
        public void q() {
            hn.c<? super T> cVar = this.f12006q;
            Ie.o<T> oVar = this.f11995i;
            long j10 = this.f12000n;
            int i10 = 1;
            while (true) {
                long j11 = this.f11993g.get();
                while (j10 != j11) {
                    try {
                        T poll = oVar.poll();
                        if (this.f11996j) {
                            return;
                        }
                        if (poll == null) {
                            this.f11996j = true;
                            cVar.a();
                            this.f11989c.dispose();
                            return;
                        }
                        cVar.h(poll);
                        j10++;
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f11996j = true;
                        this.f11994h.cancel();
                        cVar.onError(th2);
                        this.f11989c.dispose();
                        return;
                    }
                }
                if (this.f11996j) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f11996j = true;
                    cVar.a();
                    this.f11989c.dispose();
                    return;
                } else {
                    int i11 = get();
                    if (i10 == i11) {
                        this.f12000n = j10;
                        i10 = addAndGet(-i10);
                        if (i10 == 0) {
                            return;
                        }
                    } else {
                        i10 = i11;
                    }
                }
            }
        }
    }

    public K0(AbstractC2362l<T> abstractC2362l, Be.J j10, boolean z10, int i10) {
        super(abstractC2362l);
        this.f11985d = j10;
        this.f11986e = z10;
        this.f11987f = i10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        J.c c10 = this.f11985d.c();
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new b((Ie.a) cVar, c10, this.f11986e, this.f11987f));
        } else {
            this.f12507c.l6(new c(cVar, c10, this.f11986e, this.f11987f));
        }
    }
}
