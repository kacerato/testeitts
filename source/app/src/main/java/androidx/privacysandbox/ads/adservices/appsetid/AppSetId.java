package androidx.privacysandbox.ads.adservices.appsetid;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class AppSetId {
    public static final Companion Companion = new Companion(null);
    public static final int SCOPE_APP = 1;
    public static final int SCOPE_DEVELOPER = 2;

    private final String f32687id;
    private final int scope;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public AppSetId(String id2, int i10) {
        M.p(id2, "id");
        this.f32687id = id2;
        this.scope = i10;
        if (i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("Scope undefined.");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSetId)) {
            return false;
        }
        AppSetId appSetId = (AppSetId) obj;
        return M.g(this.f32687id, appSetId.f32687id) && this.scope == appSetId.scope;
    }

    public final String getId() {
        return this.f32687id;
    }

    public final int getScope() {
        return this.scope;
    }

    public int hashCode() {
        return (this.f32687id.hashCode() * 31) + Integer.hashCode(this.scope);
    }

    public String toString() {
        return "AppSetId: id=" + this.f32687id + ", scope=" + (this.scope == 1 ? "SCOPE_APP" : "SCOPE_DEVELOPER");
    }
}
