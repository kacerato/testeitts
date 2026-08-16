package Ah;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.eclipse.jdt.core.Signature;

public class m {

    public byte[] f776a;

    public m(String str) {
        this.f776a = a(str);
    }

    public final byte[] a(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[6];
        for (int i10 = 0; i10 != 6; i10++) {
            bArr[i10] = (byte) (charArray[i10] - '0');
        }
        return bArr;
    }

    public Date b() throws ParseException {
        return new SimpleDateFormat("yyyyMMdd").parse("20" + toString());
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f776a);
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            return org.bouncycastle.util.a.g(this.f776a, ((m) obj).f776a);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f776a);
    }

    public String toString() {
        int length = this.f776a.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 != length; i10++) {
            cArr[i10] = (char) ((this.f776a[i10] & 255) + 48);
        }
        return new String(cArr);
    }

    public m(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f776a = a(simpleDateFormat.format(date));
    }

    public m(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f776a = a(simpleDateFormat.format(date));
    }

    public m(byte[] bArr) {
        this.f776a = bArr;
    }
}
