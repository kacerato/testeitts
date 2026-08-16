package org.google.googlejavaformat.java.javadoc;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w2.H;

final class CharStream {
    String remaining;
    int toConsume;

    public CharStream(String input) {
        this.remaining = (String) H.E(input);
    }

    public boolean isExhausted() {
        return this.remaining.isEmpty();
    }

    public String readAndResetRecorded() {
        String substring = this.remaining.substring(0, this.toConsume);
        this.remaining = this.remaining.substring(this.toConsume);
        this.toConsume = 0;
        return substring;
    }

    public boolean tryConsume(String expected) {
        if (!this.remaining.startsWith(expected)) {
            return false;
        }
        this.toConsume = expected.length();
        return true;
    }

    public boolean tryConsumeRegex(Pattern pattern) {
        Matcher matcher = pattern.matcher(this.remaining);
        if (!matcher.find()) {
            return false;
        }
        H.d(matcher.start() == 0);
        this.toConsume = matcher.end();
        return true;
    }
}
