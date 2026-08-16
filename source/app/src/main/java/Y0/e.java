package y0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11900g;

@Deprecated
public final class e extends C11900g {

    public static final int f129892t = 12500;

    public static final int f129893u = 12501;

    public static final int f129894v = 12502;

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case f129892t:
                return "A non-recoverable sign in failure occurred";
            case f129893u:
                return "Sign in action cancelled";
            case f129894v:
                return "Sign-in in progress";
            default:
                return C11900g.a(i10);
        }
    }
}
