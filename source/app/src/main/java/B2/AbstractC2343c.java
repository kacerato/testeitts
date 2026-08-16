package B2;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@k
@I2.j
public abstract class AbstractC2343c implements q {
    @Override
    public r a(int i10) {
        w2.H.k(i10 >= 0, "expectedInputSize must be >= 0 but was %s", i10);
        return i();
    }

    @Override
    public p b(byte[] bArr) {
        return k(bArr, 0, bArr.length);
    }

    @Override
    public p c(int i10) {
        return a(4).putInt(i10).h();
    }

    @Override
    public p d(long j10) {
        return a(8).putLong(j10).h();
    }

    @Override
    public <T> p e(@F T t10, n<? super T> nVar) {
        return i().i(t10, nVar).h();
    }

    @Override
    public p f(CharSequence charSequence, Charset charset) {
        return i().g(charSequence, charset).h();
    }

    @Override
    public p g(CharSequence charSequence) {
        return a(charSequence.length() * 2).d(charSequence).h();
    }

    @Override
    public p j(ByteBuffer byteBuffer) {
        return a(byteBuffer.remaining()).f(byteBuffer).h();
    }

    @Override
    public p k(byte[] bArr, int i10, int i11) {
        w2.H.f0(i10, i10 + i11, bArr.length);
        return a(i11).e(bArr, i10, i11).h();
    }
}
