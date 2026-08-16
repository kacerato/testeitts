package x0;

import G0.F;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11900g;

@F
@C0.c
public class C16039a extends C11900g {

    @F
    public static final int f127853t = 3000;

    @F
    public static final int f127854u = 3001;

    @F
    public static final int f127855v = 3002;

    @F
    public static final int f127856w = 3003;

    @F
    public static final int f127857x = 3004;

    @F
    public static final int f127858y = 3005;

    @F
    public static final int f127859z = 3006;

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case 3000:
                return "AUTH_API_INVALID_CREDENTIALS";
            case f127854u:
                return "AUTH_API_ACCESS_FORBIDDEN";
            case f127855v:
                return "AUTH_API_CLIENT_ERROR";
            case f127856w:
                return "AUTH_API_SERVER_ERROR";
            case f127857x:
                return "AUTH_TOKEN_ERROR";
            case f127858y:
                return "AUTH_URL_RESOLUTION";
            case f127859z:
                return "AUTH_APP_CERT_ERROR";
            default:
                return C11900g.a(i10);
        }
    }
}
