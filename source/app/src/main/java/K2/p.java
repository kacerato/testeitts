package K2;

import G0.A;
import G0.C2601y;
import G0.G;
import T0.D;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class p {

    public static final String f10762h = "google_api_key";

    public static final String f10763i = "google_app_id";

    public static final String f10764j = "firebase_database_url";

    public static final String f10765k = "ga_trackingId";

    public static final String f10766l = "gcm_defaultSenderId";

    public static final String f10767m = "google_storage_bucket";

    public static final String f10768n = "project_id";

    public final String f10769a;

    public final String f10770b;

    public final String f10771c;

    public final String f10772d;

    public final String f10773e;

    public final String f10774f;

    public final String f10775g;

    public static final class b {

        public String f10776a;

        public String f10777b;

        public String f10778c;

        public String f10779d;

        public String f10780e;

        public String f10781f;

        public String f10782g;

        public b() {
        }

        @NonNull
        public p a() {
            return new p(this.f10777b, this.f10776a, this.f10778c, this.f10779d, this.f10780e, this.f10781f, this.f10782g);
        }

        @NonNull
        public b b(@NonNull String str) {
            this.f10776a = A.m(str, "ApiKey must be set.");
            return this;
        }

        @NonNull
        public b c(@NonNull String str) {
            this.f10777b = A.m(str, "ApplicationId must be set.");
            return this;
        }

        @NonNull
        public b d(@Nullable String str) {
            this.f10778c = str;
            return this;
        }

        @NonNull
        @C0.a
        public b e(@Nullable String str) {
            this.f10779d = str;
            return this;
        }

        @NonNull
        public b f(@Nullable String str) {
            this.f10780e = str;
            return this;
        }

        @NonNull
        public b g(@Nullable String str) {
            this.f10782g = str;
            return this;
        }

        @NonNull
        public b h(@Nullable String str) {
            this.f10781f = str;
            return this;
        }

        public b(@NonNull p pVar) {
            this.f10777b = pVar.f10770b;
            this.f10776a = pVar.f10769a;
            this.f10778c = pVar.f10771c;
            this.f10779d = pVar.f10772d;
            this.f10780e = pVar.f10773e;
            this.f10781f = pVar.f10774f;
            this.f10782g = pVar.f10775g;
        }
    }

    @Nullable
    public static p h(@NonNull Context context) {
        G g10 = new G(context);
        String a10 = g10.a(f10763i);
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        return new p(a10, g10.a(f10762h), g10.a(f10764j), g10.a(f10765k), g10.a(f10766l), g10.a(f10767m), g10.a(f10768n));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return C2601y.b(this.f10770b, pVar.f10770b) && C2601y.b(this.f10769a, pVar.f10769a) && C2601y.b(this.f10771c, pVar.f10771c) && C2601y.b(this.f10772d, pVar.f10772d) && C2601y.b(this.f10773e, pVar.f10773e) && C2601y.b(this.f10774f, pVar.f10774f) && C2601y.b(this.f10775g, pVar.f10775g);
    }

    public int hashCode() {
        return C2601y.c(this.f10770b, this.f10769a, this.f10771c, this.f10772d, this.f10773e, this.f10774f, this.f10775g);
    }

    @NonNull
    public String i() {
        return this.f10769a;
    }

    @NonNull
    public String j() {
        return this.f10770b;
    }

    @Nullable
    public String k() {
        return this.f10771c;
    }

    @Nullable
    @C0.a
    public String l() {
        return this.f10772d;
    }

    @Nullable
    public String m() {
        return this.f10773e;
    }

    @Nullable
    public String n() {
        return this.f10775g;
    }

    @Nullable
    public String o() {
        return this.f10774f;
    }

    public String toString() {
        return C2601y.d(this).a("applicationId", this.f10770b).a("apiKey", this.f10769a).a("databaseUrl", this.f10771c).a("gcmSenderId", this.f10773e).a("storageBucket", this.f10774f).a("projectId", this.f10775g).toString();
    }

    public p(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        A.y(!D.b(str), "ApplicationId must be set.");
        this.f10770b = str;
        this.f10769a = str2;
        this.f10771c = str3;
        this.f10772d = str4;
        this.f10773e = str5;
        this.f10774f = str6;
        this.f10775g = str7;
    }
}
