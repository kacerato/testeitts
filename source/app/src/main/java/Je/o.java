package Je;

import Be.InterfaceC2356f;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.concurrent.atomic.AtomicReference;

public final class o extends AtomicReference<De.c> implements InterfaceC2356f, De.c, We.g {

    public static final long f10492b = -7545121636549663526L;

    @Override
    public void a() {
        lazySet(Ge.d.DISPOSED);
    }

    @Override
    public boolean c() {
        return false;
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
        Ye.a.Y(new OnErrorNotImplementedException(th2));
    }
}
