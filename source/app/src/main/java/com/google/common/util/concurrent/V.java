package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@A
@v2.b
public class V<V> implements Z<V> {

    public static final Z<?> f67346c = new V(null);

    public static final Logger f67347d = Logger.getLogger(V.class.getName());

    @InterfaceC12618j0
    public final V f67348b;

    public static final class a<V> extends AbstractFuture.i<V> {

        public static final a<Object> f67349j;

        static {
            f67349j = AbstractFuture.f67182e ? null : new a<>();
        }

        public a() {
            cancel(false);
        }
    }

    public static final class b<V> extends AbstractFuture.i<V> {
        public b(Throwable th2) {
            D(th2);
        }
    }

    public V(@InterfaceC12618j0 V v10) {
        this.f67348b = v10;
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        w2.H.F(runnable, "Runnable was null.");
        w2.H.F(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f67347d;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.log(level, sb2.toString(), (Throwable) e10);
        }
    }

    @Override
    public boolean cancel(boolean z10) {
        return false;
    }

    @Override
    @InterfaceC12618j0
    public V get() {
        return this.f67348b;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f67348b);
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 27 + valueOf.length());
        sb2.append(obj);
        sb2.append("[status=SUCCESS, result=[");
        sb2.append(valueOf);
        sb2.append("]]");
        return sb2.toString();
    }

    @Override
    @InterfaceC12618j0
    public V get(long j10, TimeUnit timeUnit) throws ExecutionException {
        w2.H.E(timeUnit);
        return get();
    }
}
