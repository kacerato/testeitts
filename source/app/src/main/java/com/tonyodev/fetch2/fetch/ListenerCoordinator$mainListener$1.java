package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.FetchGroupListener;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.FetchNotificationManager;
import com.tonyodev.fetch2.provider.GroupInfoProvider;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.Reason;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,770:1\n1855#2,2:771\n1855#2,2:773\n1855#2,2:775\n1855#2,2:777\n1855#2,2:779\n1855#2,2:781\n1855#2,2:783\n1855#2,2:785\n1855#2,2:787\n1855#2,2:789\n1855#2,2:791\n1855#2,2:793\n1855#2,2:795\n1855#2,2:797\n1855#2,2:799\n1855#2,2:801\n1855#2,2:803\n1855#2,2:805\n1855#2,2:807\n1855#2,2:809\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:819\n1855#2,2:821\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n1855#2,2:829\n1855#2,2:831\n1855#2,2:833\n1855#2,2:835\n1855#2,2:837\n1855#2,2:839\n1855#2,2:841\n1855#2,2:843\n1855#2,2:845\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n*L\n97#1:771,2\n113#1:773,2\n130#1:775,2\n143#1:777,2\n159#1:779,2\n174#1:781,2\n187#1:783,2\n203#1:785,2\n218#1:787,2\n238#1:789,2\n254#1:791,2\n269#1:793,2\n289#1:795,2\n305#1:797,2\n320#1:799,2\n333#1:801,2\n347#1:803,2\n371#1:805,2\n387#1:807,2\n402#1:809,2\n422#1:811,2\n438#1:813,2\n453#1:815,2\n473#1:817,2\n489#1:819,2\n504#1:821,2\n524#1:823,2\n540#1:825,2\n555#1:827,2\n575#1:829,2\n591#1:831,2\n606#1:833,2\n626#1:835,2\n642#1:837,2\n657#1:839,2\n677#1:841,2\n693#1:843,2\n708#1:845,2\n*E\n"})
public final class ListenerCoordinator$mainListener$1 implements FetchListener {
    final ListenerCoordinator this$0;

    public ListenerCoordinator$mainListener$1(ListenerCoordinator listenerCoordinator) {
        this.this$0 = listenerCoordinator;
    }

    public static final void onAdded$lambda$6$lambda$1$lambda$0(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onAdded(download);
    }

    public static final void onAdded$lambda$6$lambda$3$lambda$2(FetchGroupListener fetchGroupListener, int i10, Download download, FetchGroup fetchGroup) {
        kotlin.jvm.internal.M.p(download, "$download");
        kotlin.jvm.internal.M.p(fetchGroup, "$fetchGroup");
        fetchGroupListener.onAdded(i10, download, fetchGroup);
    }

