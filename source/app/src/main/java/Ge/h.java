package Ge;

import java.util.concurrent.atomic.AtomicReference;

public final class h extends AtomicReference<De.c> implements De.c {

    public static final long f7793b = -754898800686245608L;

    public h() {
    }

    public boolean a(De.c cVar) {
        return d.c(this, cVar);
    }

    public boolean b(De.c cVar) {
        return d.g(this, cVar);
    }

    @Override
    public boolean d() {
        return d.b(get());
    }

    @Override
    public void dispose() {
        d.a(this);
    }

    public h(De.c cVar) {
        lazySet(cVar);
    }
}
