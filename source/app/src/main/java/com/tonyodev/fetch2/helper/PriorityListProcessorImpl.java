package com.tonyodev.fetch2.helper;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchIntent;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.downloader.DownloadManager;
import com.tonyodev.fetch2.fetch.ListenerCoordinator;
import com.tonyodev.fetch2.provider.DownloadProvider;
import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.HandlerWrapper;
import com.tonyodev.fetch2core.Logger;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;

@SuppressLint({"UnspecifiedRegisterReceiverFlag"})
public final class PriorityListProcessorImpl implements PriorityListProcessor<Download> {

    @NotNull
    private static final Companion Companion = new Companion(null);
    private static final long ONE_MINUTE_IN_MILLISECONDS = 60000;
    private volatile long backOffTime;

    @NotNull
    private final Context context;
    private volatile int downloadConcurrentLimit;

    @NotNull
    private final DownloadManager downloadManager;

    @NotNull
    private final DownloadProvider downloadProvider;

    @NotNull
    private volatile NetworkType globalNetworkType;

    @NotNull
    private final HandlerWrapper handlerWrapper;

    @NotNull
    private final ListenerCoordinator listenerCoordinator;

    @NotNull
    private final Object lock;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String namespace;

    @NotNull
    private final NetworkInfoProvider.NetworkChangeListener networkChangeListener;

    @NotNull
    private final NetworkInfoProvider networkInfoProvider;
    private volatile boolean paused;

    @NotNull
    private final BroadcastReceiver priorityBackoffResetReceiver;

    @NotNull
    private final Runnable priorityIteratorRunnable;

