package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.WebSourceRegistrationRequest;
import android.net.Uri;
import android.view.InputEvent;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class WebSourceRegistrationRequest {
    private final Uri appDestination;
    private final InputEvent inputEvent;
    private final Uri topOriginUri;
    private final Uri verifiedDestination;
    private final Uri webDestination;
    private final List<WebSourceParams> webSourceParams;

    public static final class Builder {
        private Uri appDestination;
        private InputEvent inputEvent;
        private final Uri topOriginUri;
        private Uri verifiedDestination;
        private Uri webDestination;
        private final List<WebSourceParams> webSourceParams;

        public Builder(List<WebSourceParams> webSourceParams, Uri topOriginUri) {
            M.p(webSourceParams, "webSourceParams");
            M.p(topOriginUri, "topOriginUri");
            this.webSourceParams = webSourceParams;
            this.topOriginUri = topOriginUri;
        }

        public final WebSourceRegistrationRequest build() {
            return new WebSourceRegistrationRequest(this.webSourceParams, this.topOriginUri, this.inputEvent, this.appDestination, this.webDestination, this.verifiedDestination);
        }

        public final Builder setAppDestination(Uri uri) {
            this.appDestination = uri;
            return this;
        }

        public final Builder setInputEvent(InputEvent inputEvent) {
            M.p(inputEvent, "inputEvent");
            this.inputEvent = inputEvent;
            return this;
        }

        public final Builder setVerifiedDestination(Uri uri) {
            this.verifiedDestination = uri;
            return this;
        }

        public final Builder setWebDestination(Uri uri) {
            this.webDestination = uri;
            return this;
        }
    }

    public WebSourceRegistrationRequest(List<WebSourceParams> webSourceParams, Uri topOriginUri, InputEvent inputEvent, Uri uri, Uri uri2, Uri uri3) {
        M.p(webSourceParams, "webSourceParams");
        M.p(topOriginUri, "topOriginUri");
        this.webSourceParams = webSourceParams;
        this.topOriginUri = topOriginUri;
        this.inputEvent = inputEvent;
        this.appDestination = uri;
        this.webDestination = uri2;
        this.verifiedDestination = uri3;
    }

    public final android.adservices.measurement.WebSourceRegistrationRequest convertToAdServices$ads_adservices_release() {
        WebSourceRegistrationRequest.Builder webDestination;
        WebSourceRegistrationRequest.Builder appDestination;
        WebSourceRegistrationRequest.Builder inputEvent;
        WebSourceRegistrationRequest.Builder verifiedDestination;
        android.adservices.measurement.WebSourceRegistrationRequest build;
        B.a();
        webDestination = A.a(WebSourceParams.Companion.convertWebSourceParams$ads_adservices_release(this.webSourceParams), this.topOriginUri).setWebDestination(this.webDestination);
        appDestination = webDestination.setAppDestination(this.appDestination);
        inputEvent = appDestination.setInputEvent(this.inputEvent);
        verifiedDestination = inputEvent.setVerifiedDestination(this.verifiedDestination);
        build = verifiedDestination.build();
        M.o(build, "Builder(\n               \u2026ion)\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSourceRegistrationRequest)) {
            return false;
        }
        WebSourceRegistrationRequest webSourceRegistrationRequest = (WebSourceRegistrationRequest) obj;
        return M.g(this.webSourceParams, webSourceRegistrationRequest.webSourceParams) && M.g(this.webDestination, webSourceRegistrationRequest.webDestination) && M.g(this.appDestination, webSourceRegistrationRequest.appDestination) && M.g(this.topOriginUri, webSourceRegistrationRequest.topOriginUri) && M.g(this.inputEvent, webSourceRegistrationRequest.inputEvent) && M.g(this.verifiedDestination, webSourceRegistrationRequest.verifiedDestination);
    }

    public final Uri getAppDestination() {
        return this.appDestination;
    }

    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final Uri getTopOriginUri() {
        return this.topOriginUri;
    }

    public final Uri getVerifiedDestination() {
        return this.verifiedDestination;
    }

    public final Uri getWebDestination() {
        return this.webDestination;
    }

    public final List<WebSourceParams> getWebSourceParams() {
        return this.webSourceParams;
    }

    public int hashCode() {
        int hashCode = (this.webSourceParams.hashCode() * 31) + this.topOriginUri.hashCode();
        InputEvent inputEvent = this.inputEvent;
        if (inputEvent != null) {
            hashCode = (hashCode * 31) + inputEvent.hashCode();
        }
        Uri uri = this.appDestination;
        if (uri != null) {
            hashCode = (hashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.webDestination;
        if (uri2 != null) {
            hashCode = (hashCode * 31) + uri2.hashCode();
        }
        int hashCode2 = (hashCode * 31) + this.topOriginUri.hashCode();
        InputEvent inputEvent2 = this.inputEvent;
        if (inputEvent2 != null) {
            hashCode2 = (hashCode2 * 31) + inputEvent2.hashCode();
        }
        Uri uri3 = this.verifiedDestination;
        return uri3 != null ? (hashCode2 * 31) + uri3.hashCode() : hashCode2;
    }

    public String toString() {
        return "WebSourceRegistrationRequest { " + ("WebSourceParams=[" + ((Object) this.webSourceParams) + "], TopOriginUri=" + ((Object) this.topOriginUri) + ", InputEvent=" + ((Object) this.inputEvent) + ", AppDestination=" + ((Object) this.appDestination) + ", WebDestination=" + ((Object) this.webDestination) + ", VerifiedDestination=" + ((Object) this.verifiedDestination)) + " }";
    }

    public WebSourceRegistrationRequest(List list, Uri uri, InputEvent inputEvent, Uri uri2, Uri uri3, Uri uri4, int i10, C14026x c14026x) {
        this(list, uri, (i10 & 4) != 0 ? null : inputEvent, (i10 & 8) != 0 ? null : uri2, (i10 & 16) != 0 ? null : uri3, (i10 & 32) != 0 ? null : uri4);
    }
}
