package com.tonyodev.fetch2.provider;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.model.FetchGroupInfo;
import com.tonyodev.fetch2core.Reason;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class GroupInfoProvider {

    @NotNull
    private final DownloadProvider downloadProvider;

    @NotNull
    private final Map<Integer, WeakReference<FetchGroupInfo>> groupInfoMap;

    @NotNull
    private final Object lock;

    @NotNull
    private final String namespace;

    public GroupInfoProvider(@NotNull String namespace, @NotNull DownloadProvider downloadProvider) {
        M.p(namespace, "namespace");
        M.p(downloadProvider, "downloadProvider");
        this.namespace = namespace;
        this.downloadProvider = downloadProvider;
        this.lock = new Object();
        this.groupInfoMap = new LinkedHashMap();
    }

    public final void clean() {
        synchronized (this.lock) {
            try {
                Iterator<Map.Entry<Integer, WeakReference<FetchGroupInfo>>> it = this.groupInfoMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().get() == null) {
                        it.remove();
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void clear() {
        synchronized (this.lock) {
            this.groupInfoMap.clear();
            P0 p02 = P0.f98194a;
        }
    }

    @NotNull
    public final FetchGroupInfo getGroupInfo(int i10, @NotNull Reason reason) {
        FetchGroupInfo fetchGroupInfo;
        M.p(reason, "reason");
        synchronized (this.lock) {
            try {
                WeakReference<FetchGroupInfo> weakReference = this.groupInfoMap.get(Integer.valueOf(i10));
                fetchGroupInfo = weakReference != null ? weakReference.get() : null;
                if (fetchGroupInfo == null) {
                    fetchGroupInfo = new FetchGroupInfo(i10, this.namespace);
                    fetchGroupInfo.update(this.downloadProvider.getByGroup(i10), null, reason);
                    this.groupInfoMap.put(Integer.valueOf(i10), new WeakReference<>(fetchGroupInfo));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fetchGroupInfo;
    }

    @NotNull
    public final FetchGroup getGroupReplace(int i10, @NotNull Download download, @NotNull Reason reason) {
        FetchGroupInfo groupInfo;
        M.p(download, "download");
        M.p(reason, "reason");
        synchronized (this.lock) {
            groupInfo = getGroupInfo(i10, reason);
            groupInfo.update(this.downloadProvider.getByGroupReplace(i10, download), download, reason);
        }
        return groupInfo;
    }

    public final void postGroupReplace(int i10, @NotNull Download download, @NotNull Reason reason) {
        M.p(download, "download");
        M.p(reason, "reason");
        synchronized (this.lock) {
            try {
                WeakReference<FetchGroupInfo> weakReference = this.groupInfoMap.get(Integer.valueOf(i10));
                FetchGroupInfo fetchGroupInfo = weakReference != null ? weakReference.get() : null;
                if (fetchGroupInfo != null) {
                    fetchGroupInfo.update(this.downloadProvider.getByGroupReplace(i10, download), download, reason);
                    P0 p02 = P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
