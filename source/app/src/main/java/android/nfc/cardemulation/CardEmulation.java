package android.nfc.cardemulation;

import android.app.Activity;
import android.content.ComponentName;
import android.nfc.NfcAdapter;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/cardemulation/CardEmulation.class
 */
public final class CardEmulation {
    public static final String ACTION_CHANGE_DEFAULT = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT";
    public static final String CATEGORY_OTHER = "other";
    public static final String CATEGORY_PAYMENT = "payment";
    public static final String EXTRA_CATEGORY = "category";
    public static final String EXTRA_SERVICE_COMPONENT = "component";
    public static final int SELECTION_MODE_ALWAYS_ASK = 1;
    public static final int SELECTION_MODE_ASK_IF_CONFLICT = 2;
    public static final int SELECTION_MODE_PREFER_DEFAULT = 0;

    CardEmulation() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized CardEmulation getInstance(NfcAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDefaultServiceForCategory(ComponentName service, String category) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDefaultServiceForAid(ComponentName service, String aid) {
        throw new RuntimeException("Stub!");
    }

    public boolean categoryAllowsForegroundPreference(String category) {
        throw new RuntimeException("Stub!");
    }

    public int getSelectionModeForCategory(String category) {
        throw new RuntimeException("Stub!");
    }

    public boolean registerAidsForService(ComponentName service, String category, List<String> aids) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getAidsForService(ComponentName service, String category) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeAidsForService(ComponentName service, String category) {
        throw new RuntimeException("Stub!");
    }

    public boolean setPreferredService(Activity activity, ComponentName service) {
        throw new RuntimeException("Stub!");
    }

    public boolean unsetPreferredService(Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public boolean supportsAidPrefixRegistration() {
        throw new RuntimeException("Stub!");
    }
}
