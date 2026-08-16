package com.github.javaparser.utils;

import android.security.keystore.KeyProperties;
import fd.C13208a;
import java.util.Optional;
import org.apache.commons.lang3.StringUtils;

public enum LineSeparator {
    CR(StringUtils.CR, "CR (\\r)"),
    LF("\n", "LF (\\n)"),
    CRLF(C13208a.f86201f, "CRLF (\\r\\n)"),
    SYSTEM(System.getProperty("line.separator"), "SYSTEM : (" + System.getProperty("line.separator").replace(StringUtils.CR, "\\r").replace("\n", "\\n") + ")"),
    ARBITRARY("\n", "ARBITRARY (\\n)"),
    MIXED("", "MIXED"),
    UNKNOWN("", "UNKNOWN"),
    NONE("", KeyProperties.DIGEST_NONE);

    private final String description;
    private final String text;

    LineSeparator(String text, String description) {
        this.text = text;
        this.description = description;
    }

    private static int count(String haystack, String needle) {
        return (haystack.length() - haystack.replaceAll(needle, "").length()) / needle.length();
    }

    public static LineSeparator detect(String string) {
        return getLineEnding(count(string, StringUtils.CR), count(string, "\n"), count(string, C13208a.f86201f));
    }

    public static LineSeparator getLineEnding(int countCr, int countLf, int countCrLf) {
        return (countCr == 0 && countLf == 0 && countCrLf == 0) ? NONE : (countCr > 0 && countLf == 0 && countCrLf == 0) ? CR : (countCr == 0 && countLf > 0 && countCrLf == 0) ? LF : (countCr == countLf && countLf == countCrLf) ? CRLF : MIXED;
    }

    public static Optional<LineSeparator> lookup(String ending) {
        LineSeparator lineSeparator = CR;
        if (lineSeparator.asRawString().equals(ending)) {
            return Optional.of(lineSeparator);
        }
        LineSeparator lineSeparator2 = LF;
        if (lineSeparator2.asRawString().equals(ending)) {
            return Optional.of(lineSeparator2);
        }
        LineSeparator lineSeparator3 = CRLF;
        return lineSeparator3.asRawString().equals(ending) ? Optional.of(lineSeparator3) : Optional.empty();
    }

    public static Optional<LineSeparator> lookupEscaped(String ending) {
        LineSeparator lineSeparator = CR;
        if (lineSeparator.asEscapedString().equals(ending)) {
            return Optional.of(lineSeparator);
        }
        LineSeparator lineSeparator2 = LF;
        if (lineSeparator2.asEscapedString().equals(ending)) {
            return Optional.of(lineSeparator2);
        }
        LineSeparator lineSeparator3 = CRLF;
        return lineSeparator3.asEscapedString().equals(ending) ? Optional.of(lineSeparator3) : Optional.empty();
    }

    public String asEscapedString() {
        return this.text.replace(StringUtils.CR, "\\r").replace("\n", "\\n");
    }

    public String asRawString() {
        return this.text;
    }

    public String describe() {
        return this.description;
    }

    public boolean equalsString(LineSeparator lineSeparator) {
        return this.text.equals(lineSeparator.asRawString());
    }

    public boolean isStandardEol() {
        return equalsString(CR) || equalsString(LF) || equalsString(CRLF);
    }

    @Override
    public String toString() {
        return asRawString();
    }
}
