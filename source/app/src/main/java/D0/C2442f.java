package D0;

import B0.r;
import G0.C2604z0;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.api.Status;

@C0.a
@Deprecated
public final class C2442f {

    public static final Object f4640e = new Object();

    @Nullable
    public static C2442f f4641f;

    @Nullable
    public final String f4642a;

    public final Status f4643b;

    public final boolean f4644c;

    public final boolean f4645d;

    @C0.a
    @VisibleForTesting
    public C2442f(String str, boolean z10) {
        this.f4642a = str;
        this.f4643b = Status.f61039g;
        this.f4644c = z10;
        this.f4645d = !z10;
    }

    @C0.a
    public static C2442f b(String str) {
        C2442f c2442f;
        synchronized (f4640e) {
            try {
                c2442f = f4641f;
                if (c2442f == null) {
                    throw new IllegalStateException("Initialize must be called before " + str + ".");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c2442f;
    }

    @C0.a
    @VisibleForTesting
    public static void c() {
        synchronized (f4640e) {
            f4641f = null;
        }
    }

    @Nullable
    @C0.a
    public static String d() {
        return b("getGoogleAppId").f4642a;
    }

    @NonNull
    @C0.a
    public static Status e(@NonNull Context context) {
        Status status;
        G0.A.s(context, "Context must not be null.");
        synchronized (f4640e) {
            try {
                if (f4641f == null) {
                    f4641f = new C2442f(context);
                }
                status = f4641f.f4643b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return status;
    }

    @NonNull
    @C0.a
    public static Status f(@NonNull Context context, @NonNull String str, boolean z10) {
        G0.A.s(context, "Context must not be null.");
        G0.A.m(str, "App ID must be nonempty.");
        synchronized (f4640e) {
            try {
                C2442f c2442f = f4641f;
                if (c2442f != null) {
                    return c2442f.a(str);
                }
                C2442f c2442f2 = new C2442f(str, z10);
                f4641f = c2442f2;
                return c2442f2.f4643b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public static boolean g() {
        C2442f b10 = b("isMeasurementEnabled");
        return b10.f4643b.x0() && b10.f4644c;
    }

    @C0.a
    public static boolean h() {
        return b("isMeasurementExplicitlyDisabled").f4645d;
    }

    @C0.a
    @VisibleForTesting
    public Status a(String str) {
        String str2 = this.f4642a;
        if (str2 == null || str2.equals(str)) {
            return Status.f61039g;
        }
        return new Status(10, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: '" + this.f4642a + "'.");
    }

    @C0.a
    @VisibleForTesting
    public C2442f(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", TypedValues.Custom.S_INT, resources.getResourcePackageName(r.b.f1276a));
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z10 = integer == 0;
            r2 = integer != 0;
            this.f4645d = z10;
        } else {
            this.f4645d = false;
        }
        this.f4644c = r2;
        String b10 = C2604z0.b(context);
        b10 = b10 == null ? new G0.G(context).a(K2.p.f10763i) : b10;
        if (TextUtils.isEmpty(b10)) {
            this.f4643b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f4642a = null;
        } else {
            this.f4642a = b10;
            this.f4643b = Status.f61039g;
        }
    }
}
