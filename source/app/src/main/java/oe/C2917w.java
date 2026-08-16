package Oe;

import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2917w<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Be.G<? extends R>> f19977c;

    public final io.reactivex.internal.util.j f19978d;

    public final int f19979e;

    public final int f19980f;

    public static final class a<T, R> extends AtomicInteger implements Be.I<T>, De.c, Je.t<R> {

        public static final long f19981p = 8080567949447303262L;

        public final Be.I<? super R> f19982b;

        public final Fe.o<? super T, ? extends Be.G<? extends R>> f19983c;

        public final int f19984d;

        public final int f19985e;

        public final io.reactivex.internal.util.j f19986f;

        public final io.reactivex.internal.util.c f19987g = new io.reactivex.internal.util.c();

        public final ArrayDeque<Je.s<R>> f19988h = new ArrayDeque<>();

        public Ie.o<T> f19989i;

        public De.c f19990j;

        public volatile boolean f19991k;

        public int f19992l;

        public volatile boolean f19993m;

        public Je.s<R> f19994n;

        public int f19995o;

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, int i11, int i12, io.reactivex.internal.util.j jVar) {
            this.f19982b = i10;
            this.f19983c = oVar;
            this.f19984d = i11;
            this.f19985e = i12;
            this.f19986f = jVar;
        }

        @Override
        public void a() {
            this.f19991k = true;
            f();
        }

        public void b() {
            Je.s<R> sVar = this.f19994n;
            if (sVar != null) {
                sVar.dispose();
            }
            while (true) {
                Je.s<R> poll = this.f19988h.poll();
                if (poll == null) {
                    return;
                } else {
                    poll.dispose();
                }
            }
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            do {
                this.f19989i.clear();
                b();
            } while (decrementAndGet() != 0);
        }

        @Override
        public boolean d() {
            return this.f19993m;
        }

        @Override
        public void dispose() {
            if (this.f19993m) {
                return;
            }
            this.f19993m = true;
            this.f19990j.dispose();
            c();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19990j, cVar)) {
                this.f19990j = cVar;
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(3);
                    if (m10 == 1) {
                        this.f19992l = m10;
                        this.f19989i = jVar;
                        this.f19991k = true;
                        this.f19982b.e(this);
                        f();
                        return;
                    }
                    if (m10 == 2) {
                        this.f19992l = m10;
                        this.f19989i = jVar;
                        this.f19982b.e(this);
                        return;
                    }
                }
                this.f19989i = new Re.c(this.f19985e);
                this.f19982b.e(this);
            }
        }

        @Override
        public void f() {
            R poll;
            boolean z10;
            if (getAndIncrement() != 0) {
                return;
            }
            Ie.o<T> oVar = this.f19989i;
            ArrayDeque<Je.s<R>> arrayDeque = this.f19988h;
            Be.I<? super R> i10 = this.f19982b;
            io.reactivex.internal.util.j jVar = this.f19986f;
            int i11 = 1;
            while (true) {
                int i12 = this.f19995o;
                while (i12 != this.f19984d) {
                    if (this.f19993m) {
                        oVar.clear();
                        b();
                        return;
                    }
                    if (jVar == io.reactivex.internal.util.j.IMMEDIATE && this.f19987g.get() != null) {
                        oVar.clear();
                        b();
                        i10.onError(this.f19987g.c());
                        return;
                    }
                    try {
                        T poll2 = oVar.poll();
                        if (poll2 == null) {
                            break;
                        }
                        Be.G g10 = (Be.G) He.b.g(this.f19983c.apply(poll2), "The mapper returned a null ObservableSource");
                        Je.s<R> sVar = new Je.s<>(this, this.f19985e);
                        arrayDeque.offer(sVar);
                        g10.c(sVar);
                        i12++;
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f19990j.dispose();
                        oVar.clear();
                        b();
                        this.f19987g.a(th2);
                        i10.onError(this.f19987g.c());
                        return;
                    }
                }
                this.f19995o = i12;
                if (this.f19993m) {
                    oVar.clear();
                    b();
                    return;
                }
                if (jVar == io.reactivex.internal.util.j.IMMEDIATE && this.f19987g.get() != null) {
                    oVar.clear();
                    b();
                    i10.onError(this.f19987g.c());
                    return;
                }
                Je.s<R> sVar2 = this.f19994n;
                if (sVar2 == null) {
                    if (jVar == io.reactivex.internal.util.j.BOUNDARY && this.f19987g.get() != null) {
                        oVar.clear();
                        b();
                        i10.onError(this.f19987g.c());
                        return;
                    }
                    boolean z11 = this.f19991k;
                    Je.s<R> poll3 = arrayDeque.poll();
                    boolean z12 = poll3 == null;
                    if (z11 && z12) {
                        if (this.f19987g.get() == null) {
                            i10.a();
                            return;
                        }
                        oVar.clear();
                        b();
                        i10.onError(this.f19987g.c());
                        return;
                    }
                    if (!z12) {
                        this.f19994n = poll3;
                    }
                    sVar2 = poll3;
                }
                if (sVar2 != null) {
                    Ie.o<R> f10 = sVar2.f();
                    while (!this.f19993m) {
                        boolean c10 = sVar2.c();
                        if (jVar == io.reactivex.internal.util.j.IMMEDIATE && this.f19987g.get() != null) {
                            oVar.clear();
                            b();
                            i10.onError(this.f19987g.c());
                            return;
                        }
                        try {
                            poll = f10.poll();
                            z10 = poll == null;
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f19987g.a(th3);
                            this.f19994n = null;
                            this.f19995o--;
                        }
                        if (c10 && z10) {
                            this.f19994n = null;
                            this.f19995o--;
                        } else if (!z10) {
                            i10.h(poll);
                        }
                    }
                    oVar.clear();
                    b();
                    return;
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }

        @Override
        public void g(Je.s<R> sVar, R r10) {
            sVar.f().offer(r10);
            f();
        }

        @Override
        public void h(T t10) {
            if (this.f19992l == 0) {
                this.f19989i.offer(t10);
            }
            f();
        }

        @Override
        public void i(Je.s<R> sVar) {
            sVar.g();
            f();
        }

        @Override
        public void j(Je.s<R> sVar, Throwable th2) {
            if (!this.f19987g.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f19986f == io.reactivex.internal.util.j.IMMEDIATE) {
                this.f19990j.dispose();
            }
            sVar.g();
            f();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19987g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f19991k = true;
                f();
            }
        }
    }

    public C2917w(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, io.reactivex.internal.util.j jVar, int i10, int i11) {
        super(g10);
        this.f19977c = oVar;
        this.f19978d = jVar;
        this.f19979e = i10;
        this.f19980f = i11;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f19344b.c(new a(i10, this.f19977c, this.f19979e, this.f19980f, this.f19978d));
    }
}
