package w0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import f1.u;
import f1.y;

public final class C15873d {

    @NonNull
    public static final String f121756a = "com.google.android.gms.auth.api.phone.SMS_CODE_RETRIEVED";

    @NonNull
    public static final String f121757b = "com.google.android.gms.auth.api.phone.EXTRA_SMS_CODE";

    @NonNull
    public static final String f121758c = "com.google.android.gms.auth.api.phone.EXTRA_SMS_CODE_LINE";

    @NonNull
    public static final String f121759d = "com.google.android.gms.auth.api.phone.EXTRA_STATUS";

    @NonNull
    public static InterfaceC15871b a(@NonNull Activity activity) {
        return new u(activity);
    }

    @NonNull
    public static InterfaceC15871b b(@NonNull Context context) {
        return new u(context);
    }

    @NonNull
    public static InterfaceC15872c c(@NonNull Activity activity) {
        return new y(activity);
    }

    @NonNull
    public static InterfaceC15872c d(@NonNull Context context) {
        return new y(context);
    }
}
