package com.tonyodev.fetch2.helper;

import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class DownloadInfoUpdater {

    @NotNull
    private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

    public DownloadInfoUpdater(@NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper) {
        M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
        this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
    }

    @NotNull
    public final DownloadInfo getNewDownloadInfoInstance() {
        return this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance();
    }

    public final void update(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        this.fetchDatabaseManagerWrapper.update(downloadInfo);
    }

    public final void updateFileBytesInfoAndStatusOnly(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        this.fetchDatabaseManagerWrapper.updateFileBytesInfoAndStatusOnly(downloadInfo);
    }
}
