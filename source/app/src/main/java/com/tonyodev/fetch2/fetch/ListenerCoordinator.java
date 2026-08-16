package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import android.os.HandlerThread;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchGroupListener;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.FetchNotificationManager;
import com.tonyodev.fetch2.provider.DownloadProvider;
import com.tonyodev.fetch2.provider.GroupInfoProvider;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.Reason;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

@kotlin.jvm.internal.t0({"SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,770:1\n1603#2,9:771\n1855#2:780\n1856#2:782\n1612#2:783\n1#3:781\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n*L\n733#1:771,9\n733#1:780\n733#1:782\n733#1:783\n733#1:781\n*E\n"})
public final class ListenerCoordinator {

    @NotNull
    private final DownloadProvider downloadProvider;

    @NotNull
    private final Map<Integer, List<WeakReference<FetchObserver<Download>>>> downloadsObserverMap;

    @NotNull
    private final Map<Integer, Set<WeakReference<FetchGroupListener>>> fetchGroupListenerMap;

    @NotNull
    private final Map<Integer, Set<WeakReference<FetchListener>>> fetchListenerMap;

    @NotNull
    private final Handler fetchNotificationHandler;

    @NotNull
    private final List<FetchNotificationManager> fetchNotificationManagerList;

    @NotNull
    private final GroupInfoProvider groupInfoProvider;

    @NotNull
    private final Object lock;

    @NotNull
    private final FetchListener mainListener;

    @NotNull
    private final String namespace;

    @NotNull
    private final Handler uiHandler;

    public ListenerCoordinator(@NotNull String namespace, @NotNull GroupInfoProvider groupInfoProvider, @NotNull DownloadProvider downloadProvider, @NotNull Handler uiHandler) {
        kotlin.jvm.internal.M.p(namespace, "namespace");
        kotlin.jvm.internal.M.p(groupInfoProvider, "groupInfoProvider");
        kotlin.jvm.internal.M.p(downloadProvider, "downloadProvider");
        kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
        this.namespace = namespace;
        this.groupInfoProvider = groupInfoProvider;
        this.downloadProvider = downloadProvider;
        this.uiHandler = uiHandler;
        this.lock = new Object();
        this.fetchListenerMap = new LinkedHashMap();
        this.fetchGroupListenerMap = new LinkedHashMap();
        this.fetchNotificationManagerList = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("FetchNotificationsIO");
        handlerThread.start();
        this.fetchNotificationHandler = new Handler(handlerThread.getLooper());
        this.downloadsObserverMap = new LinkedHashMap();
        this.mainListener = new ListenerCoordinator$mainListener$1(this);
    }

    public static final void addFetchObserversForDownload$lambda$10$lambda$9(List addedObservers, Download download) {
        kotlin.jvm.internal.M.p(addedObservers, "$addedObservers");
        Iterator it = addedObservers.iterator();
        while (it.hasNext()) {
            ((FetchObserver) it.next()).onChanged(download, Reason.OBSERVER_ATTACHED);
        }
    }

