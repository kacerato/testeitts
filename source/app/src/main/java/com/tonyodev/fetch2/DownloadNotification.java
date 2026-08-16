package com.tonyodev.fetch2;

import Cf.a;
import Cf.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class DownloadNotification implements Parcelable, Serializable {

    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    private Status status = Status.NONE;
    private int progress = -1;
    private int notificationId = -1;
    private int groupId = -1;
    private long etaInMilliSeconds = -1;
    private long downloadedBytesPerSecond = -1;
    private long total = -1;
    private long downloaded = -1;

    @NotNull
    private String namespace = FetchDefaults.DEFAULT_INSTANCE_NAMESPACE;

    @NotNull
    private String title = "";

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ActionType {
        private static final a $ENTRIES;
        private static final ActionType[] $VALUES;
        public static final ActionType PAUSE = new ActionType("PAUSE", 0);
        public static final ActionType RESUME = new ActionType("RESUME", 1);
        public static final ActionType CANCEL = new ActionType("CANCEL", 2);
        public static final ActionType DELETE = new ActionType("DELETE", 3);
        public static final ActionType RETRY = new ActionType("RETRY", 4);
        public static final ActionType PAUSE_ALL = new ActionType("PAUSE_ALL", 5);
        public static final ActionType RESUME_ALL = new ActionType("RESUME_ALL", 6);
        public static final ActionType CANCEL_ALL = new ActionType("CANCEL_ALL", 7);
        public static final ActionType DELETE_ALL = new ActionType("DELETE_ALL", 8);
        public static final ActionType RETRY_ALL = new ActionType("RETRY_ALL", 9);

        private static final ActionType[] $values() {
            return new ActionType[]{PAUSE, RESUME, CANCEL, DELETE, RETRY, PAUSE_ALL, RESUME_ALL, CANCEL_ALL, DELETE_ALL, RETRY_ALL};
        }

        static {
            ActionType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = c.c($values);
        }

        private ActionType(String str, int i10) {
        }

        @NotNull
        public static a<ActionType> getEntries() {
            return $ENTRIES;
        }

        public static ActionType valueOf(String str) {
            return (ActionType) Enum.valueOf(ActionType.class, str);
        }

        public static ActionType[] values() {
            return (ActionType[]) $VALUES.clone();
        }
    }

    public static final class CREATOR implements Parcelable.Creator<DownloadNotification> {
        public CREATOR(C14026x c14026x) {
            this();
        }

        private CREATOR() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadNotification createFromParcel(@NotNull Parcel source) {
            M.p(source, "source");
            Status valueOf = Status.Companion.valueOf(source.readInt());
            int readInt = source.readInt();
            int readInt2 = source.readInt();
            int readInt3 = source.readInt();
            long readLong = source.readLong();
            long readLong2 = source.readLong();
            long readLong3 = source.readLong();
            long readLong4 = source.readLong();
            String readString = source.readString();
            if (readString == null) {
                readString = "";
            }
            String readString2 = source.readString();
            String str = readString2 != null ? readString2 : "";
            DownloadNotification downloadNotification = new DownloadNotification();
            downloadNotification.setStatus(valueOf);
            downloadNotification.setProgress(readInt);
            downloadNotification.setNotificationId(readInt2);
            downloadNotification.setGroupId(readInt3);
            downloadNotification.setEtaInMilliSeconds(readLong);
            downloadNotification.setDownloadedBytesPerSecond(readLong2);
            downloadNotification.setTotal(readLong3);
            downloadNotification.setDownloaded(readLong4);
            downloadNotification.setNamespace(readString);
            downloadNotification.setTitle(str);
            return downloadNotification;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadNotification[] newArray(int i10) {
            return new DownloadNotification[i10];
        }
    }

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.QUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.DOWNLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.DELETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.REMOVED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Status.COMPLETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Status.FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.DownloadNotification");
        DownloadNotification downloadNotification = (DownloadNotification) obj;
        return this.status == downloadNotification.status && this.progress == downloadNotification.progress && this.notificationId == downloadNotification.notificationId && this.groupId == downloadNotification.groupId && this.etaInMilliSeconds == downloadNotification.etaInMilliSeconds && this.downloadedBytesPerSecond == downloadNotification.downloadedBytesPerSecond && this.total == downloadNotification.total && this.downloaded == downloadNotification.downloaded && M.g(this.namespace, downloadNotification.namespace) && M.g(this.title, downloadNotification.title);
    }

    public final long getDownloaded() {
        return this.downloaded;
    }

    public final long getDownloadedBytesPerSecond() {
        return this.downloadedBytesPerSecond;
    }

    public final long getEtaInMilliSeconds() {
        return this.etaInMilliSeconds;
    }

    public final int getGroupId() {
        return this.groupId;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    public final int getNotificationId() {
        return this.notificationId;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final boolean getProgressIndeterminate() {
        return this.total == -1;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final long getTotal() {
        return this.total;
    }

    public int hashCode() {
        return (((((((((((((((((this.status.hashCode() * 31) + this.progress) * 31) + this.notificationId) * 31) + this.groupId) * 31) + Long.hashCode(this.etaInMilliSeconds)) * 31) + Long.hashCode(this.downloadedBytesPerSecond)) * 31) + Long.hashCode(this.total)) * 31) + Long.hashCode(this.downloaded)) * 31) + this.namespace.hashCode()) * 31) + this.title.hashCode();
    }

    public final boolean isActive() {
        Status status = this.status;
        return status == Status.QUEUED || status == Status.DOWNLOADING;
    }

    public final boolean isCancelled() {
        return this.status == Status.CANCELLED;
    }

    public final boolean isCancelledNotification() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.status.ordinal()];
        return i10 == 3 || i10 == 4 || i10 == 5;
    }

    public final boolean isCompleted() {
        return this.status == Status.COMPLETED;
    }

    public final boolean isDeleted() {
        return this.status == Status.DELETED;
    }

    public final boolean isDownloading() {
        return this.status == Status.DOWNLOADING;
    }

    public final boolean isFailed() {
        return this.status == Status.FAILED;
    }

    public final boolean isOnGoingNotification() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.status.ordinal()];
        return i10 == 1 || i10 == 2;
    }

    public final boolean isPaused() {
        return this.status == Status.PAUSED;
    }

    public final boolean isQueued() {
        return this.status == Status.QUEUED;
    }

    public final boolean isRemovableNotification() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.status.ordinal()];
        return i10 == 3 || i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7;
    }

    public final boolean isRemoved() {
        return this.status == Status.REMOVED;
    }

    public final void setDownloaded(long j10) {
        this.downloaded = j10;
    }

    public final void setDownloadedBytesPerSecond(long j10) {
        this.downloadedBytesPerSecond = j10;
    }

    public final void setEtaInMilliSeconds(long j10) {
        this.etaInMilliSeconds = j10;
    }

    public final void setGroupId(int i10) {
        this.groupId = i10;
    }

    public final void setNamespace(@NotNull String str) {
        M.p(str, "<set-?>");
        this.namespace = str;
    }

    public final void setNotificationId(int i10) {
        this.notificationId = i10;
    }

    public final void setProgress(int i10) {
        this.progress = i10;
    }

    public final void setStatus(@NotNull Status status) {
        M.p(status, "<set-?>");
        this.status = status;
    }

    public final void setTitle(@NotNull String str) {
        M.p(str, "<set-?>");
        this.title = str;
    }

    public final void setTotal(long j10) {
        this.total = j10;
    }

    @NotNull
    public String toString() {
        Status status = this.status;
        return "DownloadNotification(status=" + ((Object) status) + ", progress=" + this.progress + ", notificationId=" + this.notificationId + ", groupId=" + this.groupId + ", etaInMilliSeconds=" + this.etaInMilliSeconds + ", downloadedBytesPerSecond=" + this.downloadedBytesPerSecond + ", total=" + this.total + ", downloaded=" + this.downloaded + ", namespace='" + this.namespace + "', title='" + this.title + "')";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.p(dest, "dest");
        dest.writeInt(this.status.getValue());
        dest.writeInt(this.progress);
        dest.writeInt(this.notificationId);
        dest.writeInt(this.groupId);
        dest.writeLong(this.etaInMilliSeconds);
        dest.writeLong(this.downloadedBytesPerSecond);
        dest.writeLong(this.total);
        dest.writeLong(this.downloaded);
        dest.writeString(this.namespace);
        dest.writeString(this.title);
    }
}
