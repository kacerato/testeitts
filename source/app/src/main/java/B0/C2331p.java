package B0;

import androidx.annotation.NonNull;
import javax.annotation.Nullable;

public class C2331p {

    public final String f1270a;

    public final boolean f1271b;

    @Nullable
    public final String f1272c;

    @Nullable
    public final Throwable f1273d;

    public C2331p(String str, int i10, boolean z10, @Nullable String str2, @Nullable Throwable th2) {
        this.f1270a = str;
        this.f1271b = z10;
        this.f1272c = str2;
        this.f1273d = th2;
    }

    @NonNull
    public static C2331p a(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
        return new C2331p(str, 1, false, str2, th2);
    }

    @NonNull
    public static C2331p d(@NonNull String str, int i10) {
        return new C2331p(str, i10, true, null, null);
    }

    public final void b() {
        if (this.f1271b) {
            return;
        }
        String str = this.f1272c;
        Throwable th2 = this.f1273d;
        String concat = "PackageVerificationRslt: ".concat(String.valueOf(str));
        if (th2 == null) {
            throw new SecurityException(concat);
        }
        throw new SecurityException(concat, th2);
    }

    public final boolean c() {
        return this.f1271b;
    }
}
