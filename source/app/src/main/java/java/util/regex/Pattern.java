package java.util.regex;

import java.io.Serializable;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/regex/Pattern.class
 */
public final class Pattern implements Serializable {
    public static final int CANON_EQ = 128;
    public static final int CASE_INSENSITIVE = 2;
    public static final int COMMENTS = 4;
    public static final int DOTALL = 32;
    public static final int LITERAL = 16;
    public static final int MULTILINE = 8;
    public static final int UNICODE_CASE = 64;
    public static final int UNICODE_CHARACTER_CLASS = 256;
    public static final int UNIX_LINES = 1;

    Pattern() {
        throw new RuntimeException("Stub!");
    }

    public static Pattern compile(String regex) {
        throw new RuntimeException("Stub!");
    }

    public static Pattern compile(String regex, int flags) throws PatternSyntaxException {
        throw new RuntimeException("Stub!");
    }

    public String pattern() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public Matcher matcher(CharSequence input) {
        throw new RuntimeException("Stub!");
    }

    public int flags() {
        throw new RuntimeException("Stub!");
    }

    public static boolean matches(String regex, CharSequence input) {
        throw new RuntimeException("Stub!");
    }

    public String[] split(CharSequence input, int limit) {
        throw new RuntimeException("Stub!");
    }

    public String[] split(CharSequence input) {
        throw new RuntimeException("Stub!");
    }

    public static String quote(String s10) {
        throw new RuntimeException("Stub!");
    }

    public Predicate<String> asPredicate() {
        throw new RuntimeException("Stub!");
    }

    public Stream<String> splitAsStream(CharSequence input) {
        throw new RuntimeException("Stub!");
    }
}
