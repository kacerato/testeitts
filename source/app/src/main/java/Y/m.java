package Y;

import ag.C3629k;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

public final class m {

    public static final int f29684a = 31;

    public static final int f29685b = 17;

    public static final char[] f29686c = C3629k.f32105a.toCharArray();

    public static final char[] f29687d = new char[64];

    public static class a {

        public static final int[] f29688a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f29688a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29688a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29688a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29688a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29688a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a() {
        if (!s()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void b() {
        if (!t()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj instanceof J.l ? ((J.l) obj).a(obj2) : obj.equals(obj2);
    }

    public static boolean d(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @NonNull
    public static String e(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = f29686c;
            cArr[i11] = cArr2[(b10 & 255) >>> 4];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    public static <T> Queue<T> f(int i10) {
        return new ArrayDeque(i10);
    }

    public static int g(int i10, int i11, @Nullable Bitmap.Config config) {
        return i10 * i11 * i(config);
    }

    @TargetApi(19)
    public static int h(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + ((Object) bitmap) + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + ((Object) bitmap.getConfig()));
    }

    public static int i(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i10 = a.f29688a[config.ordinal()];
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2 || i10 == 3) {
            return 2;
        }
        return i10 != 4 ? 4 : 8;
    }

    @Deprecated
    public static int j(@NonNull Bitmap bitmap) {
        return h(bitmap);
    }

    @NonNull
    public static <T> List<T> k(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t10 : collection) {
            if (t10 != null) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static int l(float f10) {
        return m(f10, 17);
    }

    public static int m(float f10, int i10) {
        return o(Float.floatToIntBits(f10), i10);
    }

    public static int n(int i10) {
        return o(i10, 17);
    }

    public static int o(int i10, int i11) {
        return (i11 * 31) + i10;
    }

    public static int p(@Nullable Object obj, int i10) {
        return o(obj == null ? 0 : obj.hashCode(), i10);
    }

    public static int q(boolean z10) {
        return r(z10, 17);
    }

    public static int r(boolean z10, int i10) {
        return o(z10 ? 1 : 0, i10);
    }

    public static boolean s() {
        return !t();
    }

    public static boolean t() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean u(int i10) {
        return i10 > 0 || i10 == Integer.MIN_VALUE;
    }

    public static boolean v(int i10, int i11) {
        return u(i10) && u(i11);
    }

    @NonNull
    public static String w(@NonNull byte[] bArr) {
        String e10;
        char[] cArr = f29687d;
        synchronized (cArr) {
            e10 = e(bArr, cArr);
        }
        return e10;
    }
}
