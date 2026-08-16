package oh;

import com.google.android.material.timepicker.ChipTextInputComboView;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.eclipse.jdt.core.Signature;

public class P extends B {

    public static final T f98822c = new a(P.class, 23);

    public final byte[] f98823b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return P.E(c02.H());
        }
    }

    public P(String str) {
        this.f98823b = org.bouncycastle.util.w.j(str);
        try {
            H();
        } catch (ParseException e10) {
            throw new IllegalArgumentException("invalid date string: " + e10.getMessage());
        }
    }

    public static P E(byte[] bArr) {
        return new P(bArr);
    }

    public static P I(Object obj) {
        if (obj == null || (obj instanceof P)) {
            return (P) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof P) {
                return (P) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (P) f98822c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static P J(M m10, boolean z10) {
        return (P) f98822c.f(m10, z10);
    }

    private boolean M(int i10) {
        byte b10;
        byte[] bArr = this.f98823b;
        return bArr.length > i10 && (b10 = bArr[i10]) >= 48 && b10 <= 57;
    }

    public Date F() throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz", h1.f98891b);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        return simpleDateFormat.parse(G());
    }

    public String G() {
        StringBuilder sb2;
        String str;
        String L10 = L();
        if (L10.charAt(0) < '5') {
            sb2 = new StringBuilder();
            str = "20";
        } else {
            sb2 = new StringBuilder();
            str = "19";
        }
        sb2.append(str);
        sb2.append(L10);
        return sb2.toString();
    }

    public Date H() throws ParseException {
        return new SimpleDateFormat("yyMMddHHmmssz", h1.f98891b).parse(L());
    }

    public String L() {
        StringBuilder sb2;
        String substring;
        String c10 = org.bouncycastle.util.w.c(this.f98823b);
        if (c10.indexOf(45) >= 0 || c10.indexOf(43) >= 0) {
            int indexOf = c10.indexOf(45);
            if (indexOf < 0) {
                indexOf = c10.indexOf(43);
            }
            if (indexOf == c10.length() - 3) {
                c10 = c10 + ChipTextInputComboView.b.f65192c;
            }
            if (indexOf == 10) {
                sb2 = new StringBuilder();
                sb2.append(c10.substring(0, 10));
                sb2.append("00GMT");
                sb2.append(c10.substring(10, 13));
                sb2.append(b3.s.f32937c);
                substring = c10.substring(13, 15);
            } else {
                sb2 = new StringBuilder();
                sb2.append(c10.substring(0, 12));
                sb2.append("GMT");
                sb2.append(c10.substring(12, 15));
                sb2.append(b3.s.f32937c);
                substring = c10.substring(15, 17);
            }
        } else if (c10.length() == 11) {
            sb2 = new StringBuilder();
            sb2.append(c10.substring(0, 10));
            substring = "00GMT+00:00";
        } else {
            sb2 = new StringBuilder();
            sb2.append(c10.substring(0, 12));
            substring = "GMT+00:00";
        }
        sb2.append(substring);
        return sb2.toString();
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98823b);
    }

    public String toString() {
        return org.bouncycastle.util.w.c(this.f98823b);
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof P) {
            return org.bouncycastle.util.a.g(this.f98823b, ((P) b10).f98823b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 23, this.f98823b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98823b.length);
    }

    public P(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", h1.f98891b);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f98823b = org.bouncycastle.util.w.j(simpleDateFormat.format(date));
    }

    public P(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        this.f98823b = org.bouncycastle.util.w.j(simpleDateFormat.format(date));
    }

    public P(byte[] bArr) {
        if (bArr.length < 2) {
            throw new IllegalArgumentException("UTCTime string too short");
        }
        this.f98823b = bArr;
        if (!M(0) || !M(1)) {
            throw new IllegalArgumentException("illegal characters in UTCTime string");
        }
    }
}
