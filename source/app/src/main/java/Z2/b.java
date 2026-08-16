package Z2;

import org.apache.commons.math3.geometry.VectorFormat;

public final class b extends n {

    public final String f30735b;

    public final long f30736c;

    public b(String str, long j10) {
        if (str == null) {
            throw new NullPointerException("Null sdkName");
        }
        this.f30735b = str;
        this.f30736c = j10;
    }

    @Override
    public long c() {
        return this.f30736c;
    }

    @Override
    public String d() {
        return this.f30735b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f30735b.equals(nVar.d()) && this.f30736c == nVar.c();
    }

    public int hashCode() {
        int hashCode = (this.f30735b.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f30736c;
        return hashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "SdkHeartBeatResult{sdkName=" + this.f30735b + ", millis=" + this.f30736c + VectorFormat.DEFAULT_SUFFIX;
    }
}
