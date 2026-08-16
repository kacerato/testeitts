package oh;

import com.google.android.material.timepicker.ChipTextInputComboView;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.eclipse.jdt.core.Signature;

public class C14530n extends B {

    public static final T f98914c = new a(C14530n.class, 24);

    public final byte[] f98915b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C14530n.H(c02.H());
        }
    }

    public C14530n(String str) {
        this.f98915b = org.bouncycastle.util.w.j(str);
        try {
            I();
        } catch (ParseException e10) {
            throw new IllegalArgumentException("invalid date string: " + e10.getMessage());
        }
    }

    public static C14530n H(byte[] bArr) {
        return new C14530n(bArr);
    }

    public static C14530n J(Object obj) {
        if (obj == null || (obj instanceof C14530n)) {
            return (C14530n) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14530n) {
                return (C14530n) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (C14530n) f98914c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static C14530n K(M m10, boolean z10) {
        return (C14530n) f98914c.f(m10, z10);
    }

    @Override
    public B C() {
        return new C14548w0(this.f98915b);
    }

    public final SimpleDateFormat E() {
        SimpleDateFormat simpleDateFormat = N() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : P() ? new SimpleDateFormat("yyyyMMddHHmmssz") : O() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        return simpleDateFormat;
    }

    public final String F(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = "+";
        }
        int i10 = rawOffset / 3600000;
        int i11 = (rawOffset - (3600000 * i10)) / 60000;
        try {
            if (timeZone.useDaylightTime()) {
                if (N()) {
                    str = R(str);
                }
                if (timeZone.inDaylightTime(E().parse(str + "GMT" + str2 + G(i10) + b3.s.f32937c + G(i11)))) {
                    i10 += str2.equals("+") ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + G(i10) + b3.s.f32937c + G(i11);
    }

    public final String G(int i10) {
        if (i10 >= 10) {
            return Integer.toString(i10);
        }
        return "0" + i10;
    }

    public Date I() throws ParseException {
        SimpleDateFormat E10;
        String c10 = org.bouncycastle.util.w.c(this.f98915b);
        if (c10.endsWith(Signature.SIG_BOOLEAN)) {
            E10 = N() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'", h1.f98891b) : P() ? new SimpleDateFormat("yyyyMMddHHmmss'Z'", h1.f98891b) : O() ? new SimpleDateFormat("yyyyMMddHHmm'Z'", h1.f98891b) : new SimpleDateFormat("yyyyMMddHH'Z'", h1.f98891b);
            E10.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        } else if (c10.indexOf(45) > 0 || c10.indexOf(43) > 0) {
            c10 = L();
            E10 = E();
        } else {
            E10 = N() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : P() ? new SimpleDateFormat("yyyyMMddHHmmss") : O() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            E10.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (N()) {
            c10 = R(c10);
        }
        return E10.parse(c10);
    }

    public String L() {
        String c10 = org.bouncycastle.util.w.c(this.f98915b);
        if (c10.charAt(c10.length() - 1) == 'Z') {
            return c10.substring(0, c10.length() - 1) + "GMT+00:00";
        }
        int length = c10.length();
        char charAt = c10.charAt(length - 6);
        if ((charAt == '-' || charAt == '+') && c10.indexOf("GMT") == length - 9) {
            return c10;
        }
        int length2 = c10.length();
        int i10 = length2 - 5;
        char charAt2 = c10.charAt(i10);
        if (charAt2 == '-' || charAt2 == '+') {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c10.substring(0, i10));
            sb2.append("GMT");
            int i11 = length2 - 2;
            sb2.append(c10.substring(i10, i11));
            sb2.append(b3.s.f32937c);
            sb2.append(c10.substring(i11));
            return sb2.toString();
        }
        int length3 = c10.length() - 3;
        char charAt3 = c10.charAt(length3);
        if (charAt3 != '-' && charAt3 != '+') {
            return c10 + F(c10);
        }
        return c10.substring(0, length3) + "GMT" + c10.substring(length3) + ":00";
    }

    public String M() {
        return org.bouncycastle.util.w.c(this.f98915b);
    }

    public boolean N() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f98915b;
            if (i10 == bArr.length) {
                return false;
            }
            if (bArr[i10] == 46 && i10 == 14) {
                return true;
            }
            i10++;
        }
    }

    public boolean O() {
        return Q(10) && Q(11);
    }

    public boolean P() {
        return Q(12) && Q(13);
    }

    public final boolean Q(int i10) {
        byte b10;
        byte[] bArr = this.f98915b;
        return bArr.length > i10 && (b10 = bArr[i10]) >= 48 && b10 <= 57;
    }

    public final String R(String str) {
        String str2;
        StringBuilder sb2;
        char charAt;
        String substring = str.substring(14);
        int i10 = 1;
        while (i10 < substring.length() && '0' <= (charAt = substring.charAt(i10)) && charAt <= '9') {
            i10++;
        }
        int i11 = i10 - 1;
        if (i11 > 3) {
            str2 = substring.substring(0, 4) + substring.substring(i10);
            sb2 = new StringBuilder();
        } else if (i11 == 1) {
            str2 = substring.substring(0, i10) + ChipTextInputComboView.b.f65192c + substring.substring(i10);
            sb2 = new StringBuilder();
        } else {
            if (i11 != 2) {
                return str;
            }
            str2 = substring.substring(0, i10) + "0" + substring.substring(i10);
            sb2 = new StringBuilder();
        }
        sb2.append(str.substring(0, 14));
        sb2.append(str2);
        return sb2.toString();
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98915b);
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof C14530n) {
            return org.bouncycastle.util.a.g(this.f98915b, ((C14530n) b10).f98915b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 24, this.f98915b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98915b.length);
    }

    public C14530n(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", h1.f98891b);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f98915b = org.bouncycastle.util.w.j(simpleDateFormat.format(date));
    }

    public C14530n(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f98915b = org.bouncycastle.util.w.j(simpleDateFormat.format(date));
    }

    public C14530n(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.f98915b = bArr;
        if (!Q(0) || !Q(1) || !Q(2) || !Q(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }
}
