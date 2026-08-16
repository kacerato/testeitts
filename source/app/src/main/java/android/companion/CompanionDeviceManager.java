package android.companion;

import android.content.ComponentName;
import android.content.IntentSender;
import android.os.Handler;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/CompanionDeviceManager.class
 */
public final class CompanionDeviceManager {
    public static final String EXTRA_DEVICE = "android.companion.extra.DEVICE";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/CompanionDeviceManager$Callback.class
 */
    public static abstract class Callback {
        public abstract void onDeviceFound(IntentSender intentSender);

        public abstract void onFailure(CharSequence charSequence);

        public Callback() {
            throw new RuntimeException("Stub!");
        }
    }

    CompanionDeviceManager() {
        throw new RuntimeException("Stub!");
    }

    public void associate(AssociationRequest request, Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getAssociations() {
        throw new RuntimeException("Stub!");
    }

    public void disassociate(String deviceMacAddress) {
        throw new RuntimeException("Stub!");
    }

    public void requestNotificationAccess(ComponentName component) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNotificationAccess(ComponentName component) {
        throw new RuntimeException("Stub!");
    }
}
