package com.github.javaparser.utils;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import yd.C16181m;

public final class StringEscapeUtils {
    private static final CharSequenceTranslator ESCAPE_JAVA;
    private static final LookupTranslator JAVA_CTRL_CHARS_ESCAPE;
    private static final LookupTranslator JAVA_CTRL_CHARS_UNESCAPE;
    private static final CharSequenceTranslator UNESCAPE_JAVA;
    private static final CharSequenceTranslator UNESCAPE_JAVA_TEXT_BLOCK;

    public static class AggregateTranslator extends CharSequenceTranslator {
        private final CharSequenceTranslator[] translators;

        @Override
        public int translate(final CharSequence input, final int index, final Writer out) throws IOException {
            for (CharSequenceTranslator charSequenceTranslator : this.translators) {
                int translate = charSequenceTranslator.translate(input, index, out);
                if (translate != 0) {
                    return translate;
                }
            }
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
            super();
            this.translators = charSequenceTranslatorArr != null ? (CharSequenceTranslator[]) charSequenceTranslatorArr.clone() : null;
        }
    }

    public static class LookupTranslator extends CharSequenceTranslator {
        private final int longest;
        private final HashMap<String, String> lookupMap;
        private final HashSet<Character> prefixSet;
        private final int shortest;

        @Override
        public int translate(final CharSequence input, final int index, final Writer out) throws IOException {
            if (!this.prefixSet.contains(Character.valueOf(input.charAt(index)))) {
                return 0;
            }
            int i10 = this.longest;
            if (index + i10 > input.length()) {
                i10 = input.length() - index;
            }
            while (i10 >= this.shortest) {
                String str = this.lookupMap.get(input.subSequence(index, index + i10).toString());
                if (str != null) {
                    out.write(str);
                    return i10;
                }
                i10--;
            }
            return 0;
        }

        private LookupTranslator(final CharSequence[]... lookup) {
            super();
            this.lookupMap = new HashMap<>();
            this.prefixSet = new HashSet<>();
            int i10 = Integer.MAX_VALUE;
            int i11 = 0;
            if (lookup != null) {
                int i12 = 0;
                for (CharSequence[] charSequenceArr : lookup) {
                    this.lookupMap.put(charSequenceArr[0].toString(), charSequenceArr[1].toString());
                    this.prefixSet.add(Character.valueOf(charSequenceArr[0].charAt(0)));
                    int length = charSequenceArr[0].length();
                    i10 = length < i10 ? length : i10;
                    if (length > i12) {
                        i12 = length;
                    }
                }
                i11 = i12;
            }
            this.shortest = i10;
            this.longest = i11;
        }
    }

    public static class OctalUnescaper extends CharSequenceTranslator {
        private OctalUnescaper() {
            super();
        }

        private boolean isOctalDigit(final char ch2) {
            return ch2 >= '0' && ch2 <= '7';
        }

        private boolean isZeroToThree(final char ch2) {
            return ch2 >= '0' && ch2 <= '3';
        }

        @Override
        public int translate(final CharSequence input, final int index, final Writer out) throws IOException {
            int length = (input.length() - index) - 1;
            StringBuilder sb2 = new StringBuilder();
            if (input.charAt(index) != '\\' || length <= 0) {
                return 0;
            }
            int i10 = index + 1;
            if (!isOctalDigit(input.charAt(i10))) {
                return 0;
            }
            int i11 = index + 2;
            int i12 = index + 3;
            sb2.append(input.charAt(i10));
            if (length > 1 && isOctalDigit(input.charAt(i11))) {
                sb2.append(input.charAt(i11));
                if (length > 2 && isZeroToThree(input.charAt(i10)) && isOctalDigit(input.charAt(i12))) {
                    sb2.append(input.charAt(i12));
                }
            }
            out.write(Integer.parseInt(sb2.toString(), 8));
            return sb2.length() + 1;
        }
    }

    public static class UnicodeUnescaper extends CharSequenceTranslator {
        private UnicodeUnescaper() {
            super();
        }

