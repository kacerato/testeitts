package org.blacksquircle.ui.editorkit.utils;

import Mf.a;
import Mf.l;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.utils.StylingTask;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.jetbrains.annotations.NotNull;

public final class StylingTask {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TAG = "StylingTask";

    @NotNull
    private final a<List<SyntaxHighlightSpan>> doAsync;

    @NotNull
    private final Handler mainThreadHandler;

    @NotNull
    private final l<List<SyntaxHighlightSpan>, P0> onSuccess;
    private final ExecutorService singleThreadExecutor;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StylingTask(@NotNull a<? extends List<SyntaxHighlightSpan>> doAsync, @NotNull l<? super List<SyntaxHighlightSpan>, P0> onSuccess) {
        M.p(doAsync, "doAsync");
        M.p(onSuccess, "onSuccess");
        this.doAsync = doAsync;
        this.onSuccess = onSuccess;
        this.mainThreadHandler = new Handler(Looper.getMainLooper());
        this.singleThreadExecutor = Executors.newSingleThreadExecutor();
    }

    public static final void execute$lambda$0(final StylingTask stylingTask) {
        final List<SyntaxHighlightSpan> invoke = stylingTask.doAsync.invoke();
        stylingTask.mainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                StylingTask.execute$lambda$0$0(StylingTask.this, invoke);
            }
        });
    }

    public static final void execute$lambda$0$0(StylingTask stylingTask, List list) {
        if (stylingTask.singleThreadExecutor.isShutdown()) {
            return;
        }
        stylingTask.onSuccess.invoke(list);
    }

    public final void cancel() {
        this.singleThreadExecutor.shutdown();
    }

    public final void execute() {
        try {
            this.singleThreadExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    StylingTask.execute$lambda$0(StylingTask.this);
                }
            });
        } catch (Exception e10) {
            Log.e(TAG, e10.getMessage(), e10);
        }
    }
}
