package Oe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class O0<T> extends Be.B<T> {

    public final Ve.a<T> f19103b;

    public final int f19104c;

    public final long f19105d;

    public final TimeUnit f19106e;

    public final Be.J f19107f;

    public a f19108g;

    public static final class a extends AtomicReference<De.c> implements Runnable, Fe.g<De.c> {

        public static final long f19109g = -4552101107598366241L;

        public final O0<?> f19110b;

        public De.c f19111c;

        public long f19112d;

        public boolean f19113e;

        public boolean f19114f;

        public a(O0<?> o02) {
            this.f19110b = o02;
        }

        @Override
        public void accept(De.c cVar) throws Exception {
            Ge.d.c(this, cVar);
            synchronized (this.f19110b) {
                try {
                    if (this.f19114f) {
                        ((Ge.g) this.f19110b.f19103b).b(cVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void run() {
            this.f19110b.l8(this);
        }
    }

    public static final class b<T> extends AtomicBoolean implements Be.I<T>, De.c {

        public static final long f19115f = -7419642935409022375L;

        public final Be.I<? super T> f19116b;

        public final O0<T> f19117c;

        public final a f19118d;

        public De.c f19119e;

        public b(Be.I<? super T> i10, O0<T> o02, a aVar) {
            this.f19116b = i10;
            this.f19117c = o02;
            this.f19118d = aVar;
        }

        @Override
        public void a() {
            if (compareAndSet(false, true)) {
                this.f19117c.k8(this.f19118d);
                this.f19116b.a();
            }
        }

        @Override
        public boolean d() {
            return this.f19119e.d();
        }

        @Override
        public void dispose() {
            this.f19119e.dispose();
            if (compareAndSet(false, true)) {
                this.f19117c.j8(this.f19118d);
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19119e, cVar)) {
                this.f19119e = cVar;
                this.f19116b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19116b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (!compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                this.f19117c.k8(this.f19118d);
                this.f19116b.onError(th2);
            }
        }
    }

    public O0(Ve.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar;
        boolean z10;
        De.c cVar;
        synchronized (this) {
            try {
                aVar = this.f19108g;
                if (aVar == null) {
                    aVar = new a(this);
                    this.f19108g = aVar;
                }
                long j10 = aVar.f19112d;
                if (j10 == 0 && (cVar = aVar.f19111c) != null) {
                    cVar.dispose();
                }
                long j11 = j10 + 1;
                aVar.f19112d = j11;
                if (aVar.f19113e || j11 != this.f19104c) {
                    z10 = false;
                } else {
                    z10 = true;
                    aVar.f19113e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f19103b.c(new b(i10, this, aVar));
        if (z10) {
            this.f19103b.n8(aVar);
        }
    }

    public void j8(a aVar) {
        synchronized (this) {
            try {
                a aVar2 = this.f19108g;
                if (aVar2 != null && aVar2 == aVar) {
                    long j10 = aVar.f19112d - 1;
                    aVar.f19112d = j10;
                    if (j10 == 0 && aVar.f19113e) {
                        if (this.f19105d == 0) {
                            l8(aVar);
                            return;
                        }
                        Ge.h hVar = new Ge.h();
                        aVar.f19111c = hVar;
                        hVar.a(this.f19107f.g(aVar, this.f19105d, this.f19106e));
                    }
                }
            } finally {
            }
        }
    }

    public void k8(a aVar) {
        synchronized (this) {
            try {
                a aVar2 = this.f19108g;
                if (aVar2 != null && aVar2 == aVar) {
                    this.f19108g = null;
                    De.c cVar = aVar.f19111c;
                    if (cVar != null) {
                        cVar.dispose();
                    }
                }
                long j10 = aVar.f19112d - 1;
                aVar.f19112d = j10;
                if (j10 == 0) {
                    Ve.a<T> aVar3 = this.f19103b;
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

    public void l8(a aVar) {
        synchronized (this) {
            try {
                if (aVar.f19112d == 0 && aVar == this.f19108g) {
                    this.f19108g = null;
                    De.c cVar = aVar.get();
                    Ge.d.a(aVar);
                    Ve.a<T> aVar2 = this.f19103b;
                    if (aVar2 instanceof De.c) {
                        ((De.c) aVar2).dispose();
                    } else if (aVar2 instanceof Ge.g) {
                        if (cVar == null) {
                            aVar.f19114f = true;
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

    public O0(Ve.a<T> aVar, int i10, long j10, TimeUnit timeUnit, Be.J j11) {
        this.f19103b = aVar;
        this.f19104c = i10;
        this.f19105d = j10;
        this.f19106e = timeUnit;
        this.f19107f = j11;
    }
}
