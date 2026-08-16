package G0;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

@C0.a
public final class A {
    public A() {
        throw new AssertionError((Object) "Uninstantiable");
    }

    public static String A(String str, Object... objArr) {
        int indexOf;
        StringBuilder sb2 = new StringBuilder(str.length() + 48);
        int i10 = 0;
        int i11 = 0;
        while (i10 < 3 && (indexOf = str.indexOf("%s", i11)) != -1) {
            sb2.append(str.substring(i11, indexOf));
            sb2.append(objArr[i10]);
            i11 = indexOf + 2;
            i10++;
        }
        sb2.append(str.substring(i11));
        if (i10 < 3) {
            sb2.append(" [");
            sb2.append(objArr[i10]);
            for (int i12 = i10 + 1; i12 < 3; i12++) {
                sb2.append(", ");
                sb2.append(objArr[i12]);
            }
            sb2.append("]");
        }
        return sb2.toString();
    }

    @C0.a
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    @C0.a
    public static void b(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @C0.a
    public static void c(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @C0.a
    public static double d(double d10, double d11, double d12, @NonNull String str) {
        if (d10 < d11) {
            throw new IllegalArgumentException(A("%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d11), Double.valueOf(d12)));
        }
        if (d10 <= d12) {
            return d10;
        }
        throw new IllegalArgumentException(A("%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d11), Double.valueOf(d12)));
    }

    @C0.a
    public static float e(float f10, float f11, float f12, @NonNull String str) {
        if (f10 < f11) {
            throw new IllegalArgumentException(A("%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f11), Float.valueOf(f12)));
        }
        if (f10 <= f12) {
            return f10;
        }
        throw new IllegalArgumentException(A("%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f11), Float.valueOf(f12)));
    }

    @C0.a
    public static int f(int i10, int i11, int i12, @NonNull String str) {
        if (i10 < i11) {
            throw new IllegalArgumentException(A("%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        if (i10 <= i12) {
            return i10;
        }
        throw new IllegalArgumentException(A("%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
    }

    @C0.a
    public static long g(long j10, long j11, long j12, @NonNull String str) {
        if (j10 < j11) {
            throw new IllegalArgumentException(A("%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j11), Long.valueOf(j12)));
        }
        if (j10 <= j12) {
            return j10;
        }
        throw new IllegalArgumentException(A("%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j11), Long.valueOf(j12)));
    }

    @C0.a
    public static void h(@NonNull Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            throw new IllegalStateException("Must be called on " + handler.getLooper().getThread().getName() + " thread, but got " + name + ".");
        }
    }

    @C0.a
    public static void i(@NonNull Handler handler, @NonNull String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @C0.a
    public static void j() {
        k("Must be called on the main application thread");
    }

    @C0.a
    public static void k(@NonNull String str) {
        if (!T0.K.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @C0.a
    public static String l(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    @NonNull
    @C0.a
    public static String m(@Nullable String str, @NonNull Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @C0.a
    public static void n() {
        o("Must not be called on GoogleApiHandler thread.");
    }

    @C0.a
    public static void o(@NonNull String str) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && Objects.equals(myLooper.getThread().getName(), "GoogleApiHandler")) {
            throw new IllegalStateException(str);
        }
    }

    @C0.a
    public static void p() {
        q("Must not be called on the main application thread");
    }

    @C0.a
    public static void q(@NonNull String str) {
        if (T0.K.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @C0.a
    public static <T> T r(@Nullable T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException("null reference");
    }

    @NonNull
    @C0.a
    public static <T> T s(@NonNull T t10, @NonNull Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @C0.a
    public static int t(int i10) {
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @C0.a
    public static int u(int i10, @NonNull Object obj) {
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @C0.a
    public static long v(long j10) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException("Given Long is zero");
    }

    @C0.a
    public static long w(long j10, @NonNull Object obj) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @C0.a
    public static void x(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    @C0.a
    public static void y(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @C0.a
    public static void z(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