        @Override
        public int translate(final CharSequence input, final int index, final Writer out) throws IOException {
            int i10;
            int i11;
            if (input.charAt(index) != '\\' || (i10 = index + 1) >= input.length() || input.charAt(i10) != 'u') {
                return 0;
            }
            int i12 = 2;
            while (true) {
                i11 = index + i12;
                if (i11 >= input.length() || input.charAt(i11) != 'u') {
                    break;
                }
                i12++;
            }
            if (i11 < input.length() && input.charAt(i11) == '+') {
                i12++;
            }
            int i13 = index + i12;
            int i14 = i13 + 4;
            if (i14 > input.length()) {
                throw new IllegalArgumentException("Less than 4 hex digits in unicode value: '" + ((Object) input.subSequence(index, input.length())) + "' due to end of CharSequence");
            }
            CharSequence subSequence = input.subSequence(i13, i14);
            try {
                out.write((char) Integer.parseInt(subSequence.toString(), 16));
                return i12 + 4;
            } catch (NumberFormatException e10) {
                throw new IllegalArgumentException("Unable to parse unicode value: " + ((Object) subSequence), e10);
            }
        }
    }

    static {
        LookupTranslator lookupTranslator = new LookupTranslator(new String[][]{new String[]{"\\b", "\b"}, new String[]{"\\n", "\n"}, new String[]{"\\t", "\t"}, new String[]{"\\f", "\f"}, new String[]{"\\r", StringUtils.CR}});
        JAVA_CTRL_CHARS_UNESCAPE = lookupTranslator;
        LookupTranslator lookupTranslator2 = new LookupTranslator(new String[][]{new String[]{"\b", "\\b"}, new String[]{"\n", "\\n"}, new String[]{"\t", "\\t"}, new String[]{"\f", "\\f"}, new String[]{StringUtils.CR, "\\r"}});
        JAVA_CTRL_CHARS_ESCAPE = lookupTranslator2;
        ESCAPE_JAVA = new AggregateTranslator(new CharSequenceTranslator[]{new LookupTranslator(new String[][]{new String[]{JavadocConstants.ANCHOR_PREFIX_END, "\\\""}, new String[]{C16181m.f130232i, "\\\\"}}), lookupTranslator2});
        UNESCAPE_JAVA = new AggregateTranslator(new CharSequenceTranslator[]{new OctalUnescaper(), new UnicodeUnescaper(), lookupTranslator, new LookupTranslator(new String[][]{new String[]{"\\\\", C16181m.f130232i}, new String[]{"\\\"", JavadocConstants.ANCHOR_PREFIX_END}, new String[]{"\\'", "'"}, new String[]{C16181m.f130232i, ""}})});
        UNESCAPE_JAVA_TEXT_BLOCK = new AggregateTranslator(new CharSequenceTranslator[]{new OctalUnescaper(), new UnicodeUnescaper(), lookupTranslator, new LookupTranslator(new String[][]{new String[]{"\\\\", C16181m.f130232i}, new String[]{"\\\"", JavadocConstants.ANCHOR_PREFIX_END}, new String[]{"\\'", "'"}, new String[]{C16181m.f130232i, ""}, new String[]{"\\s", " "}, new String[]{"\\\n", ""}})});
    }

    private StringEscapeUtils() {
    }

    public static String escapeJava(final String input) {
        return ESCAPE_JAVA.translate(input);
    }

    public static String unescapeJava(final String input) {
        return UNESCAPE_JAVA.translate(input);
    }

    public static String unescapeJavaTextBlock(final String input) {
        return UNESCAPE_JAVA_TEXT_BLOCK.translate(input);
    }

    public static abstract class CharSequenceTranslator {
        private CharSequenceTranslator() {
        }

        public String translate(final CharSequence input) {
            if (input == null) {
                return null;
            }
            try {
                StringWriter stringWriter = new StringWriter(input.length() * 2);
                translate(input, stringWriter);
                return stringWriter.toString();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        public abstract int translate(CharSequence input, int index, Writer out) throws IOException;

        private void translate(final CharSequence input, final Writer out) throws IOException {
            if (out == null) {
                throw new IllegalArgumentException("The Writer must not be null");
            }
            if (input == null) {
                return;
            }
            int length = input.length();
            int i10 = 0;
            while (i10 < length) {
                int translate = translate(input, i10, out);
                if (translate == 0) {
                    char charAt = input.charAt(i10);
                    out.write(charAt);
                    int i11 = i10 + 1;
                    if (Character.isHighSurrogate(charAt) && i11 < length) {
                        char charAt2 = input.charAt(i11);
                        if (Character.isLowSurrogate(charAt2)) {
                            out.write(charAt2);
                            i10 += 2;
                        }
                    }
                    i10 = i11;
                } else {
                    for (int i12 = 0; i12 < translate; i12++) {
                        i10 += Character.charCount(Character.codePointAt(input, i10));
                    }
                }
            }
        }
    }
}