    public static final void onAdded$lambda$6$lambda$5$lambda$4(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_ADDED);
    }

    public static final void onCancelled$lambda$77$lambda$71(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onCancelled$lambda$77$lambda$73$lambda$72(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onCancelled(download);
    }

    public static final void onCancelled$lambda$77$lambda$76$lambda$75(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_CANCELLED);
    }

    public static final void onCompleted$lambda$26$lambda$20(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onCompleted$lambda$26$lambda$22$lambda$21(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onCompleted(download);
    }

    public static final void onCompleted$lambda$26$lambda$25$lambda$24(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_COMPLETED);
    }

    public static final void onDeleted$lambda$93$lambda$87(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onDeleted$lambda$93$lambda$89$lambda$88(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onDeleted(download);
    }

    public static final void onDeleted$lambda$93$lambda$92$lambda$91(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_DELETED);
    }

    public static final void onError$lambda$34$lambda$28(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onError$lambda$34$lambda$30$lambda$29(FetchListener fetchListener, Download download, Error error, Throwable th2) {
        kotlin.jvm.internal.M.p(download, "$download");
        kotlin.jvm.internal.M.p(error, "$error");
        fetchListener.onError(download, error, th2);
    }

    public static final void onError$lambda$34$lambda$33$lambda$32(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_ERROR);
    }

    public static final void onPaused$lambda$61$lambda$55(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onPaused$lambda$61$lambda$57$lambda$56(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onPaused(download);
    }

    public static final void onPaused$lambda$61$lambda$60$lambda$59(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_PAUSED);
    }

    public static final void onProgress$lambda$53$lambda$47(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onProgress$lambda$53$lambda$49$lambda$48(FetchListener fetchListener, Download download, long j10, long j11) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onProgress(download, j10, j11);
    }

    public static final void onProgress$lambda$53$lambda$52$lambda$51(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_PROGRESS_CHANGED);
    }

    public static final void onQueued$lambda$12$lambda$11$lambda$10(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_QUEUED);
    }

    public static final void onQueued$lambda$12$lambda$8$lambda$7(FetchListener fetchListener, Download download, boolean z10) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onQueued(download, z10);
    }

    public static final void onRemoved$lambda$85$lambda$79(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onRemoved$lambda$85$lambda$81$lambda$80(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onRemoved(download);
    }

    public static final void onRemoved$lambda$85$lambda$84$lambda$83(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_REMOVED);
    }

    public static final void onResumed$lambda$69$lambda$63(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onResumed$lambda$69$lambda$65$lambda$64(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onResumed(download);
    }

    public static final void onResumed$lambda$69$lambda$68$lambda$67(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_RESUMED);
    }

    public static final void onStarted$lambda$45$lambda$39(ListenerCoordinator this$0, Download download) {
        Object obj;
        List list;
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(download, "$download");
        obj = this$0.lock;
        synchronized (obj) {
            try {
                list = this$0.fetchNotificationManagerList;
                Iterator it = list.iterator();
                while (it.hasNext() && !((FetchNotificationManager) it.next()).postDownloadUpdate(download)) {
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void onStarted$lambda$45$lambda$41$lambda$40(FetchListener fetchListener, Download download, List downloadBlocks, int i10) {
        kotlin.jvm.internal.M.p(download, "$download");
        kotlin.jvm.internal.M.p(downloadBlocks, "$downloadBlocks");
        fetchListener.onStarted(download, downloadBlocks, i10);
    }

    public static final void onStarted$lambda$45$lambda$44$lambda$43(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_STARTED);
    }

    public static final void onWaitingNetwork$lambda$18$lambda$14$lambda$13(FetchListener fetchListener, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchListener.onWaitingNetwork(download);
    }

    public static final void onWaitingNetwork$lambda$18$lambda$17$lambda$16(FetchObserver fetchObserver, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        fetchObserver.onChanged(download, Reason.DOWNLOAD_WAITING_ON_NETWORK);
    }

    @Override
    public void onAdded(@NotNull final Download download) {
        Object obj;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler2;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onAdded$lambda$6$lambda$1$lambda$0(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_ADDED);
                } else {
                    final int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    final FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_ADDED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            final FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                handler2 = listenerCoordinator.uiHandler;
                                handler2.post(new Runnable() {
                                    @Override
                                    public final void run() {
                                        ListenerCoordinator$mainListener$1.onAdded$lambda$6$lambda$3$lambda$2(FetchGroupListener.this, group, download, groupReplace);
                                    }
                                });
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler = listenerCoordinator.uiHandler;
                            handler.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onAdded$lambda$6$lambda$5$lambda$4(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onCancelled(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onCancelled$lambda$77$lambda$71(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onCancelled$lambda$77$lambda$73$lambda$72(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_CANCELLED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_CANCELLED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onCancelled(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onCancelled$lambda$77$lambda$76$lambda$75(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onCompleted(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onCompleted$lambda$26$lambda$20(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onCompleted$lambda$26$lambda$22$lambda$21(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_COMPLETED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_COMPLETED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onCompleted(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onCompleted$lambda$26$lambda$25$lambda$24(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onDeleted(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onDeleted$lambda$93$lambda$87(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onDeleted$lambda$93$lambda$89$lambda$88(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_DELETED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_DELETED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onDeleted(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onDeleted$lambda$93$lambda$92$lambda$91(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onDownloadBlockUpdated(@NotNull Download download, @NotNull DownloadBlock downloadBlock, int i10) {
        Object obj;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        kotlin.jvm.internal.M.p(download, "download");
        kotlin.jvm.internal.M.p(downloadBlock, "downloadBlock");
        obj = this.this$0.lock;
        ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            fetchListener.onDownloadBlockUpdated(download, downloadBlock, i10);
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (!map2.isEmpty()) {
                    int group = download.getGroup();
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider.getGroupReplace(group, download, Reason.DOWNLOAD_BLOCK_UPDATED);
                    map3 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map3.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onDownloadBlockUpdated(group, download, downloadBlock, i10, groupReplace);
                            }
                        }
                    }
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onError(@NotNull final Download download, @NotNull final Error error, @Nullable final Throwable th2) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        kotlin.jvm.internal.M.p(error, "error");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onError$lambda$34$lambda$28(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onError$lambda$34$lambda$30$lambda$29(FetchListener.this, download, error, th2);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_ERROR);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_ERROR);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onError(group, download, error, th2, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onError$lambda$34$lambda$33$lambda$32(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public void onPaused(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onPaused$lambda$61$lambda$55(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onPaused$lambda$61$lambda$57$lambda$56(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_PAUSED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_PAUSED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onPaused(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onPaused$lambda$61$lambda$60$lambda$59(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onProgress(@NotNull final Download download, final long j10, final long j11) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onProgress$lambda$53$lambda$47(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onProgress$lambda$53$lambda$49$lambda$48(FetchListener.this, download, j10, j11);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_PROGRESS_CHANGED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_PROGRESS_CHANGED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onProgress(group, download, j10, j11, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onProgress$lambda$53$lambda$52$lambda$51(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onQueued(@NotNull final Download download, final boolean z10) {
        Object obj;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler2;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onQueued$lambda$12$lambda$8$lambda$7(FetchListener.this, download, z10);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_QUEUED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_QUEUED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onQueued(group, download, z10, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler = listenerCoordinator.uiHandler;
                            handler.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onQueued$lambda$12$lambda$11$lambda$10(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onRemoved(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onRemoved$lambda$85$lambda$79(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onRemoved$lambda$85$lambda$81$lambda$80(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_REMOVED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_REMOVED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onRemoved(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onRemoved$lambda$85$lambda$84$lambda$83(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onResumed(@NotNull final Download download) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onResumed$lambda$69$lambda$63(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onResumed$lambda$69$lambda$65$lambda$64(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_RESUMED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_RESUMED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onResumed(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onResumed$lambda$69$lambda$68$lambda$67(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onStarted(@NotNull final Download download, @NotNull final List<? extends DownloadBlock> downloadBlocks, final int i10) {
        Object obj;
        Handler handler;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler2;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler3;
        kotlin.jvm.internal.M.p(download, "download");
        kotlin.jvm.internal.M.p(downloadBlocks, "downloadBlocks");
        obj = this.this$0.lock;
        final ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                handler = listenerCoordinator.fetchNotificationHandler;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ListenerCoordinator$mainListener$1.onStarted$lambda$45$lambda$39(ListenerCoordinator.this, download);
                    }
                });
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler3 = listenerCoordinator.uiHandler;
                            handler3.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onStarted$lambda$45$lambda$41$lambda$40(FetchListener.this, download, downloadBlocks, i10);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_STARTED);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_STARTED);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onStarted(group, download, downloadBlocks, i10, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onStarted$lambda$45$lambda$44$lambda$43(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onWaitingNetwork(@NotNull final Download download) {
        Object obj;
        Map map;
        Map map2;
        GroupInfoProvider groupInfoProvider;
        Map map3;
        Handler handler;
        GroupInfoProvider groupInfoProvider2;
        Map map4;
        Handler handler2;
        kotlin.jvm.internal.M.p(download, "download");
        obj = this.this$0.lock;
        ListenerCoordinator listenerCoordinator = this.this$0;
        synchronized (obj) {
            try {
                map = listenerCoordinator.fetchListenerMap;
                Iterator<E> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        final FetchListener fetchListener = (FetchListener) ((WeakReference) it2.next()).get();
                        if (fetchListener == null) {
                            it2.remove();
                        } else {
                            handler2 = listenerCoordinator.uiHandler;
                            handler2.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onWaitingNetwork$lambda$18$lambda$14$lambda$13(FetchListener.this, download);
                                }
                            });
                        }
                    }
                }
                map2 = listenerCoordinator.fetchGroupListenerMap;
                if (map2.isEmpty()) {
                    groupInfoProvider = listenerCoordinator.groupInfoProvider;
                    groupInfoProvider.postGroupReplace(download.getGroup(), download, Reason.DOWNLOAD_WAITING_ON_NETWORK);
                } else {
                    int group = download.getGroup();
                    groupInfoProvider2 = listenerCoordinator.groupInfoProvider;
                    FetchGroup groupReplace = groupInfoProvider2.getGroupReplace(group, download, Reason.DOWNLOAD_WAITING_ON_NETWORK);
                    map4 = listenerCoordinator.fetchGroupListenerMap;
                    Iterator<E> it3 = map4.values().iterator();
                    while (it3.hasNext()) {
                        Iterator it4 = ((Set) it3.next()).iterator();
                        while (it4.hasNext()) {
                            FetchGroupListener fetchGroupListener = (FetchGroupListener) ((WeakReference) it4.next()).get();
                            if (fetchGroupListener == null) {
                                it4.remove();
                            } else {
                                fetchGroupListener.onWaitingNetwork(group, download, groupReplace);
                            }
                        }
                    }
                }
                map3 = listenerCoordinator.downloadsObserverMap;
                List list = (List) map3.get(Integer.valueOf(download.getId()));
                if (list != null) {
                    Iterator<E> it5 = list.iterator();
                    while (it5.hasNext()) {
                        final FetchObserver fetchObserver = (FetchObserver) ((WeakReference) it5.next()).get();
                        if (fetchObserver != null) {
                            handler = listenerCoordinator.uiHandler;
                            handler.post(new Runnable() {
                                @Override
                                public final void run() {
                                    ListenerCoordinator$mainListener$1.onWaitingNetwork$lambda$18$lambda$17$lambda$16(FetchObserver.this, download);
                                }
                            });
                        }
                    }
                    nf.P0 p02 = nf.P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
