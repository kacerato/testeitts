package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;

public final class FetchImpl$renameCompletedDownloadFile$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<Download> $func;
    final Func<Error> $func2;
    final int $id;
    final String $newFileName;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$renameCompletedDownloadFile$1$1(FetchImpl fetchImpl, int i10, String str, Func<Download> func, Func<Error> func2) {
        super(0);
        this.this$0 = fetchImpl;
        this.$id = i10;
        this.$newFileName = str;
        this.$func = func;
        this.$func2 = func2;
    }

    public static final void invoke$lambda$0(Func func, Download download) {
        kotlin.jvm.internal.M.p(download, "$download");
        func.call(download);
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
        Handler handler2;
        try {
            final Download renameCompletedDownloadFile = this.this$0.fetchHandler.renameCompletedDownloadFile(this.$id, this.$newFileName);
            if (this.$func != null) {
                handler2 = this.this$0.uiHandler;
                final Func<Download> func = this.$func;
                handler2.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$renameCompletedDownloadFile$1$1.invoke$lambda$0(Func.this, renameCompletedDownloadFile);
                    }
                });
            }
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("Failed to rename file on download with id " + this.$id, e10);
            final Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e10.getMessage());
            errorFromMessage.setThrowable(e10);
            if (this.$func2 != null) {
                handler = this.this$0.uiHandler;
                final Func<Error> func2 = this.$func2;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$renameCompletedDownloadFile$1$1.invoke$lambda$1(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
