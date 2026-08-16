package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class TopicsManagerApi31Ext9Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TopicsManagerApi31Ext9Impl(Context context) {
        super(r2);
        android.adservices.topics.TopicsManager topicsManager;
        M.p(context, "context");
        topicsManager = android.adservices.topics.TopicsManager.get(context);
        M.o(topicsManager, "get(context)");
    }

    @Override
    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest request) {
        M.p(request, "request");
        return GetTopicsRequestHelper.INSTANCE.convertRequestWithRecordObservation$ads_adservices_release(request);
    }
}
