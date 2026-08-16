package M;

import Y.k;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;

public class b implements t<byte[]> {

    public final byte[] f14450b;

    public b(byte[] bArr) {
        this.f14450b = (byte[]) k.d(bArr);
    }

    @Override
    @NonNull
    public Class<byte[]> a() {
        return byte[].class;
    }

    @Override
    @NonNull
    public byte[] get() {
        return this.f14450b;
    }

    @Override
    public int getSize() {
        return this.f14450b.length;
    }

    @Override
    public void recycle() {
    }
}
