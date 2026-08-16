package hi;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import oh.AbstractC14545v;
import oh.C14530n;
import oh.C14548w0;
import oh.InterfaceC14514f;
import oh.L0;
import oh.h1;
import org.eclipse.jdt.core.Signature;

public class o0 extends AbstractC14545v implements InterfaceC14514f {

    public oh.B f90880b;

    public o0(Date date) {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, Signature.SIG_BOOLEAN);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", h1.f98891b);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + Signature.SIG_BOOLEAN;
        int parseInt = Integer.parseInt(str.substring(0, 4));
        this.f90880b = (parseInt < 1950 || parseInt > 2049) ? new C14548w0(str) : new L0(str.substring(2));
    }

    public static o0 v(Object obj) {
        if (obj == null || (obj instanceof o0)) {
            return (o0) obj;
        }
        if (obj instanceof oh.P) {
            return new o0((oh.P) obj);
        }
        if (obj instanceof C14530n) {
            return new o0((C14530n) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static o0 w(oh.M m10, boolean z10) {
        if (z10) {
            return v(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public oh.B r() {
        return this.f90880b;
    }

    public String toString() {
        return x();
    }

    public Date u() {
        try {
            oh.B b10 = this.f90880b;
            return b10 instanceof oh.P ? ((oh.P) b10).F() : ((C14530n) b10).I();
        } catch (ParseException e10) {
            throw new IllegalStateException("invalid date string: " + e10.getMessage());
        }
    }

    public String x() {
        oh.B b10 = this.f90880b;
        return b10 instanceof oh.P ? ((oh.P) b10).G() : ((C14530n) b10).L();
    }

    public o0(Date date, Locale locale) {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, Signature.SIG_BOOLEAN);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", locale);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + Signature.SIG_BOOLEAN;
        int parseInt = Integer.parseInt(str.substring(0, 4));
        this.f90880b = (parseInt < 1950 || parseInt > 2049) ? new C14548w0(str) : new L0(str.substring(2));
    }

    public o0(oh.B b10) {
        if (!(b10 instanceof oh.P) && !(b10 instanceof C14530n)) {
            throw new IllegalArgumentException("unknown object passed to Time");
        }
        this.f90880b = b10;
    }
}
