package android.icu.text;

import android.icu.text.MessagePattern;
import android.icu.util.ULocale;
import java.io.InvalidObjectException;
import java.text.AttributedCharacterIterator;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessageFormat.class
 */
public class MessageFormat extends UFormat {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessageFormat$Field.class
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

    public MessageFormat(String pattern, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public void setLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public void setLocale(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public ULocale getULocale() {
        throw new RuntimeException("Stub!");
    }

    public void applyPattern(String pttrn) {
        throw new RuntimeException("Stub!");
    }

    public void applyPattern(String pattern, MessagePattern.ApostropheMode aposMode) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern.ApostropheMode getApostropheMode() {
        throw new RuntimeException("Stub!");
    }

    public String toPattern() {
        throw new RuntimeException("Stub!");
    }

    public void setFormatsByArgumentIndex(Format[] newFormats) {
        throw new RuntimeException("Stub!");
    }

    public void setFormatsByArgumentName(Map<String, Format> newFormats) {
        throw new RuntimeException("Stub!");
    }

    public void setFormats(Format[] newFormats) {
        throw new RuntimeException("Stub!");
    }

    public void setFormatByArgumentIndex(int argumentIndex, Format newFormat) {
        throw new RuntimeException("Stub!");
    }

    public void setFormatByArgumentName(String argumentName, Format newFormat) {
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

    public Set<String> getArgumentNames() {
        throw new RuntimeException("Stub!");
    }

    public Format getFormatByArgumentName(String argumentName) {
        throw new RuntimeException("Stub!");
    }

    public final StringBuffer format(Object[] arguments, StringBuffer result, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public final StringBuffer format(Map<String, Object> arguments, StringBuffer result, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public static String format(String pattern, Object... arguments) {
        throw new RuntimeException("Stub!");
    }

    public static String format(String pattern, Map<String, Object> arguments) {
        throw new RuntimeException("Stub!");
    }

    public boolean usesNamedArguments() {
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

    public Map<String, Object> parseToMap(String source, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    public Object[] parse(String source) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    public Map<String, Object> parseToMap(String source) throws ParseException {
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

    public static String autoQuoteApostrophe(String pattern) {
        throw new RuntimeException("Stub!");
    }
}
