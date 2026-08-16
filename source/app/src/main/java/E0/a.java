package E0;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@C0.a
public abstract class a<T> {

    public static final Object f5320d = new Object();

    @NonNull
    public final String f5321a;

    @NonNull
    public final Object f5322b;

    @Nullable
    public Object f5323c = null;

    public a(@NonNull String str, @NonNull Object obj) {
        this.f5321a = str;
        this.f5322b = obj;
    }

    @C0.a
    public static boolean c() {
        synchronized (f5320d) {
        }
        return false;
    }

    @NonNull
    @C0.a
    public static a<Float> f(@NonNull String str, @NonNull Float f10) {
        return new e(str, f10);
    }

    @NonNull
    @C0.a
    public static a<Integer> g(@NonNull String str, @NonNull Integer num) {
        return new d(str, num);
    }

    @NonNull
    @C0.a
    public static a<Long> h(@NonNull String str, @NonNull Long l10) {
        return new c(str, l10);
    }

    @NonNull
    @C0.a
    public static a<String> i(@NonNull String str, @NonNull String str2) {
        return new f(str, str2);
    }

    @NonNull
    @C0.a
    public static a<Boolean> j(@NonNull String str, boolean z10) {
        return new b(str, Boolean.valueOf(z10));
    }

    @NonNull
    @C0.a
    public final T a() {
        T t10;
        T t11 = (T) this.f5323c;
        if (t11 != null) {
            return t11;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        Object obj = f5320d;
        synchronized (obj) {
        }
        synchronized (obj) {
            try {
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        try {
            t10 = (T) k(this.f5321a);
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                t10 = (T) k(this.f5321a);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return t10;
    }

    @NonNull
    @C0.a
    @Deprecated
    public final T b() {
        return a();
    }

    @C0.a
    @VisibleForTesting
    public void d(@NonNull T t10) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.f5323c = t10;
        Object obj = f5320d;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    @C0.a
    @VisibleForTesting
    public void e() {
        this.f5323c = null;
    }

    @NonNull
    public abstract Object k(@NonNull String str);
}
