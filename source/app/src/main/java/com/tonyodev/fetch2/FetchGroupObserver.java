package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.Reason;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public interface FetchGroupObserver extends FetchObserver<List<? extends Download>> {
    void onChanged(@NotNull List<? extends Download> list, @NotNull Download download, @NotNull Reason reason);
}
