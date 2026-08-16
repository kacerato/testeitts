package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.Reason;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public abstract class AbstractFetchGroupObserver implements FetchGroupObserver {
    @Override
    public void onChanged(@NotNull List<? extends Download> data, @NotNull Download triggerDownload, @NotNull Reason reason) {
        M.p(data, "data");
        M.p(triggerDownload, "triggerDownload");
        M.p(reason, "reason");
    }

    @Override
    public void onChanged(@NotNull List<? extends Download> data, @NotNull Reason reason) {
        M.p(data, "data");
        M.p(reason, "reason");
    }
}
