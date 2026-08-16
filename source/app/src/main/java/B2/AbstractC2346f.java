package B2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@I2.a
@k
public abstract class AbstractC2346f extends AbstractC2344d {

    public final ByteBuffer f1416a;

    public final int f1417b;

    public final int f1418c;

    public AbstractC2346f(int i10) {
        this(i10, i10);
    }

    @Override
    public final p h() {
        k();
        w.b(this.f1416a);
        if (this.f1416a.remaining() > 0) {
            n(this.f1416a);
            ByteBuffer byteBuffer = this.f1416a;
            w.d(byteBuffer, byteBuffer.limit());
        }
        return j();
    }

    public abstract p j();

    public final void k() {
        w.b(this.f1416a);
        while (this.f1416a.remaining() >= this.f1418c) {
            m(this.f1416a);
        }
        this.f1416a.compact();
    }

    public final void l() {
        if (this.f1416a.remaining() < 8) {
            k();
        }
    }

    public abstract void m(ByteBuffer byteBuffer);

    public void n(ByteBuffer byteBuffer) {
        w.d(byteBuffer, byteBuffer.limit());
        w.c(byteBuffer, this.f1418c + 7);
        while (true) {
            int position = byteBuffer.position();
            int i10 = this.f1418c;
            if (position >= i10) {
                w.c(byteBuffer, i10);
                w.b(byteBuffer);
                m(byteBuffer);
                return;
            }
            byteBuffer.putLong(0L);
        }
    }

    public final r o(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f1416a.remaining()) {
            this.f1416a.put(byteBuffer);
            l();
            return this;
        }
        int position = this.f1417b - this.f1416a.position();
        for (int i10 = 0; i10 < position; i10++) {
            this.f1416a.put(byteBuffer.get());
        }
        k();
        while (byteBuffer.remaining() >= this.f1418c) {
            m(byteBuffer);
        }
        this.f1416a.put(byteBuffer);
        return this;
    }

    public AbstractC2346f(int i10, int i11) {
        w2.H.d(i11 % i10 == 0);
        this.f1416a = ByteBuffer.allocate(i11 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f1417b = i11;
        this.f1418c = i10;
    }

    @Override
    public final r a(byte b10) {
        this.f1416a.put(b10);
        l();
        return this;
    }

    @Override
    public final r c(char c10) {
        this.f1416a.putChar(c10);
        l();
        return this;
    }

    @Override
    public final r e(byte[] bArr, int i10, int i11) {
        return o(ByteBuffer.wrap(bArr, i10, i11).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override
    public final r f(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return o(byteBuffer);
        } finally {
            byteBuffer.order(order);
        }
    }

    @Override
    public final r putInt(int i10) {
        this.f1416a.putInt(i10);
        l();
        return this;
    }

    @Override
    public final r putLong(long j10) {
        this.f1416a.putLong(j10);
        l();
        return this;
    }

    @Override
    public final r putShort(short s10) {
        this.f1416a.putShort(s10);
        l();
        return this;
    }
}
