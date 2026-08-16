package Ue;

import java.util.concurrent.atomic.AtomicBoolean;

public final class e extends AtomicBoolean implements hn.d {

    public static final long f26023b = -8127758972444290902L;

    public boolean a() {
        return get();
    }

    @Override
    public void cancel() {
        lazySet(true);
    }

    @Override
    public void i(long j10) {
        j.m(j10);
    }

    @Override
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
