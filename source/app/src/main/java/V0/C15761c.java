package v0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11900g;

public final class C15761c extends C11900g {

    public static final int f121057t = 20500;

    public static final int f121058u = 20501;

    public static final int f121059v = 20502;

    public static final int f121060w = 20503;

    public static final int f121061x = 20504;

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case f121057t:
                return "NOT_ALLOWED_SECURITY";
            case f121058u:
                return "NO_DATA_AVAILABLE";
            case f121059v:
                return "INVALID_REQUEST";
            case f121060w:
                return "CHALLENGE_NOT_ALLOWED";
            case f121061x:
                return "SESSION_INACTIVE";
            default:
                return C11900g.a(i10);
        }
    }
}
