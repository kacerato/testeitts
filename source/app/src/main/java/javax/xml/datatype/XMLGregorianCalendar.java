package javax.xml.datatype;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.xml.namespace.QName;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/datatype/XMLGregorianCalendar.class
 */
public abstract class XMLGregorianCalendar implements Cloneable {
    public abstract void clear();

    public abstract void reset();

    public abstract void setYear(BigInteger bigInteger);

    public abstract void setYear(int i10);

    public abstract void setMonth(int i10);

    public abstract void setDay(int i10);

    public abstract void setTimezone(int i10);

    public abstract void setHour(int i10);

    public abstract void setMinute(int i10);

    public abstract void setSecond(int i10);

    public abstract void setMillisecond(int i10);

    public abstract void setFractionalSecond(BigDecimal bigDecimal);

    public abstract BigInteger getEon();

    public abstract int getYear();

    public abstract BigInteger getEonAndYear();

    public abstract int getMonth();

    public abstract int getDay();

    public abstract int getTimezone();

    public abstract int getHour();

    public abstract int getMinute();

    public abstract int getSecond();

    public abstract BigDecimal getFractionalSecond();

    public abstract int compare(XMLGregorianCalendar xMLGregorianCalendar);

    public abstract XMLGregorianCalendar normalize();

    public abstract String toXMLFormat();

    public abstract QName getXMLSchemaType();

    public abstract boolean isValid();

    public abstract void add(Duration duration);

    public abstract GregorianCalendar toGregorianCalendar();

    public abstract GregorianCalendar toGregorianCalendar(TimeZone timeZone, Locale locale, XMLGregorianCalendar xMLGregorianCalendar);

    public abstract TimeZone getTimeZone(int i10);

    public abstract Object clone();

    public XMLGregorianCalendar() {
        throw new RuntimeException("Stub!");
    }

    public void setTime(int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    public void setTime(int hour, int minute, int second, BigDecimal fractional) {
        throw new RuntimeException("Stub!");
    }

    public void setTime(int hour, int minute, int second, int millisecond) {
        throw new RuntimeException("Stub!");
    }

    public int getMillisecond() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
