package B0;

import android.util.Log;
import androidx.annotation.NonNull;
import javax.annotation.Nullable;

public class Z {

    public static final Z f1165e = new Z(true, 3, 1, null, null);

    public final boolean f1166a;

    @Nullable
    public final String f1167b;

    @Nullable
    public final Throwable f1168c;

    public final int f1169d;

    public Z(boolean z10, int i10, int i11, @Nullable String str, @Nullable Throwable th2) {
        this.f1166a = z10;
        this.f1169d = i10;
        this.f1167b = str;
        this.f1168c = th2;
    }

    @Deprecated
    public static Z b() {
        return f1165e;
    }

    public static Z c(@NonNull String str) {
        return new Z(false, 1, 5, str, null);
    }

    public static Z d(@NonNull String str, @NonNull Throwable th2) {
        return new Z(false, 1, 5, str, th2);
    }

    public static Z f(int i10) {
        return new Z(true, i10, 1, null, null);
    }

    public static Z g(int i10, int i11, @NonNull String str, @Nullable Throwable th2) {
        return new Z(false, i10, i11, str, th2);
    }

    @Nullable
    public String a() {
        return this.f1167b;
    }

    public final void e() {
        if (this.f1166a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f1168c != null) {
            Log.d("GoogleCertificatesRslt", a(), this.f1168c);
        } else {
            Log.d("GoogleCertificatesRslt", a());
        }
    }
}
