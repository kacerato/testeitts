package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.DeletionRequest;
import android.net.Uri;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import of.EnumC14501a;

public final class DeletionRequest {
    public static final Companion Companion = new Companion(null);
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;
    private final int deletionMode;
    private final List<Uri> domainUris;
    private final Instant end;
    private final int matchBehavior;
    private final List<Uri> originUris;
    private final Instant start;

    public static final class Builder {
        private final int deletionMode;
        private List<? extends Uri> domainUris;
        private Instant end;
        private final int matchBehavior;
        private List<? extends Uri> originUris;
        private Instant start;

        public Builder(int i10, int i11) {
            this.deletionMode = i10;
            this.matchBehavior = i11;
            Instant MIN = Instant.MIN;
            M.o(MIN, "MIN");
            this.start = MIN;
            Instant MAX = Instant.MAX;
            M.o(MAX, "MAX");
            this.end = MAX;
            this.domainUris = pf.H.J();
            this.originUris = pf.H.J();
        }

        public final DeletionRequest build() {
            return new DeletionRequest(this.deletionMode, this.matchBehavior, this.start, this.end, this.domainUris, this.originUris);
        }

        public final Builder setDomainUris(List<? extends Uri> domainUris) {
            M.p(domainUris, "domainUris");
            this.domainUris = domainUris;
            return this;
        }

        public final Builder setEnd(Instant end) {
            M.p(end, "end");
            this.end = end;
            return this;
        }

        public final Builder setOriginUris(List<? extends Uri> originUris) {
            M.p(originUris, "originUris");
            this.originUris = originUris;
            return this;
        }

        public final Builder setStart(Instant start) {
            M.p(start, "start");
            this.start = start;
            return this;
        }
    }

    public static final class Companion {

        @of.e(EnumC14501a.SOURCE)
        @Retention(RetentionPolicy.SOURCE)
        public @interface DeletionMode {
        }

        @of.e(EnumC14501a.SOURCE)
        @Retention(RetentionPolicy.SOURCE)
        public @interface MatchBehavior {
        }

        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i10, int i11, Instant start, Instant end, List<? extends Uri> domainUris, List<? extends Uri> originUris) {
        M.p(start, "start");
        M.p(end, "end");
        M.p(domainUris, "domainUris");
        M.p(originUris, "originUris");
        this.deletionMode = i10;
        this.matchBehavior = i11;
        this.start = start;
        this.end = end;
        this.domainUris = domainUris;
        this.originUris = originUris;
    }

    public final android.adservices.measurement.DeletionRequest convertToAdServices$ads_adservices_release() {
        DeletionRequest.Builder deletionMode;
        DeletionRequest.Builder matchBehavior;
        DeletionRequest.Builder start;
        DeletionRequest.Builder end;
        DeletionRequest.Builder domainUris;
        DeletionRequest.Builder originUris;
        android.adservices.measurement.DeletionRequest build;
        deletionMode = C3774h.a().setDeletionMode(this.deletionMode);
        matchBehavior = deletionMode.setMatchBehavior(this.matchBehavior);
        start = matchBehavior.setStart(this.start);
        end = start.setEnd(this.end);
        domainUris = end.setDomainUris(this.domainUris);
        originUris = domainUris.setOriginUris(this.originUris);
        build = originUris.build();
        M.o(build, "Builder()\n            .s\u2026ris)\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) obj;
        return this.deletionMode == deletionRequest.deletionMode && M.g(new HashSet(this.domainUris), new HashSet(deletionRequest.domainUris)) && M.g(new HashSet(this.originUris), new HashSet(deletionRequest.originUris)) && M.g(this.start, deletionRequest.start) && M.g(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior;
    }

    public final int getDeletionMode() {
        return this.deletionMode;
    }

    public final List<Uri> getDomainUris() {
        return this.domainUris;
    }

    public final Instant getEnd() {
        return this.end;
    }

    public final int getMatchBehavior() {
        return this.matchBehavior;
    }

    public final List<Uri> getOriginUris() {
        return this.originUris;
    }

    public final Instant getStart() {
        return this.start;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.deletionMode) * 31) + this.domainUris.hashCode()) * 31) + this.originUris.hashCode()) * 31) + this.start.hashCode()) * 31) + this.end.hashCode()) * 31) + Integer.hashCode(this.matchBehavior);
    }

    public String toString() {
        return "DeletionRequest { DeletionMode=" + (this.deletionMode == 0 ? "DELETION_MODE_ALL" : "DELETION_MODE_EXCLUDE_INTERNAL_DATA") + ", MatchBehavior=" + (this.matchBehavior == 0 ? "MATCH_BEHAVIOR_DELETE" : "MATCH_BEHAVIOR_PRESERVE") + ", Start=" + ((Object) this.start) + ", End=" + ((Object) this.end) + ", DomainUris=" + ((Object) this.domainUris) + ", OriginUris=" + ((Object) this.originUris) + " }";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DeletionRequest(int i10, int i11, Instant MIN, Instant MAX, List list, List list2, int i12, C14026x c14026x) {
        this(i10, i11, r3, MAX, (i12 & 16) != 0 ? pf.H.J() : list, (i12 & 32) != 0 ? pf.H.J() : list2);
        if ((i12 & 4) != 0) {
            MIN = Instant.MIN;
            M.o(MIN, "MIN");
        }
        Instant instant = MIN;
        if ((i12 & 8) != 0) {
            MAX = Instant.MAX;
            M.o(MAX, "MAX");
        }
    }
}
