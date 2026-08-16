package com.tonyodev.fetch2.database;

import Mf.l;
import com.tonyodev.fetch2.fetch.LiveSettings;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1 extends O implements l<LiveSettings, P0> {
    final FetchDatabaseManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1(FetchDatabaseManagerImpl fetchDatabaseManagerImpl) {
        super(1);
        this.this$0 = fetchDatabaseManagerImpl;
    }

    @Override
    public P0 invoke(LiveSettings liveSettings) {
        invoke2(liveSettings);
        return P0.f98194a;
    }

    public final void invoke2(@NotNull LiveSettings it) {
        M.p(it, "it");
        if (it.getDidSanitizeDatabaseOnFirstEntry()) {
            return;
        }
        FetchDatabaseManagerImpl fetchDatabaseManagerImpl = this.this$0;
        fetchDatabaseManagerImpl.sanitize((List<? extends DownloadInfo>) fetchDatabaseManagerImpl.get(), true);
        it.setDidSanitizeDatabaseOnFirstEntry(true);
    }
}
