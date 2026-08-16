package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import kotlin.jvm.internal.M;

public final class TopicsManagerApi33Ext11Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TopicsManagerApi33Ext11Impl(Context context) {
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

    @Override
    @ExperimentalFeatures.Ext11OptIn
    public GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        M.p(response, "response");
        return GetTopicsResponseHelper.INSTANCE.convertResponseWithEncryptedTopics$ads_adservices_release(response);
    }
}
