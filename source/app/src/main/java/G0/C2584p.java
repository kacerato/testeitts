package G0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public final class C2584p {

    public final String f7476a;

    @Nullable
    public final String f7477b;

    @C0.a
    public C2584p(@NonNull String str) {
        this(str, null);
    }

    @C0.a
    public boolean a(int i10) {
        return Log.isLoggable(this.f7476a, i10);
    }

    @C0.a
    public boolean b() {
        return false;
    }

    @C0.a
    public void c(@NonNull String str, @NonNull String str2) {
        if (a(3)) {
            Log.d(str, r(str2));
        }
    }

    @C0.a
    public void d(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(3)) {
            Log.d(str, r(str2), th2);
        }
    }

    @C0.a
    public void e(@NonNull String str, @NonNull String str2) {
        if (a(6)) {
            Log.e(str, r(str2));
        }
    }

    @C0.a
    public void f(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(6)) {
            Log.e(str, r(str2), th2);
        }
    }

    @C0.a
    public void g(@NonNull String str, @NonNull String str2, @NonNull Object... objArr) {
        if (a(6)) {
            Log.e(str, s(str2, objArr));
        }
    }

    @C0.a
    public void h(@NonNull String str, @NonNull String str2) {
        if (a(4)) {
            Log.i(str, r(str2));
        }
    }

    @C0.a
    public void i(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(4)) {
            Log.i(str, r(str2), th2);
        }
    }

    @C0.a
    public void j(@NonNull String str, @NonNull String str2) {
    }

    @C0.a
    public void k(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
    }

    @C0.a
    public void l(@NonNull String str, @NonNull String str2) {
        if (a(2)) {
            Log.v(str, r(str2));
        }
    }

    @C0.a
    public void m(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(2)) {
            Log.v(str, r(str2), th2);
        }
    }

    @C0.a
    public void n(@NonNull String str, @NonNull String str2) {
        if (a(5)) {
            Log.w(str, r(str2));
        }
    }

    @C0.a
    public void o(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(5)) {
            Log.w(str, r(str2), th2);
        }
    }

    @C0.a
    public void p(@NonNull String str, @NonNull String str2, @NonNull Object... objArr) {
        if (a(5)) {
            Log.w(this.f7476a, s(str2, objArr));
        }
    }

    @C0.a
    public void q(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(7)) {
            Log.e(str, r(str2), th2);
            Log.wtf(str, r(str2), th2);
        }
    }

    public final String r(String str) {
        String str2 = this.f7477b;
        return str2 == null ? str : str2.concat(str);
    }

    public final String s(String str, Object... objArr) {
        String str2 = this.f7477b;
        String format = String.format(str, objArr);
        return str2 == null ? format : str2.concat(format);
    }

    @C0.a
    public C2584p(@NonNull String str, @Nullable String str2) {
        A.s(str, "log tag cannot be null");
        A.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f7476a = str;
        this.f7477b = (str2 == null || str2.length() <= 0) ? null : str2;
    }
}
