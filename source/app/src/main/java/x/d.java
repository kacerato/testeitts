package X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class d implements C.e {

    @NonNull
    public final String f27878c;

    public final long f27879d;

    public final int f27880e;

    public d(@Nullable String str, long j10, int i10) {
        this.f27878c = str == null ? "" : str;
        this.f27879d = j10;
        this.f27880e = i10;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f27879d == dVar.f27879d && this.f27880e == dVar.f27880e && this.f27878c.equals(dVar.f27878c);
    }

    @Override
    public int hashCode() {
        int hashCode = this.f27878c.hashCode() * 31;
        long j10 = this.f27879d;
        return ((hashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f27880e;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f27879d).putInt(this.f27880e).array());
        messageDigest.update(this.f27878c.getBytes(C.e.f1956b));
    }
}
