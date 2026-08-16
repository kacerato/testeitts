package Je;

import Be.N;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class d<T> extends AtomicReference<De.c> implements N<T>, De.c {

    public static final long f10459c = 4943102778943297569L;

    public final Fe.b<? super T, ? super Throwable> f10460b;

    public d(Fe.b<? super T, ? super Throwable> bVar) {
        this.f10460b = bVar;
    }

    @Override
    public void b(T t10) {
        try {
            lazySet(Ge.d.DISPOSED);
            this.f10460b.accept(t10, null);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean d() {
        return get() == Ge.d.DISPOSED;
    }

    @Override
    public void dispose() {
        Ge.d.a(this);
    }

    @Override
    public void e(De.c cVar) {
        Ge.d.h(this, cVar);
    }

    @Override
    public void onError(Throwable th2) {
        try {
            lazySet(Ge.d.DISPOSED);
            this.f10460b.accept(null, th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
