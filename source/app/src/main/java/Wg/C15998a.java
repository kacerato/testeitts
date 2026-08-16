package wg;

public class C15998a {

    public static final String f127460a = "0123456789ABCDEF";

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            int i10 = (b10 + 256) % 256;
            stringBuffer.append("0123456789ABCDEF".charAt((i10 / 16) & 15));
            stringBuffer.append("0123456789ABCDEF".charAt((i10 % 16) & 15));
        }
        return stringBuffer.toString();
    }

    public static int b(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'A' && c10 <= 'F') {
            return c10 - '7';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        throw new IllegalArgumentException("Input string may only contain hex digits, but found '" + c10 + "'");
    }

    public static byte[] c(String str) {
        if (str == null) {
            str = "";
        } else if (str.length() % 2 != 0) {
            str = "0" + str;
        }
        byte[] bArr = new byte[str.length() / 2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < str.length()) {
            int i12 = i10 + 1;
            char charAt = str.charAt(i10);
            i10 += 2;
            bArr[i11] = (byte) ((b(charAt) * 16) + b(str.charAt(i12)));
            i11++;
        }
        return bArr;
    }
}
