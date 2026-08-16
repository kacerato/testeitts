package B2;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import v2.InterfaceC15800a;

@I2.a
@k
@InterfaceC15800a
public interface r extends G {
    @Override
    r a(byte b10);

    @Override
    r b(byte[] bArr);

    @Override
    r c(char c10);

    @Override
    r d(CharSequence charSequence);

    @Override
    r e(byte[] bArr, int i10, int i11);

    @Override
    r f(ByteBuffer byteBuffer);

    @Override
    r g(CharSequence charSequence, Charset charset);

    p h();

    @Deprecated
    int hashCode();

    <T> r i(@F T t10, n<? super T> nVar);

    @Override
    r putBoolean(boolean z10);

    @Override
    r putDouble(double d10);

    @Override
    r putFloat(float f10);

    @Override
    r putInt(int i10);

    @Override
    r putLong(long j10);

    @Override
    r putShort(short s10);
}
