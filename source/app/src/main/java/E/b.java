package E;

import android.net.Uri;
import android.provider.MediaStore;

public final class b {

    public static final int f5301a = 512;

    public static final int f5302b = 384;

    public static boolean a(Uri uri) {
        return b(uri) && !e(uri);
    }

    public static boolean b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && MediaStore.AUTHORITY.equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return b(uri) && e(uri);
    }

    public static boolean d(int i10, int i11) {
        return i10 != Integer.MIN_VALUE && i11 != Integer.MIN_VALUE && i10 <= 512 && i11 <= 384;
    }

    public static boolean e(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
