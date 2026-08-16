package com.tonyodev.fetch2.model;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.FetchGroupObserver;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.fetch.FetchModulesBuilder;
import com.tonyodev.fetch2.model.FetchGroupInfo;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.Reason;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;
import pf.H;
import pf.S;

@t0({"SMAP\nFetchGroupInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,114:1\n766#2:115\n857#2,2:116\n766#2:118\n857#2,2:119\n766#2:121\n857#2,2:122\n766#2:124\n857#2,2:125\n766#2:127\n857#2,2:128\n766#2:130\n857#2,2:131\n766#2:133\n857#2,2:134\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n32#3,2:145\n*S KotlinDebug\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n*L\n21#1:115\n21#1:116,2\n22#1:118\n22#1:119,2\n23#1:121\n23#1:122,2\n24#1:124\n24#1:125,2\n25#1:127\n25#1:128,2\n26#1:130\n26#1:131,2\n27#1:133\n27#1:134,2\n28#1:136\n28#1:137,2\n29#1:139\n29#1:140,2\n68#1:142,3\n37#1:145,2\n*E\n"})
public final class FetchGroupInfo implements FetchGroup {

    @NotNull
    private List<? extends Download> addedDownloads;

    @NotNull
    private List<? extends Download> cancelledDownloads;

    @NotNull
    private List<? extends Download> completedDownloads;

    @NotNull
    private List<? extends Download> deletedDownloads;

    @NotNull
    private List<? extends Download> downloadingDownloads;

    @NotNull
    private volatile List<? extends Download> downloads;

    @NotNull
    private List<? extends Download> failedDownloads;

    private final int f83848id;

    @NotNull
    private final String namespace;

    @NotNull
    private final Set<FetchGroupObserver> observerSet;

    @NotNull
    private List<? extends Download> pausedDownloads;

    @NotNull
    private List<? extends Download> queuedDownloads;

    @NotNull
    private List<? extends Download> removedDownloads;

    public FetchGroupInfo(int i10, @NotNull String namespace) {
        M.p(namespace, "namespace");
        this.f83848id = i10;
        this.namespace = namespace;
        this.observerSet = new LinkedHashSet();
        this.downloads = H.J();
        this.queuedDownloads = H.J();
        this.addedDownloads = H.J();
        this.pausedDownloads = H.J();
        this.downloadingDownloads = H.J();
        this.completedDownloads = H.J();
        this.cancelledDownloads = H.J();
        this.failedDownloads = H.J();
        this.deletedDownloads = H.J();
        this.removedDownloads = H.J();
    }

    public static final void addFetchGroupObservers$lambda$15$lambda$14(List addedObservers, FetchGroupInfo this$0) {
        M.p(addedObservers, "$addedObservers");
        M.p(this$0, "this$0");
        Iterator it = addedObservers.iterator();
        while (it.hasNext()) {
            ((FetchGroupObserver) it.next()).onChanged(this$0.getDownloads(), Reason.OBSERVER_ATTACHED);
        }
    }

