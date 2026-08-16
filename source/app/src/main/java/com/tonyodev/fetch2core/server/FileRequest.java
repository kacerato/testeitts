package com.tonyodev.fetch2core.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.tonyodev.fetch2core.Extras;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileRequest implements Parcelable, Serializable {

    @NotNull
    public static final String CATALOG_FILE = "/Catalog.json";
    public static final long CATALOG_ID = -1;

    @NotNull
    public static final String CATALOG_NAME = "Catalog.json";
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    public static final String FIELD_AUTHORIZATION = "Authorization";

    @NotNull
    public static final String FIELD_CLIENT = "Client";

    @NotNull
    public static final String FIELD_EXTRAS = "Extras";

    @NotNull
    public static final String FIELD_FILE_RESOURCE_ID = "FileResourceId";

    @NotNull
    public static final String FIELD_PAGE = "Page";

    @NotNull
    public static final String FIELD_PERSIST_CONNECTION = "Persist-Connection";

    @NotNull
    public static final String FIELD_RANGE_END = "Range-End";

    @NotNull
    public static final String FIELD_RANGE_START = "Range-Start";

    @NotNull
    public static final String FIELD_SIZE = "Size";

    @NotNull
    public static final String FIELD_TYPE = "Type";
    public static final int TYPE_CATALOG = 2;
    public static final int TYPE_FILE = 1;
    public static final int TYPE_INVALID = -1;
    public static final int TYPE_PING = 0;

    @NotNull
    private final String authorization;

    @NotNull
    private final String client;

    @NotNull
    private final Extras extras;

    @NotNull
    private final String fileResourceId;
    private final int page;
    private final boolean persistConnection;
    private final long rangeEnd;
    private final long rangeStart;
    private final int size;
    private final int type;

    public static final class CREATOR implements Parcelable.Creator<FileRequest> {
        private CREATOR() {
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileRequest createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            int readInt = source.readInt();
            String readString = source.readString();
            String str = readString != null ? readString : "";
            long readLong = source.readLong();
            long readLong2 = source.readLong();
            String readString2 = source.readString();
            String str2 = readString2 != null ? readString2 : "";
            String readString3 = source.readString();
            String str3 = readString3 != null ? readString3 : "";
            Serializable readSerializable = source.readSerializable();
            if (readSerializable != null) {
                return new FileRequest(readInt, str, readLong, readLong2, str2, str3, new Extras((HashMap) readSerializable), source.readInt(), source.readInt(), source.readInt() == 1);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileRequest[] newArray(int i10) {
            return new FileRequest[i10];
        }
    }

    public FileRequest() {
        this(0, null, 0L, 0L, null, null, null, 0, 0, false, 1023, null);
    }

    public final int component1() {
        return this.type;
    }

    public final boolean component10() {
        return this.persistConnection;
    }

    @NotNull
    public final String component2() {
        return this.fileResourceId;
    }

    public final long component3() {
        return this.rangeStart;
    }

    public final long component4() {
        return this.rangeEnd;
    }

    @NotNull
    public final String component5() {
        return this.authorization;
    }

    @NotNull
    public final String component6() {
        return this.client;
    }

    @NotNull
    public final Extras component7() {
        return this.extras;
    }

    public final int component8() {
        return this.page;
    }

    public final int component9() {
        return this.size;
    }

    @NotNull
    public final FileRequest copy(int i10, @NotNull String fileResourceId, long j10, long j11, @NotNull String authorization, @NotNull String client, @NotNull Extras extras, int i11, int i12, boolean z10) {
        M.q(fileResourceId, "fileResourceId");
        M.q(authorization, "authorization");
        M.q(client, "client");
        M.q(extras, "extras");
        return new FileRequest(i10, fileResourceId, j10, j11, authorization, client, extras, i11, i12, z10);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileRequest)) {
            return false;
        }
        FileRequest fileRequest = (FileRequest) obj;
        return this.type == fileRequest.type && M.g(this.fileResourceId, fileRequest.fileResourceId) && this.rangeStart == fileRequest.rangeStart && this.rangeEnd == fileRequest.rangeEnd && M.g(this.authorization, fileRequest.authorization) && M.g(this.client, fileRequest.client) && M.g(this.extras, fileRequest.extras) && this.page == fileRequest.page && this.size == fileRequest.size && this.persistConnection == fileRequest.persistConnection;
    }

    @NotNull
    public final String getAuthorization() {
        return this.authorization;
    }

    @NotNull
    public final String getClient() {
        return this.client;
    }

    @NotNull
    public final Extras getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getFileResourceId() {
        return this.fileResourceId;
    }

    public final int getPage() {
        return this.page;
    }

    public final boolean getPersistConnection() {
        return this.persistConnection;
    }

    public final long getRangeEnd() {
        return this.rangeEnd;
    }

    public final long getRangeStart() {
        return this.rangeStart;
    }

    public final int getSize() {
        return this.size;
    }

    @NotNull
    public final String getToJsonString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        sb2.append("\"Type\":");
        sb2.append(this.type);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"FileResourceId\":");
        sb2.append('\"' + this.fileResourceId + '\"');
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Range-Start\":");
        sb2.append(this.rangeStart);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Range-End\":");
        sb2.append(this.rangeEnd);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Authorization\":");
        sb2.append('\"' + this.authorization + '\"');
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Client\":");
        sb2.append('\"' + this.client + '\"');
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Extras\":");
        sb2.append(this.extras.toJSONString());
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Page\":");
        sb2.append(this.page);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Size\":");
        sb2.append(this.size);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("\"Persist-Connection\":");
        sb2.append(this.persistConnection);
        sb2.append(JavaElement.JEM_ANNOTATION);
        String sb3 = sb2.toString();
        M.h(sb3, "builder.toString()");
        return sb3;
    }

    public final int getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i10 = this.type * 31;
        String str = this.fileResourceId;
        int hashCode = str != null ? str.hashCode() : 0;
        long j10 = this.rangeStart;
        int i11 = (((i10 + hashCode) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.rangeEnd;
        int i12 = (i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        String str2 = this.authorization;
        int hashCode2 = (i12 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.client;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Extras extras = this.extras;
        int hashCode4 = (((((hashCode3 + (extras != null ? extras.hashCode() : 0)) * 31) + this.page) * 31) + this.size) * 31;
        boolean z10 = this.persistConnection;
        int i13 = z10;
        if (z10 != 0) {
            i13 = 1;
        }
        return hashCode4 + i13;
    }

    @NotNull
    public String toString() {
        return "FileRequest(type=" + this.type + ", fileResourceId=" + this.fileResourceId + ", rangeStart=" + this.rangeStart + ", rangeEnd=" + this.rangeEnd + ", authorization=" + this.authorization + ", client=" + this.client + ", extras=" + ((Object) this.extras) + ", page=" + this.page + ", size=" + this.size + ", persistConnection=" + this.persistConnection + ")";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeInt(this.type);
        dest.writeString(this.fileResourceId);
        dest.writeLong(this.rangeStart);
        dest.writeLong(this.rangeEnd);
        dest.writeString(this.authorization);
        dest.writeString(this.client);
        dest.writeSerializable(new HashMap(this.extras.getMap()));
        dest.writeInt(this.page);
        dest.writeInt(this.size);
        dest.writeInt(this.persistConnection ? 1 : 0);
    }

    public FileRequest(int i10, @NotNull String fileResourceId, long j10, long j11, @NotNull String authorization, @NotNull String client, @NotNull Extras extras, int i11, int i12, boolean z10) {
        M.q(fileResourceId, "fileResourceId");
        M.q(authorization, "authorization");
        M.q(client, "client");
        M.q(extras, "extras");
        this.type = i10;
        this.fileResourceId = fileResourceId;
        this.rangeStart = j10;
        this.rangeEnd = j11;
        this.authorization = authorization;
        this.client = client;
        this.extras = extras;
        this.page = i11;
        this.size = i12;
        this.persistConnection = z10;
    }

    public FileRequest(int i10, String str, long j10, long j11, String str2, String str3, Extras extras, int i11, int i12, boolean z10, int i13, C14026x c14026x) {
        this((i13 & 1) != 0 ? -1 : i10, (i13 & 2) != 0 ? String.valueOf(-1L) : str, (i13 & 4) != 0 ? 0L : j10, (i13 & 8) == 0 ? j11 : -1L, (i13 & 16) != 0 ? "" : str2, (i13 & 32) == 0 ? str3 : "", (i13 & 64) != 0 ? Extras.CREATOR.getEmptyExtras() : extras, (i13 & 128) != 0 ? 0 : i11, (i13 & 256) == 0 ? i12 : 0, (i13 & 512) != 0 ? true : z10);
    }
}
