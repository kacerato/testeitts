package Je;

import Be.InterfaceC2356f;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.concurrent.atomic.AtomicReference;

public final class j extends AtomicReference<De.c> implements InterfaceC2356f, De.c, Fe.g<Throwable>, We.g {

    public static final long f10472d = -4361286194466301354L;

    public final Fe.g<? super Throwable> f10473b;

    public final Fe.a f10474c;

    public j(Fe.a aVar) {
        this.f10473b = this;
        this.f10474c = aVar;
    }

    @Override
    public void a() {
        try {
            this.f10474c.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
        lazySet(Ge.d.DISPOSED);
    }

    @Override
    public void accept(Throwable th2) {
        Ye.a.Y(new OnErrorNotImplementedException(th2));
    }

    @Override
    public boolean c() {
        return this.f10473b != this;
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
            this.f10473b.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(th3);
        }
        lazySet(Ge.d.DISPOSED);
    }

    public j(Fe.g<? super Throwable> gVar, Fe.a aVar) {
        this.f10473b = gVar;
        this.f10474c = aVar;
    }
}
