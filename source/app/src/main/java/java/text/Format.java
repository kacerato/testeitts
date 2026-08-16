package java.text;

import java.io.Serializable;
import java.text.AttributedCharacterIterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/Format.class
 */
public abstract class Format implements Serializable, Cloneable {
    public abstract StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition);

    public abstract Object parseObject(String str, ParsePosition parsePosition);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/Format$Field.class
 */
    public static class Field extends AttributedCharacterIterator.Attribute {
        public Field(String name) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }
    }

    public Format() {
        throw new RuntimeException("Stub!");
    }

    public final String format(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public Object parseObject(String source) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
