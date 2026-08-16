package F;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class k implements e {

    public static final String f6090k = "LruBitmapPool";

    public static final Bitmap.Config f6091l = Bitmap.Config.ARGB_8888;

    public final l f6092a;

    public final Set<Bitmap.Config> f6093b;

    public final long f6094c;

    public final a f6095d;

    public long f6096e;

    public long f6097f;

    public int f6098g;

    public int f6099h;

    public int f6100i;

    public int f6101j;

    public interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    public static final class b implements a {
        @Override
        public void a(Bitmap bitmap) {
        }

        @Override
        public void b(Bitmap bitmap) {
        }
    }

    public static class c implements a {

        public final Set<Bitmap> f6102a = Collections.synchronizedSet(new HashSet());

        @Override
        public void a(Bitmap bitmap) {
            if (!this.f6102a.contains(bitmap)) {
                this.f6102a.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + ((Object) bitmap) + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }

        @Override
        public void b(Bitmap bitmap) {
            if (!this.f6102a.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.f6102a.remove(bitmap);
        }
    }

    public k(long j10, l lVar, Set<Bitmap.Config> set) {
        this.f6094c = j10;
        this.f6096e = j10;
        this.f6092a = lVar;
        this.f6093b = set;
        this.f6095d = new b();
    }

    @TargetApi(26)
    public static void h(Bitmap.Config config) {
        if (config != Bitmap.Config.HARDWARE) {
            return;
        }
        throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + ((Object) config) + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
    }

    @NonNull
    public static Bitmap i(int i10, int i11, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f6091l;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @TargetApi(26)
    public static Set<Bitmap.Config> o() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        hashSet.remove(Bitmap.Config.HARDWARE);
        return Collections.unmodifiableSet(hashSet);
    }

    public static l p() {
        return new o();
    }

    @TargetApi(19)
    public static void s(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    public static void u(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        s(bitmap);
    }

    @Override
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (Log.isLoggable(f6090k, 3)) {
            Log.d(f6090k, "trimMemory, level=" + i10);
        }
        if (i10 >= 40 || i10 >= 20) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            v(e() / 2);
        }
    }

    @Override
    public void b() {
        if (Log.isLoggable(f6090k, 3)) {
            Log.d(f6090k, "clearMemory");
        }
        v(0L);
    }

    @Override
    public synchronized void c(float f10) {
        this.f6096e = Math.round(((float) this.f6094c) * f10);
        l();
    }

    @Override
    public synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f6092a.b(bitmap) <= this.f6096e && this.f6093b.contains(bitmap.getConfig())) {
                int b10 = this.f6092a.b(bitmap);
                this.f6092a.d(bitmap);
                this.f6095d.a(bitmap);
                this.f6100i++;
                this.f6097f += b10;
                if (Log.isLoggable(f6090k, 2)) {
                    Log.v(f6090k, "Put bitmap in pool=" + this.f6092a.c(bitmap));
                }
                j();
                l();
                return;
            }
            if (Log.isLoggable(f6090k, 2)) {
                Log.v(f6090k, "Reject bitmap from pool, bitmap: " + this.f6092a.c(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f6093b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public long e() {
        return this.f6096e;
    }

    @Override
    @NonNull
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        Bitmap q10 = q(i10, i11, config);
        if (q10 == null) {
            return i(i10, i11, config);
        }
        q10.eraseColor(0);
        return q10;
    }

    @Override
    @NonNull
    public Bitmap g(int i10, int i11, Bitmap.Config config) {
        Bitmap q10 = q(i10, i11, config);
        return q10 == null ? i(i10, i11, config) : q10;
    }

    public final void j() {
        if (Log.isLoggable(f6090k, 2)) {
            k();
        }
    }

    public final void k() {
        Log.v(f6090k, "Hits=" + this.f6098g + ", misses=" + this.f6099h + ", puts=" + this.f6100i + ", evictions=" + this.f6101j + ", currentSize=" + this.f6097f + ", maxSize=" + this.f6096e + "\nStrategy=" + ((Object) this.f6092a));
    }

    public final void l() {
        v(this.f6096e);
    }

    public long m() {
        return this.f6101j;
    }

    public long n() {
        return this.f6097f;
    }

    @Nullable
    public final synchronized Bitmap q(int i10, int i11, @Nullable Bitmap.Config config) {
        Bitmap f10;
        try {
            h(config);
            f10 = this.f6092a.f(i10, i11, config != null ? config : f6091l);
            if (f10 == null) {
                if (Log.isLoggable(f6090k, 3)) {
                    Log.d(f6090k, "Missing bitmap=" + this.f6092a.a(i10, i11, config));
                }
                this.f6099h++;
            } else {
                this.f6098g++;
                this.f6097f -= this.f6092a.b(f10);
                this.f6095d.b(f10);
                u(f10);
            }
            if (Log.isLoggable(f6090k, 2)) {
                Log.v(f6090k, "Get bitmap=" + this.f6092a.a(i10, i11, config));
            }
            j();
        } catch (Throwable th2) {
            throw th2;
        }
        return f10;
    }

    public long r() {
        return this.f6098g;
    }

    public long t() {
        return this.f6099h;
    }

    public final synchronized void v(long j10) {
        while (this.f6097f > j10) {
            try {
                Bitmap removeLast = this.f6092a.removeLast();
                if (removeLast == null) {
                    if (Log.isLoggable(f6090k, 5)) {
                        Log.w(f6090k, "Size mismatch, resetting");
                        k();
                    }
                    this.f6097f = 0L;
                    return;
                }
                this.f6095d.b(removeLast);
                this.f6097f -= this.f6092a.b(removeLast);
                this.f6101j++;
                if (Log.isLoggable(f6090k, 3)) {
                    Log.d(f6090k, "Evicting bitmap=" + this.f6092a.c(removeLast));
                }
                j();
                removeLast.recycle();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public k(long j10) {
        this(j10, p(), o());
    }

    public k(long j10, Set<Bitmap.Config> set) {
        this(j10, p(), set);
    }
}
