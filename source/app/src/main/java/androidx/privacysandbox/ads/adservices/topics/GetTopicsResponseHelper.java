package androidx.privacysandbox.ads.adservices.topics;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;

public final class GetTopicsResponseHelper {
    public static final GetTopicsResponseHelper INSTANCE = new GetTopicsResponseHelper();

    private GetTopicsResponseHelper() {
    }

    public final GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        List topics;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        M.p(response, "response");
        ArrayList arrayList = new ArrayList();
        topics = response.getTopics();
        Iterator it = topics.iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic a10 = f.a(it.next());
            taxonomyVersion = a10.getTaxonomyVersion();
            modelVersion = a10.getModelVersion();
            topicId = a10.getTopicId();
            arrayList.add(new Topic(taxonomyVersion, modelVersion, topicId));
        }
        return new GetTopicsResponse(arrayList);
    }

    @ExperimentalFeatures.Ext11OptIn
    public final GetTopicsResponse convertResponseWithEncryptedTopics$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        List topics;
        List encryptedTopics;
        byte[] encryptedTopic;
        byte[] encapsulatedKey;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        M.p(response, "response");
        ArrayList arrayList = new ArrayList();
        topics = response.getTopics();
        Iterator it = topics.iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic a10 = f.a(it.next());
            taxonomyVersion = a10.getTaxonomyVersion();
            modelVersion = a10.getModelVersion();
            topicId = a10.getTopicId();
            arrayList.add(new Topic(taxonomyVersion, modelVersion, topicId));
        }
        ArrayList arrayList2 = new ArrayList();
        encryptedTopics = response.getEncryptedTopics();
        Iterator it2 = encryptedTopics.iterator();
        while (it2.hasNext()) {
            android.adservices.topics.EncryptedTopic a11 = k.a(it2.next());
            encryptedTopic = a11.getEncryptedTopic();
            M.o(encryptedTopic, "encryptedTopic.encryptedTopic");
            String a12 = m.a(a11);
            M.o(a12, "encryptedTopic.keyIdentifier");
            encapsulatedKey = a11.getEncapsulatedKey();
            M.o(encapsulatedKey, "encryptedTopic.encapsulatedKey");
            arrayList2.add(new EncryptedTopic(encryptedTopic, a12, encapsulatedKey));
        }
        return new GetTopicsResponse(arrayList, arrayList2);
    }
}
