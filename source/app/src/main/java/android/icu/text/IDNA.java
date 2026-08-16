package android.icu.text;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/IDNA.class
 */
public abstract class IDNA {
    public static final int CHECK_BIDI = 4;
    public static final int CHECK_CONTEXTJ = 8;
    public static final int CHECK_CONTEXTO = 64;
    public static final int DEFAULT = 0;
    public static final int NONTRANSITIONAL_TO_ASCII = 16;
    public static final int NONTRANSITIONAL_TO_UNICODE = 32;
    public static final int USE_STD3_RULES = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/IDNA$Error.class
 */
    public enum Error {
        BIDI,
        CONTEXTJ,
        CONTEXTO_DIGITS,
        CONTEXTO_PUNCTUATION,
        DISALLOWED,
        DOMAIN_NAME_TOO_LONG,
        EMPTY_LABEL,
        HYPHEN_3_4,
        INVALID_ACE_LABEL,
        LABEL_HAS_DOT,
        LABEL_TOO_LONG,
        LEADING_COMBINING_MARK,
        LEADING_HYPHEN,
        PUNYCODE,
        TRAILING_HYPHEN
    }

    public abstract StringBuilder labelToASCII(CharSequence charSequence, StringBuilder sb2, Info info);

    public abstract StringBuilder labelToUnicode(CharSequence charSequence, StringBuilder sb2, Info info);

    public abstract StringBuilder nameToASCII(CharSequence charSequence, StringBuilder sb2, Info info);

    public abstract StringBuilder nameToUnicode(CharSequence charSequence, StringBuilder sb2, Info info);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/IDNA$Info.class
 */
    public static final class Info {
        public Info() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasErrors() {
            throw new RuntimeException("Stub!");
        }

        public Set<Error> getErrors() {
            throw new RuntimeException("Stub!");
        }

        public boolean isTransitionalDifferent() {
            throw new RuntimeException("Stub!");
        }
    }

    IDNA() {
        throw new RuntimeException("Stub!");
    }

    public static IDNA getUTS46Instance(int options) {
        throw new RuntimeException("Stub!");
    }
}
