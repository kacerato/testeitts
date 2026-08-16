package f3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f3.C13184c;
import f3.d;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C13182a extends d {

    public final String f85977b;

    public final C13184c.a f85978c;

    public final String f85979d;

    public final String f85980e;

    public final long f85981f;

    public final long f85982g;

    public final String f85983h;

    public static final class b extends d.a {

        public String f85984a;

        public C13184c.a f85985b;

        public String f85986c;

        public String f85987d;

        public Long f85988e;

        public Long f85989f;

        public String f85990g;

        @Override
        public d a() {
            String str = "";
            if (this.f85985b == null) {
                str = " registrationStatus";
            }
            if (this.f85988e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f85989f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new C13182a(this.f85984a, this.f85985b, this.f85986c, this.f85987d, this.f85988e.longValue(), this.f85989f.longValue(), this.f85990g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public d.a b(@Nullable String str) {
            this.f85986c = str;
            return this;
        }

        @Override
        public d.a c(long j10) {
            this.f85988e = Long.valueOf(j10);
            return this;
        }

        @Override
        public d.a d(String str) {
            this.f85984a = str;
            return this;
        }

        @Override
        public d.a e(@Nullable String str) {
            this.f85990g = str;
            return this;
        }

        @Override
        public d.a f(@Nullable String str) {
            this.f85987d = str;
            return this;
        }

        @Override
        public d.a g(C13184c.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f85985b = aVar;
            return this;
        }

        @Override
        public d.a h(long j10) {
            this.f85989f = Long.valueOf(j10);
            return this;
        }

        public b() {
        }

        public b(d dVar) {
            this.f85984a = dVar.d();
            this.f85985b = dVar.g();
            this.f85986c = dVar.b();
            this.f85987d = dVar.f();
            this.f85988e = Long.valueOf(dVar.c());
            this.f85989f = Long.valueOf(dVar.h());
            this.f85990g = dVar.e();
        }
    }

    @Override
    @Nullable
    public String b() {
        return this.f85979d;
    }

    @Override
    public long c() {
        return this.f85981f;
    }

    @Override
    @Nullable
    public String d() {
        return this.f85977b;
    }

    @Override
    @Nullable
    public String e() {
        return this.f85983h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.f85977b;
        if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
            if (this.f85978c.equals(dVar.g()) && ((str = this.f85979d) != null ? str.equals(dVar.b()) : dVar.b() == null) && ((str2 = this.f85980e) != null ? str2.equals(dVar.f()) : dVar.f() == null) && this.f85981f == dVar.c() && this.f85982g == dVar.h()) {
                String str4 = this.f85983h;
                if (str4 == null) {
                    if (dVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(dVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    @Nullable
    public String f() {
        return this.f85980e;
    }

    @Override
    @NonNull
    public C13184c.a g() {
        return this.f85978c;
    }

    @Override
    public long h() {
        return this.f85982g;
    }

    public int hashCode() {
        String str = this.f85977b;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f85978c.hashCode()) * 1000003;
        String str2 = this.f85979d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f85980e;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j10 = this.f85981f;
        int i10 = (hashCode3 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f85982g;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f85983h;
        return i11 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override
    public d.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f85977b + ", registrationStatus=" + ((Object) this.f85978c) + ", authToken=" + this.f85979d + ", refreshToken=" + this.f85980e + ", expiresInSecs=" + this.f85981f + ", tokenCreationEpochInSecs=" + this.f85982g + ", fisError=" + this.f85983h + VectorFormat.DEFAULT_SUFFIX;
    }

    public C13182a(@Nullable String str, C13184c.a aVar, @Nullable String str2, @Nullable String str3, long j10, long j11, @Nullable String str4) {
        this.f85977b = str;
        this.f85978c = aVar;
        this.f85979d = str2;
        this.f85980e = str3;
        this.f85981f = j10;
        this.f85982g = j11;
        this.f85983h = str4;
    }
}
