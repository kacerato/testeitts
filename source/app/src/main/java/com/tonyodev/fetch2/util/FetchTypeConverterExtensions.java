package com.tonyodev.fetch2.util;

import Lf.j;
import com.tonyodev.fetch2.CompletedDownload;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Priority;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2core.FetchCoreUtils;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.o0;

@j(name = "FetchTypeConverterExtensions")
public final class FetchTypeConverterExtensions {
    @NotNull
    public static final DownloadInfo toDownloadInfo(@NotNull Request request, @NotNull DownloadInfo downloadInfo) {
        M.p(request, "<this>");
        M.p(downloadInfo, "downloadInfo");
        downloadInfo.setId(request.getId());
        downloadInfo.setUrl(request.getUrl());
        downloadInfo.setFile(request.getFile());
        downloadInfo.setPriority(request.getPriority());
        downloadInfo.setHeaders(o0.F0(request.getHeaders()));
        downloadInfo.setGroup(request.getGroupId());
        downloadInfo.setNetworkType(request.getNetworkType());
        downloadInfo.setStatus(FetchDefaults.getDefaultStatus());
        downloadInfo.setError(FetchDefaults.getDefaultNoError());
        downloadInfo.setDownloaded(0L);
        downloadInfo.setTag(request.getTag());
        downloadInfo.setEnqueueAction(request.getEnqueueAction());
        downloadInfo.setIdentifier(request.getIdentifier());
        downloadInfo.setDownloadOnEnqueue(request.getDownloadOnEnqueue());
        downloadInfo.setExtras(request.getExtras());
        downloadInfo.setAutoRetryMaxAttempts(request.getAutoRetryMaxAttempts());
        downloadInfo.setAutoRetryAttempts(0);
        return downloadInfo;
    }

    @NotNull
    public static final DownloadInfo toDownloadInfo(@NotNull Download download, @NotNull DownloadInfo downloadInfo) {
        M.p(download, "<this>");
        M.p(downloadInfo, "downloadInfo");
        downloadInfo.setId(download.getId());
        downloadInfo.setNamespace(download.getNamespace());
        downloadInfo.setUrl(download.getUrl());
        downloadInfo.setFile(download.getFile());
        downloadInfo.setGroup(download.getGroup());
        downloadInfo.setPriority(download.getPriority());
        downloadInfo.setHeaders(o0.F0(download.getHeaders()));
        downloadInfo.setDownloaded(download.getDownloaded());
        downloadInfo.setTotal(download.getTotal());
        downloadInfo.setStatus(download.getStatus());
        downloadInfo.setNetworkType(download.getNetworkType());
        downloadInfo.setError(download.getError());
        downloadInfo.setCreated(download.getCreated());
        downloadInfo.setTag(download.getTag());
        downloadInfo.setEnqueueAction(download.getEnqueueAction());
        downloadInfo.setIdentifier(download.getIdentifier());
        downloadInfo.setDownloadOnEnqueue(download.getDownloadOnEnqueue());
        downloadInfo.setExtras(download.getExtras());
        downloadInfo.setAutoRetryMaxAttempts(download.getAutoRetryMaxAttempts());
        downloadInfo.setAutoRetryAttempts(download.getAutoRetryAttempts());
        return downloadInfo;
    }

    @NotNull
    public static final DownloadInfo toDownloadInfo(@NotNull CompletedDownload completedDownload, @NotNull DownloadInfo downloadInfo) {
        M.p(completedDownload, "<this>");
        M.p(downloadInfo, "downloadInfo");
        downloadInfo.setId(FetchCoreUtils.getUniqueId(completedDownload.getUrl(), completedDownload.getFile()));
        downloadInfo.setUrl(completedDownload.getUrl());
        downloadInfo.setFile(completedDownload.getFile());
        downloadInfo.setGroup(completedDownload.getGroup());
        downloadInfo.setPriority(Priority.NORMAL);
        downloadInfo.setHeaders(o0.F0(completedDownload.getHeaders()));
        downloadInfo.setDownloaded(completedDownload.getFileByteSize());
        downloadInfo.setTotal(completedDownload.getFileByteSize());
        downloadInfo.setStatus(Status.COMPLETED);
        downloadInfo.setNetworkType(NetworkType.ALL);
        downloadInfo.setError(Error.NONE);
        downloadInfo.setCreated(completedDownload.getCreated());
        downloadInfo.setTag(completedDownload.getTag());
        downloadInfo.setEnqueueAction(EnqueueAction.REPLACE_EXISTING);
        downloadInfo.setIdentifier(completedDownload.getIdentifier());
        downloadInfo.setDownloadOnEnqueue(true);
        downloadInfo.setExtras(completedDownload.getExtras());
        downloadInfo.setAutoRetryMaxAttempts(0);
        downloadInfo.setAutoRetryAttempts(0);
        return downloadInfo;
    }
}
