package cf;

import Be.InterfaceC2367q;
import Ue.j;
import io.reactivex.internal.util.p;

public final class C4186e<T> implements InterfaceC2367q<T>, hn.d {

    public static final int f34812h = 4;

    public final hn.c<? super T> f34813b;

    public final boolean f34814c;

    public hn.d f34815d;

    public boolean f34816e;

    public io.reactivex.internal.util.a<Object> f34817f;

    public volatile boolean f34818g;

    public C4186e(hn.c<? super T> cVar) {
        this(cVar, false);
    }

    @Override
    public void a() {
        if (this.f34818g) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f34818g) {
                    return;
                }
                if (!this.f34816e) {
                    this.f34818g = true;
                    this.f34816e = true;
                    this.f34813b.a();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f34817f;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f34817f = aVar;
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
                    aVar = this.f34817f;
                    if (aVar == null) {
                        this.f34816e = false;
                        return;
                    }
                    this.f34817f = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } while (!aVar.b(this.f34813b));
    }

    @Override
    public void cancel() {
        this.f34815d.cancel();
    }

    @Override
    public void h(T t10) {
        if (this.f34818g) {
            return;
        }
        if (t10 == null) {
            this.f34815d.cancel();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            try {
                if (this.f34818g) {
                    return;
                }
                if (!this.f34816e) {
                    this.f34816e = true;
                    this.f34813b.h(t10);
                    b();
                } else {
                    io.reactivex.internal.util.a<Object> aVar = this.f34817f;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f34817f = aVar;
                    }
                    aVar.c(p.u(t10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void i(long j10) {
        this.f34815d.i(j10);
    }

    @Override
    public void j(hn.d dVar) {
        if (j.o(this.f34815d, dVar)) {
            this.f34815d = dVar;
            this.f34813b.j(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f34818g) {
            Ye.a.Y(th2);
            return;
        }
        synchronized (this) {
            try {
                boolean z10 = true;
                if (!this.f34818g) {
                    if (this.f34816e) {
                        this.f34818g = true;
                        io.reactivex.internal.util.a<Object> aVar = this.f34817f;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f34817f = aVar;
                        }
                        Object h10 = p.h(th2);
                        if (this.f34814c) {
                            aVar.c(h10);
                        } else {
                            aVar.f(h10);
                        }
                        return;
                    }
                    this.f34818g = true;
                    this.f34816e = true;
                    z10 = false;
                }
                if (z10) {
                    Ye.a.Y(th2);
                } else {
                    this.f34813b.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public C4186e(hn.c<? super T> cVar, boolean z10) {
        this.f34813b = cVar;
        this.f34814c = z10;
    }
}
