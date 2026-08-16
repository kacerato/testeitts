package o2;

import android.app.PendingIntent;
import org.apache.commons.math3.geometry.VectorFormat;

public final class d extends AbstractC14478a {

    public final PendingIntent f98455b;

    public final boolean f98456c;

    public d(PendingIntent pendingIntent, boolean z10) {
        if (pendingIntent == null) {
            throw new NullPointerException("Null pendingIntent");
        }
        this.f98455b = pendingIntent;
        this.f98456c = z10;
    }

    @Override
    public final PendingIntent b() {
        return this.f98455b;
    }

    @Override
    public final boolean c() {
        return this.f98456c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC14478a) {
            AbstractC14478a abstractC14478a = (AbstractC14478a) obj;
            if (this.f98455b.equals(abstractC14478a.b()) && this.f98456c == abstractC14478a.c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f98455b.hashCode() ^ 1000003) * 1000003) ^ (true != this.f98456c ? 1237 : 1231);
    }

    public final String toString() {
        return "ReviewInfo{pendingIntent=" + this.f98455b.toString() + ", isNoOp=" + this.f98456c + VectorFormat.DEFAULT_SUFFIX;
    }
}
