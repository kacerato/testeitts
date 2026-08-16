package Tg;

import java.io.UnsupportedEncodingException;
import org.apache.commons.lang3.CharEncoding;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class C3088b {

    public static final byte[] f24980a = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_aload_1, Opcodes.OPC_laload};

    public static final byte[] f24981b = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_aload_3, Opcodes.OPC_swap};

    public static byte[] a(String str) {
        int i10;
        char charAt;
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i11 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i11];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            char charAt2 = str.charAt(i15);
            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                i10 = charAt2 - 'A';
            } else if (charAt2 >= 'a' && charAt2 <= 'z') {
                i10 = charAt2 - 'G';
            } else if (charAt2 >= '0' && charAt2 <= '9') {
                i10 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i10 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i10 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i13 = (i13 << 6) | ((byte) i10);
            i12++;
            if (i12 % 4 == 0) {
                bArr[i14] = (byte) (i13 >> 16);
                int i16 = i14 + 2;
                bArr[i14 + 1] = (byte) (i13 >> 8);
                i14 += 3;
                bArr[i16] = (byte) i13;
            }
        }
        int i17 = i12 % 4;
        if (i17 == 1) {
            return null;
        }
        if (i17 == 2) {
            bArr[i14] = (byte) ((i13 << 12) >> 16);
            i14++;
        } else if (i17 == 3) {
            int i18 = i13 << 6;
            int i19 = i14 + 1;
            bArr[i14] = (byte) (i18 >> 16);
            i14 += 2;
            bArr[i19] = (byte) (i18 >> 8);
        }
        if (i14 == i11) {
            return bArr;
        }
        byte[] bArr2 = new byte[i14];
        System.arraycopy(bArr, 0, bArr2, 0, i14);
        return bArr2;
    }

    public static String b(byte[] bArr) {
        return c(bArr, f24980a);
    }

    public static String c(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            bArr3[i10] = bArr2[(bArr[i11] & 255) >> 2];
            int i12 = i11 + 1;
            bArr3[i10 + 1] = bArr2[((bArr[i11] & 3) << 4) | ((bArr[i12] & 255) >> 4)];
            int i13 = i10 + 3;
            int i14 = (bArr[i12] & 15) << 2;
            int i15 = i11 + 2;
            bArr3[i10 + 2] = bArr2[i14 | ((bArr[i15] & 255) >> 6)];
            i10 += 4;
            bArr3[i13] = bArr2[bArr[i15] & Opcodes.OPC_lstore_0];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            bArr3[i10 + 1] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i10 + 2] = 61;
            bArr3[i10 + 3] = 61;
        } else if (length2 == 2) {
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            int i16 = (bArr[length] & 3) << 4;
            int i17 = length + 1;
            bArr3[i10 + 1] = bArr2[((bArr[i17] & 255) >> 4) | i16];
            bArr3[i10 + 2] = bArr2[(bArr[i17] & 15) << 2];
            bArr3[i10 + 3] = 61;
        }
        try {
            return new String(bArr3, CharEncoding.US_ASCII);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    public static String d(byte[] bArr) {
        return c(bArr, f24981b);
    }
}
