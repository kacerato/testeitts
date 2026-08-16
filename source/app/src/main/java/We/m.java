package We;

import Be.I;
import io.reactivex.internal.util.p;

public final class m<T> implements I<T>, De.c {

    public static final int f27743h = 4;

    public final I<? super T> f27744b;

    public final boolean f27745c;

    public De.c f27746d;

    public boolean f27747e;

    public io.reactivex.internal.util.a<Object> f27748f;

    public volatile boolean f27749g;

    public m(@Ce.f I<? super T> i10) {
        this(i10, false);
    }

    @Override
    public void a() {
        if (this.f27749g) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f27749g) {
                    return;
                }
                if (!this.f27747e) {
                    this.f27749g = true;
                    this.f27747e = true;
                    this.f27744b.a();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f27748f;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f27748f = aVar;
                    }
                    aVar.c(p.e());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                try {
                    aVar = this.f27748f;
                    if (aVar == null) {
                        this.f27747e = false;
                        return;
                    }
                    this.f27748f = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } while (!aVar.a(this.f27744b));
    }

    @Override
    public boolean d() {
        return this.f27746d.d();
    }

    @Override
    public void dispose() {
        this.f27746d.dispose();
    }

    @Override
    public void e(@Ce.f De.c cVar) {
        if (Ge.d.j(this.f27746d, cVar)) {
            this.f27746d = cVar;
            this.f27744b.e(this);
        }
    }

    @Override
    public void h(@Ce.f T t10) {
        if (this.f27749g) {
            return;
        }
        if (t10 == null) {
            this.f27746d.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            try {
                if (this.f27749g) {
                    return;
                }
                if (!this.f27747e) {
                    this.f27747e = true;
                    this.f27744b.h(t10);
                    b();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f27748f;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f27748f = aVar;
                    }
                    aVar.c(p.u(t10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onError(@Ce.f Throwable th2) {
        if (this.f27749g) {
            Ye.a.Y(th2);
            return;
        }
        synchronized (this) {
            try {
                boolean z10 = true;
                if (!this.f27749g) {
                    if (this.f27747e) {
                        this.f27749g = true;
                        io.reactivex.internal.util.a<Object> aVar = this.f27748f;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f27748f = aVar;
                        }
                        Object h10 = p.h(th2);
                        if (this.f27745c) {
                            aVar.c(h10);
                        } else {
                            aVar.f(h10);
                        }
                        return;
                    }
                    this.f27749g = true;
                    this.f27747e = true;
                    z10 = false;
                }
                if (z10) {
                    Ye.a.Y(th2);
                } else {
                    this.f27744b.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public m(@Ce.f I<? super T> i10, boolean z10) {
        this.f27744b = i10;
        this.f27745c = z10;
    }
}
