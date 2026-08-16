package com.tonyodev.fetch2;

import android.os.Parcel;
import android.os.Parcelable;
import com.tonyodev.fetch2core.Extras;
import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.o0;

public class CompletedDownload implements Parcelable, Serializable {

    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);
    private long fileByteSize;
    private int group;
    private long identifier;

    @Nullable
    private String tag;

    @NotNull
    private String url = "";

    @NotNull
    private String file = "";

    @NotNull
    private Map<String, String> headers = o0.z();
    private long created = Calendar.getInstance().getTimeInMillis();

    @NotNull
    private Extras extras = Extras.CREATOR.getEmptyExtras();

    public static final class CREATOR implements Parcelable.Creator<CompletedDownload> {
        public CREATOR(C14026x c14026x) {
            this();
        }

        private CREATOR() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public CompletedDownload createFromParcel(@NotNull Parcel source) {
            M.p(source, "source");
            String readString = source.readString();
            if (readString == null) {
                readString = "";
            }
            String readString2 = source.readString();
            String str = readString2 != null ? readString2 : "";
            int readInt = source.readInt();
            long readLong = source.readLong();
            Serializable readSerializable = source.readSerializable();
            M.n(readSerializable, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            String readString3 = source.readString();
            long readLong2 = source.readLong();
            long readLong3 = source.readLong();
            Serializable readSerializable2 = source.readSerializable();
            M.n(readSerializable2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            CompletedDownload completedDownload = new CompletedDownload();
            completedDownload.setUrl(readString);
            completedDownload.setFile(str);
            completedDownload.setGroup(readInt);
            completedDownload.setFileByteSize(readLong);
            completedDownload.setHeaders((Map) readSerializable);
            completedDownload.setTag(readString3);
            completedDownload.setIdentifier(readLong2);
            completedDownload.setCreated(readLong3);
            completedDownload.setExtras(new Extras((Map) readSerializable2));
            return completedDownload;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public CompletedDownload[] newArray(int i10) {
            return new CompletedDownload[i10];
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
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.CompletedDownload");
        CompletedDownload completedDownload = (CompletedDownload) obj;
        return M.g(this.url, completedDownload.url) && M.g(this.file, completedDownload.file) && this.group == completedDownload.group && M.g(this.headers, completedDownload.headers) && M.g(this.tag, completedDownload.tag) && this.identifier == completedDownload.identifier && this.created == completedDownload.created && M.g(this.extras, completedDownload.extras);
    }

    public final long getCreated() {
        return this.created;
    }

    @NotNull
    public final Extras getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getFile() {
        return this.file;
    }

    public final long getFileByteSize() {
        return this.fileByteSize;
    }

    public final int getGroup() {
        return this.group;
    }

    @NotNull
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final long getIdentifier() {
        return this.identifier;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((this.url.hashCode() * 31) + this.file.hashCode()) * 31) + this.group) * 31) + this.headers.hashCode()) * 31;
        String str = this.tag;
        return ((((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + Long.hashCode(this.identifier)) * 31) + Long.hashCode(this.created)) * 31) + this.extras.hashCode();
    }

    public final void setCreated(long j10) {
        this.created = j10;
    }

    public final void setExtras(@NotNull Extras extras) {
        M.p(extras, "<set-?>");
        this.extras = extras;
    }

    public final void setFile(@NotNull String str) {
        M.p(str, "<set-?>");
        this.file = str;
    }

    public final void setFileByteSize(long j10) {
        this.fileByteSize = j10;
    }

    public final void setGroup(int i10) {
        this.group = i10;
    }

    public final void setHeaders(@NotNull Map<String, String> map) {
        M.p(map, "<set-?>");
        this.headers = map;
    }

    public final void setIdentifier(long j10) {
        this.identifier = j10;
    }

    public final void setTag(@Nullable String str) {
        this.tag = str;
    }

    public final void setUrl(@NotNull String str) {
        M.p(str, "<set-?>");
        this.url = str;
    }

    @NotNull
    public String toString() {
        String str = this.url;
        String str2 = this.file;
        int i10 = this.group;
        Map<String, String> map = this.headers;
        return "CompletedDownload(url='" + str + "', file='" + str2 + "', groupId=" + i10 + ", headers=" + ((Object) map) + ", tag=" + this.tag + ", identifier=" + this.identifier + ", created=" + this.created + ", extras=" + ((Object) this.extras) + ")";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.p(dest, "dest");
        dest.writeString(this.url);
        dest.writeString(this.file);
        dest.writeInt(this.group);
        dest.writeLong(this.fileByteSize);
        dest.writeSerializable(new HashMap(this.headers));
        dest.writeString(this.tag);
        dest.writeLong(this.identifier);
        dest.writeLong(this.created);
        dest.writeSerializable(new HashMap(this.extras.getMap()));
    }
}
