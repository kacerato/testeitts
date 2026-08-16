package android.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/FontsContract.class
 */
public class FontsContract {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/FontsContract$Columns.class
 */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";

        Columns() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/FontsContract$FontInfo.class
 */
    public static class FontInfo {
        FontInfo() {
            throw new RuntimeException("Stub!");
        }

        public Uri getUri() {
            throw new RuntimeException("Stub!");
        }

        public int getTtcIndex() {
            throw new RuntimeException("Stub!");
        }

        public FontVariationAxis[] getAxes() {
            throw new RuntimeException("Stub!");
        }

        public int getWeight() {
            throw new RuntimeException("Stub!");
        }

        public boolean isItalic() {
            throw new RuntimeException("Stub!");
        }

        public int getResultCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/FontsContract$FontFamilyResult.class
 */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_REJECTED = 3;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;

        FontFamilyResult() {
            throw new RuntimeException("Stub!");
        }

        public int getStatusCode() {
            throw new RuntimeException("Stub!");
        }

        public FontInfo[] getFonts() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/FontsContract$FontRequestCallback.class
 */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        public FontRequestCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onTypefaceRetrieved(Typeface typeface) {
            throw new RuntimeException("Stub!");
        }

        public void onTypefaceRequestFailed(int reason) {
            throw new RuntimeException("Stub!");
        }
    }

    FontsContract() {
        throw new RuntimeException("Stub!");
    }

    public static void requestFonts(Context context, FontRequest request, Handler handler, CancellationSignal cancellationSignal, FontRequestCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest request) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fonts) {
        throw new RuntimeException("Stub!");
    }
}
