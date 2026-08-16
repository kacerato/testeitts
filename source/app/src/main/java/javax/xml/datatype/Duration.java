package javax.xml.datatype;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.namespace.QName;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/datatype/Duration.class
 */
public abstract class Duration {
    public abstract int getSign();

    public abstract Number getField(DatatypeConstants.Field field);

    public abstract boolean isSet(DatatypeConstants.Field field);

    public abstract Duration add(Duration duration);

    public abstract void addTo(Calendar calendar);

    public abstract Duration multiply(BigDecimal bigDecimal);

    public abstract Duration negate();

    public abstract Duration normalizeWith(Calendar calendar);

    public abstract int compare(Duration duration);

    public abstract int hashCode();

    public Duration() {
        throw new RuntimeException("Stub!");
    }

    public QName getXMLSchemaType() {
        throw new RuntimeException("Stub!");
    }

    public int getYears() {
        throw new RuntimeException("Stub!");
    }

    public int getMonths() {
        throw new RuntimeException("Stub!");
    }

    public int getDays() {
        throw new RuntimeException("Stub!");
    }

    public int getHours() {
        throw new RuntimeException("Stub!");
    }

    public int getMinutes() {
        throw new RuntimeException("Stub!");
    }

    public int getSeconds() {
        throw new RuntimeException("Stub!");
    }

    public long getTimeInMillis(Calendar startInstant) {
        throw new RuntimeException("Stub!");
    }

    public long getTimeInMillis(Date startInstant) {
        throw new RuntimeException("Stub!");
    }

    public void addTo(Date date) {
        throw new RuntimeException("Stub!");
    }

    public Duration subtract(Duration rhs) {
        throw new RuntimeException("Stub!");
    }

    public Duration multiply(int factor) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLongerThan(Duration duration) {
        throw new RuntimeException("Stub!");
    }

    public boolean isShorterThan(Duration duration) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object duration) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
