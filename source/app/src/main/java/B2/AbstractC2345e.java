package B2;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@k
@I2.j
public abstract class AbstractC2345e extends AbstractC2343c {

    public final class a extends AbstractC2344d {

        public final b f1414a;

        public a(int i10) {
            this.f1414a = new b(i10);
        }

        @Override
        public p h() {
            return AbstractC2345e.this.k(this.f1414a.c(), 0, this.f1414a.d());
        }

        @Override
        public r a(byte b10) {
            this.f1414a.write(b10);
            return this;
        }

        @Override
        public r e(byte[] bArr, int i10, int i11) {
            this.f1414a.write(bArr, i10, i11);
            return this;
        }

        @Override
        public r f(ByteBuffer byteBuffer) {
            this.f1414a.e(byteBuffer);
            return this;
        }
    }

    public static final class b extends ByteArrayOutputStream {
        public b(int i10) {
            super(i10);
        }

        public byte[] c() {
            return this.buf;
        }

        public int d() {
            return this.count;
        }

        public void e(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            int i10 = this.count;
            int i11 = i10 + remaining;
            byte[] bArr = this.buf;
            if (i11 > bArr.length) {
                this.buf = Arrays.copyOf(bArr, i10 + remaining);
            }
            byteBuffer.get(this.buf, this.count, remaining);
            this.count += remaining;
        }
    }

    @Override
    public r a(int i10) {
        w2.H.d(i10 >= 0);
        return new a(i10);
    }

    @Override
    public p c(int i10) {
        return b(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i10).array());
    }

    @Override
    public p d(long j10) {
        return b(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j10).array());
    }

    @Override
    public p f(CharSequence charSequence, Charset charset) {
        return b(charSequence.toString().getBytes(charset));
    }

    @Override
    public p g(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer order = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i10 = 0; i10 < length; i10++) {
            order.putChar(charSequence.charAt(i10));
        }
        return b(order.array());
    }

    @Override
    public r i() {
        return a(32);
    }

    @Override
    public p j(ByteBuffer byteBuffer) {
        return a(byteBuffer.remaining()).f(byteBuffer).h();
    }

    @Override
    public abstract p k(byte[] bArr, int i10, int i11);
}
