package androidx.privacysandbox.ads.adservices.topics;

import ag.C3617K;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.Arrays;
import java.util.Objects;
import kotlin.jvm.internal.M;

@ExperimentalFeatures.Ext11OptIn
public final class EncryptedTopic {
    private final byte[] encapsulatedKey;
    private final byte[] encryptedTopic;
    private final String keyIdentifier;

    public EncryptedTopic(byte[] encryptedTopic, String keyIdentifier, byte[] encapsulatedKey) {
        M.p(encryptedTopic, "encryptedTopic");
        M.p(keyIdentifier, "keyIdentifier");
        M.p(encapsulatedKey, "encapsulatedKey");
        this.encryptedTopic = encryptedTopic;
        this.keyIdentifier = keyIdentifier;
        this.encapsulatedKey = encapsulatedKey;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncryptedTopic)) {
            return false;
        }
        EncryptedTopic encryptedTopic = (EncryptedTopic) obj;
        return Arrays.equals(this.encryptedTopic, encryptedTopic.encryptedTopic) && this.keyIdentifier.contentEquals(encryptedTopic.keyIdentifier) && Arrays.equals(this.encapsulatedKey, encryptedTopic.encapsulatedKey);
    }

    public final byte[] getEncapsulatedKey() {
        return this.encapsulatedKey;
    }

    public final byte[] getEncryptedTopic() {
        return this.encryptedTopic;
    }

    public final String getKeyIdentifier() {
        return this.keyIdentifier;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(Arrays.hashCode(this.encryptedTopic)), this.keyIdentifier, Integer.valueOf(Arrays.hashCode(this.encapsulatedKey)));
    }

    public String toString() {
        return "EncryptedTopic { " + ("EncryptedTopic=" + C3617K.W1(this.encryptedTopic) + ", KeyIdentifier=" + this.keyIdentifier + ", EncapsulatedKey=" + C3617K.W1(this.encapsulatedKey) + " }");
    }
}
