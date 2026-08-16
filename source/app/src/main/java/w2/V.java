package w2;

import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b(emulated = true)
@InterfaceC15800a
public final class V {
    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < '\u0080') {
            i10++;
        }
        int i11 = length;
        while (true) {
            if (i10 < length) {
                char charAt = charSequence.charAt(i10);
                if (charAt >= '\u0800') {
                    i11 += b(charSequence, i10);
                    break;
                }
                i11 += ('\u007f' - charAt) >>> 31;
                i10++;
            } else {
                break;
            }
        }
        if (i11 >= length) {
            return i11;
        }
        long j10 = i11 + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int b(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt < '\u0800') {
                i11 += ('\u007f' - charAt) >>> 31;
            } else {
                i11 += 2;
                if ('\ud800' <= charAt && charAt <= '\udfff') {
                    if (Character.codePointAt(charSequence, i10) == charAt) {
                        throw new IllegalArgumentException(f(i10));
                    }
                    i10++;
                }
            }
            i10++;
        }
        return i11;
    }

    public static boolean c(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    public static boolean d(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        H.f0(i10, i12, bArr.length);
        while (i10 < i12) {
            if (bArr[i10] < 0) {
                return e(bArr, i10, i12);
            }
            i10++;
        }
        return true;
    }

    public static boolean e(byte[] bArr, int i10, int i11) {
        byte b10;
        while (i10 < i11) {
            int i12 = i10 + 1;
            byte b11 = bArr[i10];
            if (b11 < 0) {
                if (b11 < -32) {
                    if (i12 != i11 && b11 >= -62) {
                        i10 += 2;
                        if (bArr[i12] > -65) {
                        }
                    }
                    return false;
                }
                if (b11 < -16) {
                    int i13 = i10 + 2;
                    if (i13 < i11 && (b10 = bArr[i12]) <= -65 && ((b11 != -32 || b10 >= -96) && (b11 != -19 || -96 > b10))) {
                        i10 += 3;
                        if (bArr[i13] > -65) {
                        }
                    }
                    return false;
                }
                if (i10 + 3 >= i11) {
                    return false;
                }
                int i14 = i10 + 2;
                byte b12 = bArr[i12];
                if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                    int i15 = i10 + 3;
                    if (bArr[i14] <= -65) {
                        i10 += 4;
                        if (bArr[i15] > -65) {
                        }
                    }
                }
                return false;
            }
            i10 = i12;
        }
        return true;
    }

    public static String f(int i10) {
        StringBuilder sb2 = new StringBuilder(39);
        sb2.append("Unpaired surrogate at index ");
        sb2.append(i10);
        return sb2.toString();
    }
}
