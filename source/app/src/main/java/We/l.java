package We;

import Be.I;
import io.reactivex.exceptions.CompositeException;

public final class l<T> implements I<T>, De.c {

    public final I<? super T> f27740b;

    public De.c f27741c;

    public boolean f27742d;

    public l(@Ce.f I<? super T> i10) {
        this.f27740b = i10;
    }

    @Override
    public void a() {
        if (this.f27742d) {
            return;
        }
        this.f27742d = true;
        if (this.f27741c == null) {
            b();
            return;
        }
        try {
            this.f27740b.a();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    public void b() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f27740b.e(Ge.e.INSTANCE);
            try {
                this.f27740b.onError(nullPointerException);
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
        this.f27742d = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f27740b.e(Ge.e.INSTANCE);
            try {
                this.f27740b.onError(nullPointerException);
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
    public boolean d() {
        return this.f27741c.d();
    }

    @Override
    public void dispose() {
        this.f27741c.dispose();
    }

    @Override
    public void e(@Ce.f De.c cVar) {
        if (Ge.d.j(this.f27741c, cVar)) {
            this.f27741c = cVar;
            try {
                this.f27740b.e(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f27742d = true;
                try {
                    cVar.dispose();
                    Ye.a.Y(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    Ye.a.Y(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override
    public void h(@Ce.f T t10) {
        if (this.f27742d) {
            return;
        }
        if (this.f27741c == null) {
            c();
            return;
        }
        if (t10 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f27741c.dispose();
                onError(nullPointerException);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(new CompositeException(nullPointerException, th2));
                return;
            }
        }
        try {
            this.f27740b.h(t10);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            try {
                this.f27741c.dispose();
                onError(th3);
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                onError(new CompositeException(th3, th4));
            }
        }
    }

    @Override
    public void onError(@Ce.f Throwable th2) {
        if (this.f27742d) {
            Ye.a.Y(th2);
            return;
        }
        this.f27742d = true;
        if (this.f27741c != null) {
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f27740b.onError(th2);
                return;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ye.a.Y(new CompositeException(th2, th3));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f27740b.e(Ge.e.INSTANCE);
            try {
                this.f27740b.onError(new CompositeException(th2, nullPointerException));
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