    public static final void cancelOnGoingNotifications$lambda$6$lambda$5(ListenerCoordinator this$0, FetchNotificationManager fetchNotificationManager) {
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(fetchNotificationManager, "$fetchNotificationManager");
        synchronized (this$0.lock) {
            fetchNotificationManager.cancelOngoingNotifications();
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    public final void addFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        synchronized (this.lock) {
            try {
                List<FetchObserver> l92 = C14960A.l9(fetchObservers);
                List<WeakReference<FetchObserver<Download>>> list = this.downloadsObserverMap.get(Integer.valueOf(i10));
                if (list == null) {
                    list = new ArrayList<>();
                }
                ArrayList arrayList = new ArrayList();
                Iterator<WeakReference<FetchObserver<Download>>> it = list.iterator();
                while (it.hasNext()) {
                    FetchObserver<Download> fetchObserver = it.next().get();
                    if (fetchObserver != null) {
                        arrayList.add(fetchObserver);
                    }
                }
                final ArrayList arrayList2 = new ArrayList();
                for (FetchObserver fetchObserver2 : l92) {
                    if (!arrayList.contains(fetchObserver2)) {
                        list.add(new WeakReference<>(fetchObserver2));
                        arrayList2.add(fetchObserver2);
                    }
                }
                final Download download = this.downloadProvider.getDownload(i10);
                if (download != null) {
                    this.uiHandler.post(new Runnable() {
                        @Override
                        public final void run() {
                            ListenerCoordinator.addFetchObserversForDownload$lambda$10$lambda$9(List.this, download);
                        }
                    });
                }
                this.downloadsObserverMap.put(Integer.valueOf(i10), list);
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void addListener(int i10, @NotNull FetchListener fetchListener) {
        kotlin.jvm.internal.M.p(fetchListener, "fetchListener");
        synchronized (this.lock) {
            try {
                Set<WeakReference<FetchListener>> set = this.fetchListenerMap.get(Integer.valueOf(i10));
                if (set == null) {
                    set = new LinkedHashSet<>();
                }
                set.add(new WeakReference<>(fetchListener));
                this.fetchListenerMap.put(Integer.valueOf(i10), set);
                if (fetchListener instanceof FetchGroupListener) {
                    Set<WeakReference<FetchGroupListener>> set2 = this.fetchGroupListenerMap.get(Integer.valueOf(i10));
                    if (set2 == null) {
                        set2 = new LinkedHashSet<>();
                    }
                    set2.add(new WeakReference<>(fetchListener));
                    this.fetchGroupListenerMap.put(Integer.valueOf(i10), set2);
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void addNotificationManager(@NotNull FetchNotificationManager fetchNotificationManager) {
        kotlin.jvm.internal.M.p(fetchNotificationManager, "fetchNotificationManager");
        synchronized (this.lock) {
            try {
                if (!this.fetchNotificationManagerList.contains(fetchNotificationManager)) {
                    this.fetchNotificationManagerList.add(fetchNotificationManager);
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void cancelOnGoingNotifications(@NotNull final FetchNotificationManager fetchNotificationManager) {
        kotlin.jvm.internal.M.p(fetchNotificationManager, "fetchNotificationManager");
        synchronized (this.lock) {
            this.fetchNotificationHandler.post(new Runnable() {
                @Override
                public final void run() {
                    ListenerCoordinator.cancelOnGoingNotifications$lambda$6$lambda$5(ListenerCoordinator.this, fetchNotificationManager);
                }
            });
        }
    }

    public final void clearAll() {
        synchronized (this.lock) {
            this.fetchListenerMap.clear();
            this.fetchGroupListenerMap.clear();
            this.fetchNotificationManagerList.clear();
            this.downloadsObserverMap.clear();
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    @NotNull
    public final FetchListener getMainListener() {
        return this.mainListener;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    public final void removeFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        int i11;
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        synchronized (this.lock) {
            try {
                int length = fetchObservers.length;
                while (i11 < length) {
                    FetchObserver<Download> fetchObserver = fetchObservers[i11];
                    List<WeakReference<FetchObserver<Download>>> list = this.downloadsObserverMap.get(Integer.valueOf(i10));
                    Iterator<WeakReference<FetchObserver<Download>>> it = list != null ? list.iterator() : null;
                    i11 = it == null ? i11 + 1 : 0;
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (kotlin.jvm.internal.M.g(it.next().get(), fetchObserver)) {
                            it.remove();
                            break;
                        }
                    }
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (kotlin.jvm.internal.M.g(r1.next().get(), r6) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        r1.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        if ((r6 instanceof com.tonyodev.fetch2.FetchGroupListener) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
    
        r5 = r4.fetchGroupListenerMap.get(java.lang.Integer.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
    
        if (r5 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
    
        r2 = r5.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
    
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        if (r2.hasNext() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (kotlin.jvm.internal.M.g(r2.next().get(), r6) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
    
        r2.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
    
        r5 = nf.P0.f98194a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r1 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        if (r1.hasNext() == false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void removeListener(int i10, @NotNull FetchListener fetchListener) {
        kotlin.jvm.internal.M.p(fetchListener, "fetchListener");
        synchronized (this.lock) {
            try {
                Set<WeakReference<FetchListener>> set = this.fetchListenerMap.get(Integer.valueOf(i10));
                Iterator<WeakReference<FetchGroupListener>> it = null;
                Iterator<WeakReference<FetchListener>> it2 = set != null ? set.iterator() : null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void removeNotificationManager(@NotNull FetchNotificationManager fetchNotificationManager) {
        kotlin.jvm.internal.M.p(fetchNotificationManager, "fetchNotificationManager");
        synchronized (this.lock) {
            this.fetchNotificationManagerList.remove(fetchNotificationManager);
        }
    }
}
