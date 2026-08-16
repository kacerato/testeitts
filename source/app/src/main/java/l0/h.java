package L0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11900g;

public final class h extends C11900g {

    public static final int f11511t = 0;

    public static final int f11512u = 46000;

    public static final int f11513v = 46001;

    public static final int f11514w = 46002;

    public static final int f11515x = 46003;

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case f11512u:
                return "UNKNOWN_MODULE";
            case f11513v:
                return "NOT_ALLOWED_MODULE";
            case f11514w:
                return "MODULE_NOT_FOUND";
            case f11515x:
                return "INSUFFICIENT_STORAGE";
            default:
                return C11900g.a(i10);
        }
    }
}
