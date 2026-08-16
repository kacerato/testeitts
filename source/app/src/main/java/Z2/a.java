package Z2;

import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

public final class a extends m {

    public final String f30733a;

    public final List<String> f30734b;

    public a(String str, List<String> list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f30733a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.f30734b = list;
    }

    @Override
    public List<String> b() {
        return this.f30734b;
    }

    @Override
    public String c() {
        return this.f30733a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f30733a.equals(mVar.c()) && this.f30734b.equals(mVar.b());
    }

    public int hashCode() {
        return ((this.f30733a.hashCode() ^ 1000003) * 1000003) ^ this.f30734b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f30733a + ", usedDates=" + ((Object) this.f30734b) + VectorFormat.DEFAULT_SUFFIX;
    }
}
