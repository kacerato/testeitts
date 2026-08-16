package com.tonyodev.fetch2.util;

import com.tonyodev.fetch2core.FetchObserver;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ActiveDownloadInfo {

    @NotNull
    private final FetchObserver<Boolean> fetchObserver;
    private final boolean includeAddedDownloads;

    public ActiveDownloadInfo(@NotNull FetchObserver<Boolean> fetchObserver, boolean z10) {
        M.p(fetchObserver, "fetchObserver");
        this.fetchObserver = fetchObserver;
        this.includeAddedDownloads = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(ActiveDownloadInfo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.util.ActiveDownloadInfo");
        return M.g(this.fetchObserver, ((ActiveDownloadInfo) obj).fetchObserver);
    }

    @NotNull
    public final FetchObserver<Boolean> getFetchObserver() {
        return this.fetchObserver;
    }

    public final boolean getIncludeAddedDownloads() {
        return this.includeAddedDownloads;
    }

    public int hashCode() {
        return this.fetchObserver.hashCode();
    }

    @NotNull
    public String toString() {
        FetchObserver<Boolean> fetchObserver = this.fetchObserver;
        return "ActiveDownloadInfo(fetchObserver=" + ((Object) fetchObserver) + ", includeAddedDownloads=" + this.includeAddedDownloads + ")";
    }
}
