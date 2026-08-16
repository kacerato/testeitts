package com.tonyodev.fetch2.provider;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDownloadProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadProvider.kt\ncom/tonyodev/fetch2/provider/DownloadProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n350#2,7:45\n*S KotlinDebug\n*F\n+ 1 DownloadProvider.kt\ncom/tonyodev/fetch2/provider/DownloadProvider\n*L\n29#1:45,7\n*E\n"})
public final class DownloadProvider {

    @NotNull
    private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

    public DownloadProvider(@NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper) {
        M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
        this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
    }

    @NotNull
    public final List<Download> getByGroup(int i10) {
        return this.fetchDatabaseManagerWrapper.getByGroup(i10);
    }

    @NotNull
    public final List<Download> getByGroupReplace(int i10, @NotNull Download download) {
        M.p(download, "download");
        List<Download> byGroup = getByGroup(i10);
        M.n(byGroup, "null cannot be cast to non-null type java.util.ArrayList<com.tonyodev.fetch2.Download>");
        ArrayList arrayList = (ArrayList) byGroup;
        Iterator<E> it = arrayList.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            if (((Download) it.next()).getId() == download.getId()) {
                break;
            }
            i11++;
        }
        if (i11 != -1) {
            arrayList.set(i11, download);
        }
        return arrayList;
    }

    @NotNull
    public final List<Download> getByStatus(@NotNull Status status) {
        M.p(status, "status");
        return this.fetchDatabaseManagerWrapper.getByStatus(status);
    }

    @Nullable
    public final Download getDownload(int i10) {
        return this.fetchDatabaseManagerWrapper.get(i10);
    }

    @NotNull
    public final List<Download> getDownloads() {
        return this.fetchDatabaseManagerWrapper.get();
    }

    @NotNull
    public final List<Download> getPendingDownloadsSorted(@NotNull PrioritySort prioritySort) {
        M.p(prioritySort, "prioritySort");
        return this.fetchDatabaseManagerWrapper.getPendingDownloadsSorted(prioritySort);
    }

    @NotNull
    public final List<Download> getDownloads(@NotNull List<Integer> ids) {
        M.p(ids, "ids");
        return this.fetchDatabaseManagerWrapper.get(ids);
    }
}
