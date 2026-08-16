package Oe;

import bf.C3886j;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class I1<T, B> extends AbstractC2859a<T, Be.B<T>> {

    public final Callable<? extends Be.G<B>> f18929c;

    public final int f18930d;

    public static final class a<T, B> extends We.e<B> {

        public final b<T, B> f18931c;

        public boolean f18932d;

        public a(b<T, B> bVar) {
            this.f18931c = bVar;
        }

        @Override
        public void a() {
            if (this.f18932d) {
                return;
            }
            this.f18932d = true;
            this.f18931c.f();
        }

        @Override
        public void h(B b10) {
            if (this.f18932d) {
                return;
            }
            this.f18932d = true;
            dispose();
            this.f18931c.j(this);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18932d) {
                Ye.a.Y(th2);
            } else {
                this.f18932d = true;
                this.f18931c.i(th2);
            }
        }
    }

    public static final class b<T, B> extends AtomicInteger implements Be.I<T>, De.c, Runnable {

        public static final long f18933m = 2233020065421370272L;

        public static final a<Object, Object> f18934n = new a<>(null);

        public static final Object f18935o = new Object();

        public final Be.I<? super Be.B<T>> f18936b;

        public final int f18937c;

        public final AtomicReference<a<T, B>> f18938d = new AtomicReference<>();

        public final AtomicInteger f18939e = new AtomicInteger(1);

        public final Re.a<Object> f18940f = new Re.a<>();

        public final io.reactivex.internal.util.c f18941g = new io.reactivex.internal.util.c();

        public final AtomicBoolean f18942h = new AtomicBoolean();

        public final Callable<? extends Be.G<B>> f18943i;

        public De.c f18944j;

        public volatile boolean f18945k;

        public C3886j<T> f18946l;

        public b(Be.I<? super Be.B<T>> i10, int i11, Callable<? extends Be.G<B>> callable) {
            this.f18936b = i10;
            this.f18937c = i11;
            this.f18943i = callable;
        }

        @Override
        public void a() {
            b();
            this.f18945k = true;
            c();
        }

        public void b() {
            AtomicReference<a<T, B>> atomicReference = this.f18938d;
            a<Object, Object> aVar = f18934n;
            De.c cVar = (De.c) atomicReference.getAndSet(aVar);
            if (cVar == null || cVar == aVar) {
                return;
            }
            cVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super Be.B<T>> i10 = this.f18936b;
            Re.a<Object> aVar = this.f18940f;
            io.reactivex.internal.util.c cVar = this.f18941g;
            int i11 = 1;
            while (this.f18939e.get() != 0) {
                C3886j<T> c3886j = this.f18946l;
                boolean z10 = this.f18945k;
                if (z10 && cVar.get() != null) {
                    aVar.clear();
                    Throwable c10 = cVar.c();
                    if (c3886j != 0) {
                        this.f18946l = null;
                        c3886j.onError(c10);
                    }
                    i10.onError(c10);
                    return;
                }
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable c11 = cVar.c();
                    if (c11 == null) {
                        if (c3886j != 0) {
                            this.f18946l = null;
                            c3886j.a();
                        }
                        i10.a();
                        return;
                    }
                    if (c3886j != 0) {
                        this.f18946l = null;
                        c3886j.onError(c11);
                    }
                    i10.onError(c11);
                    return;
                }
                if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else if (poll != f18935o) {
                    c3886j.h(poll);
                } else {
                    if (c3886j != 0) {
                        this.f18946l = null;
                        c3886j.a();
                    }
                    if (!this.f18942h.get()) {
                        C3886j<T> q82 = C3886j.q8(this.f18937c, this);
                        this.f18946l = q82;
                        this.f18939e.getAndIncrement();
                        try {
                            Be.G g10 = (Be.G) He.b.g(this.f18943i.call(), "The other Callable returned a null ObservableSource");
                            a aVar2 = new a(this);
                            if (androidx.lifecycle.c.a(this.f18938d, null, aVar2)) {
                                g10.c(aVar2);
                                i10.h(q82);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            cVar.a(th2);
                            this.f18945k = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f18946l = null;
        }

        @Override
        public boolean d() {
            return this.f18942h.get();
        }

        @Override
        public void dispose() {
            if (this.f18942h.compareAndSet(false, true)) {
                b();
                if (this.f18939e.decrementAndGet() == 0) {
                    this.f18944j.dispose();
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18944j, cVar)) {
                this.f18944j = cVar;
                this.f18936b.e(this);
                this.f18940f.offer(f18935o);
                c();
            }
        }

        public void f() {
            this.f18944j.dispose();
            this.f18945k = true;
            c();
        }

        @Override
        public void h(T t10) {
            this.f18940f.offer(t10);
            c();
        }

        public void i(Throwable th2) {
            this.f18944j.dispose();
            if (!this.f18941g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f18945k = true;
                c();
            }
        }

        public void j(a<T, B> aVar) {
            androidx.lifecycle.c.a(this.f18938d, aVar, null);
            this.f18940f.offer(f18935o);
            c();
        }

        @Override
        public void onError(Throwable th2) {
            b();
            if (!this.f18941g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f18945k = true;
                c();
            }
        }

        @Override
        public void run() {
            if (this.f18939e.decrementAndGet() == 0) {
                this.f18944j.dispose();
            }
        }
    }

    public I1(Be.G<T> g10, Callable<? extends Be.G<B>> callable, int i10) {
        super(g10);
        this.f18929c = callable;
        this.f18930d = i10;
    }

    @Override
    public void J5(Be.I<? super Be.B<T>> i10) {
        this.f19344b.c(new b(i10, this.f18930d, this.f18929c));
    }
}
