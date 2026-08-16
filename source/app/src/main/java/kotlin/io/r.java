package kotlin.io;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConsole.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Console.kt\nkotlin/io/LineReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"})
public final class r {

    @NotNull
    public static final r f95678a = new r();

    public static final int f95679b = 32;

    public static CharsetDecoder f95680c;

    public static boolean f95681d;

    @NotNull
    public static final byte[] f95682e;

    @NotNull
    public static final char[] f95683f;

    @NotNull
    public static final ByteBuffer f95684g;

    @NotNull
    public static final CharBuffer f95685h;

    @NotNull
    public static final StringBuilder f95686i;

    static {
        byte[] bArr = new byte[32];
        f95682e = bArr;
        char[] cArr = new char[32];
        f95683f = cArr;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        M.o(wrap, "wrap(...)");
        f95684g = wrap;
        CharBuffer wrap2 = CharBuffer.wrap(cArr);
        M.o(wrap2, "wrap(...)");
        f95685h = wrap2;
        f95686i = new StringBuilder();
    }

    public final int a() {
        ByteBuffer byteBuffer = f95684g;
        byteBuffer.compact();
        int position = byteBuffer.position();
        byteBuffer.position(0);
        return position;
    }

    public final int b(boolean z10) {
        while (true) {
            CharsetDecoder charsetDecoder = f95680c;
            if (charsetDecoder == null) {
                M.S("decoder");
                charsetDecoder = null;
            }
            ByteBuffer byteBuffer = f95684g;
            CharBuffer charBuffer = f95685h;
            CoderResult decode = charsetDecoder.decode(byteBuffer, charBuffer, z10);
            M.o(decode, "decode(...)");
            if (decode.isError()) {
                e();
                decode.throwException();
            }
            int position = charBuffer.position();
            if (!decode.isOverflow()) {
                return position;
            }
            StringBuilder sb2 = f95686i;
            char[] cArr = f95683f;
            int i10 = position - 1;
            sb2.append(cArr, 0, i10);
            charBuffer.position(0);
            charBuffer.limit(32);
            charBuffer.put(cArr[i10]);
        }
    }

    public final int c(int i10, int i11) {
        ByteBuffer byteBuffer = f95684g;
        byteBuffer.limit(i10);
        f95685h.position(i11);
        int b10 = b(true);
        CharsetDecoder charsetDecoder = f95680c;
        if (charsetDecoder == null) {
            M.S("decoder");
            charsetDecoder = null;
        }
        charsetDecoder.reset();
        byteBuffer.position(0);
        return b10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        if (r10 <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
    
        r0 = kotlin.io.r.f95683f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if (r0[r10 - 1] != '\n') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0082, code lost:
    
        r1 = r10 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (r1 <= 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
    
        if (r0[r10 - 2] != '\r') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008e, code lost:
    
        r10 = r10 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
    
        r10 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0092, code lost:
    
        r0 = kotlin.io.r.f95686i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0098, code lost:
    
        if (r0.length() != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a2, code lost:
    
        return new java.lang.String(kotlin.io.r.f95683f, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
    
        r0.append(kotlin.io.r.f95683f, 0, r10);
        r10 = r0.toString();
        kotlin.jvm.internal.M.o(r10, "toString(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b5, code lost:
    
        if (r0.length() <= 32) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b7, code lost:
    
        f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ba, code lost:
    
        r0.setLength(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
    
        if (kotlin.jvm.internal.M.g(r0.charset(), r11) == false) goto L11;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String d(@NotNull InputStream inputStream, @NotNull Charset charset) {
        int c10;
        try {
            M.p(inputStream, "inputStream");
            M.p(charset, "charset");
            CharsetDecoder charsetDecoder = f95680c;
            if (charsetDecoder != null) {
                if (charsetDecoder == null) {
                    M.S("decoder");
                    charsetDecoder = null;
                }
            }
            g(charset);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int read = inputStream.read();
                if (read != -1) {
                    int i12 = i10 + 1;
                    f95682e[i10] = (byte) read;
                    if (read != 10 && i12 != 32 && f95681d) {
                        i10 = i12;
                    }
                    ByteBuffer byteBuffer = f95684g;
                    byteBuffer.limit(i12);
                    f95685h.position(i11);
                    i11 = b(false);
                    if (i11 > 0 && f95683f[i11 - 1] == '\n') {
                        byteBuffer.position(0);
                        c10 = i11;
                        break;
                    }
                    i10 = a();
                } else {
                    if (f95686i.length() == 0 && i10 == 0 && i11 == 0) {
                        return null;
                    }
                    c10 = c(i10, i11);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void e() {
        CharsetDecoder charsetDecoder = f95680c;
        if (charsetDecoder == null) {
            M.S("decoder");
            charsetDecoder = null;
        }
        charsetDecoder.reset();
        f95684g.position(0);
        f95686i.setLength(0);
    }

    public final void f() {
        StringBuilder sb2 = f95686i;
        sb2.setLength(32);
        sb2.trimToSize();
    }

    public final void g(Charset charset) {
        CharsetDecoder newDecoder = charset.newDecoder();
        M.o(newDecoder, "newDecoder(...)");
        f95680c = newDecoder;
        ByteBuffer byteBuffer = f95684g;
        byteBuffer.clear();
        CharBuffer charBuffer = f95685h;
        charBuffer.clear();
        byteBuffer.put((byte) 10);
        byteBuffer.flip();
        CharsetDecoder charsetDecoder = f95680c;
        if (charsetDecoder == null) {
            M.S("decoder");
            charsetDecoder = null;
        }
        boolean z10 = false;
        charsetDecoder.decode(byteBuffer, charBuffer, false);
        if (charBuffer.position() == 1 && charBuffer.get(0) == '\n') {
            z10 = true;
        }
        f95681d = z10;
        e();
    }
}
