package D2;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import w2.H;

@v2.c
@p
public final class E extends InputStream {

    public final Reader f4732b;

    public final CharsetEncoder f4733c;

    public final byte[] f4734d;

    public CharBuffer f4735e;

    public ByteBuffer f4736f;

    public boolean f4737g;

    public boolean f4738h;

    public boolean f4739i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public E(Reader reader, Charset charset, int i10) {
        this(reader, r3.onMalformedInput(r0).onUnmappableCharacter(r0), i10);
        CharsetEncoder newEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
    }

    public static int a(Buffer buffer) {
        return buffer.capacity() - buffer.limit();
    }

    public static CharBuffer c(CharBuffer charBuffer) {
        CharBuffer wrap = CharBuffer.wrap(Arrays.copyOf(charBuffer.array(), charBuffer.capacity() * 2));
        u.e(wrap, charBuffer.position());
        u.c(wrap, charBuffer.limit());
        return wrap;
    }

    public final int b(byte[] bArr, int i10, int i11) {
        int min = Math.min(i11, this.f4736f.remaining());
        this.f4736f.get(bArr, i10, min);
        return min;
    }

    @Override
    public void close() throws IOException {
        this.f4732b.close();
    }

    public final void d() throws IOException {
        if (a(this.f4735e) == 0) {
            if (this.f4735e.position() > 0) {
                u.b(this.f4735e.compact());
            } else {
                this.f4735e = c(this.f4735e);
            }
        }
        int limit = this.f4735e.limit();
        int read = this.f4732b.read(this.f4735e.array(), limit, a(this.f4735e));
        if (read == -1) {
            this.f4737g = true;
        } else {
            u.c(this.f4735e, limit + read);
        }
    }

    public final void e(boolean z10) {
        u.b(this.f4736f);
        if (z10 && this.f4736f.remaining() == 0) {
            this.f4736f = ByteBuffer.allocate(this.f4736f.capacity() * 2);
        } else {
            this.f4738h = true;
        }
    }

    @Override
    public int read() throws IOException {
        if (read(this.f4734d) == 1) {
            return com.google.common.primitives.v.p(this.f4734d[0]);
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r2 <= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return r2;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        CoderResult encode;
        H.f0(i10, i10 + i11, bArr.length);
        if (i11 == 0) {
            return 0;
        }
        boolean z10 = this.f4737g;
        int i12 = 0;
        while (true) {
            if (this.f4738h) {
                i12 += b(bArr, i10 + i12, i11 - i12);
                if (i12 == i11 || this.f4739i) {
                    break;
                }
                this.f4738h = false;
                u.a(this.f4736f);
            }
            while (true) {
                if (this.f4739i) {
                    encode = CoderResult.UNDERFLOW;
                } else if (z10) {
                    encode = this.f4733c.flush(this.f4736f);
                } else {
                    encode = this.f4733c.encode(this.f4735e, this.f4736f, this.f4737g);
                }
                if (encode.isOverflow()) {
                    e(true);
                    break;
                }
                if (encode.isUnderflow()) {
                    if (z10) {
                        this.f4739i = true;
                        e(false);
                        break;
                    }
                    if (this.f4737g) {
                        z10 = true;
                    } else {
                        d();
                    }
                } else if (encode.isError()) {
                    encode.throwException();
                    return 0;
                }
            }
        }
    }

    public E(Reader reader, CharsetEncoder charsetEncoder, int i10) {
        this.f4734d = new byte[1];
        this.f4732b = (Reader) H.E(reader);
        this.f4733c = (CharsetEncoder) H.E(charsetEncoder);
        H.k(i10 > 0, "bufferSize must be positive: %s", i10);
        charsetEncoder.reset();
        CharBuffer allocate = CharBuffer.allocate(i10);
        this.f4735e = allocate;
        u.b(allocate);
        this.f4736f = ByteBuffer.allocate(i10);
    }
}
