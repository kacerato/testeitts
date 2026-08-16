package b3;

import androidx.annotation.NonNull;
import b3.n;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C3839a extends n {

    public final String f32909a;

    public final long f32910b;

    public final long f32911c;

    public static final class b extends n.a {

        public String f32912a;

        public Long f32913b;

        public Long f32914c;

        @Override
        public n a() {
            String str = "";
            if (this.f32912a == null) {
                str = " token";
            }
            if (this.f32913b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f32914c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new C3839a(this.f32912a, this.f32913b.longValue(), this.f32914c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public n.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.f32912a = str;
            return this;
        }

        @Override
        public n.a c(long j10) {
            this.f32914c = Long.valueOf(j10);
            return this;
        }

        @Override
        public n.a d(long j10) {
            this.f32913b = Long.valueOf(j10);
            return this;
        }

        public b() {
        }

        public b(n nVar) {
            this.f32912a = nVar.b();
            this.f32913b = Long.valueOf(nVar.d());
            this.f32914c = Long.valueOf(nVar.c());
        }
    }

    @Override
    @NonNull
    public String b() {
        return this.f32909a;
    }

    @Override
    @NonNull
    public long c() {
        return this.f32911c;
    }

    @Override
    @NonNull
    public long d() {
        return this.f32910b;
    }

    @Override
    public n.a e() {
        return new b(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f32909a.equals(nVar.b()) && this.f32910b == nVar.d() && this.f32911c == nVar.c();
    }

    public int hashCode() {
        int hashCode = (this.f32909a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f32910b;
        long j11 = this.f32911c;
        return ((hashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f32909a + ", tokenExpirationTimestamp=" + this.f32910b + ", tokenCreationTimestamp=" + this.f32911c + VectorFormat.DEFAULT_SUFFIX;
    }

    public C3839a(String str, long j10, long j11) {
        this.f32909a = str;
        this.f32910b = j10;
        this.f32911c = j11;
    }
}
