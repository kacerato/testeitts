package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import com.tonyodev.fetch2.util.FetchTypeConverterExtensions;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;

public final class FetchImpl$updateRequest$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<Download> $func;
    final Func<Error> $func2;
    final boolean $notifyListeners;
    final int $requestId;
    final Request $updatedRequest;
    final FetchImpl this$0;

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.DELETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Status.PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Status.QUEUED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Status.REMOVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Status.DOWNLOADING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Status.ADDED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Status.NONE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$updateRequest$1$1(FetchImpl fetchImpl, int i10, Request request, boolean z10, Func<Error> func, Func<Download> func2) {
        super(0);
        this.this$0 = fetchImpl;
        this.$requestId = i10;
        this.$updatedRequest = request;
        this.$notifyListeners = z10;
        this.$func2 = func;
        this.$func = func2;
    }

    public static final void invoke$lambda$0(Func func, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        if (func != null) {
            func.call(download);
        }
    }

    public static final void invoke$lambda$1(Func func, Error error) {
        kotlin.jvm.internal.M.p(error, "$error");
        func.call(error);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Logger logger;
        Handler handler;
        Logger logger2;
        Handler handler2;
        ListenerCoordinator listenerCoordinator;
        ListenerCoordinator listenerCoordinator2;
        ListenerCoordinator listenerCoordinator3;
        ListenerCoordinator listenerCoordinator4;
        ListenerCoordinator listenerCoordinator5;
        ListenerCoordinator listenerCoordinator6;
        FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;
        ListenerCoordinator listenerCoordinator7;
        Logger logger3;
        ListenerCoordinator listenerCoordinator8;
        ListenerCoordinator listenerCoordinator9;
        try {
            nf.Z<Download, Boolean> updateRequest = this.this$0.fetchHandler.updateRequest(this.$requestId, this.$updatedRequest);
            final Download e10 = updateRequest.e();
            logger2 = this.this$0.logger;
            logger2.d("UpdatedRequest with id: " + this.$requestId + " to " + ((Object) e10));
            if (this.$notifyListeners) {
                switch (WhenMappings.$EnumSwitchMapping$0[e10.getStatus().ordinal()]) {
                    case 1:
                        listenerCoordinator = this.this$0.listenerCoordinator;
                        listenerCoordinator.getMainListener().onCompleted(e10);
                        break;
                    case 2:
                        listenerCoordinator2 = this.this$0.listenerCoordinator;
                        listenerCoordinator2.getMainListener().onError(e10, e10.getError(), null);
                        break;
                    case 3:
                        listenerCoordinator3 = this.this$0.listenerCoordinator;
                        listenerCoordinator3.getMainListener().onCancelled(e10);
                        break;
                    case 4:
                        listenerCoordinator4 = this.this$0.listenerCoordinator;
                        listenerCoordinator4.getMainListener().onDeleted(e10);
                        break;
                    case 5:
                        listenerCoordinator5 = this.this$0.listenerCoordinator;
                        listenerCoordinator5.getMainListener().onPaused(e10);
                        break;
                    case 6:
                        if (!updateRequest.f().booleanValue()) {
                            fetchDatabaseManagerWrapper = this.this$0.fetchDatabaseManagerWrapper;
                            DownloadInfo downloadInfo = FetchTypeConverterExtensions.toDownloadInfo(e10, fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
                            downloadInfo.setStatus(Status.ADDED);
                            listenerCoordinator7 = this.this$0.listenerCoordinator;
                            listenerCoordinator7.getMainListener().onAdded(downloadInfo);
                            logger3 = this.this$0.logger;
                            logger3.d("Added " + ((Object) e10));
                        }
                        listenerCoordinator6 = this.this$0.listenerCoordinator;
                        listenerCoordinator6.getMainListener().onQueued(e10, false);
                        break;
                    case 7:
                        listenerCoordinator8 = this.this$0.listenerCoordinator;
                        listenerCoordinator8.getMainListener().onRemoved(e10);
                        break;
                    case 9:
                        listenerCoordinator9 = this.this$0.listenerCoordinator;
                        listenerCoordinator9.getMainListener().onAdded(e10);
                        break;
                }
            }
            handler2 = this.this$0.uiHandler;
            final Func<Download> func = this.$func;
            handler2.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl$updateRequest$1$1.invoke$lambda$0(Func.this, e10);
                }
            });
        } catch (Exception e11) {
            logger = this.this$0.logger;
            logger.e("Failed to update request with id " + this.$requestId, e11);
            final Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e11.getMessage());
            errorFromMessage.setThrowable(e11);
            if (this.$func2 != null) {
                handler = this.this$0.uiHandler;
                final Func<Error> func2 = this.$func2;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$updateRequest$1$1.invoke$lambda$1(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
