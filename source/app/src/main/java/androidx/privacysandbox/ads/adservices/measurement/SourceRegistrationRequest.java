package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

@ExperimentalFeatures.RegisterSourceOptIn
public final class SourceRegistrationRequest {
    private final InputEvent inputEvent;
    private final List<Uri> registrationUris;

    public static final class Builder {
        private InputEvent inputEvent;
        private final List<Uri> registrationUris;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(List<? extends Uri> registrationUris) {
            M.p(registrationUris, "registrationUris");
            this.registrationUris = registrationUris;
        }

        public final SourceRegistrationRequest build() {
            return new SourceRegistrationRequest(this.registrationUris, this.inputEvent);
        }

        public final Builder setInputEvent(InputEvent inputEvent) {
            M.p(inputEvent, "inputEvent");
            this.inputEvent = inputEvent;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SourceRegistrationRequest(List<? extends Uri> registrationUris, InputEvent inputEvent) {
        M.p(registrationUris, "registrationUris");
        this.registrationUris = registrationUris;
        this.inputEvent = inputEvent;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceRegistrationRequest)) {
            return false;
        }
        SourceRegistrationRequest sourceRegistrationRequest = (SourceRegistrationRequest) obj;
        return M.g(this.registrationUris, sourceRegistrationRequest.registrationUris) && M.g(this.inputEvent, sourceRegistrationRequest.inputEvent);
    }

    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final List<Uri> getRegistrationUris() {
        return this.registrationUris;
    }

    public int hashCode() {
        int hashCode = this.registrationUris.hashCode();
        InputEvent inputEvent = this.inputEvent;
        return inputEvent != null ? (hashCode * 31) + inputEvent.hashCode() : hashCode;
    }

    public String toString() {
        return "AppSourcesRegistrationRequest { " + ("RegistrationUris=[" + ((Object) this.registrationUris) + "], InputEvent=" + ((Object) this.inputEvent)) + " }";
    }

    public SourceRegistrationRequest(List list, InputEvent inputEvent, int i10, C14026x c14026x) {
        this(list, (i10 & 2) != 0 ? null : inputEvent);
    }
}
