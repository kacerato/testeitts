package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import java.util.List;
import kotlin.jvm.internal.M;

public final class WebTriggerRegistrationRequest {
    private final Uri destination;
    private final List<WebTriggerParams> webTriggerParams;

    public WebTriggerRegistrationRequest(List<WebTriggerParams> webTriggerParams, Uri destination) {
        M.p(webTriggerParams, "webTriggerParams");
        M.p(destination, "destination");
        this.webTriggerParams = webTriggerParams;
        this.destination = destination;
    }

    public final android.adservices.measurement.WebTriggerRegistrationRequest convertToAdServices$ads_adservices_release() {
        android.adservices.measurement.WebTriggerRegistrationRequest build;
        I.a();
        build = H.a(WebTriggerParams.Companion.convertWebTriggerParams$ads_adservices_release(this.webTriggerParams), this.destination).build();
        M.o(build, "Builder(\n               \u2026   )\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerRegistrationRequest)) {
            return false;
        }
        WebTriggerRegistrationRequest webTriggerRegistrationRequest = (WebTriggerRegistrationRequest) obj;
        return M.g(this.webTriggerParams, webTriggerRegistrationRequest.webTriggerParams) && M.g(this.destination, webTriggerRegistrationRequest.destination);
    }

    public final Uri getDestination() {
        return this.destination;
    }

    public final List<WebTriggerParams> getWebTriggerParams() {
        return this.webTriggerParams;
    }

    public int hashCode() {
        return (this.webTriggerParams.hashCode() * 31) + this.destination.hashCode();
    }

    public String toString() {
        return "WebTriggerRegistrationRequest { WebTriggerParams=" + ((Object) this.webTriggerParams) + ", Destination=" + ((Object) this.destination);
    }
}
