package uh;

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

public class Z extends AbstractC14545v implements InterfaceC14514f {

    public oh.B f120636b;

    public Z(Date date) {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, Signature.SIG_BOOLEAN);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", h1.f98891b);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + Signature.SIG_BOOLEAN;
        int parseInt = Integer.parseInt(str.substring(0, 4));
        this.f120636b = (parseInt < 1950 || parseInt > 2049) ? new C14548w0(str) : new L0(str.substring(2));
    }

    public static Z v(Object obj) {
        if (obj == null || (obj instanceof Z)) {
            return (Z) obj;
        }
        if (obj instanceof oh.P) {
            return new Z((oh.P) obj);
        }
        if (obj instanceof C14530n) {
            return new Z((C14530n) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static Z w(oh.M m10, boolean z10) {
        if (z10) {
            return v(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public oh.B r() {
        return this.f120636b;
    }

    public Date u() {
        try {
            oh.B b10 = this.f120636b;
            return b10 instanceof oh.P ? ((oh.P) b10).F() : ((C14530n) b10).I();
        } catch (ParseException e10) {
            throw new IllegalStateException("invalid date string: " + e10.getMessage());
        }
    }

    public String x() {
        oh.B b10 = this.f120636b;
        return b10 instanceof oh.P ? ((oh.P) b10).G() : ((C14530n) b10).L();
    }

    public Z(Date date, Locale locale) {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, Signature.SIG_BOOLEAN);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", locale);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + Signature.SIG_BOOLEAN;
        int parseInt = Integer.parseInt(str.substring(0, 4));
        this.f120636b = (parseInt < 1950 || parseInt > 2049) ? new C14548w0(str) : new L0(str.substring(2));
    }

    public Z(oh.B b10) {
        if (!(b10 instanceof oh.P) && !(b10 instanceof C14530n)) {
            throw new IllegalArgumentException("unknown object passed to Time");
        }
        this.f120636b = b10;
    }
}