    public static final void update$lambda$11(FetchGroupInfo this$0, List downloads, Reason reason, Download download) {
        M.p(this$0, "this$0");
        M.p(downloads, "$downloads");
        M.p(reason, "$reason");
        synchronized (this$0.observerSet) {
            try {
                for (FetchGroupObserver fetchGroupObserver : this$0.observerSet) {
                    fetchGroupObserver.onChanged(downloads, reason);
                    if (download != null) {
                        fetchGroupObserver.onChanged(downloads, download, reason);
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void addFetchGroupObservers(@NotNull FetchGroupObserver... fetchGroupObservers) {
        M.p(fetchGroupObservers, "fetchGroupObservers");
        synchronized (this.observerSet) {
            try {
                List<FetchGroupObserver> l92 = C14960A.l9(fetchGroupObservers);
                final ArrayList arrayList = new ArrayList();
                for (FetchGroupObserver fetchGroupObserver : l92) {
                    if (!this.observerSet.contains(fetchGroupObserver)) {
                        this.observerSet.add(fetchGroupObserver);
                        arrayList.add(fetchGroupObserver);
                    }
                }
                FetchModulesBuilder.INSTANCE.getMainUIHandler().post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchGroupInfo.addFetchGroupObservers$lambda$15$lambda$14(List.this, this);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @NotNull
    public List<Download> getAddedDownloads() {
        return this.addedDownloads;
    }

    @Override
    @NotNull
    public List<Download> getCancelledDownloads() {
        return this.cancelledDownloads;
    }

    @Override
    @NotNull
    public List<Download> getCompletedDownloads() {
        return this.completedDownloads;
    }

    @Override
    @NotNull
    public List<Download> getDeletedDownloads() {
        return this.deletedDownloads;
    }

    @Override
    @NotNull
    public List<Download> getDownloadingDownloads() {
        return this.downloadingDownloads;
    }

    @Override
    @NotNull
    public List<Download> getDownloads() {
        return this.downloads;
    }

    @Override
    @NotNull
    public List<Download> getFailedDownloads() {
        return this.failedDownloads;
    }

    @Override
    public int getGroupDownloadProgress() {
        List<Download> downloads = getDownloads();
        if (!(downloads instanceof Collection) || !downloads.isEmpty()) {
            Iterator<Download> it = downloads.iterator();
            while (it.hasNext()) {
                if (it.next().getTotal() < 1) {
                    return -1;
                }
            }
        }
        long j10 = 0;
        long j11 = 0;
        for (Download download : getDownloads()) {
            j10 += download.getDownloaded();
            j11 += download.getTotal();
        }
        return FetchCoreUtils.calculateProgress(j10, j11);
    }

    @Override
    public int getId() {
        return this.f83848id;
    }

    @Override
    @NotNull
    public String getNamespace() {
        return this.namespace;
    }

    @Override
    @NotNull
    public Set<FetchObserver<List<Download>>> getObservers() {
        Set<FetchObserver<List<Download>>> e62;
        synchronized (this.observerSet) {
            e62 = S.e6(this.observerSet);
        }
        return e62;
    }

    @Override
    @NotNull
    public List<Download> getPausedDownloads() {
        return this.pausedDownloads;
    }

    @Override
    @NotNull
    public List<Download> getQueuedDownloads() {
        return this.queuedDownloads;
    }

    @Override
    @NotNull
    public List<Download> getRemovedDownloads() {
        return this.removedDownloads;
    }

    @Override
    public void removeFetchGroupObservers(@NotNull FetchGroupObserver... fetchGroupObservers) {
        M.p(fetchGroupObservers, "fetchGroupObservers");
        synchronized (this.observerSet) {
            try {
                for (FetchGroupObserver fetchGroupObserver : fetchGroupObservers) {
                    this.observerSet.remove(fetchGroupObserver);
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setAddedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.addedDownloads = list;
    }

    public void setCancelledDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.cancelledDownloads = list;
    }

    public void setCompletedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.completedDownloads = list;
    }

    public void setDeletedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.deletedDownloads = list;
    }

    public void setDownloadingDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.downloadingDownloads = list;
    }

    public void setDownloads(@NotNull List<? extends Download> value) {
        M.p(value, "value");
        this.downloads = value;
        List<? extends Download> list = value;
        ArrayList arrayList = new ArrayList();
        for (Download download : list) {
            if (download.getStatus() == Status.QUEUED) {
                arrayList.add(download);
            }
        }
        setQueuedDownloads(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Download download2 : list) {
            if (download2.getStatus() == Status.ADDED) {
                arrayList2.add(download2);
            }
        }
        setAddedDownloads(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Download download3 : list) {
            if (download3.getStatus() == Status.PAUSED) {
                arrayList3.add(download3);
            }
        }
        setPausedDownloads(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Download download4 : list) {
            if (download4.getStatus() == Status.DOWNLOADING) {
                arrayList4.add(download4);
            }
        }
        setDownloadingDownloads(arrayList4);
        ArrayList arrayList5 = new ArrayList();
        for (Download download5 : list) {
            if (download5.getStatus() == Status.COMPLETED) {
                arrayList5.add(download5);
            }
        }
        setCompletedDownloads(arrayList5);
        ArrayList arrayList6 = new ArrayList();
        for (Download download6 : list) {
            if (download6.getStatus() == Status.CANCELLED) {
                arrayList6.add(download6);
            }
        }
        setCancelledDownloads(arrayList6);
        ArrayList arrayList7 = new ArrayList();
        for (Download download7 : list) {
            if (download7.getStatus() == Status.FAILED) {
                arrayList7.add(download7);
            }
        }
        setFailedDownloads(arrayList7);
        ArrayList arrayList8 = new ArrayList();
        for (Download download8 : list) {
            if (download8.getStatus() == Status.DELETED) {
                arrayList8.add(download8);
            }
        }
        setDeletedDownloads(arrayList8);
        ArrayList arrayList9 = new ArrayList();
        for (Download download9 : list) {
            if (download9.getStatus() == Status.REMOVED) {
                arrayList9.add(download9);
            }
        }
        setRemovedDownloads(arrayList9);
    }

    public void setFailedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.failedDownloads = list;
    }

    public void setPausedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.pausedDownloads = list;
    }

    public void setQueuedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.queuedDownloads = list;
    }

    public void setRemovedDownloads(@NotNull List<? extends Download> list) {
        M.p(list, "<set-?>");
        this.removedDownloads = list;
    }

    public final void update(@NotNull final List<? extends Download> downloads, @Nullable final Download download, @NotNull final Reason reason) {
        M.p(downloads, "downloads");
        M.p(reason, "reason");
        setDownloads(downloads);
        if (reason != Reason.DOWNLOAD_BLOCK_UPDATED) {
            FetchModulesBuilder.INSTANCE.getMainUIHandler().post(new Runnable() {
                @Override
                public final void run() {
                    FetchGroupInfo.update$lambda$11(FetchGroupInfo.this, downloads, reason, download);
                }
            });
        }
    }

    public FetchGroupInfo(int i10, String str, int i11, C14026x c14026x) {
        this((i11 & 1) != 0 ? 0 : i10, str);
    }
}
