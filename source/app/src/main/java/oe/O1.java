package Oe;

import java.util.concurrent.atomic.AtomicReference;

public final class O1<T> extends AtomicReference<De.c> implements Be.I<T>, De.c {

    public static final long f19120d = -8612022020200669122L;

    public final Be.I<? super T> f19121b;

    public final AtomicReference<De.c> f19122c = new AtomicReference<>();

    public O1(Be.I<? super T> i10) {
        this.f19121b = i10;
    }

    @Override
    public void a() {
        dispose();
        this.f19121b.a();
    }

    public void b(De.c cVar) {
        Ge.d.g(this, cVar);
    }

    @Override
    public boolean d() {
        return this.f19122c.get() == Ge.d.DISPOSED;
    }

    @Override
    public void dispose() {
        Ge.d.a(this.f19122c);
        Ge.d.a(this);
    }

    @Override
    public void e(De.c cVar) {
        if (Ge.d.h(this.f19122c, cVar)) {
            this.f19121b.e(this);
        }
    }

    @Override
    public void h(T t10) {
        this.f19121b.h(t10);
    }

    @Override
    public void onError(Throwable th2) {
        dispose();
        this.f19121b.onError(th2);
    }
}
