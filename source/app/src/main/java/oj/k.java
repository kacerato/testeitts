package Oj;

import Xi.C3335c;
import Xi.O0;
import Xi.P;
import Xi.R0;
import Xi.T;
import org.bouncycastle.util.w;

public class k {
    public static String a(byte[] bArr) {
        return new org.bouncycastle.util.i(bArr).toString();
    }

    public static boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return !b(bArr, bArr);
        }
        int i10 = 0;
        for (int i11 = 0; i11 != bArr.length; i11++) {
            i10 |= bArr[i11] ^ bArr2[i11];
        }
        return i10 == 0;
    }

    public static String c(String str, String str2, C3335c c3335c) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        byte[] encoded = c3335c instanceof R0 ? ((R0) c3335c).getEncoded() : c3335c instanceof T ? ((T) c3335c).getEncoded() : c3335c instanceof O0 ? ((O0) c3335c).getEncoded() : ((P) c3335c).getEncoded();
        stringBuffer.append(str2);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        stringBuffer.append(" [");
        stringBuffer.append(a(encoded));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("    public data: ");
        stringBuffer.append(em.h.j(encoded));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }
}
