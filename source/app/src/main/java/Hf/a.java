package Hf;

import ag.C3623e;
import ag.C3625g;
import java.nio.charset.Charset;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import nf.T0;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14967d;

@T0(markerClass = {f.class})
@InterfaceC14422l0(version = "2.2")
public class a {

    public static final int f8418g = 8;

    public static final int f8419h = 6;

    public static final int f8420i = 3;

    public static final int f8421j = 4;

    public static final byte f8422k = 61;

    public static final int f8423l = 76;

    public static final int f8424m = 64;

    @NotNull
    public static final a f8426o;

    @NotNull
    public static final a f8427p;

    @NotNull
    public static final a f8428q;

    public final boolean f8429a;

    public final boolean f8430b;

    public final int f8431c;

    @NotNull
    public final b f8432d;

    public final int f8433e;

    @NotNull
    public static final C0183a f8417f = new C0183a(null);

    @NotNull
    public static final byte[] f8425n = {13, 10};

    public static final class C0183a extends a {
        public C0183a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final a M() {
            return a.f8427p;
        }

        @NotNull
        public final byte[] N() {
            return a.f8425n;
        }

        @NotNull
        public final a O() {
            return a.f8428q;
        }

        @NotNull
        public final a P() {
            return a.f8426o;
        }

        public C0183a() {
            super(false, false, -1, b.PRESENT, null);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @InterfaceC14422l0(version = "2.0")
    public static final class b {
        private static final Cf.a $ENTRIES;
        private static final b[] $VALUES;
        public static final b PRESENT = new b("PRESENT", 0);
        public static final b ABSENT = new b("ABSENT", 1);
        public static final b PRESENT_OPTIONAL = new b("PRESENT_OPTIONAL", 2);
        public static final b ABSENT_OPTIONAL = new b("ABSENT_OPTIONAL", 3);

        static {
            b[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public b(String str, int i10) {
        }

        public static final b[] a() {
            return new b[]{PRESENT, ABSENT, PRESENT_OPTIONAL, ABSENT_OPTIONAL};
        }

        @NotNull
        public static Cf.a<b> b() {
            return $ENTRIES;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    static {
        b bVar = b.PRESENT;
        f8426o = new a(true, false, -1, bVar);
        f8427p = new a(false, true, 76, bVar);
        f8428q = new a(false, true, 64, bVar);
    }

    public a(boolean z10, boolean z11, int i10, b bVar, C14026x c14026x) {
        this(z10, z11, i10, bVar);
    }

    public static Appendable A(a aVar, byte[] bArr, Appendable appendable, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToAppendable");
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = bArr.length;
        }
        return aVar.z(bArr, appendable, i10, i11);
    }

    public static byte[] C(a aVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return aVar.B(bArr, i10, i11);
    }

    public static byte[] l(a aVar, CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = charSequence.length();
        }
        return aVar.j(charSequence, i10, i11);
    }

    public static byte[] m(a aVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return aVar.k(bArr, i10, i11);
    }

    public static int q(a aVar, CharSequence charSequence, byte[] bArr, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = charSequence.length();
        }
        return aVar.o(charSequence, bArr, i14, i15, i12);
    }

    public static int r(a aVar, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return aVar.p(bArr, bArr2, i14, i15, i12);
    }

    public static String u(a aVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return aVar.t(bArr, i10, i11);
    }

    public static int w(a aVar, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
        }
        int i14 = (i13 & 4) != 0 ? 0 : i10;
        int i15 = (i13 & 8) != 0 ? 0 : i11;
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return aVar.v(bArr, bArr2, i14, i15, i12);
    }

    @NotNull
    public final byte[] B(@NotNull byte[] source, int i10, int i11) {
        M.p(source, "source");
        return D(source, i10, i11);
    }

    @NotNull
    public final byte[] D(@NotNull byte[] source, int i10, int i11) {
        M.p(source, "source");
        i(source.length, i10, i11);
        byte[] bArr = new byte[y(i11 - i10)];
        x(source, bArr, 0, i10, i11);
        return bArr;
    }

    public final int E() {
        return this.f8431c;
    }

    @NotNull
    public final b F() {
        return this.f8432d;
    }

    public final int G(byte[] bArr, int i10, int i11, int i12) {
        if (i12 == -8) {
            throw new IllegalArgumentException("Redundant pad character at index " + i10);
        }
        if (i12 == -6) {
            h(i10);
        } else if (i12 == -4) {
            h(i10);
            i10 = K(bArr, i10 + 1, i11);
            if (i10 == i11 || bArr[i10] != 61) {
                throw new IllegalArgumentException("Missing one pad character at index " + i10);
            }
        } else if (i12 != -2) {
            throw new IllegalStateException("Unreachable");
        }
        return i10 + 1;
    }

    public final boolean H() {
        return this.f8430b;
    }

    public final boolean I() {
        return this.f8429a;
    }

    public final boolean J() {
        b bVar = this.f8432d;
        return bVar == b.PRESENT || bVar == b.PRESENT_OPTIONAL;
    }

    public final int K(byte[] bArr, int i10, int i11) {
        if (!this.f8430b) {
            return i10;
        }
        while (i10 < i11) {
            if (c.a()[bArr[i10] & 255] != -1) {
                return i10;
            }
            i10++;
        }
        return i10;
    }

    @InterfaceC14422l0(version = "2.0")
    @NotNull
    public final a L(@NotNull b option) {
        M.p(option, "option");
        return this.f8432d == option ? this : new a(this.f8429a, this.f8430b, this.f8431c, option);
    }

    @NotNull
    public final String e(@NotNull byte[] source) {
        M.p(source, "source");
        StringBuilder sb2 = new StringBuilder(source.length);
        for (byte b10 : source) {
            sb2.append((char) b10);
        }
        return sb2.toString();
    }

    @NotNull
    public final byte[] f(@NotNull CharSequence source, int i10, int i11) {
        M.p(source, "source");
        i(source.length(), i10, i11);
        byte[] bArr = new byte[i11 - i10];
        int i12 = 0;
        while (i10 < i11) {
            char charAt = source.charAt(i10);
            if (charAt <= '\u00ff') {
                bArr[i12] = (byte) charAt;
                i12++;
            } else {
                bArr[i12] = Opcodes.OPC_lstore_0;
                i12++;
            }
            i10++;
        }
        return bArr;
    }

    public final void g(int i10, int i11, int i12) {
        if (i11 < 0 || i11 > i10) {
            throw new IndexOutOfBoundsException("destination offset: " + i11 + ", destination size: " + i10);
        }
        int i13 = i11 + i12;
        if (i13 < 0 || i13 > i10) {
            throw new IndexOutOfBoundsException("The destination array does not have enough capacity, destination offset: " + i11 + ", destination size: " + i10 + ", capacity needed: " + i12);
        }
    }

    public final void h(int i10) {
        if (this.f8432d != b.ABSENT) {
            return;
        }
        throw new IllegalArgumentException("The padding option is set to ABSENT, but the input has a pad character at index " + i10);
    }

    public final void i(int i10, int i11, int i12) {
        AbstractC14967d.f103841b.a(i11, i12, i10);
    }

    @NotNull
    public final byte[] j(@NotNull CharSequence source, int i10, int i11) {
        byte[] f10;
        M.p(source, "source");
        if (source instanceof String) {
            String str = (String) source;
            i(str.length(), i10, i11);
            String substring = str.substring(i10, i11);
            M.o(substring, "substring(...)");
            Charset charset = C3625g.f32091g;
            M.n(substring, "null cannot be cast to non-null type java.lang.String");
            f10 = substring.getBytes(charset);
            M.o(f10, "getBytes(...)");
        } else {
            f10 = f(source, i10, i11);
        }
        return m(this, f10, 0, 0, 6, null);
    }

    @NotNull
    public final byte[] k(@NotNull byte[] source, int i10, int i11) {
        M.p(source, "source");
        i(source.length, i10, i11);
        int s10 = s(source, i10, i11);
        byte[] bArr = new byte[s10];
        if (n(source, bArr, 0, i10, i11) == s10) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d0, code lost:
    
        if (r7 == (-2)) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d3, code lost:
    
        if (r7 == (-8)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d5, code lost:
    
        if (r4 != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00db, code lost:
    
        if (r18.f8432d == Hf.a.b.PRESENT) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e5, code lost:
    
        throw new java.lang.IllegalArgumentException("The padding option is set to PRESENT, but the input is not properly padded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e6, code lost:
    
        if (r8 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e8, code lost:
    
        r3 = K(r19, r6, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ec, code lost:
    
        if (r3 < r23) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        return r9 - r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f1, code lost:
    
        r1 = r19[r3] & 255;
        r4 = new java.lang.StringBuilder();
        r4.append("Symbol '");
        r4.append((char) r1);
        r4.append("'(");
        r1 = java.lang.Integer.toString(r1, ag.C3623e.a(8));
        kotlin.jvm.internal.M.o(r1, "toString(...)");
        r4.append(r1);
        r4.append(") at index ");
        r4.append(r3 - 1);
        r4.append(" is prohibited after the pad character");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012c, code lost:
    
        throw new java.lang.IllegalArgumentException(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0134, code lost:
    
        throw new java.lang.IllegalArgumentException("The pad bits must be zeros");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x013c, code lost:
    
        throw new java.lang.IllegalArgumentException("The last unit of input does not have enough bits");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int n(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        boolean z10;
        int[] c10 = this.f8429a ? c.c() : c.a();
        int i13 = -8;
        int i14 = i10;
        int i15 = i11;
        int i16 = -8;
        int i17 = 0;
        while (true) {
            if (i15 >= i12) {
                z10 = false;
                break;
            }
            if (i16 == i13 && i15 + 3 < i12) {
                int i18 = i15 + 4;
                int i19 = (c10[bArr[i15 + 1] & 255] << 12) | (c10[bArr[i15] & 255] << 18) | (c10[bArr[i15 + 2] & 255] << 6) | c10[bArr[i15 + 3] & 255];
                if (i19 >= 0) {
                    bArr2[i14] = (byte) (i19 >> 16);
                    int i20 = i14 + 2;
                    bArr2[i14 + 1] = (byte) (i19 >> 8);
                    i14 += 3;
                    bArr2[i20] = (byte) i19;
                    i15 = i18;
                    i13 = -8;
                }
            }
            int i21 = bArr[i15] & 255;
            int i22 = c10[i21];
            if (i22 >= 0) {
                i15++;
                i17 = (i17 << 6) | i22;
                int i23 = i16 + 6;
                if (i23 >= 0) {
                    bArr2[i14] = (byte) (i17 >>> i23);
                    i17 &= (1 << i23) - 1;
                    i16 -= 2;
                    i14++;
                } else {
                    i16 = i23;
                }
            } else {
                if (i22 == -2) {
                    i15 = G(bArr, i15, i12, i16);
                    z10 = true;
                    break;
                }
                if (!this.f8430b) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Invalid symbol '");
                    sb2.append((char) i21);
                    sb2.append("'(");
                    String num = Integer.toString(i21, C3623e.a(8));
                    M.o(num, "toString(...)");
                    sb2.append(num);
                    sb2.append(") at index ");
                    sb2.append(i15);
                    throw new IllegalArgumentException(sb2.toString());
                }
                i15++;
            }
            i13 = -8;
        }
    }

    public final int o(@NotNull CharSequence source, @NotNull byte[] destination, int i10, int i11, int i12) {
        byte[] f10;
        M.p(source, "source");
        M.p(destination, "destination");
        if (source instanceof String) {
            String str = (String) source;
            i(str.length(), i11, i12);
            String substring = str.substring(i11, i12);
            M.o(substring, "substring(...)");
            Charset charset = C3625g.f32091g;
            M.n(substring, "null cannot be cast to non-null type java.lang.String");
            f10 = substring.getBytes(charset);
            M.o(f10, "getBytes(...)");
        } else {
            f10 = f(source, i11, i12);
        }
        return r(this, f10, destination, i10, 0, 0, 24, null);
    }

    public final int p(@NotNull byte[] source, @NotNull byte[] destination, int i10, int i11, int i12) {
        M.p(source, "source");
        M.p(destination, "destination");
        i(source.length, i11, i12);
        g(destination.length, i10, s(source, i11, i12));
        return n(source, destination, i10, i11, i12);
    }

    public final int s(@NotNull byte[] source, int i10, int i11) {
        M.p(source, "source");
        int i12 = i11 - i10;
        if (i12 == 0) {
            return 0;
        }
        if (i12 == 1) {
            throw new IllegalArgumentException("Input should have at least 2 symbols for Base64 decoding, startIndex: " + i10 + ", endIndex: " + i11);
        }
        if (this.f8430b) {
            while (true) {
                if (i10 >= i11) {
                    break;
                }
                int i13 = c.a()[source[i10] & 255];
                if (i13 < 0) {
                    if (i13 == -2) {
                        i12 -= i11 - i10;
                        break;
                    }
                    i12--;
                }
                i10++;
            }
        } else if (source[i11 - 1] == 61) {
            i12 = source[i11 + (-2)] == 61 ? i12 - 2 : i12 - 1;
        }
        return (int) ((i12 * 6) / 8);
    }

    @NotNull
    public final String t(@NotNull byte[] source, int i10, int i11) {
        M.p(source, "source");
        return new String(D(source, i10, i11), C3625g.f32091g);
    }

    public final int v(@NotNull byte[] source, @NotNull byte[] destination, int i10, int i11, int i12) {
        M.p(source, "source");
        M.p(destination, "destination");
        return x(source, destination, i10, i11, i12);
    }

    public final int x(@NotNull byte[] source, @NotNull byte[] destination, int i10, int i11, int i12) {
        int i13 = i11;
        M.p(source, "source");
        M.p(destination, "destination");
        i(source.length, i13, i12);
        g(destination.length, i10, y(i12 - i13));
        byte[] d10 = this.f8429a ? c.d() : c.b();
        int i14 = this.f8430b ? this.f8433e : Integer.MAX_VALUE;
        int i15 = i10;
        while (i13 + 2 < i12) {
            int min = Math.min((i12 - i13) / 3, i14);
            for (int i16 = 0; i16 < min; i16++) {
                int i17 = source[i13] & 255;
                int i18 = i13 + 2;
                int i19 = source[i13 + 1] & 255;
                i13 += 3;
                int i20 = (i19 << 8) | (i17 << 16) | (source[i18] & 255);
                destination[i15] = d10[i20 >>> 18];
                destination[i15 + 1] = d10[(i20 >>> 12) & 63];
                int i21 = i15 + 3;
                destination[i15 + 2] = d10[(i20 >>> 6) & 63];
                i15 += 4;
                destination[i21] = d10[i20 & 63];
            }
            if (min == i14 && i13 != i12) {
                int i22 = i15 + 1;
                byte[] bArr = f8425n;
                destination[i15] = bArr[0];
                i15 += 2;
                destination[i22] = bArr[1];
            }
        }
        int i23 = i12 - i13;
        if (i23 == 1) {
            int i24 = i13 + 1;
            int i25 = (source[i13] & 255) << 4;
            destination[i15] = d10[i25 >>> 6];
            int i26 = i15 + 2;
            destination[i15 + 1] = d10[i25 & 63];
            if (J()) {
                int i27 = i15 + 3;
                destination[i26] = 61;
                i15 += 4;
                destination[i27] = 61;
                i13 = i24;
            } else {
                i13 = i24;
                i15 = i26;
            }
        } else if (i23 == 2) {
            int i28 = i13 + 1;
            int i29 = source[i13] & 255;
            i13 += 2;
            int i30 = ((source[i28] & 255) << 2) | (i29 << 10);
            destination[i15] = d10[i30 >>> 12];
            destination[i15 + 1] = d10[(i30 >>> 6) & 63];
            int i31 = i15 + 3;
            destination[i15 + 2] = d10[i30 & 63];
            if (J()) {
                i15 += 4;
                destination[i31] = 61;
            } else {
                i15 = i31;
            }
        }
        if (i13 == i12) {
            return i15 - i10;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int y(int i10) {
        int i11 = i10 / 3;
        int i12 = i10 % 3;
        int i13 = i11 * 4;
        if (i12 != 0) {
            i13 += J() ? 4 : i12 + 1;
        }
        if (i13 < 0) {
            throw new IllegalArgumentException("Input is too big");
        }
        if (this.f8430b) {
            i13 += ((i13 - 1) / this.f8431c) * 2;
        }
        if (i13 >= 0) {
            return i13;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    @InterfaceC14394D
    @NotNull
    public final <A extends Appendable> A z(@NotNull byte[] source, @NotNull A destination, int i10, int i11) {
        M.p(source, "source");
        M.p(destination, "destination");
        destination.append(new String(D(source, i10, i11), C3625g.f32091g));
        return destination;
    }

    public a(boolean z10, boolean z11, int i10, b bVar) {
        this.f8429a = z10;
        this.f8430b = z11;
        this.f8431c = i10;
        this.f8432d = bVar;
        if (z10 && z11) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.f8433e = i10 / 4;
    }
}
