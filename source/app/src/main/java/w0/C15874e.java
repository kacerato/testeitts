package w0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import f1.C13179c;

public final class C15874e {

    @NonNull
    public static final String f121760a = "com.google.android.gms.auth.api.phone.permission.SEND";

    @NonNull
    public static final String f121761b = "com.google.android.gms.auth.api.phone.SMS_RETRIEVED";

    @NonNull
    public static final String f121762c = "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE";

    @NonNull
    public static final String f121763d = "com.google.android.gms.auth.api.phone.EXTRA_STATUS";

    @NonNull
    public static final String f121764e = "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT";

    @NonNull
    public static final String f121765f = "com.google.android.gms.auth.api.phone.EXTRA_SIM_SUBSCRIPTION_ID";

    @NonNull
    public static AbstractC15876g a(@NonNull Activity activity) {
        return new C13179c(activity);
    }

    @NonNull
    public static AbstractC15876g b(@NonNull Context context) {
        return new C13179c(context);
    }
}
