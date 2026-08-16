package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.util.FetchTypeConverterExtensions;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@kotlin.jvm.internal.t0({"SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1655#2,8:1306\n1855#2,2:1314\n1549#2:1316\n1620#2,3:1317\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n*L\n119#1:1306,8\n124#1:1314,2\n149#1:1316\n149#1:1317,3\n*E\n"})
public final class FetchImpl$enqueueRequest$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<List<nf.Z<Request, Error>>> $func;
    final Func<Error> $func2;
    final List<Request> $requests;
    final FetchImpl this$0;

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.ADDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.COMPLETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FetchImpl$enqueueRequest$1$1(List<? extends Request> list, FetchImpl fetchImpl, Func<Error> func, Func<List<nf.Z<Request, Error>>> func2) {
        super(0);
        this.$requests = list;
        this.this$0 = fetchImpl;
        this.$func2 = func;
        this.$func = func2;
    }

    public static final void invoke$lambda$3(Func func, List downloadPairs) {
        kotlin.jvm.internal.M.p(downloadPairs, "$downloadPairs");
        if (func != null) {
            List<nf.Z> list = downloadPairs;
            ArrayList arrayList = new ArrayList(pf.I.d0(list, 10));
            for (nf.Z z10 : list) {
                arrayList.add(new nf.Z(((Download) z10.e()).getRequest(), z10.f()));
            }
            func.call(arrayList);
        }
    }

    public static final void invoke$lambda$4(Func func, Error error) {
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
        Handler handler2;
        ListenerCoordinator listenerCoordinator;
        Logger logger2;
        FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;
        ListenerCoordinator listenerCoordinator2;
        Logger logger3;
        ListenerCoordinator listenerCoordinator3;
        Logger logger4;
        ListenerCoordinator listenerCoordinator4;
        Logger logger5;
        try {
            List<Request> list = this.$requests;
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (Request request : list) {
                if (hashSet.add(request.getFile())) {
                    arrayList.add(request);
                }
            }
            if (arrayList.size() == this.$requests.size()) {
                final List<nf.Z<Download, Error>> enqueue = this.this$0.fetchHandler.enqueue(this.$requests);
                FetchImpl fetchImpl = this.this$0;
                Iterator<nf.Z<Download, Error>> it = enqueue.iterator();
                while (it.hasNext()) {
                    Download e10 = it.next().e();
                    int i10 = WhenMappings.$EnumSwitchMapping$0[e10.getStatus().ordinal()];
                    if (i10 == 1) {
                        listenerCoordinator4 = fetchImpl.listenerCoordinator;
                        listenerCoordinator4.getMainListener().onAdded(e10);
                        logger5 = fetchImpl.logger;
                        logger5.d("Added " + ((Object) e10));
                    } else if (i10 == 2) {
                        fetchDatabaseManagerWrapper = fetchImpl.fetchDatabaseManagerWrapper;
                        DownloadInfo downloadInfo = FetchTypeConverterExtensions.toDownloadInfo(e10, fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
                        downloadInfo.setStatus(Status.ADDED);
                        listenerCoordinator2 = fetchImpl.listenerCoordinator;
                        listenerCoordinator2.getMainListener().onAdded(downloadInfo);
                        logger3 = fetchImpl.logger;
                        logger3.d("Added " + ((Object) e10));
                        listenerCoordinator3 = fetchImpl.listenerCoordinator;
                        listenerCoordinator3.getMainListener().onQueued(e10, false);
                        logger4 = fetchImpl.logger;
                        logger4.d("Queued " + ((Object) e10) + " for download");
                    } else if (i10 == 3) {
                        listenerCoordinator = fetchImpl.listenerCoordinator;
                        listenerCoordinator.getMainListener().onCompleted(e10);
                        logger2 = fetchImpl.logger;
                        logger2.d("Completed download " + ((Object) e10));
                    }
                }
                handler2 = this.this$0.uiHandler;
                final Func<List<nf.Z<Request, Error>>> func = this.$func;
                handler2.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$enqueueRequest$1$1.invoke$lambda$3(Func.this, enqueue);
                    }
                });
                return;
            }
            throw new FetchException(FetchErrorStrings.ENQUEUED_REQUESTS_ARE_NOT_DISTINCT);
        } catch (Exception e11) {
            logger = this.this$0.logger;
            logger.e("Failed to enqueue list " + ((Object) this.$requests));
            final Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e11.getMessage());
            errorFromMessage.setThrowable(e11);
            if (this.$func2 != null) {
                handler = this.this$0.uiHandler;
                final Func<Error> func2 = this.$func2;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$enqueueRequest$1$1.invoke$lambda$4(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
