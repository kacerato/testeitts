package com.tonyodev.fetch2core.server;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.util.Date;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileResponse implements Parcelable, Serializable {
    public static final int CLOSE_CONNECTION = 0;
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    public static final String FIELD_CONNECTION = "connection";

    @NotNull
    public static final String FIELD_CONTENT_LENGTH = "content-length";

    @NotNull
    public static final String FIELD_DATE = "date";

    @NotNull
    public static final String FIELD_MD5 = "md5";

    @NotNull
    public static final String FIELD_SESSION_ID = "sessionid";

    @NotNull
    public static final String FIELD_STATUS = "status";

    @NotNull
    public static final String FIELD_TYPE = "type";
    public static final int OPEN_CONNECTION = 1;
    private final int connection;
    private final long contentLength;
    private final long date;

    @NotNull
    private final String md5;

    @NotNull
    private final String sessionId;
    private final int status;
    private final int type;

    public static final class CREATOR implements Parcelable.Creator<FileResponse> {
        private CREATOR() {
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileResponse createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            int readInt = source.readInt();
            int readInt2 = source.readInt();
            int readInt3 = source.readInt();
            long readLong = source.readLong();
            long readLong2 = source.readLong();
            String readString = source.readString();
            String str = readString != null ? readString : "";
            String readString2 = source.readString();
            if (readString2 == null) {
                readString2 = "";
            }
            return new FileResponse(readInt, readInt2, readInt3, readLong, readLong2, str, readString2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileResponse[] newArray(int i10) {
            return new FileResponse[i10];
        }
    }

    public FileResponse() {
        this(0, 0, 0, 0L, 0L, null, null, 127, null);
    }

    public final int component1() {
        return this.status;
    }

    public final int component2() {
        return this.type;
    }

    public final int component3() {
        return this.connection;
    }

    public final long component4() {
        return this.date;
    }

    public final long component5() {
        return this.contentLength;
    }

    @NotNull
    public final String component6() {
        return this.md5;
    }

    @NotNull
    public final String component7() {
        return this.sessionId;
    }

    @NotNull
    public final FileResponse copy(int i10, int i11, int i12, long j10, long j11, @NotNull String md5, @NotNull String sessionId) {
        M.q(md5, "md5");
        M.q(sessionId, "sessionId");
        return new FileResponse(i10, i11, i12, j10, j11, md5, sessionId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileResponse)) {
            return false;
        }
        FileResponse fileResponse = (FileResponse) obj;
        return this.status == fileResponse.status && this.type == fileResponse.type && this.connection == fileResponse.connection && this.date == fileResponse.date && this.contentLength == fileResponse.contentLength && M.g(this.md5, fileResponse.md5) && M.g(this.sessionId, fileResponse.sessionId);
    }

    public final int getConnection() {
        return this.connection;
    }

    public final long getContentLength() {
        return this.contentLength;
    }

    public final long getDate() {
        return this.date;
    }

    @NotNull
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final String getSessionId() {
        return this.sessionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getToJsonString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        sb2.append("\"Status\":");
        sb2.append(this.status);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Md5\":");
        sb2.append('\"' + this.md5 + '\"');
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Connection\":");
        sb2.append(this.connection);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Date\":");
        sb2.append(this.date);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Content-Length\":");
        sb2.append(this.contentLength);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Type\":");
        sb2.append(this.type);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"SessionId\":");
        sb2.append(this.sessionId);
        sb2.append(JavaElement.JEM_ANNOTATION);
        String sb3 = sb2.toString();
        M.h(sb3, "builder.toString()");
        return sb3;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int i10 = ((((this.status * 31) + this.type) * 31) + this.connection) * 31;
        long j10 = this.date;
        int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.contentLength;
        int i12 = (i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        String str = this.md5;
        int hashCode = (i12 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.sessionId;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "FileResponse(status=" + this.status + ", type=" + this.type + ", connection=" + this.connection + ", date=" + this.date + ", contentLength=" + this.contentLength + ", md5=" + this.md5 + ", sessionId=" + this.sessionId + ")";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeInt(this.status);
        dest.writeInt(this.type);
        dest.writeInt(this.connection);
        dest.writeLong(this.date);
        dest.writeLong(this.contentLength);
        dest.writeString(this.md5);
        dest.writeString(this.sessionId);
    }

    public FileResponse(int i10, int i11, int i12, long j10, long j11, @NotNull String md5, @NotNull String sessionId) {
        M.q(md5, "md5");
        M.q(sessionId, "sessionId");
        this.status = i10;
        this.type = i11;
        this.connection = i12;
        this.date = j10;
        this.contentLength = j11;
        this.md5 = md5;
        this.sessionId = sessionId;
    }

    public FileResponse(int i10, int i11, int i12, long j10, long j11, String str, String str2, int i13, C14026x c14026x) {
        this((i13 & 1) != 0 ? HttpURLConnection.HTTP_UNSUPPORTED_TYPE : i10, (i13 & 2) != 0 ? -1 : i11, (i13 & 4) != 0 ? 0 : i12, (i13 & 8) != 0 ? new Date().getTime() : j10, (i13 & 16) != 0 ? 0L : j11, (i13 & 32) != 0 ? "" : str, (i13 & 64) == 0 ? str2 : "");
    }
}
