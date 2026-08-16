package Ah;

import java.io.UnsupportedEncodingException;

public class f {

    public static final String f620d = "ISO-8859-1";

    public String f621a;

    public String f622b;

    public String f623c;

    public f(String str, String str2, String str3) {
        this.f621a = str;
        this.f622b = str2;
        this.f623c = str3;
    }

    public String a() {
        return this.f621a;
    }

    public byte[] b() {
        try {
            return (this.f621a + this.f622b + this.f623c).getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException(e10.toString());
        }
    }

    public String c() {
        return this.f622b;
    }

    public String d() {
        return this.f623c;
    }

    public f(byte[] bArr) {
        try {
            String str = new String(bArr, "ISO-8859-1");
            this.f621a = str.substring(0, 2);
            this.f622b = str.substring(2, str.length() - 5);
            this.f623c = str.substring(str.length() - 5);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException(e10.toString());
        }
    }
}
