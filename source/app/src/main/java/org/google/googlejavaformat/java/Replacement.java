package org.google.googlejavaformat.java;

import com.google.common.collect.C12534j2;
import java.util.Objects;

public class Replacement {
    private final C12534j2<Integer> replaceRange;
    private final String replacementString;

    public Replacement(C12534j2<Integer> replaceRange, String replacementString) {
        if (replaceRange == null) {
            throw new NullPointerException("Null replaceRange");
        }
        this.replaceRange = replaceRange;
        if (replacementString == null) {
            throw new NullPointerException("Null replacementString");
        }
        this.replacementString = replacementString;
    }

    public static Replacement create(int startPosition, int endPosition, String replaceWith) {
        return new Replacement(C12534j2.g(Integer.valueOf(startPosition), Integer.valueOf(endPosition)), replaceWith);
    }

    public boolean equals(Object o10) {
        if (o10 == this) {
            return true;
        }
        if (!(o10 instanceof Replacement)) {
            return false;
        }
        Replacement replacement = (Replacement) o10;
        return this.replaceRange.equals(replacement.getReplaceRange()) && this.replacementString.equals(replacement.getReplacementString());
    }

    public C12534j2<Integer> getReplaceRange() {
        return this.replaceRange;
    }

    public String getReplacementString() {
        return this.replacementString;
    }

    public int hashCode() {
        return Objects.hash(this.replaceRange, this.replacementString);
    }

    public static Replacement create(C12534j2<Integer> range, String replaceWith) {
        return new Replacement(range, replaceWith);
    }
}
