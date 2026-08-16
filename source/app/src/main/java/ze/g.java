package Ze;

import io.reactivex.internal.util.p;

public final class g<T> extends c<T> {

    public final c<T> f31204c;

    public boolean f31205d;

    public io.reactivex.internal.util.a<Object> f31206e;

    public volatile boolean f31207f;

    public g(c<T> cVar) {
        this.f31204c = cVar;
    }

    @Override
    @Ce.g
    public Throwable O8() {
        return this.f31204c.O8();
    }

    @Override
    public boolean P8() {
        return this.f31204c.P8();
    }

    @Override
    public boolean Q8() {
        return this.f31204c.Q8();
    }

    @Override
    public boolean R8() {
        return this.f31204c.R8();
    }

    public void T8() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                try {
                    aVar = this.f31206e;
                    if (aVar == null) {
                        this.f31205d = false;
                        return;
                    }
                    this.f31206e = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            aVar.b(this.f31204c);
        }
    }

    @Override
    public void a() {
        if (this.f31207f) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f31207f) {
                    return;
                }
                this.f31207f = true;
                if (!this.f31205d) {
                    this.f31205d = true;
                    this.f31204c.a();
                    return;
                }
                io.reactivex.internal.util.a<Object> aVar = this.f31206e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f31206e = aVar;
                }
                aVar.c(p.e());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void h(T t10) {
        if (this.f31207f) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f31207f) {
                    return;
                }
                if (!this.f31205d) {
                    this.f31205d = true;
                    this.f31204c.h(t10);
                    T8();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f31206e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f31206e = aVar;
                    }
                    aVar.c(p.u(t10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void j(hn.d dVar) {
        boolean z10 = true;
        if (!this.f31207f) {
            synchronized (this) {
                try {
                    if (!this.f31207f) {
                        if (this.f31205d) {
                            io.reactivex.internal.util.a<Object> aVar = this.f31206e;
                            if (aVar == null) {
                                aVar = new io.reactivex.internal.util.a<>(4);
                                this.f31206e = aVar;
                            }
                            aVar.c(p.v(dVar));
                            return;
                        }
                        this.f31205d = true;
                        z10 = false;
                    }
                } finally {
                }
            }
        }
        if (z10) {
            dVar.cancel();
        } else {
            this.f31204c.j(dVar);
            T8();
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f31204c.l(cVar);
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f31207f) {
            Ye.a.Y(th2);
            return;
        }
        synchronized (this) {
            try {
                boolean z10 = true;
                if (!this.f31207f) {
                    this.f31207f = true;
                    if (this.f31205d) {
                        io.reactivex.internal.util.a<Object> aVar = this.f31206e;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f31206e = aVar;
                        }
                        aVar.f(p.h(th2));
                        return;
                    }
                    this.f31205d = true;
                    z10 = false;
                }
                if (z10) {
                    Ye.a.Y(th2);
                } else {
                    this.f31204c.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
