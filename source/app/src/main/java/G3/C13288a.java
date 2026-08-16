package g3;

import androidx.annotation.Nullable;
import g3.d;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C13288a extends d {

    public final String f88078a;

    public final String f88079b;

    public final String f88080c;

    public final f f88081d;

    public final d.b f88082e;

    public static final class b extends d.a {

        public String f88083a;

        public String f88084b;

        public String f88085c;

        public f f88086d;

        public d.b f88087e;

        @Override
        public d a() {
            return new C13288a(this.f88083a, this.f88084b, this.f88085c, this.f88086d, this.f88087e);
        }

        @Override
        public d.a b(f fVar) {
            this.f88086d = fVar;
            return this;
        }

        @Override
        public d.a c(String str) {
            this.f88084b = str;
            return this;
        }

        @Override
        public d.a d(String str) {
            this.f88085c = str;
            return this;
        }

        @Override
        public d.a e(d.b bVar) {
            this.f88087e = bVar;
            return this;
        }

        @Override
        public d.a f(String str) {
            this.f88083a = str;
            return this;
        }

        public b() {
        }

        public b(d dVar) {
            this.f88083a = dVar.f();
            this.f88084b = dVar.c();
            this.f88085c = dVar.d();
            this.f88086d = dVar.b();
            this.f88087e = dVar.e();
        }
    }

    @Override
    @Nullable
    public f b() {
        return this.f88081d;
    }

    @Override
    @Nullable
    public String c() {
        return this.f88079b;
    }

    @Override
    @Nullable
    public String d() {
        return this.f88080c;
    }

    @Override
    @Nullable
    public d.b e() {
        return this.f88082e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f88078a;
        if (str != null ? str.equals(dVar.f()) : dVar.f() == null) {
            String str2 = this.f88079b;
            if (str2 != null ? str2.equals(dVar.c()) : dVar.c() == null) {
                String str3 = this.f88080c;
                if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
                    f fVar = this.f88081d;
                    if (fVar != null ? fVar.equals(dVar.b()) : dVar.b() == null) {
                        d.b bVar = this.f88082e;
                        if (bVar == null) {
                            if (dVar.e() == null) {
                                return true;
                            }
                        } else if (bVar.equals(dVar.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    @Nullable
    public String f() {
        return this.f88078a;
    }

    @Override
    public d.a g() {
        return new b(this);
    }

    public int hashCode() {
        String str = this.f88078a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f88079b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f88080c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        f fVar = this.f88081d;
        int hashCode4 = (hashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        d.b bVar = this.f88082e;
        return hashCode4 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f88078a + ", fid=" + this.f88079b + ", refreshToken=" + this.f88080c + ", authToken=" + ((Object) this.f88081d) + ", responseCode=" + ((Object) this.f88082e) + VectorFormat.DEFAULT_SUFFIX;
    }

    public C13288a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable f fVar, @Nullable d.b bVar) {
        this.f88078a = str;
        this.f88079b = str2;
        this.f88080c = str3;
        this.f88081d = fVar;
        this.f88082e = bVar;
    }
}
