package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.ReportEventRequest;
import android.util.Log;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.C14026x;
import of.EnumC14501a;

@ExperimentalFeatures.Ext8OptIn
public final class ReportEventRequest {
    public static final Companion Companion = new Companion(null);
    public static final int FLAG_REPORTING_DESTINATION_BUYER = 2;
    public static final int FLAG_REPORTING_DESTINATION_SELLER = 1;
    private final long adSelectionId;
    private final String eventData;
    private final String eventKey;
    private final InputEvent inputEvent;
    private final int reportingDestinations;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(ReportEventRequest request) {
                ReportEventRequest.Builder inputEvent;
                android.adservices.adselection.ReportEventRequest build;
                kotlin.jvm.internal.M.p(request, "request");
                S.a();
                inputEvent = Q.a(request.getAdSelectionId(), request.getEventKey(), request.getEventData(), request.getReportingDestinations()).setInputEvent(request.getInputEvent());
                build = inputEvent.build();
                kotlin.jvm.internal.M.o(build, "Builder(\n               \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(ReportEventRequest request) {
                android.adservices.adselection.ReportEventRequest build;
                kotlin.jvm.internal.M.p(request, "request");
                if (request.getInputEvent() != null) {
                    Log.w("ReportEventRequest", "inputEvent is ignored. Min version to use inputEvent is API 31 ext 10");
                }
                S.a();
                build = Q.a(request.getAdSelectionId(), request.getEventKey(), request.getEventData(), request.getReportingDestinations()).build();
                kotlin.jvm.internal.M.o(build, "Builder(\n               \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext8Impl() {
        }
    }

    @of.e(EnumC14501a.SOURCE)
    @Retention(RetentionPolicy.SOURCE)
    public @interface ReportingDestination {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReportEventRequest(long j10, String eventKey, String eventData, int i10) {
        this(j10, eventKey, eventData, i10, null, 16, null);
        kotlin.jvm.internal.M.p(eventKey, "eventKey");
        kotlin.jvm.internal.M.p(eventData, "eventData");
    }

    @ExperimentalFeatures.Ext10OptIn
    public static void getInputEvent$annotations() {
    }

    public final android.adservices.adselection.ReportEventRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) ? Ext10Impl.Companion.convertReportEventRequest(this) : Ext8Impl.Companion.convertReportEventRequest(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportEventRequest)) {
            return false;
        }
        ReportEventRequest reportEventRequest = (ReportEventRequest) obj;
        return this.adSelectionId == reportEventRequest.adSelectionId && kotlin.jvm.internal.M.g(this.eventKey, reportEventRequest.eventKey) && kotlin.jvm.internal.M.g(this.eventData, reportEventRequest.eventData) && this.reportingDestinations == reportEventRequest.reportingDestinations && kotlin.jvm.internal.M.g(this.inputEvent, reportEventRequest.inputEvent);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final String getEventData() {
        return this.eventData;
    }

    public final String getEventKey() {
        return this.eventKey;
    }

    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final int getReportingDestinations() {
        return this.reportingDestinations;
    }

    public int hashCode() {
        int hashCode = ((((((Long.hashCode(this.adSelectionId) * 31) + this.eventKey.hashCode()) * 31) + this.eventData.hashCode()) * 31) + Integer.hashCode(this.reportingDestinations)) * 31;
        InputEvent inputEvent = this.inputEvent;
        return hashCode + (inputEvent != null ? inputEvent.hashCode() : 0);
    }

    public String toString() {
        return "ReportEventRequest: adSelectionId=" + this.adSelectionId + ", eventKey=" + this.eventKey + ", eventData=" + this.eventData + ", reportingDestinations=" + this.reportingDestinations + "inputEvent=" + ((Object) this.inputEvent);
    }

    public ReportEventRequest(long j10, String eventKey, String eventData, int i10, InputEvent inputEvent) {
        kotlin.jvm.internal.M.p(eventKey, "eventKey");
        kotlin.jvm.internal.M.p(eventData, "eventData");
        this.adSelectionId = j10;
        this.eventKey = eventKey;
        this.eventData = eventData;
        this.reportingDestinations = i10;
        this.inputEvent = inputEvent;
        if (i10 <= 0 || i10 > 3) {
            throw new IllegalArgumentException("Invalid reporting destinations bitfield.");
        }
    }

    public ReportEventRequest(long j10, String str, String str2, int i10, InputEvent inputEvent, int i11, C14026x c14026x) {
        this(j10, str, str2, i10, (i11 & 16) != 0 ? null : inputEvent);
    }
}
