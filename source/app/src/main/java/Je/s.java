package Je;

import Be.I;
import java.util.concurrent.atomic.AtomicReference;

public final class s<T> extends AtomicReference<De.c> implements I<T>, De.c {

    public static final long f10504g = -5417183359794346637L;

    public final t<T> f10505b;

    public final int f10506c;

    public Ie.o<T> f10507d;

    public volatile boolean f10508e;

    public int f10509f;

    public s(t<T> tVar, int i10) {
        this.f10505b = tVar;
        this.f10506c = i10;
    }

    @Override
    public void a() {
        this.f10505b.i(this);
    }

    public int b() {
        return this.f10509f;
    }

    public boolean c() {
        return this.f10508e;
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
    public void e(De.c cVar) {
        if (Ge.d.h(this, cVar)) {
            if (cVar instanceof Ie.j) {
                Ie.j jVar = (Ie.j) cVar;
                int m10 = jVar.m(3);
                if (m10 == 1) {
                    this.f10509f = m10;
                    this.f10507d = jVar;
                    this.f10508e = true;
                    this.f10505b.i(this);
                    return;
                }
                if (m10 == 2) {
                    this.f10509f = m10;
                    this.f10507d = jVar;
                    return;
                }
            }
            this.f10507d = io.reactivex.internal.util.u.c(-this.f10506c);
        }
    }

    public Ie.o<T> f() {
        return this.f10507d;
    }

    public void g() {
        this.f10508e = true;
    }

    @Override
    public void h(T t10) {
        if (this.f10509f == 0) {
            this.f10505b.g(this, t10);
        } else {
            this.f10505b.f();
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f10505b.j(this, th2);
    }
}
