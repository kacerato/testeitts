package android.service.notification;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/NotificationListenerService.class
 */
public abstract class NotificationListenerService extends Service {
    public static final int HINT_HOST_DISABLE_CALL_EFFECTS = 4;
    public static final int HINT_HOST_DISABLE_EFFECTS = 1;
    public static final int HINT_HOST_DISABLE_NOTIFICATION_EFFECTS = 2;
    public static final int INTERRUPTION_FILTER_ALARMS = 4;
    public static final int INTERRUPTION_FILTER_ALL = 1;
    public static final int INTERRUPTION_FILTER_NONE = 3;
    public static final int INTERRUPTION_FILTER_PRIORITY = 2;
    public static final int INTERRUPTION_FILTER_UNKNOWN = 0;
    public static final int NOTIFICATION_CHANNEL_OR_GROUP_ADDED = 1;
    public static final int NOTIFICATION_CHANNEL_OR_GROUP_DELETED = 3;
    public static final int NOTIFICATION_CHANNEL_OR_GROUP_UPDATED = 2;
    public static final int REASON_APP_CANCEL = 8;
    public static final int REASON_APP_CANCEL_ALL = 9;
    public static final int REASON_CANCEL = 2;
    public static final int REASON_CANCEL_ALL = 3;
    public static final int REASON_CHANNEL_BANNED = 17;
    public static final int REASON_CLICK = 1;
    public static final int REASON_ERROR = 4;
    public static final int REASON_GROUP_OPTIMIZATION = 13;
    public static final int REASON_GROUP_SUMMARY_CANCELED = 12;
    public static final int REASON_LISTENER_CANCEL = 10;
    public static final int REASON_LISTENER_CANCEL_ALL = 11;
    public static final int REASON_PACKAGE_BANNED = 7;
    public static final int REASON_PACKAGE_CHANGED = 5;
    public static final int REASON_PACKAGE_SUSPENDED = 14;
    public static final int REASON_PROFILE_TURNED_OFF = 15;
    public static final int REASON_SNOOZED = 18;
    public static final int REASON_TIMEOUT = 19;
    public static final int REASON_UNAUTOBUNDLED = 16;
    public static final int REASON_USER_STOPPED = 6;
    public static final String SERVICE_INTERFACE = "android.service.notification.NotificationListenerService";
    public static final int SUPPRESSED_EFFECT_SCREEN_OFF = 1;
    public static final int SUPPRESSED_EFFECT_SCREEN_ON = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/NotificationListenerService$Ranking.class
 */
    public static class Ranking {
        public Ranking() {
            throw new RuntimeException("Stub!");
        }

        public String getKey() {
            throw new RuntimeException("Stub!");
        }

        public int getRank() {
            throw new RuntimeException("Stub!");
        }

        public boolean isAmbient() {
            throw new RuntimeException("Stub!");
        }

        public int getSuppressedVisualEffects() {
            throw new RuntimeException("Stub!");
        }

        public boolean matchesInterruptionFilter() {
            throw new RuntimeException("Stub!");
        }

        public int getImportance() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getImportanceExplanation() {
            throw new RuntimeException("Stub!");
        }

        public String getOverrideGroupKey() {
            throw new RuntimeException("Stub!");
        }

        public NotificationChannel getChannel() {
            throw new RuntimeException("Stub!");
        }

        public boolean canShowBadge() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/NotificationListenerService$RankingMap.class
 */
    public static class RankingMap implements Parcelable {
        public static final Parcelable.Creator<RankingMap> CREATOR = null;

        RankingMap() {
            throw new RuntimeException("Stub!");
        }

        public String[] getOrderedKeys() {
            throw new RuntimeException("Stub!");
        }

        public boolean getRanking(String key, Ranking outRanking) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    public NotificationListenerService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void attachBaseContext(Context base) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationPosted(StatusBarNotification sbn) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationPosted(StatusBarNotification sbn, RankingMap rankingMap) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationRemoved(StatusBarNotification sbn) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationRemoved(StatusBarNotification sbn, RankingMap rankingMap) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationRemoved(StatusBarNotification sbn, RankingMap rankingMap, int reason) {
        throw new RuntimeException("Stub!");
    }

    public void onListenerConnected() {
        throw new RuntimeException("Stub!");
    }

    public void onListenerDisconnected() {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationRankingUpdate(RankingMap rankingMap) {
        throw new RuntimeException("Stub!");
    }

    public void onListenerHintsChanged(int hints) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationChannelModified(String pkg, UserHandle user, NotificationChannel channel, int modificationType) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationChannelGroupModified(String pkg, UserHandle user, NotificationChannelGroup group, int modificationType) {
        throw new RuntimeException("Stub!");
    }

    public void onInterruptionFilterChanged(int interruptionFilter) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void cancelNotification(String pkg, String tag, int id2) {
        throw new RuntimeException("Stub!");
    }

    public final void cancelNotification(String key) {
        throw new RuntimeException("Stub!");
    }

    public final void cancelAllNotifications() {
        throw new RuntimeException("Stub!");
    }

    public final void cancelNotifications(String[] keys) {
        throw new RuntimeException("Stub!");
    }

    public final void snoozeNotification(String key, long durationMs) {
        throw new RuntimeException("Stub!");
    }

    public final void setNotificationsShown(String[] keys) {
        throw new RuntimeException("Stub!");
    }

    public final void updateNotificationChannel(String pkg, UserHandle user, NotificationChannel channel) {
        throw new RuntimeException("Stub!");
    }

    public final List<NotificationChannel> getNotificationChannels(String pkg, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public final List<NotificationChannelGroup> getNotificationChannelGroups(String pkg, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public StatusBarNotification[] getActiveNotifications() {
        throw new RuntimeException("Stub!");
    }

    public final StatusBarNotification[] getSnoozedNotifications() {
        throw new RuntimeException("Stub!");
    }

    public StatusBarNotification[] getActiveNotifications(String[] keys) {
        throw new RuntimeException("Stub!");
    }

    public final int getCurrentListenerHints() {
        throw new RuntimeException("Stub!");
    }

    public final int getCurrentInterruptionFilter() {
        throw new RuntimeException("Stub!");
    }

    public final void requestListenerHints(int hints) {
        throw new RuntimeException("Stub!");
    }

    public final void requestInterruptionFilter(int interruptionFilter) {
        throw new RuntimeException("Stub!");
    }

    public RankingMap getCurrentRanking() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    public static void requestRebind(ComponentName componentName) {
        throw new RuntimeException("Stub!");
    }

    public final void requestUnbind() {
        throw new RuntimeException("Stub!");
    }
}
