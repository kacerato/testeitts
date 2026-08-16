package androidx.concurrent.futures;

import com.google.common.util.concurrent.Z;

public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    private ResolvableFuture() {
    }

    public static <V> ResolvableFuture<V> create() {
        return new ResolvableFuture<>();
    }

    @Override
    public boolean set(V v10) {
        return super.set(v10);
    }

    @Override
    public boolean setException(Throwable th2) {
        return super.setException(th2);
    }

    @Override
    public boolean setFuture(Z<? extends V> z10) {
        return super.setFuture(z10);
    }
}
