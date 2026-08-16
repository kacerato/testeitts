package com.google.common.io;

import D2.AbstractC2487e;
import D2.AbstractC2488f;
import D2.p;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;
import w2.B;
import w2.C15883c;
import w2.H;

@p
@v2.b(emulated = true)
public abstract class BaseEncoding {

    public static final BaseEncoding f66959a = new h("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    public static final BaseEncoding f66960b = new h("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    public static final BaseEncoding f66961c = new j("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    public static final BaseEncoding f66962d = new j("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    public static final BaseEncoding f66963e = new g("base16()", "0123456789ABCDEF");

    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }

        public DecodingException(Throwable th2) {
            super(th2);
        }
    }

    public class a extends AbstractC2487e {

        public final D2.i f66964a;

        public a(D2.i iVar) {
            this.f66964a = iVar;
        }

        @Override
        public OutputStream c() throws IOException {
            return BaseEncoding.this.p(this.f66964a.b());
        }
    }

    public class b extends AbstractC2488f {

        public final D2.j f66966a;

        public b(D2.j jVar) {
            this.f66966a = jVar;
        }

        @Override
        public InputStream m() throws IOException {
            return BaseEncoding.this.k(this.f66966a.m());
        }
    }

    public class e extends Writer {

        public final Appendable f66974b;

        public final Writer f66975c;

        public e(Appendable appendable, Writer writer) {
            this.f66974b = appendable;
            this.f66975c = writer;
        }

        @Override
        public void close() throws IOException {
            this.f66975c.close();
        }

        @Override
        public void flush() throws IOException {
            this.f66975c.flush();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f66974b.append((char) i10);
        }

