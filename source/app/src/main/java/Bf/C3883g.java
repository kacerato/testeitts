package bf;

import Be.I;
import io.reactivex.internal.util.a;
import io.reactivex.internal.util.p;

public final class C3883g<T> extends AbstractC3885i<T> implements a.InterfaceC1782a<Object> {

    public final AbstractC3885i<T> f33164b;

    public boolean f33165c;

    public io.reactivex.internal.util.a<Object> f33166d;

    public volatile boolean f33167e;

    public C3883g(AbstractC3885i<T> abstractC3885i) {
        this.f33164b = abstractC3885i;
    }

    @Override
    public void J5(I<? super T> i10) {
        this.f33164b.c(i10);
    }

    @Override
    public void a() {
        if (this.f33167e) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f33167e) {
                    return;
                }
                this.f33167e = true;
                if (!this.f33165c) {
                    this.f33165c = true;
                    this.f33164b.a();
                    return;
                }
                io.reactivex.internal.util.a<Object> aVar = this.f33166d;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f33166d = aVar;
                }
                aVar.c(p.e());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void e(De.c cVar) {
        boolean z10 = true;
        if (!this.f33167e) {
            synchronized (this) {
                try {
                    if (!this.f33167e) {
                        if (this.f33165c) {
                            io.reactivex.internal.util.a<Object> aVar = this.f33166d;
                            if (aVar == null) {
                                aVar = new io.reactivex.internal.util.a<>(4);
                                this.f33166d = aVar;
                            }
                            aVar.c(p.g(cVar));
                            return;
                        }
                        this.f33165c = true;
                        z10 = false;
                    }
                } finally {
                }
            }
        }
        if (z10) {
            cVar.dispose();
        } else {
            this.f33164b.e(cVar);
            o8();
        }
    }

    @Override
    public void h(T t10) {
        if (this.f33167e) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f33167e) {
                    return;
                }
                if (!this.f33165c) {
                    this.f33165c = true;
                    this.f33164b.h(t10);
                    o8();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f33166d;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f33166d = aVar;
                    }
                    aVar.c(p.u(t10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @Ce.g
    public Throwable j8() {
        return this.f33164b.j8();
    }

    @Override
    public boolean k8() {
        return this.f33164b.k8();
    }

    @Override
    public boolean l8() {
        return this.f33164b.l8();
    }

    @Override
    public boolean m8() {
        return this.f33164b.m8();
    }

    public void o8() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                try {
                    aVar = this.f33166d;
                    if (aVar == null) {
                        this.f33165c = false;
                        return;
                    }
                    this.f33166d = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            aVar.d(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f33167e) {
            Ye.a.Y(th2);
            return;
        }
        synchronized (this) {
            try {
                boolean z10 = true;
                if (!this.f33167e) {
                    this.f33167e = true;
                    if (this.f33165c) {
                        io.reactivex.internal.util.a<Object> aVar = this.f33166d;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f33166d = aVar;
                        }
                        aVar.f(p.h(th2));
                        return;
                    }
                    this.f33165c = true;
                    z10 = false;
                }
                if (z10) {
                    Ye.a.Y(th2);
                } else {
                    this.f33164b.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public boolean test(Object obj) {
        return p.c(obj, this.f33164b);
    }
}
