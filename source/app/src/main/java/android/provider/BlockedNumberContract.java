package android.provider;

import android.content.Context;
import android.net.Uri;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/BlockedNumberContract.class
 */
public class BlockedNumberContract {
    public static final String AUTHORITY = "com.android.blockednumber";
    public static final Uri AUTHORITY_URI = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/BlockedNumberContract$BlockedNumbers.class
 */
    public static class BlockedNumbers {
        public static final String COLUMN_E164_NUMBER = "e164_number";
        public static final String COLUMN_ID = "_id";
        public static final String COLUMN_ORIGINAL_NUMBER = "original_number";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/blocked_number";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/blocked_number";
        public static final Uri CONTENT_URI = null;

        BlockedNumbers() {
            throw new RuntimeException("Stub!");
        }
    }

    BlockedNumberContract() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isBlocked(Context context, String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static int unblock(Context context, String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static boolean canCurrentUserBlockNumbers(Context context) {
        throw new RuntimeException("Stub!");
    }
}
