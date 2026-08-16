package w0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11900g;

public final class C15877h extends C11900g {

    public static final int f121769t = 36500;

    public static final int f121770u = 36501;

    public static final int f121771v = 36502;

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case f121769t:
                return "PLATFORM_NOT_SUPPORTED";
            case f121770u:
                return "API_NOT_AVAILABLE";
            case f121771v:
                return "USER_PERMISSION_REQUIRED";
            default:
                return C11900g.a(i10);
        }
    }
}
