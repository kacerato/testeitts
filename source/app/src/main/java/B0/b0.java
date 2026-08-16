package B0;

import androidx.annotation.Nullable;
import h1.AbstractC13417k;
import java.util.List;

public final class b0 {

    @Nullable
    public String f1193a = null;

    public long f1194b = -1;

    public AbstractC13417k f1195c = AbstractC13417k.n();

    public AbstractC13417k f1196d = AbstractC13417k.n();

    public final b0 a(long j10) {
        this.f1194b = j10;
        return this;
    }

    public final b0 b(List list) {
        G0.A.r(list);
        this.f1196d = AbstractC13417k.m(list);
        return this;
    }

    public final b0 c(List list) {
        G0.A.r(list);
        this.f1195c = AbstractC13417k.m(list);
        return this;
    }

    public final b0 d(String str) {
        this.f1193a = str;
        return this;
    }

    public final A e() {
        if (this.f1193a == null) {
            throw new IllegalStateException("packageName must be defined");
        }
        if (this.f1194b < 0) {
            throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
        }
        if (this.f1195c.isEmpty() && this.f1196d.isEmpty()) {
            throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        }
        return new A(this.f1193a, this.f1194b, this.f1195c, this.f1196d, null);
    }
}
