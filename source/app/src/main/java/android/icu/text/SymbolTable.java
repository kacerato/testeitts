package android.icu.text;

import java.text.ParsePosition;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/SymbolTable.class
 */
public interface SymbolTable {
    public static final char SYMBOL_REF = '$';

    char[] lookup(String str);

    UnicodeMatcher lookupMatcher(int i10);

    String parseReference(String str, ParsePosition parsePosition, int i10);
}
