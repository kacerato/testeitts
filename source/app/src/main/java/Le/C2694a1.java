package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C2694a1<T> extends AbstractC2362l<T> {

    public final Ee.a<T> f12541c;

    public final int f12542d;

    public final long f12543e;

    public final TimeUnit f12544f;

    public final Be.J f12545g;

    public a f12546h;

    public static final class a extends AtomicReference<De.c> implements Runnable, Fe.g<De.c> {

        public static final long f12547g = -4552101107598366241L;

        public final C2694a1<?> f12548b;

        public De.c f12549c;

        public long f12550d;

        public boolean f12551e;

        public boolean f12552f;

        public a(C2694a1<?> c2694a1) {
            this.f12548b = c2694a1;
        }

        @Override
        public void accept(De.c cVar) throws Exception {
            Ge.d.c(this, cVar);
            synchronized (this.f12548b) {
                try {
                    if (this.f12552f) {
                        ((Ge.g) this.f12548b.f12541c).b(cVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void run() {
            this.f12548b.Q8(this);
        }
    }

    public static final class b<T> extends AtomicBoolean implements InterfaceC2367q<T>, hn.d {

        public static final long f12553f = -7419642935409022375L;

        public final hn.c<? super T> f12554b;

        public final C2694a1<T> f12555c;

        public final a f12556d;

        public hn.d f12557e;

        public b(hn.c<? super T> cVar, C2694a1<T> c2694a1, a aVar) {
            this.f12554b = cVar;
            this.f12555c = c2694a1;
            this.f12556d = aVar;
        }

        @Override
        public void a() {
            if (compareAndSet(false, true)) {
                this.f12555c.P8(this.f12556d);
                this.f12554b.a();
            }
        }

        @Override
        public void cancel() {
            this.f12557e.cancel();
            if (compareAndSet(false, true)) {
                this.f12555c.O8(this.f12556d);
            }
        }

        @Override
        public void h(T t10) {
            this.f12554b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12557e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12557e, dVar)) {
                this.f12557e = dVar;
                this.f12554b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                this.f12555c.P8(this.f12556d);
                this.f12554b.onError(th2);
            }
        }
    }

    public C2694a1(Ee.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    public void O8(a aVar) {
        synchronized (this) {
            try {
                a aVar2 = this.f12546h;
                if (aVar2 != null && aVar2 == aVar) {
                    long j10 = aVar.f12550d - 1;
                    aVar.f12550d = j10;
                    if (j10 == 0 && aVar.f12551e) {
                        if (this.f12543e == 0) {
                            Q8(aVar);
                            return;
                        }
                        Ge.h hVar = new Ge.h();
                        aVar.f12549c = hVar;
                        hVar.a(this.f12545g.g(aVar, this.f12543e, this.f12544f));
                    }
                }
            } finally {
            }
        }
    }

    public void P8(a aVar) {
        synchronized (this) {
            try {
                a aVar2 = this.f12546h;
                if (aVar2 != null && aVar2 == aVar) {
                    this.f12546h = null;
                    De.c cVar = aVar.f12549c;
                    if (cVar != null) {
                        cVar.dispose();
                    }
                }
                long j10 = aVar.f12550d - 1;
                aVar.f12550d = j10;
                if (j10 == 0) {
                    Ee.a<T> aVar3 = this.f12541c;
                    if (aVar3 instanceof De.c) {
                        ((De.c) aVar3).dispose();
                    } else if (aVar3 instanceof Ge.g) {
                        ((Ge.g) aVar3).b(aVar.get());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void Q8(a aVar) {
        synchronized (this) {
            try {
                if (aVar.f12550d == 0 && aVar == this.f12546h) {
                    this.f12546h = null;
                    De.c cVar = aVar.get();
                    Ge.d.a(aVar);
                    Ee.a<T> aVar2 = this.f12541c;
                    if (aVar2 instanceof De.c) {
                        ((De.c) aVar2).dispose();
                    } else if (aVar2 instanceof Ge.g) {
                        if (cVar == null) {
                            aVar.f12552f = true;
                        } else {
                            ((Ge.g) aVar2).b(cVar);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar;
        boolean z10;
        De.c cVar2;
        synchronized (this) {
            try {
                aVar = this.f12546h;
                if (aVar == null) {
                    aVar = new a(this);
                    this.f12546h = aVar;
                }
                long j10 = aVar.f12550d;
                if (j10 == 0 && (cVar2 = aVar.f12549c) != null) {
                    cVar2.dispose();
                }
                long j11 = j10 + 1;
                aVar.f12550d = j11;
                if (aVar.f12551e || j11 != this.f12542d) {
                    z10 = false;
                } else {
                    z10 = true;
                    aVar.f12551e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f12541c.l6(new b(cVar, this, aVar));
        if (z10) {
            this.f12541c.S8(aVar);
        }
    }

    public C2694a1(Ee.a<T> aVar, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
        this.f12541c = aVar;
        this.f12542d = i10;
        this.f12543e = j10;
        this.f12544f = timeUnit;
        this.f12545g = j11;
    }
}
