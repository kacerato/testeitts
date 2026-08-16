package androidx.privacysandbox.ads.adservices.common;

import kotlin.jvm.internal.M;

public final class AdTechIdentifier {
    private final String identifier;

    public AdTechIdentifier(String identifier) {
        M.p(identifier, "identifier");
        this.identifier = identifier;
    }

    public final android.adservices.common.AdTechIdentifier convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdTechIdentifier fromString;
        fromString = android.adservices.common.AdTechIdentifier.fromString(this.identifier);
        M.o(fromString, "fromString(identifier)");
        return fromString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdTechIdentifier) {
            return M.g(this.identifier, ((AdTechIdentifier) obj).identifier);
        }
        return false;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public int hashCode() {
        return this.identifier.hashCode();
    }

    public String toString() {
        return String.valueOf(this.identifier);
    }
}
