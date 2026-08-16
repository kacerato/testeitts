package U;

import V.o;
import V.p;
import Y.m;
import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.GlideException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class f<R> implements c<R>, g<R> {

    public static final a f25598l = new a();

    public final int f25599b;

    public final int f25600c;

    public final boolean f25601d;

    public final a f25602e;

    @Nullable
    @GuardedBy("this")
    public R f25603f;

    @Nullable
    @GuardedBy("this")
    public d f25604g;

    @GuardedBy("this")
    public boolean f25605h;

    @GuardedBy("this")
    public boolean f25606i;

    @GuardedBy("this")
    public boolean f25607j;

    @Nullable
    @GuardedBy("this")
    public GlideException f25608k;

    @VisibleForTesting
    public static class a {
        public void a(Object obj) {
            obj.notifyAll();
        }

        public void b(Object obj, long j10) throws InterruptedException {
            obj.wait(j10);
        }
    }

    public f(int i10, int i11) {
        this(i10, i11, true, f25598l);
    }

    @Override
    public void a(@NonNull o oVar) {
    }

    @Override
    public void b() {
    }

    @Override
    public void c() {
    }

    @Override
    public boolean cancel(boolean z10) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.f25605h = true;
                this.f25602e.a(this);
                d dVar = null;
                if (z10) {
                    d dVar2 = this.f25604g;
                    this.f25604g = null;
                    dVar = dVar2;
                }
                if (dVar != null) {
                    dVar.clear();
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public synchronized boolean d(@Nullable GlideException glideException, Object obj, p<R> pVar, boolean z10) {
        this.f25607j = true;
        this.f25608k = glideException;
        this.f25602e.a(this);
        return false;
    }

    @Override
    public synchronized boolean e(R r10, Object obj, p<R> pVar, C.a aVar, boolean z10) {
        this.f25606i = true;
        this.f25603f = r10;
        this.f25602e.a(this);
        return false;
    }

    @Override
    public void f(@Nullable Drawable drawable) {
    }

    @Override
    public synchronized void g(@Nullable d dVar) {
        this.f25604g = dVar;
    }

    @Override
    public R get() throws InterruptedException, ExecutionException {
        try {
            return j(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    @Nullable
    public synchronized d getRequest() {
        return this.f25604g;
    }

    @Override
    public synchronized void h(@NonNull R r10, @Nullable W.f<? super R> fVar) {
    }

    @Override
    public void i(@NonNull o oVar) {
        oVar.d(this.f25599b, this.f25600c);
    }

    @Override
    public synchronized boolean isCancelled() {
        return this.f25605h;
    }

    @Override
    public synchronized boolean isDone() {
        boolean z10;
        if (!this.f25605h && !this.f25606i) {
            z10 = this.f25607j;
        }
        return z10;
    }

    public final synchronized R j(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            if (this.f25601d && !isDone()) {
                m.a();
            }
            if (this.f25605h) {
                throw new CancellationException();
            }
            if (this.f25607j) {
                throw new ExecutionException(this.f25608k);
            }
            if (this.f25606i) {
                return this.f25603f;
            }
            if (l10 == null) {
                this.f25602e.b(this, 0L);
            } else if (l10.longValue() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                long longValue = l10.longValue() + currentTimeMillis;
                while (!isDone() && currentTimeMillis < longValue) {
                    this.f25602e.b(this, longValue - currentTimeMillis);
                    currentTimeMillis = System.currentTimeMillis();
                }
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            if (this.f25607j) {
                throw new ExecutionException(this.f25608k);
            }
            if (this.f25605h) {
                throw new CancellationException();
            }
            if (!this.f25606i) {
                throw new TimeoutException();
            }
            return this.f25603f;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void k(@Nullable Drawable drawable) {
    }

    @Override
    public synchronized void m(@Nullable Drawable drawable) {
    }

    @Override
    public void onStart() {
    }

    public f(int i10, int i11, boolean z10, a aVar) {
        this.f25599b = i10;
        this.f25600c = i11;
        this.f25601d = z10;
        this.f25602e = aVar;
    }

    @Override
    public R get(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return j(Long.valueOf(timeUnit.toMillis(j10)));
    }
}
