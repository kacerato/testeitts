package androidx.privacysandbox.ads.adservices.topics;

import androidx.core.os.OutcomeReceiverKt;
import eg.C13135q;
import kotlin.jvm.internal.M;
import nf.C14418j0;

public class TopicsManagerImplCommon extends TopicsManager {
    private final android.adservices.topics.TopicsManager mTopicsManager;

    public TopicsManagerImplCommon(android.adservices.topics.TopicsManager mTopicsManager) {
        M.p(mTopicsManager, "mTopicsManager");
        this.mTopicsManager = mTopicsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object getTopics$suspendImpl(TopicsManagerImplCommon topicsManagerImplCommon, GetTopicsRequest getTopicsRequest, yf.f<? super GetTopicsResponse> fVar) {
        TopicsManagerImplCommon$getTopics$1 topicsManagerImplCommon$getTopics$1;
        int i10;
        if (fVar instanceof TopicsManagerImplCommon$getTopics$1) {
            topicsManagerImplCommon$getTopics$1 = (TopicsManagerImplCommon$getTopics$1) fVar;
            int i11 = topicsManagerImplCommon$getTopics$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                topicsManagerImplCommon$getTopics$1.label = i11 - Integer.MIN_VALUE;
                Object obj = topicsManagerImplCommon$getTopics$1.result;
                Object l10 = Af.d.l();
                i10 = topicsManagerImplCommon$getTopics$1.label;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release = topicsManagerImplCommon.convertRequest$ads_adservices_release(getTopicsRequest);
                    topicsManagerImplCommon$getTopics$1.L$0 = topicsManagerImplCommon;
                    topicsManagerImplCommon$getTopics$1.label = 1;
                    obj = topicsManagerImplCommon.getTopicsAsyncInternal(convertRequest$ads_adservices_release, topicsManagerImplCommon$getTopics$1);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    topicsManagerImplCommon = (TopicsManagerImplCommon) topicsManagerImplCommon$getTopics$1.L$0;
                    C14418j0.n(obj);
                }
                return topicsManagerImplCommon.convertResponse$ads_adservices_release(r.a(obj));
            }
        }
        topicsManagerImplCommon$getTopics$1 = new TopicsManagerImplCommon$getTopics$1(topicsManagerImplCommon, fVar);
        Object obj2 = topicsManagerImplCommon$getTopics$1.result;
        Object l102 = Af.d.l();
        i10 = topicsManagerImplCommon$getTopics$1.label;
        if (i10 != 0) {
        }
        return topicsManagerImplCommon.convertResponse$ads_adservices_release(r.a(obj2));
    }

    public final Object getTopicsAsyncInternal(android.adservices.topics.GetTopicsRequest getTopicsRequest, yf.f<? super android.adservices.topics.GetTopicsResponse> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        this.mTopicsManager.getTopics(getTopicsRequest, new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest request) {
        M.p(request, "request");
        return GetTopicsRequestHelper.INSTANCE.convertRequestWithoutRecordObservation$ads_adservices_release(request);
    }

    public GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        M.p(response, "response");
        return GetTopicsResponseHelper.INSTANCE.convertResponse$ads_adservices_release(response);
    }

    @Override
    public Object getTopics(GetTopicsRequest getTopicsRequest, yf.f<? super GetTopicsResponse> fVar) {
        return getTopics$suspendImpl(this, getTopicsRequest, fVar);
    }
}
