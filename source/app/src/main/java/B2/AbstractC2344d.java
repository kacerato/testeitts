package B2;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@I2.a
@k
public abstract class AbstractC2344d implements r {
    @Override
    public <T> r i(@F T t10, n<? super T> nVar) {
        nVar.ue(t10, this);
        return this;
    }

    @Override
    public r b(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    @Override
    public r c(char c10) {
        a((byte) c10);
        a((byte) (c10 >>> '\b'));
        return this;
    }

    @Override
    public r d(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            c(charSequence.charAt(i10));
        }
        return this;
    }

    @Override
    public r e(byte[] bArr, int i10, int i11) {
        w2.H.f0(i10, i10 + i11, bArr.length);
        for (int i12 = 0; i12 < i11; i12++) {
            a(bArr[i10 + i12]);
        }
        return this;
    }

    @Override
    public r f(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            e(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            w.d(byteBuffer, byteBuffer.limit());
        } else {
            for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
                a(byteBuffer.get());
            }
        }
        return this;
    }

    @Override
    public r g(CharSequence charSequence, Charset charset) {
        return b(charSequence.toString().getBytes(charset));
    }

    @Override
    public final r putBoolean(boolean z10) {
        return a(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final r putDouble(double d10) {
        return putLong(Double.doubleToRawLongBits(d10));
    }

    @Override
    public final r putFloat(float f10) {
        return putInt(Float.floatToRawIntBits(f10));
    }

    @Override
    public r putInt(int i10) {
        a((byte) i10);
        a((byte) (i10 >>> 8));
        a((byte) (i10 >>> 16));
        a((byte) (i10 >>> 24));
        return this;
    }

    @Override
    public r putLong(long j10) {
        for (int i10 = 0; i10 < 64; i10 += 8) {
            a((byte) (j10 >>> i10));
        }
        return this;
    }

    @Override
    public r putShort(short s10) {
        a((byte) s10);
        a((byte) (s10 >>> 8));
        return this;
    }
}