    @NotNull
    private final PrioritySort prioritySort;
    private volatile boolean stopped;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public PriorityListProcessorImpl(@NotNull HandlerWrapper handlerWrapper, @NotNull DownloadProvider downloadProvider, @NotNull DownloadManager downloadManager, @NotNull NetworkInfoProvider networkInfoProvider, @NotNull Logger logger, @NotNull ListenerCoordinator listenerCoordinator, int i10, @NotNull Context context, @NotNull String namespace, @NotNull PrioritySort prioritySort) {
        M.p(handlerWrapper, "handlerWrapper");
        M.p(downloadProvider, "downloadProvider");
        M.p(downloadManager, "downloadManager");
        M.p(networkInfoProvider, "networkInfoProvider");
        M.p(logger, "logger");
        M.p(listenerCoordinator, "listenerCoordinator");
        M.p(context, "context");
        M.p(namespace, "namespace");
        M.p(prioritySort, "prioritySort");
        this.handlerWrapper = handlerWrapper;
        this.downloadProvider = downloadProvider;
        this.downloadManager = downloadManager;
        this.networkInfoProvider = networkInfoProvider;
        this.logger = logger;
        this.listenerCoordinator = listenerCoordinator;
        this.downloadConcurrentLimit = i10;
        this.context = context;
        this.namespace = namespace;
        this.prioritySort = prioritySort;
        this.lock = new Object();
        this.globalNetworkType = NetworkType.GLOBAL_OFF;
        this.stopped = true;
        this.backOffTime = 500L;
        NetworkInfoProvider.NetworkChangeListener networkChangeListener = new NetworkInfoProvider.NetworkChangeListener() {
            @Override
            public void onNetworkChanged() {
                HandlerWrapper handlerWrapper2;
                handlerWrapper2 = PriorityListProcessorImpl.this.handlerWrapper;
                handlerWrapper2.post(new PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1(PriorityListProcessorImpl.this));
            }
        };
        this.networkChangeListener = networkChangeListener;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(@Nullable Context context2, @Nullable Intent intent) {
                String action;
                boolean z10;
                boolean z11;
                String str;
                if (context2 == null || intent == null || (action = intent.getAction()) == null || action.hashCode() != -1500940653 || !action.equals(FetchIntent.ACTION_QUEUE_BACKOFF_RESET)) {
                    return;
                }
                z10 = PriorityListProcessorImpl.this.stopped;
                if (z10) {
                    return;
                }
                z11 = PriorityListProcessorImpl.this.paused;
                if (z11) {
                    return;
                }
                str = PriorityListProcessorImpl.this.namespace;
                if (M.g(str, intent.getStringExtra(FetchIntent.EXTRA_NAMESPACE))) {
                    PriorityListProcessorImpl.this.resetBackOffTime();
                }
            }
        };
        this.priorityBackoffResetReceiver = broadcastReceiver;
        networkInfoProvider.registerNetworkChangeListener(networkChangeListener);
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(broadcastReceiver, new IntentFilter(FetchIntent.ACTION_QUEUE_BACKOFF_RESET), 4);
        } else {
            context.registerReceiver(broadcastReceiver, new IntentFilter(FetchIntent.ACTION_QUEUE_BACKOFF_RESET));
        }
        this.priorityIteratorRunnable = new Runnable() {
            @Override
            public final void run() {
                PriorityListProcessorImpl.priorityIteratorRunnable$lambda$0(PriorityListProcessorImpl.this);
            }
        };
    }

    private final boolean canContinueToProcess() {
        return (this.stopped || this.paused) ? false : true;
    }

    private final void increaseBackOffTime() {
        this.backOffTime = this.backOffTime == 500 ? 60000L : this.backOffTime * 2;
        long minutes = TimeUnit.MILLISECONDS.toMinutes(this.backOffTime);
        this.logger.d("PriorityIterator backoffTime increased to " + minutes + " minute(s)");
    }

    public static final void priorityIteratorRunnable$lambda$0(PriorityListProcessorImpl this$0) {
        M.p(this$0, "this$0");
        if (this$0.canContinueToProcess()) {
            if (this$0.downloadManager.canAccommodateNewDownload() && this$0.canContinueToProcess()) {
                List<Download> priorityList = this$0.getPriorityList();
                boolean z10 = true;
                boolean z11 = priorityList.isEmpty() || !this$0.networkInfoProvider.isNetworkAvailable();
                if (z11) {
                    z10 = z11;
                } else {
                    int L10 = H.L(priorityList);
                    if (L10 >= 0) {
                        int i10 = 0;
                        while (this$0.downloadManager.canAccommodateNewDownload() && this$0.canContinueToProcess()) {
                            Download download = priorityList.get(i10);
                            boolean isFetchFileServerUrl = FetchCoreUtils.isFetchFileServerUrl(download.getUrl());
                            if ((!isFetchFileServerUrl && !this$0.networkInfoProvider.isNetworkAvailable()) || !this$0.canContinueToProcess()) {
                                break;
                            }
                            NetworkType globalNetworkType = this$0.getGlobalNetworkType();
                            NetworkType networkType = NetworkType.GLOBAL_OFF;
                            boolean isOnAllowedNetwork = this$0.networkInfoProvider.isOnAllowedNetwork(globalNetworkType != networkType ? this$0.getGlobalNetworkType() : download.getNetworkType() == networkType ? NetworkType.ALL : download.getNetworkType());
                            if (!isOnAllowedNetwork) {
                                this$0.listenerCoordinator.getMainListener().onWaitingNetwork(download);
                            }
                            if (isFetchFileServerUrl || isOnAllowedNetwork) {
                                if (!this$0.downloadManager.contains(download.getId()) && this$0.canContinueToProcess()) {
                                    this$0.downloadManager.start(download);
                                }
                                z10 = false;
                            }
                            if (i10 == L10) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
                if (z10) {
                    this$0.increaseBackOffTime();
                }
            }
            if (this$0.canContinueToProcess()) {
                this$0.registerPriorityIterator();
            }
        }
    }

    private final void registerPriorityIterator() {
        if (getDownloadConcurrentLimit() > 0) {
            this.handlerWrapper.postDelayed(this.priorityIteratorRunnable, this.backOffTime);
        }
    }

    private final void unregisterPriorityIterator() {
        if (getDownloadConcurrentLimit() > 0) {
            this.handlerWrapper.removeCallbacks(this.priorityIteratorRunnable);
        }
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            this.networkInfoProvider.unregisterNetworkChangeListener(this.networkChangeListener);
            this.context.unregisterReceiver(this.priorityBackoffResetReceiver);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public int getDownloadConcurrentLimit() {
        return this.downloadConcurrentLimit;
    }

    @Override
    @NotNull
    public NetworkType getGlobalNetworkType() {
        return this.globalNetworkType;
    }

    @Override
    @NotNull
    public List<Download> getPriorityList() {
        List<Download> J10;
        synchronized (this.lock) {
            try {
                J10 = this.downloadProvider.getPendingDownloadsSorted(this.prioritySort);
            } catch (Exception e10) {
                this.logger.d("PriorityIterator failed access database", e10);
                J10 = H.J();
            }
        }
        return J10;
    }

    @Override
    public boolean isPaused() {
        return this.paused;
    }

    @Override
    public boolean isStopped() {
        return this.stopped;
    }

    @Override
    public void pause() {
        synchronized (this.lock) {
            unregisterPriorityIterator();
            this.paused = true;
            this.stopped = false;
            this.downloadManager.cancelAll();
            this.logger.d("PriorityIterator paused");
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void resetBackOffTime() {
        synchronized (this.lock) {
            this.backOffTime = 500L;
            unregisterPriorityIterator();
            registerPriorityIterator();
            this.logger.d("PriorityIterator backoffTime reset to " + this.backOffTime + " milliseconds");
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void resume() {
        synchronized (this.lock) {
            resetBackOffTime();
            this.paused = false;
            this.stopped = false;
            registerPriorityIterator();
            this.logger.d("PriorityIterator resumed");
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void sendBackOffResetSignal() {
        synchronized (this.lock) {
            Intent intent = new Intent(FetchIntent.ACTION_QUEUE_BACKOFF_RESET);
            intent.putExtra(FetchIntent.EXTRA_NAMESPACE, this.namespace);
            this.context.sendBroadcast(intent);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void setDownloadConcurrentLimit(int i10) {
        this.downloadConcurrentLimit = i10;
    }

    @Override
    public void setGlobalNetworkType(@NotNull NetworkType networkType) {
        M.p(networkType, "<set-?>");
        this.globalNetworkType = networkType;
    }

    @Override
    public void start() {
        synchronized (this.lock) {
            resetBackOffTime();
            this.stopped = false;
            this.paused = false;
            registerPriorityIterator();
            this.logger.d("PriorityIterator started");
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void stop() {
        synchronized (this.lock) {
            unregisterPriorityIterator();
            this.paused = false;
            this.stopped = true;
            this.downloadManager.cancelAll();
            this.logger.d("PriorityIterator stop");
            P0 p02 = P0.f98194a;
        }
    }
}
