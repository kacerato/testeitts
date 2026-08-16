package v0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.C11970p;

public final class C15759a {

    @NonNull
    public static final String f121044a = "com.google.android.gms.auth.START_ACCOUNT_EXPORT";

    @NonNull
    public static final String f121045b = "com.google.android.gms.auth.ACCOUNT_IMPORT_DATA_AVAILABLE";

    @NonNull
    public static final String f121046c = "com.google.android.gms.auth.ACCOUNT_EXPORT_DATA_AVAILABLE";

    @NonNull
    public static final String f121047d = "key_extra_account_type";

    public static final C11894a.g f121048e;

    public static final C11894a.AbstractC0948a f121049f;

    @NonNull
    public static final C11894a f121050g;

    @Deprecated
    public static final C11970p f121051h;

    @Deprecated
    public static final C11970p f121052i;

    static {
        C11894a.g gVar = new C11894a.g();
        f121048e = gVar;
        f fVar = new f();
        f121049f = fVar;
        f121050g = new C11894a("AccountTransfer.ACCOUNT_TRANSFER_API", fVar, gVar);
        f121051h = new C11970p();
        f121052i = new C11970p();
    }

    @NonNull
    public static C15760b a(@NonNull Activity activity) {
        return new C15760b(activity, (w) null);
    }

    @NonNull
    public static C15760b b(@NonNull Context context) {
        return new C15760b(context, (w) null);
    }
}