        @Override
        public void write(char[] cArr, int i10, int i11) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    public static final class f {

        public final String f66976a;

        public final char[] f66977b;

        public final int f66978c;

        public final int f66979d;

        public final int f66980e;

        public final int f66981f;

        public final byte[] f66982g;

        public final boolean[] f66983h;

        public f(String str, char[] cArr) {
            this.f66976a = (String) H.E(str);
            this.f66977b = (char[]) H.E(cArr);
            try {
                int p10 = E2.f.p(cArr.length, RoundingMode.UNNECESSARY);
                this.f66979d = p10;
                int min = Math.min(8, Integer.lowestOneBit(p10));
                try {
                    this.f66980e = 8 / min;
                    this.f66981f = p10 / min;
                    this.f66978c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i10 = 0; i10 < cArr.length; i10++) {
                        char c10 = cArr[i10];
                        H.f(c10 < '\u0080', "Non-ASCII character: %s", c10);
                        H.f(bArr[c10] == -1, "Duplicate character: %s", c10);
                        bArr[c10] = (byte) i10;
                    }
                    this.f66982g = bArr;
                    boolean[] zArr = new boolean[this.f66980e];
                    for (int i11 = 0; i11 < this.f66981f; i11++) {
                        zArr[E2.f.g(i11 * 8, this.f66979d, RoundingMode.CEILING)] = true;
                    }
                    this.f66983h = zArr;
                } catch (ArithmeticException e10) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e10);
                }
            } catch (ArithmeticException e11) {
                int length = cArr.length;
                StringBuilder sb2 = new StringBuilder(35);
                sb2.append("Illegal alphabet length ");
                sb2.append(length);
                throw new IllegalArgumentException(sb2.toString(), e11);
            }
        }

        public boolean b(char c10) {
            return c10 <= '\u007f' && this.f66982g[c10] != -1;
        }

        public int c(char c10) throws DecodingException {
            if (c10 > '\u007f') {
                String valueOf = String.valueOf(Integer.toHexString(c10));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b10 = this.f66982g[c10];
            if (b10 != -1) {
                return b10;
            }
            if (c10 <= ' ' || c10 == '\u007f') {
                String valueOf2 = String.valueOf(Integer.toHexString(c10));
                throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
            }
            StringBuilder sb2 = new StringBuilder(25);
            sb2.append("Unrecognized character: ");
            sb2.append(c10);
            throw new DecodingException(sb2.toString());
        }

        public char d(int i10) {
            return this.f66977b[i10];
        }

        public final boolean e() {
            for (char c10 : this.f66977b) {
                if (C15883c.c(c10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof f) {
                return Arrays.equals(this.f66977b, ((f) obj).f66977b);
            }
            return false;
        }

        public final boolean f() {
            for (char c10 : this.f66977b) {
                if (C15883c.d(c10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean g(int i10) {
            return this.f66983h[i10 % this.f66980e];
        }

        public f h() {
            if (!f()) {
                return this;
            }
            H.h0(!e(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f66977b.length];
            int i10 = 0;
            while (true) {
                char[] cArr2 = this.f66977b;
                if (i10 >= cArr2.length) {
                    return new f(String.valueOf(this.f66976a).concat(".lowerCase()"), cArr);
                }
                cArr[i10] = C15883c.e(cArr2[i10]);
                i10++;
            }
        }

        public int hashCode() {
            return Arrays.hashCode(this.f66977b);
        }

        public boolean i(char c10) {
            byte[] bArr = this.f66982g;
            return c10 < bArr.length && bArr[c10] != -1;
        }

        public f j() {
            if (!e()) {
                return this;
            }
            H.h0(!f(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f66977b.length];
            int i10 = 0;
            while (true) {
                char[] cArr2 = this.f66977b;
                if (i10 >= cArr2.length) {
                    return new f(String.valueOf(this.f66976a).concat(".upperCase()"), cArr);
                }
                cArr[i10] = C15883c.h(cArr2[i10]);
                i10++;
            }
        }

        public String toString() {
            return this.f66976a;
        }
    }

    public static final class g extends j {

        public final char[] f66984j;

        public g(String str, String str2) {
            this(new f(str, str2.toCharArray()));
        }

        @Override
        public BaseEncoding D(f fVar, @CheckForNull Character ch2) {
            return new g(fVar);
        }

        @Override
        public int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            H.E(bArr);
            if (charSequence.length() % 2 == 1) {
                int length = charSequence.length();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid input length ");
                sb2.append(length);
                throw new DecodingException(sb2.toString());
            }
            int i10 = 0;
            int i11 = 0;
            while (i10 < charSequence.length()) {
                bArr[i11] = (byte) ((this.f66988f.c(charSequence.charAt(i10)) << 4) | this.f66988f.c(charSequence.charAt(i10 + 1)));
                i10 += 2;
                i11++;
            }
            return i11;
        }

        @Override
        public void n(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
            H.E(appendable);
            H.f0(i10, i10 + i11, bArr.length);
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = bArr[i10 + i12] & 255;
                appendable.append(this.f66984j[i13]);
                appendable.append(this.f66984j[i13 | 256]);
            }
        }

        public g(f fVar) {
            super(fVar, null);
            this.f66984j = new char[512];
            H.d(fVar.f66977b.length == 16);
            for (int i10 = 0; i10 < 256; i10++) {
                this.f66984j[i10] = fVar.d(i10 >>> 4);
                this.f66984j[i10 | 256] = fVar.d(i10 & 15);
            }
        }
    }

    public static final class h extends j {
        public h(String str, String str2, @CheckForNull Character ch2) {
            this(new f(str, str2.toCharArray()), ch2);
        }

        @Override
        public BaseEncoding D(f fVar, @CheckForNull Character ch2) {
            return new h(fVar, ch2);
        }

        @Override
        public int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            H.E(bArr);
            CharSequence y10 = y(charSequence);
            if (!this.f66988f.g(y10.length())) {
                int length = y10.length();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid input length ");
                sb2.append(length);
                throw new DecodingException(sb2.toString());
            }
            int i10 = 0;
            int i11 = 0;
            while (i10 < y10.length()) {
                int i12 = i10 + 2;
                int c10 = (this.f66988f.c(y10.charAt(i10)) << 18) | (this.f66988f.c(y10.charAt(i10 + 1)) << 12);
                int i13 = i11 + 1;
                bArr[i11] = (byte) (c10 >>> 16);
                if (i12 < y10.length()) {
                    int i14 = i10 + 3;
                    int c11 = c10 | (this.f66988f.c(y10.charAt(i12)) << 6);
                    int i15 = i11 + 2;
                    bArr[i13] = (byte) ((c11 >>> 8) & 255);
                    if (i14 < y10.length()) {
                        i10 += 4;
                        i11 += 3;
                        bArr[i15] = (byte) ((c11 | this.f66988f.c(y10.charAt(i14))) & 255);
                    } else {
                        i11 = i15;
                        i10 = i14;
                    }
                } else {
                    i11 = i13;
                    i10 = i12;
                }
            }
            return i11;
        }

        @Override
        public void n(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
            H.E(appendable);
            int i12 = i10 + i11;
            H.f0(i10, i12, bArr.length);
            while (i11 >= 3) {
                int i13 = i10 + 2;
                int i14 = ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10] & 255) << 16);
                i10 += 3;
                int i15 = i14 | (bArr[i13] & 255);
                appendable.append(this.f66988f.d(i15 >>> 18));
                appendable.append(this.f66988f.d((i15 >>> 12) & 63));
                appendable.append(this.f66988f.d((i15 >>> 6) & 63));
                appendable.append(this.f66988f.d(i15 & 63));
                i11 -= 3;
            }
            if (i10 < i12) {
                C(appendable, bArr, i10, i12 - i10);
            }
        }

        public h(f fVar, @CheckForNull Character ch2) {
            super(fVar, ch2);
            H.d(fVar.f66977b.length == 64);
        }
    }

    public static final class i extends BaseEncoding {

        public final BaseEncoding f66985f;

        public final String f66986g;

        public final int f66987h;

        public i(BaseEncoding baseEncoding, String str, int i10) {
            this.f66985f = (BaseEncoding) H.E(baseEncoding);
            this.f66986g = (String) H.E(str);
            this.f66987h = i10;
            H.k(i10 > 0, "Cannot add a separator after every %s chars", i10);
        }

        @Override
        public BaseEncoding A(char c10) {
            return this.f66985f.A(c10).B(this.f66986g, this.f66987h);
        }

        @Override
        public BaseEncoding B(String str, int i10) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override
        public boolean f(CharSequence charSequence) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < charSequence.length(); i10++) {
                char charAt = charSequence.charAt(i10);
                if (this.f66986g.indexOf(charAt) < 0) {
                    sb2.append(charAt);
                }
            }
            return this.f66985f.f(sb2);
        }

        @Override
        public int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            StringBuilder sb2 = new StringBuilder(charSequence.length());
            for (int i10 = 0; i10 < charSequence.length(); i10++) {
                char charAt = charSequence.charAt(i10);
                if (this.f66986g.indexOf(charAt) < 0) {
                    sb2.append(charAt);
                }
            }
            return this.f66985f.i(bArr, sb2);
        }

        @Override
        @v2.c
        public InputStream k(Reader reader) {
            return this.f66985f.k(BaseEncoding.r(reader, this.f66986g));
        }

        @Override
        public void n(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
            this.f66985f.n(BaseEncoding.w(appendable, this.f66986g, this.f66987h), bArr, i10, i11);
        }

        @Override
        @v2.c
        public OutputStream p(Writer writer) {
            return this.f66985f.p(BaseEncoding.x(writer, this.f66986g, this.f66987h));
        }

        @Override
        public BaseEncoding s() {
            return this.f66985f.s().B(this.f66986g, this.f66987h);
        }

        @Override
        public int t(int i10) {
            return this.f66985f.t(i10);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f66985f);
            String str = this.f66986g;
            int i10 = this.f66987h;
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 31 + String.valueOf(str).length());
            sb2.append(valueOf);
            sb2.append(".withSeparator(\"");
            sb2.append(str);
            sb2.append("\", ");
            sb2.append(i10);
            sb2.append(")");
            return sb2.toString();
        }

        @Override
        public int u(int i10) {
            int u10 = this.f66985f.u(i10);
            return u10 + (this.f66986g.length() * E2.f.g(Math.max(0, u10 - 1), this.f66987h, RoundingMode.FLOOR));
        }

        @Override
        public BaseEncoding v() {
            return this.f66985f.v().B(this.f66986g, this.f66987h);
        }

        @Override
        public CharSequence y(CharSequence charSequence) {
            return this.f66985f.y(charSequence);
        }

        @Override
        public BaseEncoding z() {
            return this.f66985f.z().B(this.f66986g, this.f66987h);
        }
    }

    public static class j extends BaseEncoding {

        public final f f66988f;

        @CheckForNull
        public final Character f66989g;

        @CheckForNull
        @J2.b
        public transient BaseEncoding f66990h;

        @CheckForNull
        @J2.b
        public transient BaseEncoding f66991i;

        public class a extends OutputStream {

            public int f66992b = 0;

            public int f66993c = 0;

            public int f66994d = 0;

            public final Writer f66995e;

            public a(Writer writer) {
                this.f66995e = writer;
            }

            @Override
            public void close() throws IOException {
                int i10 = this.f66993c;
                if (i10 > 0) {
                    int i11 = this.f66992b;
                    f fVar = j.this.f66988f;
                    this.f66995e.write(fVar.d((i11 << (fVar.f66979d - i10)) & fVar.f66978c));
                    this.f66994d++;
                    if (j.this.f66989g != null) {
                        while (true) {
                            int i12 = this.f66994d;
                            j jVar = j.this;
                            if (i12 % jVar.f66988f.f66980e == 0) {
                                break;
                            }
                            this.f66995e.write(jVar.f66989g.charValue());
                            this.f66994d++;
                        }
                    }
                }
                this.f66995e.close();
            }

            @Override
            public void flush() throws IOException {
                this.f66995e.flush();
            }

            @Override
            public void write(int i10) throws IOException {
                this.f66992b = (i10 & 255) | (this.f66992b << 8);
                this.f66993c += 8;
                while (true) {
                    int i11 = this.f66993c;
                    f fVar = j.this.f66988f;
                    int i12 = fVar.f66979d;
                    if (i11 < i12) {
                        return;
                    }
                    this.f66995e.write(fVar.d((this.f66992b >> (i11 - i12)) & fVar.f66978c));
                    this.f66994d++;
                    this.f66993c -= j.this.f66988f.f66979d;
                }
            }
        }

        public j(String str, String str2, @CheckForNull Character ch2) {
            this(new f(str, str2.toCharArray()), ch2);
        }

        @Override
        public BaseEncoding A(char c10) {
            Character ch2;
            return (8 % this.f66988f.f66979d == 0 || ((ch2 = this.f66989g) != null && ch2.charValue() == c10)) ? this : D(this.f66988f, Character.valueOf(c10));
        }

        @Override
        public BaseEncoding B(String str, int i10) {
            for (int i11 = 0; i11 < str.length(); i11++) {
                H.u(!this.f66988f.i(str.charAt(i11)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch2 = this.f66989g;
            if (ch2 != null) {
                H.u(str.indexOf(ch2.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new i(this, str, i10);
        }

        public void C(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
            H.E(appendable);
            H.f0(i10, i10 + i11, bArr.length);
            int i12 = 0;
            H.d(i11 <= this.f66988f.f66981f);
            long j10 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                j10 = (j10 | (bArr[i10 + i13] & 255)) << 8;
            }
            int i14 = ((i11 + 1) * 8) - this.f66988f.f66979d;
            while (i12 < i11 * 8) {
                f fVar = this.f66988f;
                appendable.append(fVar.d(((int) (j10 >>> (i14 - i12))) & fVar.f66978c));
                i12 += this.f66988f.f66979d;
            }
            if (this.f66989g != null) {
                while (i12 < this.f66988f.f66981f * 8) {
                    appendable.append(this.f66989g.charValue());
                    i12 += this.f66988f.f66979d;
                }
            }
        }

        public BaseEncoding D(f fVar, @CheckForNull Character ch2) {
            return new j(fVar, ch2);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return this.f66988f.equals(jVar.f66988f) && B.a(this.f66989g, jVar.f66989g);
        }

        @Override
        public boolean f(CharSequence charSequence) {
            H.E(charSequence);
            CharSequence y10 = y(charSequence);
            if (!this.f66988f.g(y10.length())) {
                return false;
            }
            for (int i10 = 0; i10 < y10.length(); i10++) {
                if (!this.f66988f.b(y10.charAt(i10))) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.f66988f.hashCode() ^ B.b(this.f66989g);
        }

        @Override
        public int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            f fVar;
            H.E(bArr);
            CharSequence y10 = y(charSequence);
            if (!this.f66988f.g(y10.length())) {
                int length = y10.length();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid input length ");
                sb2.append(length);
                throw new DecodingException(sb2.toString());
            }
            int i10 = 0;
            int i11 = 0;
            while (i10 < y10.length()) {
                long j10 = 0;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    fVar = this.f66988f;
                    if (i12 >= fVar.f66980e) {
                        break;
                    }
                    j10 <<= fVar.f66979d;
                    if (i10 + i12 < y10.length()) {
                        j10 |= this.f66988f.c(y10.charAt(i13 + i10));
                        i13++;
                    }
                    i12++;
                }
                int i14 = fVar.f66981f;
                int i15 = (i14 * 8) - (i13 * fVar.f66979d);
                int i16 = (i14 - 1) * 8;
                while (i16 >= i15) {
                    bArr[i11] = (byte) ((j10 >>> i16) & 255);
                    i16 -= 8;
                    i11++;
                }
                i10 += this.f66988f.f66980e;
            }
            return i11;
        }

        @Override
        @v2.c
        public InputStream k(Reader reader) {
            H.E(reader);
            return new b(reader);
        }

        @Override
        public void n(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
            H.E(appendable);
            H.f0(i10, i10 + i11, bArr.length);
            int i12 = 0;
            while (i12 < i11) {
                C(appendable, bArr, i10 + i12, Math.min(this.f66988f.f66981f, i11 - i12));
                i12 += this.f66988f.f66981f;
            }
        }

        @Override
        @v2.c
        public OutputStream p(Writer writer) {
            H.E(writer);
            return new a(writer);
        }

        @Override
        public BaseEncoding s() {
            BaseEncoding baseEncoding = this.f66991i;
            if (baseEncoding == null) {
                f h10 = this.f66988f.h();
                baseEncoding = h10 == this.f66988f ? this : D(h10, this.f66989g);
                this.f66991i = baseEncoding;
            }
            return baseEncoding;
        }

        @Override
        public int t(int i10) {
            return (int) (((this.f66988f.f66979d * i10) + 7) / 8);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("BaseEncoding.");
            sb2.append(this.f66988f.toString());
            if (8 % this.f66988f.f66979d != 0) {
                if (this.f66989g == null) {
                    sb2.append(".omitPadding()");
                } else {
                    sb2.append(".withPadChar('");
                    sb2.append((Object) this.f66989g);
                    sb2.append("')");
                }
            }
            return sb2.toString();
        }

        @Override
        public int u(int i10) {
            f fVar = this.f66988f;
            return fVar.f66980e * E2.f.g(i10, fVar.f66981f, RoundingMode.CEILING);
        }

        @Override
        public BaseEncoding v() {
            return this.f66989g == null ? this : D(this.f66988f, null);
        }

        @Override
        public CharSequence y(CharSequence charSequence) {
            H.E(charSequence);
            Character ch2 = this.f66989g;
            if (ch2 == null) {
                return charSequence;
            }
            char charValue = ch2.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override
        public BaseEncoding z() {
            BaseEncoding baseEncoding = this.f66990h;
            if (baseEncoding == null) {
                f j10 = this.f66988f.j();
                baseEncoding = j10 == this.f66988f ? this : D(j10, this.f66989g);
                this.f66990h = baseEncoding;
            }
            return baseEncoding;
        }

        public j(f fVar, @CheckForNull Character ch2) {
            this.f66988f = (f) H.E(fVar);
            H.u(ch2 == null || !fVar.i(ch2.charValue()), "Padding character %s was already in alphabet", ch2);
            this.f66989g = ch2;
        }

        public class b extends InputStream {

            public int f66997b = 0;

            public int f66998c = 0;

            public int f66999d = 0;

            public boolean f67000e = false;

            public final Reader f67001f;

            public b(Reader reader) {
                this.f67001f = reader;
            }

            @Override
            public void close() throws IOException {
                this.f67001f.close();
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
            
                r1 = r5.f66999d;
                r2 = new java.lang.StringBuilder(41);
                r2.append("Padding cannot start at index ");
                r2.append(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
            
                throw new com.google.common.io.BaseEncoding.DecodingException(r2.toString());
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public int read() throws IOException {
                int i10;
                while (true) {
                    int read = this.f67001f.read();
                    if (read == -1) {
                        if (this.f67000e || j.this.f66988f.g(this.f66999d)) {
                            return -1;
                        }
                        int i11 = this.f66999d;
                        StringBuilder sb2 = new StringBuilder(32);
                        sb2.append("Invalid input length ");
                        sb2.append(i11);
                        throw new DecodingException(sb2.toString());
                    }
                    this.f66999d++;
                    char c10 = (char) read;
                    Character ch2 = j.this.f66989g;
                    if (ch2 != null && ch2.charValue() == c10) {
                        if (this.f67000e || ((i10 = this.f66999d) != 1 && j.this.f66988f.g(i10 - 1))) {
                            this.f67000e = true;
                        }
                    } else if (!this.f67000e) {
                        int i12 = this.f66997b;
                        f fVar = j.this.f66988f;
                        int i13 = i12 << fVar.f66979d;
                        this.f66997b = i13;
                        int c11 = fVar.c(c10) | i13;
                        this.f66997b = c11;
                        int i14 = this.f66998c + j.this.f66988f.f66979d;
                        this.f66998c = i14;
                        if (i14 >= 8) {
                            int i15 = i14 - 8;
                            this.f66998c = i15;
                            return (c11 >> i15) & 255;
                        }
                    } else {
                        int i16 = this.f66999d;
                        StringBuilder sb3 = new StringBuilder(61);
                        sb3.append("Expected padding character but found '");
                        sb3.append(c10);
                        sb3.append("' at index ");
                        sb3.append(i16);
                        throw new DecodingException(sb3.toString());
                    }
                }
            }

            @Override
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                int i12 = i11 + i10;
                H.f0(i10, i12, bArr.length);
                int i13 = i10;
                while (i13 < i12) {
                    int read = read();
                    if (read == -1) {
                        int i14 = i13 - i10;
                        if (i14 == 0) {
                            return -1;
                        }
                        return i14;
                    }
                    bArr[i13] = (byte) read;
                    i13++;
                }
                return i13 - i10;
            }
        }
    }

    public static BaseEncoding a() {
        return f66963e;
    }

    public static BaseEncoding b() {
        return f66961c;
    }

    public static BaseEncoding c() {
        return f66962d;
    }

    public static BaseEncoding d() {
        return f66959a;
    }

    public static BaseEncoding e() {
        return f66960b;
    }

    public static byte[] q(byte[] bArr, int i10) {
        if (i10 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    @v2.c
    public static Reader r(Reader reader, String str) {
        H.E(reader);
        H.E(str);
        return new c(reader, str);
    }

    public static Appendable w(Appendable appendable, String str, int i10) {
        H.E(appendable);
        H.E(str);
        H.d(i10 > 0);
        return new d(i10, appendable, str);
    }

    @v2.c
    public static Writer x(Writer writer, String str, int i10) {
        return new e(w(writer, str, i10), writer);
    }

    public abstract BaseEncoding A(char c10);

    public abstract BaseEncoding B(String str, int i10);

    public abstract boolean f(CharSequence charSequence);

    public final byte[] g(CharSequence charSequence) {
        try {
            return h(charSequence);
        } catch (DecodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public final byte[] h(CharSequence charSequence) throws DecodingException {
        CharSequence y10 = y(charSequence);
        byte[] bArr = new byte[t(y10.length())];
        return q(bArr, i(bArr, y10));
    }

    public abstract int i(byte[] bArr, CharSequence charSequence) throws DecodingException;

    @v2.c
    public final AbstractC2488f j(D2.j jVar) {
        H.E(jVar);
        return new b(jVar);
    }

    @v2.c
    public abstract InputStream k(Reader reader);

    public String l(byte[] bArr) {
        return m(bArr, 0, bArr.length);
    }

    public final String m(byte[] bArr, int i10, int i11) {
        H.f0(i10, i10 + i11, bArr.length);
        StringBuilder sb2 = new StringBuilder(u(i11));
        try {
            n(sb2, bArr, i10, i11);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public abstract void n(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException;

    @v2.c
    public final AbstractC2487e o(D2.i iVar) {
        H.E(iVar);
        return new a(iVar);
    }

    @v2.c
    public abstract OutputStream p(Writer writer);

    public abstract BaseEncoding s();

    public abstract int t(int i10);

    public abstract int u(int i10);

    public abstract BaseEncoding v();

    public CharSequence y(CharSequence charSequence) {
        return (CharSequence) H.E(charSequence);
    }

    public abstract BaseEncoding z();

    public class c extends Reader {

        public final Reader f66968b;

        public final String f66969c;

        public c(Reader reader, String str) {
            this.f66968b = reader;
            this.f66969c = str;
        }

        @Override
        public void close() throws IOException {
            this.f66968b.close();
        }

        @Override
        public int read() throws IOException {
            int read;
            do {
                read = this.f66968b.read();
                if (read == -1) {
                    break;
                }
            } while (this.f66969c.indexOf((char) read) >= 0);
            return read;
        }

        @Override
        public int read(char[] cArr, int i10, int i11) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    public class d implements Appendable {

        public int f66970b;

        public final int f66971c;

        public final Appendable f66972d;

        public final String f66973e;

        public d(int i10, Appendable appendable, String str) {
            this.f66971c = i10;
            this.f66972d = appendable;
            this.f66973e = str;
            this.f66970b = i10;
        }

        @Override
        public Appendable append(char c10) throws IOException {
            if (this.f66970b == 0) {
                this.f66972d.append(this.f66973e);
                this.f66970b = this.f66971c;
            }
            this.f66972d.append(c10);
            this.f66970b--;
            return this;
        }

        @Override
        public Appendable append(@CheckForNull CharSequence charSequence, int i10, int i11) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Appendable append(@CheckForNull CharSequence charSequence) {
            throw new UnsupportedOperationException();
        }
    }
}
