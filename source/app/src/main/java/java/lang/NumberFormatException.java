package java.lang;

import org.eclipse.jdt.internal.core.JavadocConstants;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/NumberFormatException.class
 */
public class NumberFormatException extends IllegalArgumentException {
    static final long serialVersionUID = -2848938806368998894L;

    public NumberFormatException() {
    }

    public NumberFormatException(String s10) {
        super(s10);
    }

    public static NumberFormatException forInputString(String s10, int radix) {
        String str;
        StringBuilder append = new StringBuilder().append("For input string: \"").append(s10).append(JavadocConstants.ANCHOR_PREFIX_END);
        if (radix == 10) {
            str = "";
        } else {
            str = " under radix " + radix;
        }
        return new NumberFormatException(append.append(str).toString());
    }

    public static NumberFormatException forCharSequence(CharSequence s10, int beginIndex, int endIndex, int errorIndex) {
        return new NumberFormatException("Error at index " + (errorIndex - beginIndex) + " in: \"" + ((Object) s10.subSequence(beginIndex, endIndex)) + JavadocConstants.ANCHOR_PREFIX_END);
    }
}
