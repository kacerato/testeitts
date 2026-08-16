package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C<T> extends Be.B<T> {

    public final Be.E<T> f18727b;

    public static final class a<T> extends AtomicReference<De.c> implements Be.D<T>, De.c {

        public static final long f18728c = -3434801548987643227L;

        public final Be.I<? super T> f18729b;

        public a(Be.I<? super T> i10) {
            this.f18729b = i10;
        }

        @Override
        public void a() {
            if (d()) {
                return;
            }
            try {
                this.f18729b.a();
            } finally {
                dispose();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(Fe.f fVar) {
            g(new Ge.b(fVar));
        }

        @Override
        public boolean f(Throwable th2) {
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (d()) {
                return false;
            }
            try {
                this.f18729b.onError(th2);
                dispose();
                return true;
            } catch (Throwable th3) {
                dispose();
                throw th3;
            }
        }

        @Override
        public void g(De.c cVar) {
            Ge.d.g(this, cVar);
        }

        @Override
        public void h(T t10) {
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                if (d()) {
                    return;
                }
                this.f18729b.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public Be.D<T> serialize() {
            return new b(this);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public static final class b<T> extends AtomicInteger implements Be.D<T> {

        public static final long f18730f = 4883307006032401862L;

        public final Be.D<T> f18731b;

        public final io.reactivex.internal.util.c f18732c = new io.reactivex.internal.util.c();

        public final Re.c<T> f18733d = new Re.c<>(16);

        public volatile boolean f18734e;

        public b(Be.D<T> d10) {
            this.f18731b = d10;
        }

        @Override
        public void a() {
            if (this.f18731b.d() || this.f18734e) {
                return;
            }
            this.f18734e = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            Be.D<T> d10 = this.f18731b;
            Re.c<T> cVar = this.f18733d;
            io.reactivex.internal.util.c cVar2 = this.f18732c;
            int i10 = 1;
            while (!d10.d()) {
                if (cVar2.get() != null) {
                    cVar.clear();
                    d10.onError(cVar2.c());
                    return;
                }
                boolean z10 = this.f18734e;
                T poll = cVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    d10.a();
                    return;
                } else if (z11) {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    d10.h(poll);
                }
            }
            cVar.clear();
        }

        @Override
        public boolean d() {
            return this.f18731b.d();
        }

        @Override
        public void e(Fe.f fVar) {
            this.f18731b.e(fVar);
        }

        @Override
        public boolean f(Throwable th2) {
            if (!this.f18731b.d() && !this.f18734e) {
                if (th2 == null) {
                    th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f18732c.a(th2)) {
                    this.f18734e = true;
                    b();
                    return true;
                }
            }
            return false;
        }

        @Override
        public void g(De.c cVar) {
            this.f18731b.g(cVar);
        }

        @Override
        public void h(T t10) {
            if (this.f18731b.d() || this.f18734e) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f18731b.h(t10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                Re.c<T> cVar = this.f18733d;
                synchronized (cVar) {
                    cVar.offer(t10);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public Be.D<T> serialize() {
            return this;
        }

        @Override
        public String toString() {
            return this.f18731b.toString();
        }
    }

    public C(Be.E<T> e10) {
        this.f18727b = e10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        try {
            this.f18727b.subscribe(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            aVar.onError(th2);
        }
    }
}
