package T0;

import androidx.annotation.NonNull;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

@G0.F
@C0.a
public class n {

    public static final char[] f23847a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};

    public static final char[] f23848b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NonNull
    @C0.a
    public static String a(@NonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i10 = 0;
        for (byte b10 : bArr) {
            char[] cArr2 = f23848b;
            cArr[i10] = cArr2[(b10 & 255) >>> 4];
            cArr[i10 + 1] = cArr2[b10 & 15];
            i10 += 2;
        }
        return new String(cArr);
    }

    @NonNull
    @C0.a
    public static String b(@NonNull byte[] bArr) {
        return c(bArr, false);
    }

    @NonNull
    @C0.a
    public static String c(@NonNull byte[] bArr, boolean z10) {
        int length = bArr.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (int i10 = 0; i10 < length && (!z10 || i10 != length - 1 || (bArr[i10] & 255) != 0); i10++) {
            char[] cArr = f23847a;
            sb2.append(cArr[(bArr[i10] & 240) >>> 4]);
            sb2.append(cArr[bArr[i10] & 15]);
        }
        return sb2.toString();
    }

    @NonNull
    @C0.a
    public static byte[] d(@NonNull String str) throws IllegalArgumentException {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 2;
            bArr[i10 / 2] = (byte) Integer.parseInt(str.substring(i10, i11), 16);
            i10 = i11;
        }
        return bArr;
    }
}
