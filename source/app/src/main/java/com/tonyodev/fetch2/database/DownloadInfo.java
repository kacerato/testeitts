package com.tonyodev.fetch2.database;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Priority;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2.util.FetchTypeConverterExtensions;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Entity(indices = {@Index(unique = true, value = {DownloadDatabase.COLUMN_FILE}), @Index(unique = false, value = {DownloadDatabase.COLUMN_GROUP, DownloadDatabase.COLUMN_STATUS})}, tableName = DownloadDatabase.TABLE_NAME)
public class DownloadInfo implements Download {

    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);

    @ColumnInfo(name = DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS, typeAffinity = 3)
    private int autoRetryAttempts;

    @ColumnInfo(name = DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS, typeAffinity = 3)
    private int autoRetryMaxAttempts;

    @ColumnInfo(name = DownloadDatabase.COLUMN_DOWNLOADED, typeAffinity = 3)
    private long downloaded;

    @ColumnInfo(name = DownloadDatabase.COLUMN_GROUP, typeAffinity = 3)
    private int group;

    @PrimaryKey
    @ColumnInfo(name = "_id", typeAffinity = 3)
    private int f83635id;

    @ColumnInfo(name = DownloadDatabase.COLUMN_IDENTIFIER, typeAffinity = 3)
    private long identifier;

    @ColumnInfo(name = DownloadDatabase.COLUMN_TAG, typeAffinity = 2)
    @Nullable
    private String tag;

    @ColumnInfo(name = DownloadDatabase.COLUMN_NAMESPACE, typeAffinity = 2)
    @NotNull
    private String namespace = "";

    @ColumnInfo(name = DownloadDatabase.COLUMN_URL, typeAffinity = 2)
    @NotNull
    private String url = "";

    @ColumnInfo(name = DownloadDatabase.COLUMN_FILE, typeAffinity = 2)
    @NotNull
    private String file = "";

    @ColumnInfo(name = DownloadDatabase.COLUMN_PRIORITY, typeAffinity = 3)
    @NotNull
    private Priority priority = FetchDefaults.getDefaultPriority();

    @ColumnInfo(name = DownloadDatabase.COLUMN_HEADERS, typeAffinity = 2)
    @NotNull
    private Map<String, String> headers = new LinkedHashMap();

    @ColumnInfo(name = DownloadDatabase.COLUMN_TOTAL, typeAffinity = 3)
    private long total = -1;

    @ColumnInfo(name = DownloadDatabase.COLUMN_STATUS, typeAffinity = 3)
    @NotNull
    private Status status = FetchDefaults.getDefaultStatus();

    @ColumnInfo(name = DownloadDatabase.COLUMN_ERROR, typeAffinity = 3)
    @NotNull
    private Error error = FetchDefaults.getDefaultNoError();

    @ColumnInfo(name = DownloadDatabase.COLUMN_NETWORK_TYPE, typeAffinity = 3)
    @NotNull
    private NetworkType networkType = FetchDefaults.getDefaultNetworkType();

    @ColumnInfo(name = DownloadDatabase.COLUMN_CREATED, typeAffinity = 3)
    private long created = Calendar.getInstance().getTimeInMillis();

    @ColumnInfo(name = DownloadDatabase.COLUMN_ENQUEUE_ACTION, typeAffinity = 3)
    @NotNull
    private EnqueueAction enqueueAction = EnqueueAction.REPLACE_EXISTING;

    @ColumnInfo(name = DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE, typeAffinity = 3)
    private boolean downloadOnEnqueue = true;

    @ColumnInfo(name = DownloadDatabase.COLUMN_EXTRAS, typeAffinity = 2)
    @NotNull
    private Extras extras = Extras.CREATOR.getEmptyExtras();

    @Ignore
    private long etaInMilliSeconds = -1;

    @Ignore
    private long downloadedBytesPerSecond = -1;

    public static final class CREATOR implements Parcelable.Creator<DownloadInfo> {
        public CREATOR(C14026x c14026x) {
            this();
        }

        private CREATOR() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadInfo createFromParcel(@NotNull Parcel source) {
            M.p(source, "source");
            int readInt = source.readInt();
            String readString = source.readString();
            if (readString == null) {
                readString = "";
            }
            String readString2 = source.readString();
            if (readString2 == null) {
                readString2 = "";
            }
            String readString3 = source.readString();
            String str = readString3 != null ? readString3 : "";
            int readInt2 = source.readInt();
            Priority valueOf = Priority.Companion.valueOf(source.readInt());
            Serializable readSerializable = source.readSerializable();
            M.n(readSerializable, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            Map<String, String> map = (Map) readSerializable;
            long readLong = source.readLong();
            long readLong2 = source.readLong();
            Status valueOf2 = Status.Companion.valueOf(source.readInt());
            Error valueOf3 = Error.Companion.valueOf(source.readInt());
            NetworkType valueOf4 = NetworkType.Companion.valueOf(source.readInt());
            long readLong3 = source.readLong();
            String readString4 = source.readString();
            EnqueueAction valueOf5 = EnqueueAction.Companion.valueOf(source.readInt());
            long readLong4 = source.readLong();
            boolean z10 = source.readInt() == 1;
            long readLong5 = source.readLong();
            long readLong6 = source.readLong();
            Serializable readSerializable2 = source.readSerializable();
            M.n(readSerializable2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            int readInt3 = source.readInt();
            int readInt4 = source.readInt();
            DownloadInfo downloadInfo = new DownloadInfo();
            downloadInfo.setId(readInt);
            downloadInfo.setNamespace(readString);
            downloadInfo.setUrl(readString2);
            downloadInfo.setFile(str);
            downloadInfo.setGroup(readInt2);
            downloadInfo.setPriority(valueOf);
            downloadInfo.setHeaders(map);
            downloadInfo.setDownloaded(readLong);
            downloadInfo.setTotal(readLong2);
            downloadInfo.setStatus(valueOf2);
            downloadInfo.setError(valueOf3);
            downloadInfo.setNetworkType(valueOf4);
            downloadInfo.setCreated(readLong3);
            downloadInfo.setTag(readString4);
            downloadInfo.setEnqueueAction(valueOf5);
            downloadInfo.setIdentifier(readLong4);
            downloadInfo.setDownloadOnEnqueue(z10);
            downloadInfo.setEtaInMilliSeconds(readLong5);
            downloadInfo.setDownloadedBytesPerSecond(readLong6);
            downloadInfo.setExtras(new Extras((Map) readSerializable2));
            downloadInfo.setAutoRetryMaxAttempts(readInt3);
            downloadInfo.setAutoRetryAttempts(readInt4);
            return downloadInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadInfo[] newArray(int i10) {
            return new DownloadInfo[i10];
        }
    }

    @Override
    @NotNull
    public Download copy() {
        return FetchTypeConverterExtensions.toDownloadInfo(this, new DownloadInfo());
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
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.database.DownloadInfo");
        DownloadInfo downloadInfo = (DownloadInfo) obj;
        return getId() == downloadInfo.getId() && M.g(getNamespace(), downloadInfo.getNamespace()) && M.g(getUrl(), downloadInfo.getUrl()) && M.g(getFile(), downloadInfo.getFile()) && getGroup() == downloadInfo.getGroup() && getPriority() == downloadInfo.getPriority() && M.g(getHeaders(), downloadInfo.getHeaders()) && getDownloaded() == downloadInfo.getDownloaded() && getTotal() == downloadInfo.getTotal() && getStatus() == downloadInfo.getStatus() && getError() == downloadInfo.getError() && getNetworkType() == downloadInfo.getNetworkType() && getCreated() == downloadInfo.getCreated() && M.g(getTag(), downloadInfo.getTag()) && getEnqueueAction() == downloadInfo.getEnqueueAction() && getIdentifier() == downloadInfo.getIdentifier() && getDownloadOnEnqueue() == downloadInfo.getDownloadOnEnqueue() && M.g(getExtras(), downloadInfo.getExtras()) && getEtaInMilliSeconds() == downloadInfo.getEtaInMilliSeconds() && getDownloadedBytesPerSecond() == downloadInfo.getDownloadedBytesPerSecond() && getAutoRetryMaxAttempts() == downloadInfo.getAutoRetryMaxAttempts() && getAutoRetryAttempts() == downloadInfo.getAutoRetryAttempts();
    }

    @Override
    public int getAutoRetryAttempts() {
        return this.autoRetryAttempts;
    }

    @Override
    public int getAutoRetryMaxAttempts() {
        return this.autoRetryMaxAttempts;
    }

    @Override
    public long getCreated() {
        return this.created;
    }

    @Override
    public boolean getDownloadOnEnqueue() {
        return this.downloadOnEnqueue;
    }

    @Override
    public long getDownloaded() {
        return this.downloaded;
    }

    @Override
    public long getDownloadedBytesPerSecond() {
        return this.downloadedBytesPerSecond;
    }

    @Override
    @NotNull
    public EnqueueAction getEnqueueAction() {
        return this.enqueueAction;
    }

    @Override
    @NotNull
    public Error getError() {
        return this.error;
    }

    @Override
    public long getEtaInMilliSeconds() {
        return this.etaInMilliSeconds;
    }

    @Override
    @NotNull
    public Extras getExtras() {
        return this.extras;
    }

    @Override
    @NotNull
    public String getFile() {
        return this.file;
    }

    @Override
    @NotNull
    public Uri getFileUri() {
        return FetchCoreUtils.getFileUri(getFile());
    }

    @Override
    public int getGroup() {
        return this.group;
    }

    @Override
    @NotNull
    public Map<String, String> getHeaders() {
        return this.headers;
    }

    @Override
    public int getId() {
        return this.f83635id;
    }

    @Override
    public long getIdentifier() {
        return this.identifier;
    }

    @Override
    @NotNull
    public String getNamespace() {
        return this.namespace;
    }

    @Override
    @NotNull
    public NetworkType getNetworkType() {
        return this.networkType;
    }

    @Override
    @NotNull
    public Priority getPriority() {
        return this.priority;
    }

    @Override
    public int getProgress() {
        return FetchCoreUtils.calculateProgress(getDownloaded(), getTotal());
    }

    @Override
    @NotNull
    public Request getRequest() {
        Request request = new Request(getUrl(), getFile());
        request.setGroupId(getGroup());
        request.getHeaders().putAll(getHeaders());
        request.setNetworkType(getNetworkType());
        request.setPriority(getPriority());
        request.setEnqueueAction(getEnqueueAction());
        request.setIdentifier(getIdentifier());
        request.setDownloadOnEnqueue(getDownloadOnEnqueue());
        request.setExtras(getExtras());
        request.setAutoRetryMaxAttempts(getAutoRetryMaxAttempts());
        return request;
    }

    @Override
    @NotNull
    public Status getStatus() {
        return this.status;
    }

    @Override
    @Nullable
    public String getTag() {
        return this.tag;
    }

    @Override
    public long getTotal() {
        return this.total;
    }

    @Override
    @NotNull
    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int id2 = ((((((((((((((((((((((((getId() * 31) + getNamespace().hashCode()) * 31) + getUrl().hashCode()) * 31) + getFile().hashCode()) * 31) + getGroup()) * 31) + getPriority().hashCode()) * 31) + getHeaders().hashCode()) * 31) + Long.hashCode(getDownloaded())) * 31) + Long.hashCode(getTotal())) * 31) + getStatus().hashCode()) * 31) + getError().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + Long.hashCode(getCreated())) * 31;
        String tag = getTag();
        return ((((((((((((((((id2 + (tag != null ? tag.hashCode() : 0)) * 31) + getEnqueueAction().hashCode()) * 31) + Long.hashCode(getIdentifier())) * 31) + Boolean.hashCode(getDownloadOnEnqueue())) * 31) + getExtras().hashCode()) * 31) + Long.hashCode(getEtaInMilliSeconds())) * 31) + Long.hashCode(getDownloadedBytesPerSecond())) * 31) + Integer.hashCode(getAutoRetryMaxAttempts())) * 31) + Integer.hashCode(getAutoRetryAttempts());
    }

    public void setAutoRetryAttempts(int i10) {
        this.autoRetryAttempts = i10;
    }

    public void setAutoRetryMaxAttempts(int i10) {
        this.autoRetryMaxAttempts = i10;
    }

    public void setCreated(long j10) {
        this.created = j10;
    }

    public void setDownloadOnEnqueue(boolean z10) {
        this.downloadOnEnqueue = z10;
    }

    public void setDownloaded(long j10) {
        this.downloaded = j10;
    }

    public void setDownloadedBytesPerSecond(long j10) {
        this.downloadedBytesPerSecond = j10;
    }

    public void setEnqueueAction(@NotNull EnqueueAction enqueueAction) {
        M.p(enqueueAction, "<set-?>");
        this.enqueueAction = enqueueAction;
    }

    public void setError(@NotNull Error error) {
        M.p(error, "<set-?>");
        this.error = error;
    }

    public void setEtaInMilliSeconds(long j10) {
        this.etaInMilliSeconds = j10;
    }

    public void setExtras(@NotNull Extras extras) {
        M.p(extras, "<set-?>");
        this.extras = extras;
    }

    public void setFile(@NotNull String str) {
        M.p(str, "<set-?>");
        this.file = str;
    }

    public void setGroup(int i10) {
        this.group = i10;
    }

    public void setHeaders(@NotNull Map<String, String> map) {
        M.p(map, "<set-?>");
        this.headers = map;
    }

    public void setId(int i10) {
        this.f83635id = i10;
    }

    public void setIdentifier(long j10) {
        this.identifier = j10;
    }

    public void setNamespace(@NotNull String str) {
        M.p(str, "<set-?>");
        this.namespace = str;
    }

    public void setNetworkType(@NotNull NetworkType networkType) {
        M.p(networkType, "<set-?>");
        this.networkType = networkType;
    }

    public void setPriority(@NotNull Priority priority) {
        M.p(priority, "<set-?>");
        this.priority = priority;
    }

    public void setStatus(@NotNull Status status) {
        M.p(status, "<set-?>");
        this.status = status;
    }

    public void setTag(@Nullable String str) {
        this.tag = str;
    }

    public void setTotal(long j10) {
        this.total = j10;
    }

    public void setUrl(@NotNull String str) {
        M.p(str, "<set-?>");
        this.url = str;
    }

    @NotNull
    public String toString() {
        int id2 = getId();
        String namespace = getNamespace();
        String url = getUrl();
        String file = getFile();
        int group = getGroup();
        Priority priority = getPriority();
        Map<String, String> headers = getHeaders();
        long downloaded = getDownloaded();
        long total = getTotal();
        Status status = getStatus();
        Error error = getError();
        NetworkType networkType = getNetworkType();
        long created = getCreated();
        String tag = getTag();
        EnqueueAction enqueueAction = getEnqueueAction();
        long identifier = getIdentifier();
        boolean downloadOnEnqueue = getDownloadOnEnqueue();
        Extras extras = getExtras();
        return "DownloadInfo(id=" + id2 + ", namespace='" + namespace + "', url='" + url + "', file='" + file + "', group=" + group + ", priority=" + ((Object) priority) + ", headers=" + ((Object) headers) + ", downloaded=" + downloaded + ", total=" + total + ", status=" + ((Object) status) + ", error=" + ((Object) error) + ", networkType=" + ((Object) networkType) + ", created=" + created + ", tag=" + tag + ", enqueueAction=" + ((Object) enqueueAction) + ", identifier=" + identifier + ", downloadOnEnqueue=" + downloadOnEnqueue + ", extras=" + ((Object) extras) + ", autoRetryMaxAttempts=" + getAutoRetryMaxAttempts() + ", autoRetryAttempts=" + getAutoRetryAttempts() + ", etaInMilliSeconds=" + getEtaInMilliSeconds() + ", downloadedBytesPerSecond=" + getDownloadedBytesPerSecond() + ")";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.p(dest, "dest");
        dest.writeInt(getId());
        dest.writeString(getNamespace());
        dest.writeString(getUrl());
        dest.writeString(getFile());
        dest.writeInt(getGroup());
        dest.writeInt(getPriority().getValue());
        dest.writeSerializable(new HashMap(getHeaders()));
        dest.writeLong(getDownloaded());
        dest.writeLong(getTotal());
        dest.writeInt(getStatus().getValue());
        dest.writeInt(getError().getValue());
        dest.writeInt(getNetworkType().getValue());
        dest.writeLong(getCreated());
        dest.writeString(getTag());
        dest.writeInt(getEnqueueAction().getValue());
        dest.writeLong(getIdentifier());
        dest.writeInt(getDownloadOnEnqueue() ? 1 : 0);
        dest.writeLong(getEtaInMilliSeconds());
        dest.writeLong(getDownloadedBytesPerSecond());
        dest.writeSerializable(new HashMap(getExtras().getMap()));
        dest.writeInt(getAutoRetryMaxAttempts());
        dest.writeInt(getAutoRetryAttempts());
    }
}
