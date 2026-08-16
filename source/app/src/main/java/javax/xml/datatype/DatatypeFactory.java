package javax.xml.datatype;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.GregorianCalendar;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/datatype/DatatypeFactory.class
 */
public abstract class DatatypeFactory {
    public static final String DATATYPEFACTORY_IMPLEMENTATION_CLASS = null;
    public static final String DATATYPEFACTORY_PROPERTY = "javax.xml.datatype.DatatypeFactory";

    public abstract Duration newDuration(String str);

    public abstract Duration newDuration(long j10);

    public abstract Duration newDuration(boolean z10, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigDecimal bigDecimal);

    public abstract XMLGregorianCalendar newXMLGregorianCalendar();

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(String str);

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(GregorianCalendar gregorianCalendar);

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(BigInteger bigInteger, int i10, int i11, int i12, int i13, int i14, BigDecimal bigDecimal, int i15);

    protected DatatypeFactory() {
        throw new RuntimeException("Stub!");
    }

    public static DatatypeFactory newInstance() throws DatatypeConfigurationException {
        throw new RuntimeException("Stub!");
    }

    public static DatatypeFactory newInstance(String factoryClassName, ClassLoader classLoader) throws DatatypeConfigurationException {
        throw new RuntimeException("Stub!");
    }

    public Duration newDuration(boolean isPositive, int years, int months, int days, int hours, int minutes, int seconds) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationDayTime(String lexicalRepresentation) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationDayTime(long durationInMilliseconds) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationDayTime(boolean isPositive, BigInteger day, BigInteger hour, BigInteger minute, BigInteger second) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationDayTime(boolean isPositive, int day, int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationYearMonth(String lexicalRepresentation) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationYearMonth(long durationInMilliseconds) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationYearMonth(boolean isPositive, BigInteger year, BigInteger month) {
        throw new RuntimeException("Stub!");
    }

    public Duration newDurationYearMonth(boolean isPositive, int year, int month) {
        throw new RuntimeException("Stub!");
    }

    public XMLGregorianCalendar newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone) {
        throw new RuntimeException("Stub!");
    }

    public XMLGregorianCalendar newXMLGregorianCalendarDate(int year, int month, int day, int timezone) {
        throw new RuntimeException("Stub!");
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int timezone) {
        throw new RuntimeException("Stub!");
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int hours, int minutes, int seconds, BigDecimal fractionalSecond, int timezone) {
        throw new RuntimeException("Stub!");
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone) {
        throw new RuntimeException("Stub!");
    }
}
