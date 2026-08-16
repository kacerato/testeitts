package com.tonyodev.fetch2;

import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.Extras;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class RequestInfo implements Serializable {
    private int autoRetryMaxAttempts;
    private int groupId;
    private long identifier;

    @Nullable
    private String tag;

    @NotNull
    private final Map<String, String> headers = new LinkedHashMap();

    @NotNull
    private Priority priority = FetchDefaults.getDefaultPriority();

    @NotNull
    private NetworkType networkType = FetchDefaults.getDefaultNetworkType();

    @NotNull
    private EnqueueAction enqueueAction = FetchDefaults.getDefaultEnqueueAction();
    private boolean downloadOnEnqueue = true;

    @NotNull
    private Extras extras = Extras.CREATOR.getEmptyExtras();

    public final void addHeader(@NotNull String key, @NotNull String value) {
        M.p(key, "key");
        M.p(value, "value");
        this.headers.put(key, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.RequestInfo");
        RequestInfo requestInfo = (RequestInfo) obj;
        return this.identifier == requestInfo.identifier && this.groupId == requestInfo.groupId && M.g(this.headers, requestInfo.headers) && this.priority == requestInfo.priority && this.networkType == requestInfo.networkType && M.g(this.tag, requestInfo.tag) && this.enqueueAction == requestInfo.enqueueAction && this.downloadOnEnqueue == requestInfo.downloadOnEnqueue && M.g(this.extras, requestInfo.extras) && this.autoRetryMaxAttempts == requestInfo.autoRetryMaxAttempts;
    }

    public final int getAutoRetryMaxAttempts() {
        return this.autoRetryMaxAttempts;
    }

    public final boolean getDownloadOnEnqueue() {
        return this.downloadOnEnqueue;
    }

    @NotNull
    public final EnqueueAction getEnqueueAction() {
        return this.enqueueAction;
    }

    @NotNull
    public final Extras getExtras() {
        return this.extras;
    }

    public final int getGroupId() {
        return this.groupId;
    }

    @NotNull
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final long getIdentifier() {
        return this.identifier;
    }

    @NotNull
    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    @NotNull
    public final Priority getPriority() {
        return this.priority;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    public int hashCode() {
        int hashCode = ((((((((Long.hashCode(this.identifier) * 31) + this.groupId) * 31) + this.headers.hashCode()) * 31) + this.priority.hashCode()) * 31) + this.networkType.hashCode()) * 31;
        String str = this.tag;
        return ((((((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.enqueueAction.hashCode()) * 31) + Boolean.hashCode(this.downloadOnEnqueue)) * 31) + this.extras.hashCode()) * 31) + this.autoRetryMaxAttempts;
    }

    public final void setAutoRetryMaxAttempts(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The maximum number of attempts has to be greater than -1");
        }
        this.autoRetryMaxAttempts = i10;
    }

    public final void setDownloadOnEnqueue(boolean z10) {
        this.downloadOnEnqueue = z10;
    }

    public final void setEnqueueAction(@NotNull EnqueueAction enqueueAction) {
        M.p(enqueueAction, "<set-?>");
        this.enqueueAction = enqueueAction;
    }

    public final void setExtras(@NotNull Extras value) {
        M.p(value, "value");
        this.extras = value.copy();
    }

    public final void setGroupId(int i10) {
        this.groupId = i10;
    }

    public final void setIdentifier(long j10) {
        this.identifier = j10;
    }

    public final void setNetworkType(@NotNull NetworkType networkType) {
        M.p(networkType, "<set-?>");
        this.networkType = networkType;
    }

    public final void setPriority(@NotNull Priority priority) {
        M.p(priority, "<set-?>");
        this.priority = priority;
    }

    public final void setTag(@Nullable String str) {
        this.tag = str;
    }

    @NotNull
    public String toString() {
        long j10 = this.identifier;
        int i10 = this.groupId;
        Map<String, String> map = this.headers;
        Priority priority = this.priority;
        NetworkType networkType = this.networkType;
        String str = this.tag;
        EnqueueAction enqueueAction = this.enqueueAction;
        return "RequestInfo(identifier=" + j10 + ", groupId=" + i10 + ", headers=" + ((Object) map) + ", priority=" + ((Object) priority) + ", networkType=" + ((Object) networkType) + ", tag=" + str + ", enqueueAction=" + ((Object) enqueueAction) + ", downloadOnEnqueue=" + this.downloadOnEnqueue + ", autoRetryMaxAttempts=" + this.autoRetryMaxAttempts + ", extras=" + ((Object) this.extras) + ")";
    }
}
