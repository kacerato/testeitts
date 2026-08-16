package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2733n1<T> extends AbstractC2362l<Boolean> {

    public final hn.b<? extends T> f12978c;

    public final hn.b<? extends T> f12979d;

    public final Fe.d<? super T, ? super T> f12980e;

    public final int f12981f;

    public static final class a<T> extends Ue.f<Boolean> implements b {

        public static final long f12982u = -6178010334400373240L;

        public final Fe.d<? super T, ? super T> f12983n;

        public final c<T> f12984o;

        public final c<T> f12985p;

        public final io.reactivex.internal.util.c f12986q;

        public final AtomicInteger f12987r;

        public T f12988s;

        public T f12989t;

        public a(hn.c<? super Boolean> cVar, int i10, Fe.d<? super T, ? super T> dVar) {
            super(cVar);
            this.f12983n = dVar;
            this.f12987r = new AtomicInteger();
            this.f12984o = new c<>(this, i10);
            this.f12985p = new c<>(this, i10);
            this.f12986q = new io.reactivex.internal.util.c();
        }

        @Override
        public void c(Throwable th2) {
            if (this.f12986q.a(th2)) {
                f();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12984o.b();
            this.f12985p.b();
            if (this.f12987r.getAndIncrement() == 0) {
                this.f12984o.c();
                this.f12985p.c();
            }
        }

        @Override
        public void f() {
            if (this.f12987r.getAndIncrement() != 0) {
                return;
            }
            int i10 = 1;
            do {
                Ie.o<T> oVar = this.f12984o.f12995f;
                Ie.o<T> oVar2 = this.f12985p.f12995f;
                if (oVar != null && oVar2 != null) {
                    while (!n()) {
                        if (this.f12986q.get() != null) {
                            q();
                            this.f26033c.onError(this.f12986q.c());
                            return;
                        }
                        boolean z10 = this.f12984o.f12996g;
                        T t10 = this.f12988s;
                        if (t10 == null) {
                            try {
                                t10 = oVar.poll();
                                this.f12988s = t10;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                q();
                                this.f12986q.a(th2);
                                this.f26033c.onError(this.f12986q.c());
                                return;
                            }
                        }
                        boolean z11 = t10 == null;
                        boolean z12 = this.f12985p.f12996g;
                        T t11 = this.f12989t;
                        if (t11 == null) {
                            try {
                                t11 = oVar2.poll();
                                this.f12989t = t11;
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                q();
                                this.f12986q.a(th3);
                                this.f26033c.onError(this.f12986q.c());
                                return;
                            }
                        }
                        boolean z13 = t11 == null;
                        if (z10 && z12 && z11 && z13) {
                            d(Boolean.TRUE);
                            return;
                        }
                        if (z10 && z12 && z11 != z13) {
                            q();
                            d(Boolean.FALSE);
                            return;
                        }
                        if (!z11 && !z13) {
                            try {
                                if (!this.f12983n.test(t10, t11)) {
                                    q();
                                    d(Boolean.FALSE);
                                    return;
                                } else {
                                    this.f12988s = null;
                                    this.f12989t = null;
                                    this.f12984o.d();
                                    this.f12985p.d();
                                }
                            } catch (Throwable th4) {
                                io.reactivex.exceptions.a.b(th4);
                                q();
                                this.f12986q.a(th4);
                                this.f26033c.onError(this.f12986q.c());
                                return;
                            }
                        }
                    }
                    this.f12984o.c();
                    this.f12985p.c();
                    return;
                }
                if (n()) {
                    this.f12984o.c();
                    this.f12985p.c();
                    return;
                } else if (this.f12986q.get() != null) {
                    q();
                    this.f26033c.onError(this.f12986q.c());
                    return;
                }
                i10 = this.f12987r.addAndGet(-i10);
            } while (i10 != 0);
        }

        public void q() {
            this.f12984o.b();
            this.f12984o.c();
            this.f12985p.b();
            this.f12985p.c();
        }

        public void v(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
            bVar.l(this.f12984o);
            bVar2.l(this.f12985p);
        }
    }

    public interface b {
        void c(Throwable th2);

        void f();
    }

    public static final class c<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T> {

        public static final long f12990i = 4804128302091633067L;

        public final b f12991b;

        public final int f12992c;

        public final int f12993d;

        public long f12994e;

        public volatile Ie.o<T> f12995f;

        public volatile boolean f12996g;

        public int f12997h;

        public c(b bVar, int i10) {
            this.f12991b = bVar;
            this.f12993d = i10 - (i10 >> 2);
            this.f12992c = i10;
        }

        @Override
        public void a() {
            this.f12996g = true;
            this.f12991b.f();
        }

        public void b() {
            Ue.j.a(this);
        }

        public void c() {
            Ie.o<T> oVar = this.f12995f;
            if (oVar != null) {
                oVar.clear();
            }
        }

        public void d() {
            if (this.f12997h != 1) {
                long j10 = this.f12994e + 1;
                if (j10 < this.f12993d) {
                    this.f12994e = j10;
                } else {
                    this.f12994e = 0L;
                    get().i(j10);
                }
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12997h != 0 || this.f12995f.offer(t10)) {
                this.f12991b.f();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this, dVar)) {
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(3);
                    if (m10 == 1) {
                        this.f12997h = m10;
                        this.f12995f = lVar;
                        this.f12996g = true;
                        this.f12991b.f();
                        return;
                    }
                    if (m10 == 2) {
                        this.f12997h = m10;
                        this.f12995f = lVar;
                        dVar.i(this.f12992c);
                        return;
                    }
                }
                this.f12995f = new Re.b(this.f12992c);
                dVar.i(this.f12992c);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12991b.c(th2);
        }
    }

    public C2733n1(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, Fe.d<? super T, ? super T> dVar, int i10) {
        this.f12978c = bVar;
        this.f12979d = bVar2;
        this.f12980e = dVar;
        this.f12981f = i10;
    }

    @Override
    public void m6(hn.c<? super Boolean> cVar) {
        a aVar = new a(cVar, this.f12981f, this.f12980e);
        cVar.j(aVar);
        aVar.v(this.f12978c, this.f12979d);
    }
}
