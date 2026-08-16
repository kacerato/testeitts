package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class TopicsManagerApi33Ext5Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TopicsManagerApi33Ext5Impl(Context context) {
        super(q.a(r2));
        M.p(context, "context");
        Object systemService = context.getSystemService((Class<Object>) p.a());
        M.o(systemService, "context.getSystemService\u2026opicsManager::class.java)");
    }

    @Override
    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest request) {
        M.p(request, "request");
        return GetTopicsRequestHelper.INSTANCE.convertRequestWithRecordObservation$ads_adservices_release(request);
    }
}
