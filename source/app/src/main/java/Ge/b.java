package Ge;

import java.util.concurrent.atomic.AtomicReference;

public final class b extends AtomicReference<Fe.f> implements De.c {

    public static final long f7790b = 5718521705281392066L;

    public b(Fe.f fVar) {
        super(fVar);
    }

    @Override
    public boolean d() {
        return get() == null;
    }

    @Override
    public void dispose() {
        Fe.f andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e10) {
            io.reactivex.exceptions.a.b(e10);
            Ye.a.Y(e10);
        }
    }
}
