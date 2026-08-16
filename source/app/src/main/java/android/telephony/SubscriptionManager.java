package android.telephony;

import android.content.Context;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/SubscriptionManager.class
 */
public class SubscriptionManager {
    public static final String ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED";
    public static final String ACTION_DEFAULT_SUBSCRIPTION_CHANGED = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED";
    public static final int DATA_ROAMING_DISABLE = 0;
    public static final int DATA_ROAMING_ENABLE = 1;
    public static final String EXTRA_SUBSCRIPTION_INDEX = "android.telephony.extra.SUBSCRIPTION_INDEX";
    public static final int INVALID_SUBSCRIPTION_ID = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/SubscriptionManager$OnSubscriptionsChangedListener.class
 */
    public static class OnSubscriptionsChangedListener {
        public OnSubscriptionsChangedListener() {
            throw new RuntimeException("Stub!");
        }

        public void onSubscriptionsChanged() {
            throw new RuntimeException("Stub!");
        }
    }

    SubscriptionManager() {
        throw new RuntimeException("Stub!");
    }

    public static SubscriptionManager from(Context context) {
        throw new RuntimeException("Stub!");
    }

    public void addOnSubscriptionsChangedListener(OnSubscriptionsChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnSubscriptionsChangedListener(OnSubscriptionsChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public SubscriptionInfo getActiveSubscriptionInfo(int subId) {
        throw new RuntimeException("Stub!");
    }

    public SubscriptionInfo getActiveSubscriptionInfoForSimSlotIndex(int slotIndex) {
        throw new RuntimeException("Stub!");
    }

    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        throw new RuntimeException("Stub!");
    }

    public int getActiveSubscriptionInfoCount() {
        throw new RuntimeException("Stub!");
    }

    public int getActiveSubscriptionInfoCountMax() {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultSubscriptionId() {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultVoiceSubscriptionId() {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultSmsSubscriptionId() {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultDataSubscriptionId() {
        throw new RuntimeException("Stub!");
    }

    public boolean isNetworkRoaming(int subId) {
        throw new RuntimeException("Stub!");
    }
}
