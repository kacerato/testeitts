package Oi;

import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.crypto.DataLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class F {

    public static final byte[] f20134a = {Opcodes.OPC_iaload, Opcodes.OPC_laload, Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore};

    public static final byte[] f20135b = new byte[128];

    public static final String f20136c = "2y";

    public static final Set<String> f20137d;

    static {
        HashSet hashSet = new HashSet();
        f20137d = hashSet;
        hashSet.add("2");
        hashSet.add("2x");
        hashSet.add("2a");
        hashSet.add(f20136c);
        hashSet.add("2b");
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = f20135b;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = -1;
            i11++;
        }
        while (true) {
            byte[] bArr2 = f20134a;
            if (i10 >= bArr2.length) {
                return;
            }
            f20135b[bArr2[i10]] = (byte) i10;
            i10++;
        }
    }

    public static boolean a(String str, byte[] bArr) {
        if (bArr != null) {
            return e(str, org.bouncycastle.util.a.p(bArr));
        }
        throw new IllegalArgumentException("Missing password.");
    }

    public static boolean b(String str, char[] cArr) {
        if (cArr != null) {
            return e(str, org.bouncycastle.util.w.o(cArr));
        }
        throw new IllegalArgumentException("Missing password.");
    }

    public static String c(String str, byte[] bArr, byte[] bArr2, int i10) {
        String num;
        if (!f20137d.contains(str)) {
            throw new IllegalArgumentException("Version " + str + " is not accepted by this implementation.");
        }
        StringBuilder sb2 = new StringBuilder(60);
        sb2.append('$');
        sb2.append(str);
        sb2.append('$');
        if (i10 < 10) {
            num = "0" + i10;
        } else {
            num = Integer.toString(i10);
        }
        sb2.append(num);
        sb2.append('$');
        g(sb2, bArr2);
        g(sb2, C2926b.e(bArr, bArr2, i10));
        return sb2.toString();
    }

    public static byte[] d(String str) {
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16);
        if (charArray.length != 22) {
            throw new DataLengthException("Invalid base64 salt length: " + charArray.length + " , 22 required.");
        }
        for (char c10 : charArray) {
            if (c10 > 'z' || c10 < '.' || (c10 > '9' && c10 < 'A')) {
                throw new IllegalArgumentException("Salt string contains invalid character: " + ((int) c10));
            }
        }
        char[] cArr = new char[24];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        for (int i10 = 0; i10 < 24; i10 += 4) {
            byte[] bArr = f20135b;
            byte b10 = bArr[cArr[i10]];
            byte b11 = bArr[cArr[i10 + 1]];
            byte b12 = bArr[cArr[i10 + 2]];
            byte b13 = bArr[cArr[i10 + 3]];
            byteArrayOutputStream.write((b10 << 2) | (b11 >> 4));
            byteArrayOutputStream.write((b11 << 4) | (b12 >> 2));
            byteArrayOutputStream.write(b13 | (b12 << 6));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr2 = new byte[16];
        System.arraycopy(byteArray, 0, bArr2, 0, 16);
        return bArr2;
    }

    public static boolean e(String str, byte[] bArr) {
        String substring;
        if (str == null) {
            throw new IllegalArgumentException("Missing bcryptString.");
        }
        if (str.charAt(1) != '2') {
            throw new IllegalArgumentException("not a Bcrypt string");
        }
        int length = str.length();
        if (length != 60 && (length != 59 || str.charAt(2) != '$')) {
            throw new DataLengthException("Bcrypt String length: " + length + ", 60 required.");
        }
        int i10 = 3;
        if (str.charAt(2) == '$') {
            if (str.charAt(0) != '$' || str.charAt(5) != '$') {
                throw new IllegalArgumentException("Invalid Bcrypt String format.");
            }
        } else if (str.charAt(0) != '$' || str.charAt(3) != '$' || str.charAt(6) != '$') {
            throw new IllegalArgumentException("Invalid Bcrypt String format.");
        }
        if (str.charAt(2) == '$') {
            substring = str.substring(1, 2);
        } else {
            substring = str.substring(1, 3);
            i10 = 4;
        }
        if (!f20137d.contains(substring)) {
            throw new IllegalArgumentException("Bcrypt version '" + substring + "' is not supported by this implementation");
        }
        String substring2 = str.substring(i10, i10 + 2);
        try {
            int parseInt = Integer.parseInt(substring2);
            if (parseInt >= 4 && parseInt <= 31) {
                return org.bouncycastle.util.w.b(str, f(substring, bArr, d(str.substring(str.lastIndexOf(36) + 1, length - 31)), parseInt));
            }
            throw new IllegalArgumentException("Invalid cost factor: " + parseInt + ", 4 < cost < 31 expected.");
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("Invalid cost factor: " + substring2);
        }
    }

    public static String f(String str, byte[] bArr, byte[] bArr2, int i10) {
        if (!f20137d.contains(str)) {
            throw new IllegalArgumentException("Version " + str + " is not accepted by this implementation.");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("Salt required.");
        }
        if (bArr2.length != 16) {
            throw new DataLengthException("16 byte salt required: " + bArr2.length);
        }
        if (i10 < 4 || i10 > 31) {
            throw new IllegalArgumentException("Invalid cost factor.");
        }
        int length = bArr.length < 72 ? bArr.length + 1 : 72;
        byte[] bArr3 = new byte[length];
        if (length > bArr.length) {
            length = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr3, 0, length);
        org.bouncycastle.util.a.e0(bArr, (byte) 0);
        String c10 = c(str, bArr3, bArr2, i10);
        org.bouncycastle.util.a.e0(bArr3, (byte) 0);
        return c10;
    }

    public static void g(StringBuilder sb2, byte[] bArr) {
        boolean z10;
        if (bArr.length != 24 && bArr.length != 16) {
            throw new DataLengthException("Invalid length: " + bArr.length + ", 24 for key or 16 for salt expected");
        }
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[18];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
            z10 = true;
        } else {
            bArr[bArr.length - 1] = 0;
            z10 = false;
        }
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int i11 = bArr[i10] & 255;
            int i12 = bArr[i10 + 1] & 255;
            byte b10 = bArr[i10 + 2];
            byte[] bArr3 = f20134a;
            sb2.append((char) bArr3[(i11 >>> 2) & 63]);
            sb2.append((char) bArr3[((i11 << 4) | (i12 >>> 4)) & 63]);
            sb2.append((char) bArr3[((i12 << 2) | ((b10 & 255) >>> 6)) & 63]);
            sb2.append((char) bArr3[b10 & Opcodes.OPC_lstore_0]);
        }
        int length2 = sb2.length();
        sb2.setLength(z10 ? length2 - 2 : length2 - 1);
    }

    public static String h(String str, byte[] bArr, byte[] bArr2, int i10) {
        if (bArr != null) {
            return f(str, org.bouncycastle.util.a.p(bArr), bArr2, i10);
        }
        throw new IllegalArgumentException("Password required.");
    }

    public static String i(String str, char[] cArr, byte[] bArr, int i10) {
        if (cArr != null) {
            return f(str, org.bouncycastle.util.w.o(cArr), bArr, i10);
        }
        throw new IllegalArgumentException("Password required.");
    }

    public static String j(byte[] bArr, byte[] bArr2, int i10) {
        return h(f20136c, bArr, bArr2, i10);
    }

    public static String k(char[] cArr, byte[] bArr, int i10) {
        return i(f20136c, cArr, bArr, i10);
    }
}
