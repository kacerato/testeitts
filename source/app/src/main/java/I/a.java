package I;

import F.e;
import G.j;
import Y.m;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.resource.bitmap.C11707g;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class a implements Runnable {

    @VisibleForTesting
    public static final String f8645j = "PreFillRunner";

    public static final long f8647l = 32;

    public static final long f8648m = 40;

    public static final int f8649n = 4;

    public final e f8651b;

    public final j f8652c;

    public final c f8653d;

    public final C0185a f8654e;

    public final Set<d> f8655f;

    public final Handler f8656g;

    public long f8657h;

    public boolean f8658i;

    public static final C0185a f8646k = new C0185a();

    public static final long f8650o = TimeUnit.SECONDS.toMillis(1);

    @VisibleForTesting
    public static class C0185a {
        public long a() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    public static final class b implements C.e {
        @Override
        public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public a(e eVar, j jVar, c cVar) {
        this(eVar, jVar, cVar, f8646k, new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    public boolean a() {
        Bitmap createBitmap;
        long a10 = this.f8654e.a();
        while (!this.f8653d.b() && !e(a10)) {
            d c10 = this.f8653d.c();
            if (this.f8655f.contains(c10)) {
                createBitmap = Bitmap.createBitmap(c10.d(), c10.b(), c10.a());
            } else {
                this.f8655f.add(c10);
                createBitmap = this.f8651b.g(c10.d(), c10.b(), c10.a());
            }
            int h10 = m.h(createBitmap);
            if (c() >= h10) {
                this.f8652c.f(new b(), C11707g.c(createBitmap, this.f8651b));
            } else {
                this.f8651b.d(createBitmap);
            }
            if (Log.isLoggable(f8645j, 3)) {
                Log.d(f8645j, "allocated [" + c10.d() + "x" + c10.b() + "] " + ((Object) c10.a()) + " size: " + h10);
            }
        }
        return (this.f8658i || this.f8653d.b()) ? false : true;
    }

    public void b() {
        this.f8658i = true;
    }

    public final long c() {
        return this.f8652c.e() - this.f8652c.getCurrentSize();
    }

    public final long d() {
        long j10 = this.f8657h;
        this.f8657h = Math.min(4 * j10, f8650o);
        return j10;
    }

    public final boolean e(long j10) {
        return this.f8654e.a() - j10 >= 32;
    }

    @Override
    public void run() {
        if (a()) {
            this.f8656g.postDelayed(this, d());
        }
    }

    @VisibleForTesting
    public a(e eVar, j jVar, c cVar, C0185a c0185a, Handler handler) {
        this.f8655f = new HashSet();
        this.f8657h = 40L;
        this.f8651b = eVar;
        this.f8652c = jVar;
        this.f8653d = cVar;
        this.f8654e = c0185a;
        this.f8656g = handler;
    }
}
