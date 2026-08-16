package android.os.strictmode;

import android.net.Uri;

public final class ContentUriWithoutPermissionViolation extends Violation {
    ContentUriWithoutPermissionViolation(Uri uri, String location) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
