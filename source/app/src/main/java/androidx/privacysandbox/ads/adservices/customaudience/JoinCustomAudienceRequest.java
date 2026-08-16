package androidx.privacysandbox.ads.adservices.customaudience;

import kotlin.jvm.internal.M;

public final class JoinCustomAudienceRequest {
    private final CustomAudience customAudience;

    public JoinCustomAudienceRequest(CustomAudience customAudience) {
        M.p(customAudience, "customAudience");
        this.customAudience = customAudience;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JoinCustomAudienceRequest) {
            return M.g(this.customAudience, ((JoinCustomAudienceRequest) obj).customAudience);
        }
        return false;
    }

    public final CustomAudience getCustomAudience() {
        return this.customAudience;
    }

    public int hashCode() {
        return this.customAudience.hashCode();
    }

    public String toString() {
        return "JoinCustomAudience: customAudience=" + ((Object) this.customAudience);
    }
}
