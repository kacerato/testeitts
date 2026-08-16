package Je;

import Be.N;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class k<T> extends AtomicReference<De.c> implements N<T>, De.c, We.g {

    public static final long f10475d = -7012088219455310787L;

    public final Fe.g<? super T> f10476b;

    public final Fe.g<? super Throwable> f10477c;

    public k(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        this.f10476b = gVar;
        this.f10477c = gVar2;
    }

    @Override
    public void b(T t10) {
        lazySet(Ge.d.DISPOSED);
        try {
            this.f10476b.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean c() {
        return this.f10477c != He.a.f8380f;
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
        lazySet(Ge.d.DISPOSED);
        try {
            this.f10477c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
