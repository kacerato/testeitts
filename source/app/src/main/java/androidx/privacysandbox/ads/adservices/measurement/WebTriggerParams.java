package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.WebTriggerParams;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class WebTriggerParams {
    public static final Companion Companion = new Companion(null);
    private final boolean debugKeyAllowed;
    private final Uri registrationUri;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        public final List<android.adservices.measurement.WebTriggerParams> convertWebTriggerParams$ads_adservices_release(List<WebTriggerParams> request) {
            WebTriggerParams.Builder debugKeyAllowed;
            android.adservices.measurement.WebTriggerParams build;
            M.p(request, "request");
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : request) {
                F.a();
                debugKeyAllowed = E.a(webTriggerParams.getRegistrationUri()).setDebugKeyAllowed(webTriggerParams.getDebugKeyAllowed());
                build = debugKeyAllowed.build();
                M.o(build, "Builder(param.registrati\u2026                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public WebTriggerParams(Uri registrationUri, boolean z10) {
        M.p(registrationUri, "registrationUri");
        this.registrationUri = registrationUri;
        this.debugKeyAllowed = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerParams)) {
            return false;
        }
        WebTriggerParams webTriggerParams = (WebTriggerParams) obj;
        return M.g(this.registrationUri, webTriggerParams.registrationUri) && this.debugKeyAllowed == webTriggerParams.debugKeyAllowed;
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
        return "WebTriggerParams { RegistrationUri=" + ((Object) this.registrationUri) + ", DebugKeyAllowed=" + this.debugKeyAllowed + " }";
    }
}
