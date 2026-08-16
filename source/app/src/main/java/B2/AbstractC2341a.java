package B2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@I2.a
@k
public abstract class AbstractC2341a extends AbstractC2344d {

    public final ByteBuffer f1409a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    public final r j(int i10) {
        try {
            n(this.f1409a.array(), 0, i10);
            return this;
        } finally {
            w.a(this.f1409a);
        }
    }

    public abstract void k(byte b10);

    public void l(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            n(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            w.d(byteBuffer, byteBuffer.limit());
        } else {
            for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
                k(byteBuffer.get());
            }
        }
    }

    public void m(byte[] bArr) {
        n(bArr, 0, bArr.length);
    }

    public void n(byte[] bArr, int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            k(bArr[i12]);
        }
    }

    @Override
    public r a(byte b10) {
        k(b10);
        return this;
    }

    @Override
    public r b(byte[] bArr) {
        w2.H.E(bArr);
        m(bArr);
        return this;
    }

    @Override
    public r c(char c10) {
        this.f1409a.putChar(c10);
        return j(2);
    }

    @Override
    public r e(byte[] bArr, int i10, int i11) {
        w2.H.f0(i10, i10 + i11, bArr.length);
        n(bArr, i10, i11);
        return this;
    }

    @Override
    public r f(ByteBuffer byteBuffer) {
        l(byteBuffer);
        return this;
    }

    @Override
    public r putInt(int i10) {
        this.f1409a.putInt(i10);
        return j(4);
    }

    @Override
    public r putLong(long j10) {
        this.f1409a.putLong(j10);
        return j(8);
    }

    @Override
    public r putShort(short s10) {
        this.f1409a.putShort(s10);
        return j(2);
    }
}
