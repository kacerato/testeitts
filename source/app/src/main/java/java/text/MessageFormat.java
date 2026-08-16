package java.text;

import java.io.InvalidObjectException;
import java.text.Format;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/MessageFormat.class
 */
public class MessageFormat extends Format {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/MessageFormat$Field.class
 */
    public static class Field extends Format.Field {
        public static final Field ARGUMENT = null;

        protected Field(String name) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        protected Object readResolve() throws InvalidObjectException {
            throw new RuntimeException("Stub!");
        }
    }

    public MessageFormat(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public MessageFormat(String pattern, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public void setLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public void applyPattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public String toPattern() {
        throw new RuntimeException("Stub!");
    }

    public void setFormatsByArgumentIndex(Format[] newFormats) {
        throw new RuntimeException("Stub!");
    }

    public void setFormats(Format[] newFormats) {
        throw new RuntimeException("Stub!");
    }

    public void setFormatByArgumentIndex(int argumentIndex, Format newFormat) {
        throw new RuntimeException("Stub!");
    }

    public void setFormat(int formatElementIndex, Format newFormat) {
        throw new RuntimeException("Stub!");
    }

    public Format[] getFormatsByArgumentIndex() {
        throw new RuntimeException("Stub!");
    }

    public Format[] getFormats() {
        throw new RuntimeException("Stub!");
    }

    public final StringBuffer format(Object[] arguments, StringBuffer result, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public static String format(String pattern, Object... arguments) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final StringBuffer format(Object arguments, StringBuffer result, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object arguments) {
        throw new RuntimeException("Stub!");
    }

    public Object[] parse(String source, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    public Object[] parse(String source) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object parseObject(String source, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
