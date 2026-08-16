package androidx.privacysandbox.ads.adservices.topics;

import android.adservices.topics.GetTopicsRequest;
import kotlin.jvm.internal.M;

public final class GetTopicsRequestHelper {
    public static final GetTopicsRequestHelper INSTANCE = new GetTopicsRequestHelper();

    private GetTopicsRequestHelper() {
    }

    public final android.adservices.topics.GetTopicsRequest convertRequestWithRecordObservation$ads_adservices_release(GetTopicsRequest request) {
        GetTopicsRequest.Builder shouldRecordObservation;
        android.adservices.topics.GetTopicsRequest build;
        M.p(request, "request");
        shouldRecordObservation = a.a(d.a(), request.getAdsSdkName()).setShouldRecordObservation(request.shouldRecordObservation());
        build = shouldRecordObservation.build();
        M.o(build, "Builder()\n            .s\u2026ion)\n            .build()");
        return build;
    }

    public final android.adservices.topics.GetTopicsRequest convertRequestWithoutRecordObservation$ads_adservices_release(GetTopicsRequest request) {
        android.adservices.topics.GetTopicsRequest build;
        M.p(request, "request");
        build = a.a(d.a(), request.getAdsSdkName()).build();
        M.o(build, "Builder()\n            .s\u2026ame)\n            .build()");
        return build;
    }
}
