package com.tonyodev.fetch2;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.tonyodev.fetch2.DownloadNotification;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2.util.NotificationUtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDefaultFetchNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n766#2:354\n857#2,2:355\n*S KotlinDebug\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n*L\n230#1:354\n230#1:355,2\n*E\n"})
public abstract class DefaultFetchNotificationManager implements FetchNotificationManager {

    @NotNull
    private final Context context;

    @NotNull
    private final Set<Integer> downloadNotificationExcludeSet;

    @NotNull
    private final Map<Integer, NotificationCompat.Builder> downloadNotificationsBuilderMap;

    @NotNull
    private final Map<Integer, DownloadNotification> downloadNotificationsMap;

    @NotNull
    private final NotificationManager notificationManager;

    @NotNull
    private final String notificationManagerAction;

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DownloadNotification.ActionType.values().length];
            try {
                iArr[DownloadNotification.ActionType.CANCEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DownloadNotification.ActionType.DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DownloadNotification.ActionType.RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DownloadNotification.ActionType.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DownloadNotification.ActionType.RETRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DownloadNotification.ActionType.CANCEL_ALL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DownloadNotification.ActionType.DELETE_ALL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DownloadNotification.ActionType.RESUME_ALL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DownloadNotification.ActionType.PAUSE_ALL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DownloadNotification.ActionType.RETRY_ALL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Status.values().length];
            try {
                iArr2[Status.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public DefaultFetchNotificationManager(@NotNull Context context) {
        M.p(context, "context");
        Context applicationContext = context.getApplicationContext();
        M.o(applicationContext, "getApplicationContext(...)");
        this.context = applicationContext;
        Object systemService = context.getSystemService(Context.NOTIFICATION_SERVICE);
        M.n(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        this.notificationManager = (NotificationManager) systemService;
        this.downloadNotificationsMap = new LinkedHashMap();
        this.downloadNotificationsBuilderMap = new LinkedHashMap();
        this.downloadNotificationExcludeSet = new LinkedHashSet();
        this.notificationManagerAction = "DEFAULT_FETCH2_NOTIFICATION_MANAGER_ACTION_" + System.currentTimeMillis();
        initialize();
    }

    private final String getEtaText(Context context, long j10) {
        long j11 = j10 / 1000;
        long j12 = 3600;
        long j13 = j11 / j12;
        long j14 = j11 - (j12 * j13);
        long j15 = 60;
        long j16 = j14 / j15;
        long j17 = j14 - (j15 * j16);
        if (j13 > 0) {
            String string = context.getString(R.string.fetch_notification_download_eta_hrs, Long.valueOf(j13), Long.valueOf(j16), Long.valueOf(j17));
            M.o(string, "getString(...)");
            return string;
        }
        if (j16 > 0) {
            String string2 = context.getString(R.string.fetch_notification_download_eta_min, Long.valueOf(j16), Long.valueOf(j17));
            M.o(string2, "getString(...)");
            return string2;
        }
        String string3 = context.getString(R.string.fetch_notification_download_eta_sec, Long.valueOf(j17));
        M.o(string3, "getString(...)");
        return string3;
    }

    private final void initialize() {
        registerBroadcastReceiver();
        createNotificationChannels(this.context, this.notificationManager);
    }

    @Override
    public void cancelNotification(int i10) {
        synchronized (this.downloadNotificationsMap) {
            try {
                this.notificationManager.cancel(i10);
                this.downloadNotificationsBuilderMap.remove(Integer.valueOf(i10));
                this.downloadNotificationExcludeSet.remove(Integer.valueOf(i10));
                DownloadNotification downloadNotification = this.downloadNotificationsMap.get(Integer.valueOf(i10));
                if (downloadNotification != null) {
                    this.downloadNotificationsMap.remove(Integer.valueOf(i10));
                    notify(downloadNotification.getGroupId());
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void cancelOngoingNotifications() {
        synchronized (this.downloadNotificationsMap) {
            try {
                Iterator<DownloadNotification> it = this.downloadNotificationsMap.values().iterator();
                while (it.hasNext()) {
                    DownloadNotification next = it.next();
                    if (!next.isFailed() && !next.isCompleted()) {
                        this.notificationManager.cancel(next.getNotificationId());
                        this.downloadNotificationsBuilderMap.remove(Integer.valueOf(next.getNotificationId()));
                        this.downloadNotificationExcludeSet.remove(Integer.valueOf(next.getNotificationId()));
                        it.remove();
                        notify(next.getGroupId());
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void createNotificationChannels(@NotNull Context context, @NotNull NotificationManager notificationManager) {
        M.p(context, "context");
        M.p(notificationManager, "notificationManager");
        String string = context.getString(R.string.fetch_notification_default_channel_id);
        M.o(string, "getString(...)");
        if (notificationManager.getNotificationChannel(string) == null) {
            String string2 = context.getString(R.string.fetch_notification_default_channel_name);
            M.o(string2, "getString(...)");
            notificationManager.createNotificationChannel(new NotificationChannel(string, string2, 3));
        }
    }

    @Override
    @NotNull
    public PendingIntent getActionPendingIntent(@NotNull DownloadNotification downloadNotification, @NotNull DownloadNotification.ActionType actionType) {
        PendingIntent broadcast;
        M.p(downloadNotification, "downloadNotification");
        M.p(actionType, "actionType");
        synchronized (this.downloadNotificationsMap) {
            Intent intent = new Intent(getNotificationManagerAction());
            intent.putExtra(FetchIntent.EXTRA_NAMESPACE, downloadNotification.getNamespace());
            intent.putExtra(FetchIntent.EXTRA_DOWNLOAD_ID, downloadNotification.getNotificationId());
            intent.putExtra(FetchIntent.EXTRA_NOTIFICATION_ID, downloadNotification.getNotificationId());
            int i10 = 0;
            intent.putExtra(FetchIntent.EXTRA_GROUP_ACTION, false);
            intent.putExtra(FetchIntent.EXTRA_NOTIFICATION_GROUP_ID, downloadNotification.getGroupId());
            int i11 = WhenMappings.$EnumSwitchMapping$0[actionType.ordinal()];
            if (i11 == 1) {
                i10 = 4;
            } else if (i11 == 2) {
                i10 = 2;
            } else if (i11 == 3) {
                i10 = 1;
            } else if (i11 != 4) {
                i10 = 5;
                if (i11 != 5) {
                    i10 = -1;
                }
            }
            intent.putExtra(FetchIntent.EXTRA_ACTION_TYPE, i10);
            broadcast = PendingIntent.getBroadcast(this.context, downloadNotification.getNotificationId() + i10, intent, 134217728);
            M.o(broadcast, "getBroadcast(...)");
        }
        return broadcast;
    }

    @Override
    @NotNull
    public BroadcastReceiver getBroadcastReceiver() {
        return new BroadcastReceiver() {
            @Override
            public void onReceive(@Nullable Context context, @Nullable Intent intent) {
                NotificationUtilsKt.onDownloadNotificationActionTriggered(context, intent, DefaultFetchNotificationManager.this);
            }
        };
    }

    @Override
    @NotNull
    public String getChannelId(int i10, @NotNull Context context) {
        M.p(context, "context");
        String string = context.getString(R.string.fetch_notification_default_channel_id);
        M.o(string, "getString(...)");
        return string;
    }

    @Override
    @NotNull
    public String getDownloadNotificationTitle(@NotNull Download download) {
        M.p(download, "download");
        String lastPathSegment = download.getFileUri().getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = Uri.parse(download.getUrl()).getLastPathSegment();
        }
        return lastPathSegment == null ? download.getUrl() : lastPathSegment;
    }

    @Override
    @NotNull
    public abstract Fetch getFetchInstanceForNamespace(@NotNull String str);

    @Override
    @NotNull
    public PendingIntent getGroupActionPendingIntent(int i10, @NotNull List<? extends DownloadNotification> downloadNotifications, @NotNull DownloadNotification.ActionType actionType) {
        int i11;
        PendingIntent broadcast;
        M.p(downloadNotifications, "downloadNotifications");
        M.p(actionType, "actionType");
        synchronized (this.downloadNotificationsMap) {
            Intent intent = new Intent(getNotificationManagerAction());
            intent.putExtra(FetchIntent.EXTRA_NOTIFICATION_GROUP_ID, i10);
            intent.putExtra(FetchIntent.EXTRA_DOWNLOAD_NOTIFICATIONS, new ArrayList(downloadNotifications));
            intent.putExtra(FetchIntent.EXTRA_GROUP_ACTION, true);
            switch (WhenMappings.$EnumSwitchMapping$0[actionType.ordinal()]) {
                case 6:
                    i11 = 8;
                    break;
                case 7:
                    i11 = 9;
                    break;
                case 8:
                    i11 = 7;
                    break;
                case 9:
                    i11 = 6;
                    break;
                case 10:
                    i11 = 10;
                    break;
                default:
                    i11 = -1;
                    break;
            }
            intent.putExtra(FetchIntent.EXTRA_ACTION_TYPE, i11);
            broadcast = PendingIntent.getBroadcast(this.context, i10 + i11, intent, 134217728);
            M.o(broadcast, "getBroadcast(...)");
        }
        return broadcast;
    }

    @Override
    @SuppressLint({"RestrictedApi"})
    @NotNull
    public NotificationCompat.Builder getNotificationBuilder(int i10, int i11) {
        NotificationCompat.Builder builder;
        synchronized (this.downloadNotificationsMap) {
            try {
                builder = this.downloadNotificationsBuilderMap.get(Integer.valueOf(i10));
                if (builder == null) {
                    Context context = this.context;
                    builder = new NotificationCompat.Builder(context, getChannelId(i10, context));
                }
                this.downloadNotificationsBuilderMap.put(Integer.valueOf(i10), builder);
                builder.setGroup(String.valueOf(i10)).setStyle(null).setProgress(0, 0, false).setContentTitle(null).setContentText(null).setContentIntent(null).setGroupSummary(false).setTimeoutAfter(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER_RESET).setOngoing(false).setGroup(String.valueOf(i11)).setOnlyAlertOnce(true).setSmallIcon(android.R.drawable.stat_sys_download_done).mActions.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return builder;
    }

    @Override
    @NotNull
    public String getNotificationManagerAction() {
        return this.notificationManagerAction;
    }

    @Override
    public long getNotificationTimeOutMillis() {
        return FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER;
    }

    @Override
    @NotNull
    public String getSubtitleText(@NotNull Context context, @NotNull DownloadNotification downloadNotification) {
        M.p(context, "context");
        M.p(downloadNotification, "downloadNotification");
        if (downloadNotification.isCompleted()) {
            String string = context.getString(R.string.fetch_notification_download_complete);
            M.o(string, "getString(...)");
            return string;
        }
        if (downloadNotification.isFailed()) {
            String string2 = context.getString(R.string.fetch_notification_download_failed);
            M.o(string2, "getString(...)");
            return string2;
        }
        if (downloadNotification.isPaused()) {
            String string3 = context.getString(R.string.fetch_notification_download_paused);
            M.o(string3, "getString(...)");
            return string3;
        }
        if (downloadNotification.isQueued()) {
            String string4 = context.getString(R.string.fetch_notification_download_starting);
            M.o(string4, "getString(...)");
            return string4;
        }
        if (downloadNotification.getEtaInMilliSeconds() >= 0) {
            return getEtaText(context, downloadNotification.getEtaInMilliSeconds());
        }
        String string5 = context.getString(R.string.fetch_notification_download_downloading);
        M.o(string5, "getString(...)");
        return string5;
    }

    @Override
    public void notify(int i10) {
        synchronized (this.downloadNotificationsMap) {
            try {
                Collection<DownloadNotification> values = this.downloadNotificationsMap.values();
                ArrayList arrayList = new ArrayList();
                for (DownloadNotification downloadNotification : values) {
                    if (downloadNotification.getGroupId() == i10) {
                        arrayList.add(downloadNotification);
                    }
                }
                NotificationCompat.Builder notificationBuilder = getNotificationBuilder(i10, i10);
                boolean updateGroupSummaryNotification = updateGroupSummaryNotification(i10, notificationBuilder, arrayList, this.context);
                for (DownloadNotification downloadNotification2 : arrayList) {
                    if (shouldUpdateNotification(downloadNotification2)) {
                        int notificationId = downloadNotification2.getNotificationId();
                        NotificationCompat.Builder notificationBuilder2 = getNotificationBuilder(notificationId, i10);
                        updateNotification(notificationBuilder2, downloadNotification2, this.context);
                        this.notificationManager.notify(notificationId, notificationBuilder2.build());
                        int i11 = WhenMappings.$EnumSwitchMapping$1[downloadNotification2.getStatus().ordinal()];
                        if (i11 == 1 || i11 == 2) {
                            this.downloadNotificationExcludeSet.add(Integer.valueOf(downloadNotification2.getNotificationId()));
                        }
                    }
                }
                if (updateGroupSummaryNotification) {
                    this.notificationManager.notify(i10, notificationBuilder.build());
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean postDownloadUpdate(@NotNull Download download) {
        M.p(download, "download");
        synchronized (this.downloadNotificationsMap) {
            try {
                if (this.downloadNotificationsMap.size() > 50) {
                    this.downloadNotificationsBuilderMap.clear();
                    this.downloadNotificationsMap.clear();
                }
                DownloadNotification downloadNotification = this.downloadNotificationsMap.get(Integer.valueOf(download.getId()));
                if (downloadNotification == null) {
                    downloadNotification = new DownloadNotification();
                }
                downloadNotification.setStatus(download.getStatus());
                downloadNotification.setProgress(download.getProgress());
                downloadNotification.setNotificationId(download.getId());
                downloadNotification.setGroupId(download.getGroup());
                downloadNotification.setEtaInMilliSeconds(download.getEtaInMilliSeconds());
                downloadNotification.setDownloadedBytesPerSecond(download.getDownloadedBytesPerSecond());
                downloadNotification.setTotal(download.getTotal());
                downloadNotification.setDownloaded(download.getDownloaded());
                downloadNotification.setNamespace(download.getNamespace());
                downloadNotification.setTitle(getDownloadNotificationTitle(download));
                this.downloadNotificationsMap.put(Integer.valueOf(download.getId()), downloadNotification);
                if (this.downloadNotificationExcludeSet.contains(Integer.valueOf(downloadNotification.getNotificationId())) && !downloadNotification.isFailed() && !downloadNotification.isCompleted()) {
                    this.downloadNotificationExcludeSet.remove(Integer.valueOf(downloadNotification.getNotificationId()));
                }
                if (!downloadNotification.isCancelledNotification() && !shouldCancelNotification(downloadNotification)) {
                    notify(download.getGroup());
                }
                cancelNotification(downloadNotification.getNotificationId());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    @Override
    public void registerBroadcastReceiver() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.context.registerReceiver(getBroadcastReceiver(), new IntentFilter(getNotificationManagerAction()), 4);
        } else {
            this.context.registerReceiver(getBroadcastReceiver(), new IntentFilter(getNotificationManagerAction()));
        }
    }

    @Override
    public boolean shouldCancelNotification(@NotNull DownloadNotification downloadNotification) {
        M.p(downloadNotification, "downloadNotification");
        return downloadNotification.isPaused();
    }

    @Override
    public boolean shouldUpdateNotification(@NotNull DownloadNotification downloadNotification) {
        M.p(downloadNotification, "downloadNotification");
        return !this.downloadNotificationExcludeSet.contains(Integer.valueOf(downloadNotification.getNotificationId()));
    }

    @Override
    public void unregisterBroadcastReceiver() {
        this.context.unregisterReceiver(getBroadcastReceiver());
    }

    @Override
    public boolean updateGroupSummaryNotification(int i10, @NotNull NotificationCompat.Builder notificationBuilder, @NotNull List<? extends DownloadNotification> downloadNotifications, @NotNull Context context) {
        M.p(notificationBuilder, "notificationBuilder");
        M.p(downloadNotifications, "downloadNotifications");
        M.p(context, "context");
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        for (DownloadNotification downloadNotification : downloadNotifications) {
            String subtitleText = getSubtitleText(context, downloadNotification);
            inboxStyle.addLine(downloadNotification.getTotal() + " " + subtitleText);
        }
        notificationBuilder.setPriority(0).setSmallIcon(android.R.drawable.stat_sys_download_done).setContentTitle(context.getString(R.string.fetch_notification_default_channel_name)).setContentText("").setStyle(inboxStyle).setOnlyAlertOnce(true).setGroup(String.valueOf(i10)).setGroupSummary(true);
        return false;
    }

    @Override
    public void updateNotification(@NotNull NotificationCompat.Builder notificationBuilder, @NotNull DownloadNotification downloadNotification, @NotNull Context context) {
        M.p(notificationBuilder, "notificationBuilder");
        M.p(downloadNotification, "downloadNotification");
        M.p(context, "context");
        notificationBuilder.setPriority(0).setSmallIcon(downloadNotification.isDownloading() ? android.R.drawable.stat_sys_download : android.R.drawable.stat_sys_download_done).setContentTitle(downloadNotification.getTitle()).setContentText(getSubtitleText(context, downloadNotification)).setOngoing(downloadNotification.isOnGoingNotification()).setGroup(String.valueOf(downloadNotification.getGroupId())).setGroupSummary(false);
        if (downloadNotification.isFailed() || downloadNotification.isCompleted()) {
            notificationBuilder.setProgress(0, 0, false);
        } else {
            notificationBuilder.setProgress(downloadNotification.getProgressIndeterminate() ? 0 : 100, downloadNotification.getProgress() >= 0 ? downloadNotification.getProgress() : 0, downloadNotification.getProgressIndeterminate());
        }
        if (downloadNotification.isDownloading()) {
            notificationBuilder.setTimeoutAfter(getNotificationTimeOutMillis()).addAction(R.drawable.fetch_notification_pause, context.getString(R.string.fetch_notification_download_pause), getActionPendingIntent(downloadNotification, DownloadNotification.ActionType.PAUSE)).addAction(R.drawable.fetch_notification_cancel, context.getString(R.string.fetch_notification_download_cancel), getActionPendingIntent(downloadNotification, DownloadNotification.ActionType.CANCEL));
            return;
        }
        if (downloadNotification.isPaused()) {
            notificationBuilder.setTimeoutAfter(getNotificationTimeOutMillis()).addAction(R.drawable.fetch_notification_resume, context.getString(R.string.fetch_notification_download_resume), getActionPendingIntent(downloadNotification, DownloadNotification.ActionType.RESUME)).addAction(R.drawable.fetch_notification_cancel, context.getString(R.string.fetch_notification_download_cancel), getActionPendingIntent(downloadNotification, DownloadNotification.ActionType.CANCEL));
        } else if (downloadNotification.isQueued()) {
            notificationBuilder.setTimeoutAfter(getNotificationTimeOutMillis());
        } else {
            notificationBuilder.setTimeoutAfter(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER_RESET);
        }
    }
}
