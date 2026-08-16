package androidx.privacysandbox.ads.adservices.topics;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.M;
import pf.H;

public final class GetTopicsResponse {
    private final List<EncryptedTopic> encryptedTopics;
    private final List<Topic> topics;

    @ExperimentalFeatures.Ext11OptIn
    public GetTopicsResponse(List<Topic> topics, List<EncryptedTopic> encryptedTopics) {
        M.p(topics, "topics");
        M.p(encryptedTopics, "encryptedTopics");
        this.topics = topics;
        this.encryptedTopics = encryptedTopics;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsResponse)) {
            return false;
        }
        GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
        if (this.topics.size() == getTopicsResponse.topics.size() && this.encryptedTopics.size() == getTopicsResponse.encryptedTopics.size()) {
            return M.g(new HashSet(this.topics), new HashSet(getTopicsResponse.topics)) && M.g(new HashSet(this.encryptedTopics), new HashSet(getTopicsResponse.encryptedTopics));
        }
        return false;
    }

    public final List<EncryptedTopic> getEncryptedTopics() {
        return this.encryptedTopics;
    }

    public final List<Topic> getTopics() {
        return this.topics;
    }

    public int hashCode() {
        return Objects.hash(this.topics, this.encryptedTopics);
    }

    public String toString() {
        return "GetTopicsResponse: Topics=" + ((Object) this.topics) + ", EncryptedTopics=" + ((Object) this.encryptedTopics);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetTopicsResponse(List<Topic> topics) {
        this(topics, H.J());
        M.p(topics, "topics");
    }
}
