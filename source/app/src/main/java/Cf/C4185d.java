package cf;

import Be.InterfaceC2367q;
import Ue.g;
import Ue.j;
import io.reactivex.exceptions.CompositeException;

public final class C4185d<T> implements InterfaceC2367q<T>, hn.d {

    public final hn.c<? super T> f34809b;

    public hn.d f34810c;

    public boolean f34811d;

    public C4185d(hn.c<? super T> cVar) {
        this.f34809b = cVar;
    }

    @Override
    public void a() {
        if (this.f34811d) {
            return;
        }
        this.f34811d = true;
        if (this.f34810c == null) {
            b();
            return;
        }
        try {
            this.f34809b.a();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    public void b() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f34809b.j(g.INSTANCE);
            try {
                this.f34809b.onError(nullPointerException);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(new CompositeException(nullPointerException, th2));
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(nullPointerException, th3));
        }
    }

    public void c() {
        this.f34811d = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f34809b.j(g.INSTANCE);
            try {
                this.f34809b.onError(nullPointerException);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(new CompositeException(nullPointerException, th2));
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(nullPointerException, th3));
        }
    }

    @Override
    public void cancel() {
        try {
            this.f34810c.cancel();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public void h(T t10) {
        if (this.f34811d) {
            return;
        }
        if (this.f34810c == null) {
            c();
            return;
        }
        if (t10 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f34810c.cancel();
                onError(nullPointerException);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(new CompositeException(nullPointerException, th2));
                return;
            }
        }
        try {
            this.f34809b.h(t10);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            try {
                this.f34810c.cancel();
                onError(th3);
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                onError(new CompositeException(th3, th4));
            }
        }
    }

    @Override
    public void i(long j10) {
        try {
            this.f34810c.i(j10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            try {
                this.f34810c.cancel();
                Ye.a.Y(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ye.a.Y(new CompositeException(th2, th3));
            }
        }
    }

    @Override
    public void j(hn.d dVar) {
        if (j.o(this.f34810c, dVar)) {
            this.f34810c = dVar;
            try {
                this.f34809b.j(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f34811d = true;
                try {
                    dVar.cancel();
                    Ye.a.Y(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    Ye.a.Y(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f34811d) {
            Ye.a.Y(th2);
            return;
        }
        this.f34811d = true;
        if (this.f34810c != null) {
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f34809b.onError(th2);
                return;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ye.a.Y(new CompositeException(th2, th3));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f34809b.j(g.INSTANCE);
            try {
                this.f34809b.onError(new CompositeException(th2, nullPointerException));
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ye.a.Y(new CompositeException(th2, nullPointerException, th4));
            }
        } catch (Throwable th5) {
            io.reactivex.exceptions.a.b(th5);
            Ye.a.Y(new CompositeException(th2, nullPointerException, th5));
        }
    }
}
