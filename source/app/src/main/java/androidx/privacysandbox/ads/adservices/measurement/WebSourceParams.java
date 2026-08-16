package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.WebSourceParams;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class WebSourceParams {
    public static final Companion Companion = new Companion(null);
    private final boolean debugKeyAllowed;
    private final Uri registrationUri;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        public final List<android.adservices.measurement.WebSourceParams> convertWebSourceParams$ads_adservices_release(List<WebSourceParams> request) {
            WebSourceParams.Builder debugKeyAllowed;
            android.adservices.measurement.WebSourceParams build;
            M.p(request, "request");
            ArrayList arrayList = new ArrayList();
            for (WebSourceParams webSourceParams : request) {
                u.a();
                debugKeyAllowed = t.a(webSourceParams.getRegistrationUri()).setDebugKeyAllowed(webSourceParams.getDebugKeyAllowed());
                build = debugKeyAllowed.build();
                M.o(build, "Builder(param.registrati\u2026                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public WebSourceParams(Uri registrationUri, boolean z10) {
        M.p(registrationUri, "registrationUri");
        this.registrationUri = registrationUri;
        this.debugKeyAllowed = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSourceParams)) {
            return false;
        }
        WebSourceParams webSourceParams = (WebSourceParams) obj;
        return M.g(this.registrationUri, webSourceParams.registrationUri) && this.debugKeyAllowed == webSourceParams.debugKeyAllowed;
    }

    public final boolean getDebugKeyAllowed() {
        return this.debugKeyAllowed;
    }

    public final Uri getRegistrationUri() {
        return this.registrationUri;
    }

    public int hashCode() {
        return (this.registrationUri.hashCode() * 31) + Boolean.hashCode(this.debugKeyAllowed);
    }

    public String toString() {
        return "WebSourceParams { RegistrationUri=" + ((Object) this.registrationUri) + ", DebugKeyAllowed=" + this.debugKeyAllowed + " }";
    }
}
