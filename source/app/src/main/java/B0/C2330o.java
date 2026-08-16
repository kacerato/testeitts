package B0;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.zzad;

@G0.F
@C0.a
public class C2330o {

    @Nullable
    public static C f1268a;

    @Nullable
    @VisibleForTesting
    public static volatile B f1269b;

    public static C c(Context context) {
        C c10;
        synchronized (C2330o.class) {
            try {
                if (f1268a == null) {
                    f1268a = new C(context);
                }
                c10 = f1268a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10;
    }

    @G0.F
    @NonNull
    @C0.a
    public C2331p a(@NonNull Context context, @NonNull String str) {
        C2331p c2331p;
        String str2;
        C2331p c2331p2;
        boolean k10 = C2326k.k(context);
        c(context);
        if (!P.f()) {
            throw new zzad();
        }
        String concat = String.valueOf(str).concat(true != k10 ? "-0" : "-1");
        if (f1269b != null) {
            str2 = f1269b.f1133a;
            if (str2.equals(concat)) {
                c2331p2 = f1269b.f1134b;
                return c2331p2;
            }
        }
        c(context);
        Z c10 = P.c(str, k10, false, false);
        if (!c10.f1166a) {
            G0.A.r(c10.f1167b);
            return C2331p.a(str, c10.f1167b, c10.f1168c);
        }
        f1269b = new B(concat, C2331p.d(str, c10.f1169d));
        c2331p = f1269b.f1134b;
        return c2331p;
    }

    @G0.F
    @NonNull
    @C0.a
    public C2331p b(@NonNull Context context, @NonNull String str) {
        try {
            C2331p a10 = a(context, str);
            a10.b();
            return a10;
        } catch (SecurityException e10) {
            C2331p a11 = a(context, str);
            if (!a11.c()) {
                return a11;
            }
            Log.e("PkgSignatureVerifier", "Got flaky result during package signature verification", e10);
            return a11;
        }
    }
}
