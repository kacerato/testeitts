package com.tonyodev.fetch2;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.tonyodev.fetch2.DownloadNotification;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public interface FetchNotificationManager {
    void cancelNotification(int i10);

    void cancelOngoingNotifications();

    void createNotificationChannels(@NotNull Context context, @NotNull NotificationManager notificationManager);

    @NotNull
    PendingIntent getActionPendingIntent(@NotNull DownloadNotification downloadNotification, @NotNull DownloadNotification.ActionType actionType);

    @NotNull
    BroadcastReceiver getBroadcastReceiver();

    @NotNull
    String getChannelId(int i10, @NotNull Context context);

    @NotNull
    String getDownloadNotificationTitle(@NotNull Download download);

    @NotNull
    Fetch getFetchInstanceForNamespace(@NotNull String str);

    @NotNull
    PendingIntent getGroupActionPendingIntent(int i10, @NotNull List<? extends DownloadNotification> list, @NotNull DownloadNotification.ActionType actionType);

    @NotNull
    NotificationCompat.Builder getNotificationBuilder(int i10, int i11);

    @NotNull
    String getNotificationManagerAction();

    long getNotificationTimeOutMillis();

    @NotNull
    String getSubtitleText(@NotNull Context context, @NotNull DownloadNotification downloadNotification);

    void notify(int i10);

    boolean postDownloadUpdate(@NotNull Download download);

    void registerBroadcastReceiver();

    boolean shouldCancelNotification(@NotNull DownloadNotification downloadNotification);

    boolean shouldUpdateNotification(@NotNull DownloadNotification downloadNotification);

    void unregisterBroadcastReceiver();

    boolean updateGroupSummaryNotification(int i10, @NotNull NotificationCompat.Builder builder, @NotNull List<? extends DownloadNotification> list, @NotNull Context context);

    void updateNotification(@NotNull NotificationCompat.Builder builder, @NotNull DownloadNotification downloadNotification, @NotNull Context context);
}
