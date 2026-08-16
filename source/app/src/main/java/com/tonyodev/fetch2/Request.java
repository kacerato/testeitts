package com.tonyodev.fetch2;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class Request extends RequestInfo implements Parcelable, Serializable {

    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    private final String file;

    private final int f83634id;

    @NotNull
    private final String url;

    @t0({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\ncom/tonyodev/fetch2/Request$CREATOR\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,120:1\n215#2,2:121\n*S KotlinDebug\n*F\n+ 1 Request.kt\ncom/tonyodev/fetch2/Request$CREATOR\n*L\n102#1:121,2\n*E\n"})
    public static final class CREATOR implements Parcelable.Creator<Request> {
        public CREATOR(C14026x c14026x) {
            this();
        }

        private CREATOR() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public Request createFromParcel(@NotNull Parcel input) {
            M.p(input, "input");
            String readString = input.readString();
            if (readString == null) {
                readString = "";
            }
            String readString2 = input.readString();
            String str = readString2 != null ? readString2 : "";
            long readLong = input.readLong();
            int readInt = input.readInt();
            Serializable readSerializable = input.readSerializable();
            M.n(readSerializable, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            Map map = (Map) readSerializable;
            Priority valueOf = Priority.Companion.valueOf(input.readInt());
            NetworkType valueOf2 = NetworkType.Companion.valueOf(input.readInt());
            String readString3 = input.readString();
            EnqueueAction valueOf3 = EnqueueAction.Companion.valueOf(input.readInt());
            boolean z10 = input.readInt() == 1;
            Serializable readSerializable2 = input.readSerializable();
            M.n(readSerializable2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            Map map2 = (Map) readSerializable2;
            int readInt2 = input.readInt();
            Request request = new Request(readString, str);
            request.setIdentifier(readLong);
            request.setGroupId(readInt);
            for (Map.Entry entry : map.entrySet()) {
                request.addHeader((String) entry.getKey(), (String) entry.getValue());
            }
            request.setPriority(valueOf);
            request.setNetworkType(valueOf2);
            request.setTag(readString3);
            request.setEnqueueAction(valueOf3);
            request.setDownloadOnEnqueue(z10);
            request.setExtras(new Extras(map2));
            request.setAutoRetryMaxAttempts(readInt2);
            return request;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public Request[] newArray(int i10) {
            return new Request[i10];
        }
    }

    public Request(@NotNull String url, @NotNull String file) {
        M.p(url, "url");
        M.p(file, "file");
        this.url = url;
        this.file = file;
        this.f83634id = FetchCoreUtils.getUniqueId(url, file);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(getClass(), obj != null ? obj.getClass() : null) || !super.equals(obj)) {
            return false;
        }
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.Request");
        Request request = (Request) obj;
        return this.f83634id == request.f83634id && M.g(this.url, request.url) && M.g(this.file, request.file);
    }

    @NotNull
    public final String getFile() {
        return this.file;
    }

    @NotNull
    public final Uri getFileUri() {
        return FetchCoreUtils.getFileUri(this.file);
    }

    public final int getId() {
        return this.f83634id;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @Override
    public int hashCode() {
        return (((((super.hashCode() * 31) + this.f83634id) * 31) + this.url.hashCode()) * 31) + this.file.hashCode();
    }

    @Override
    @NotNull
    public String toString() {
        String str = this.url;
        String str2 = this.file;
        int i10 = this.f83634id;
        int groupId = getGroupId();
        Map<String, String> headers = getHeaders();
        Priority priority = getPriority();
        NetworkType networkType = getNetworkType();
        return "Request(url='" + str + "', file='" + str2 + "', id=" + i10 + ", groupId=" + groupId + ", headers=" + ((Object) headers) + ", priority=" + ((Object) priority) + ", networkType=" + ((Object) networkType) + ", tag=" + getTag() + ")";
    }

    @Override
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        M.p(parcel, "parcel");
        parcel.writeString(this.url);
        parcel.writeString(this.file);
        parcel.writeLong(getIdentifier());
        parcel.writeInt(getGroupId());
        parcel.writeSerializable(new HashMap(getHeaders()));
        parcel.writeInt(getPriority().getValue());
        parcel.writeInt(getNetworkType().getValue());
        parcel.writeString(getTag());
        parcel.writeInt(getEnqueueAction().getValue());
        parcel.writeInt(getDownloadOnEnqueue() ? 1 : 0);
        parcel.writeSerializable(new HashMap(getExtras().getMap()));
        parcel.writeInt(getAutoRetryMaxAttempts());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Request(@NotNull String url, @NotNull Uri fileUri) {
        this(url, r3);
        M.p(url, "url");
        M.p(fileUri, "fileUri");
        String uri = fileUri.toString();
        M.o(uri, "toString(...)");
    }
}
