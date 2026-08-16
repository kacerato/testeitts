package Y0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import b1.C3828a;
import com.google.android.gms.common.api.C11894a;
import j1.C13778b;
import j1.C13779c;

public class a {

    @NonNull
    public static final String f29691a = "RESPONSE_EXTRA";

    @NonNull
    @Deprecated
    public static final String f29692b = "FIDO2_RESPONSE_EXTRA";

    @NonNull
    @Deprecated
    public static final String f29693c = "FIDO2_ERROR_EXTRA";

    @NonNull
    public static final String f29694d = "FIDO2_CREDENTIAL_EXTRA";

    @NonNull
    public static final C11894a.g f29695e;

    @NonNull
    public static final C11894a f29696f;

    public static final C13778b f29697g;

    static {
        C11894a.g gVar = new C11894a.g();
        f29695e = gVar;
        f29696f = new C11894a("Fido.U2F_ZERO_PARTY_API", new C13779c(), gVar);
        f29697g = new C13778b();
    }

    @NonNull
    public static Z0.a a(@NonNull Activity activity) {
        return new Z0.a(activity);
    }

    @NonNull
    public static Z0.a b(@NonNull Context context) {
        return new Z0.a(context);
    }

    @NonNull
    public static Z0.c c(@NonNull Activity activity) {
        return new Z0.c(activity);
    }

    @NonNull
    public static Z0.c d(@NonNull Context context) {
        return new Z0.c(context);
    }

    @NonNull
    public static C3828a e(@NonNull Activity activity) {
        return new C3828a(activity);
    }

    @NonNull
    public static C3828a f(@NonNull Context context) {
        return new C3828a(context);
    }
}
