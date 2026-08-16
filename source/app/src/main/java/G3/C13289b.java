package g3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g3.f;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C13289b extends f {

    public final String f88088a;

    public final long f88089b;

    public final f.b f88090c;

    public static final class C1616b extends f.a {

        public String f88091a;

        public Long f88092b;

        public f.b f88093c;

        @Override
        public f a() {
            String str = "";
            if (this.f88092b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C13289b(this.f88091a, this.f88092b.longValue(), this.f88093c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public f.a b(f.b bVar) {
            this.f88093c = bVar;
            return this;
        }

        @Override
        public f.a c(String str) {
            this.f88091a = str;
            return this;
        }

        @Override
        public f.a d(long j10) {
            this.f88092b = Long.valueOf(j10);
            return this;
        }

        public C1616b() {
        }

        public C1616b(f fVar) {
            this.f88091a = fVar.c();
            this.f88092b = Long.valueOf(fVar.d());
            this.f88093c = fVar.b();
        }
    }

    @Override
    @Nullable
    public f.b b() {
        return this.f88090c;
    }

    @Override
    @Nullable
    public String c() {
        return this.f88088a;
    }

    @Override
    @NonNull
    public long d() {
        return this.f88089b;
    }

    @Override
    public f.a e() {
        return new C1616b(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f88088a;
        if (str != null ? str.equals(fVar.c()) : fVar.c() == null) {
            if (this.f88089b == fVar.d()) {
                f.b bVar = this.f88090c;
                if (bVar == null) {
                    if (fVar.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(fVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f88088a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f88089b;
        int i10 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        f.b bVar = this.f88090c;
        return i10 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f88088a + ", tokenExpirationTimestamp=" + this.f88089b + ", responseCode=" + ((Object) this.f88090c) + VectorFormat.DEFAULT_SUFFIX;
    }

    public C13289b(@Nullable String str, long j10, @Nullable f.b bVar) {
        this.f88088a = str;
        this.f88089b = j10;
        this.f88090c = bVar;
    }
}
