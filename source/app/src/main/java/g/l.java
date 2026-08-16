package G;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;

public final class l {

    public static final String f7244e = "MemorySizeCalculator";

    @VisibleForTesting
    public static final int f7245f = 4;

    public static final int f7246g = 2;

    public final int f7247a;

    public final int f7248b;

    public final Context f7249c;

    public final int f7250d;

    public static final class a {

        @VisibleForTesting
        public static final int f7251i = 2;

        public static final int f7252j = 1;

        public static final float f7253k = 0.4f;

        public static final float f7254l = 0.33f;

        public static final int f7255m = 4194304;

        public final Context f7256a;

        public ActivityManager f7257b;

        public c f7258c;

        public float f7260e;

        public float f7259d = 2.0f;

        public float f7261f = 0.4f;

        public float f7262g = 0.33f;

        public int f7263h = 4194304;

        public a(Context context) {
            this.f7260e = f7252j;
            this.f7256a = context;
            this.f7257b = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            this.f7258c = new b(context.getResources().getDisplayMetrics());
            if (l.e(this.f7257b)) {
                this.f7260e = 0.0f;
            }
        }

        public l a() {
            return new l(this);
        }

        @VisibleForTesting
        public a b(ActivityManager activityManager) {
            this.f7257b = activityManager;
            return this;
        }

        public a c(int i10) {
            this.f7263h = i10;
            return this;
        }

        public a d(float f10) {
            Y.k.a(f10 >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f7260e = f10;
            return this;
        }

        public a e(float f10) {
            Y.k.a(f10 >= 0.0f && f10 <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.f7262g = f10;
            return this;
        }

        public a f(float f10) {
            Y.k.a(f10 >= 0.0f && f10 <= 1.0f, "Size multiplier must be between 0 and 1");
            this.f7261f = f10;
            return this;
        }

        public a g(float f10) {
            Y.k.a(f10 >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.f7259d = f10;
            return this;
        }

        @VisibleForTesting
        public a h(c cVar) {
            this.f7258c = cVar;
            return this;
        }
    }

    public static final class b implements c {

        public final DisplayMetrics f7264a;

        public b(DisplayMetrics displayMetrics) {
            this.f7264a = displayMetrics;
        }

        @Override
        public int a() {
            return this.f7264a.heightPixels;
        }

        @Override
        public int b() {
            return this.f7264a.widthPixels;
        }
    }

    public interface c {
        int a();

        int b();
    }

    public l(a aVar) {
        this.f7249c = aVar.f7256a;
        int i10 = e(aVar.f7257b) ? aVar.f7263h / 2 : aVar.f7263h;
        this.f7250d = i10;
        int c10 = c(aVar.f7257b, aVar.f7261f, aVar.f7262g);
        float b10 = aVar.f7258c.b() * aVar.f7258c.a() * 4;
        int round = Math.round(aVar.f7260e * b10);
        int round2 = Math.round(b10 * aVar.f7259d);
        int i11 = c10 - i10;
        int i12 = round2 + round;
        if (i12 <= i11) {
            this.f7248b = round2;
            this.f7247a = round;
        } else {
            float f10 = i11;
            float f11 = aVar.f7260e;
            float f12 = aVar.f7259d;
            float f13 = f10 / (f11 + f12);
            this.f7248b = Math.round(f12 * f13);
            this.f7247a = Math.round(f13 * aVar.f7260e);
        }
        if (Log.isLoggable(f7244e, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculation complete, Calculated memory cache size: ");
            sb2.append(f(this.f7248b));
            sb2.append(", pool size: ");
            sb2.append(f(this.f7247a));
            sb2.append(", byte array size: ");
            sb2.append(f(i10));
            sb2.append(", memory class limited? ");
            sb2.append(i12 > c10);
            sb2.append(", max size: ");
            sb2.append(f(c10));
            sb2.append(", memoryClass: ");
            sb2.append(aVar.f7257b.getMemoryClass());
            sb2.append(", isLowMemoryDevice: ");
            sb2.append(e(aVar.f7257b));
            Log.d(f7244e, sb2.toString());
        }
    }

    public static int c(ActivityManager activityManager, float f10, float f11) {
        float memoryClass = activityManager.getMemoryClass() * 1048576;
        if (e(activityManager)) {
            f10 = f11;
        }
        return Math.round(memoryClass * f10);
    }

    @TargetApi(19)
    public static boolean e(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    public int a() {
        return this.f7250d;
    }

    public int b() {
        return this.f7247a;
    }

    public int d() {
        return this.f7248b;
    }

    public final String f(int i10) {
        return Formatter.formatFileSize(this.f7249c, i10);
    }
}
