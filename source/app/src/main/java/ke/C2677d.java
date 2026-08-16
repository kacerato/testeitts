package Ke;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2677d extends AbstractC2353c {

    public final hn.b<? extends InterfaceC2359i> f11247b;

    public final int f11248c;

    public static final class a extends AtomicInteger implements InterfaceC2367q<InterfaceC2359i>, De.c {

        public static final long f11249m = 9032184911934499404L;

        public final InterfaceC2356f f11250b;

        public final int f11251c;

        public final int f11252d;

        public final C0373a f11253e = new C0373a(this);

        public final AtomicBoolean f11254f = new AtomicBoolean();

        public int f11255g;

        public int f11256h;

        public Ie.o<InterfaceC2359i> f11257i;

        public hn.d f11258j;

        public volatile boolean f11259k;

        public volatile boolean f11260l;

        public static final class C0373a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f11261c = -5454794857847146511L;

            public final a f11262b;

            public C0373a(a aVar) {
                this.f11262b = aVar;
            }

            @Override
            public void a() {
                this.f11262b.c();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f11262b.e(th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, int i10) {
            this.f11250b = interfaceC2356f;
            this.f11251c = i10;
            this.f11252d = i10 - (i10 >> 2);
        }

        @Override
        public void a() {
            this.f11259k = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!d()) {
                if (!this.f11260l) {
                    boolean z10 = this.f11259k;
                    try {
                        InterfaceC2359i poll = this.f11257i.poll();
                        boolean z11 = poll == null;
                        if (z10 && z11) {
                            if (this.f11254f.compareAndSet(false, true)) {
                                this.f11250b.a();
                                return;
                            }
                            return;
                        } else if (!z11) {
                            this.f11260l = true;
                            poll.b(this.f11253e);
                            g();
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        e(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        public void c() {
            this.f11260l = false;
            b();
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f11253e.get());
        }

        @Override
        public void dispose() {
            this.f11258j.cancel();
            Ge.d.a(this.f11253e);
        }

        public void e(Throwable th2) {
            if (!this.f11254f.compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                this.f11258j.cancel();
                this.f11250b.onError(th2);
            }
        }

        @Override
        public void h(InterfaceC2359i interfaceC2359i) {
            if (this.f11255g != 0 || this.f11257i.offer(interfaceC2359i)) {
                b();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        public void g() {
            if (this.f11255g != 1) {
                int i10 = this.f11256h + 1;
                if (i10 != this.f11252d) {
                    this.f11256h = i10;
                } else {
                    this.f11256h = 0;
                    this.f11258j.i(i10);
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11258j, dVar)) {
                this.f11258j = dVar;
                int i10 = this.f11251c;
                long j10 = i10 == Integer.MAX_VALUE ? Long.MAX_VALUE : i10;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(3);
                    if (m10 == 1) {
                        this.f11255g = m10;
                        this.f11257i = lVar;
                        this.f11259k = true;
                        this.f11250b.e(this);
                        b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f11255g = m10;
                        this.f11257i = lVar;
                        this.f11250b.e(this);
                        dVar.i(j10);
                        return;
                    }
                }
                if (this.f11251c == Integer.MAX_VALUE) {
                    this.f11257i = new Re.c(AbstractC2362l.a0());
                } else {
                    this.f11257i = new Re.b(this.f11251c);
                }
                this.f11250b.e(this);
                dVar.i(j10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11254f.compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f11253e);
                this.f11250b.onError(th2);
            }
        }
    }

    public C2677d(hn.b<? extends InterfaceC2359i> bVar, int i10) {
        this.f11247b = bVar;
        this.f11248c = i10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11247b.l(new a(interfaceC2356f, this.f11248c));
    }
}
