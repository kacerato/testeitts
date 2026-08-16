package org.google.googlejavaformat;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.E1;
import com.google.common.collect.e3;
import fd.C13208a;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.StringUtils;
import w2.AbstractC15885e;

public class Newlines {
    private static final AbstractC12564r1<String> BREAKS = AbstractC12564r1.C(C13208a.f86201f, "\n", StringUtils.CR);

    public static class LineIterator implements Iterator<String> {
        String curr;
        int idx;
        private final Iterator<Integer> indices;
        private final String input;

        private void advance() {
            int i10 = this.idx;
            if (this.indices.hasNext()) {
                this.idx = this.indices.next().intValue();
            } else {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.idx = this.input.length();
            }
            this.curr = this.input.substring(i10, this.idx);
        }

        @Override
        public boolean hasNext() {
            return this.idx < this.input.length();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        private LineIterator(String input) {
            this.input = input;
            Iterator<Integer> lineOffsetIterator = Newlines.lineOffsetIterator(input);
            this.indices = lineOffsetIterator;
            this.idx = lineOffsetIterator.next().intValue();
        }

        @Override
        public String next() {
            advance();
            return this.curr;
        }
    }

    public static class LineOffsetIterator implements Iterator<Integer> {
        private int curr;
        private int idx;
        private final String input;

        private void advance() {
            while (this.idx < this.input.length()) {
                char charAt = this.input.charAt(this.idx);
                if (charAt != '\n') {
                    if (charAt != '\r') {
                        this.idx++;
                    } else if (this.idx + 1 < this.input.length() && this.input.charAt(this.idx + 1) == '\n') {
                        this.idx++;
                    }
                }
                int i10 = this.idx + 1;
                this.idx = i10;
                this.curr = i10;
                return;
            }
            this.curr = -1;
        }

        @Override
        public boolean hasNext() {
            return this.curr != -1;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        private LineOffsetIterator(String input) {
            this.curr = 0;
            this.idx = 0;
            this.input = input;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Integer next() {
            int i10 = this.curr;
            if (i10 != -1) {
                advance();
                return Integer.valueOf(i10);
            }
            throw new NoSuchElementException();
        }
    }

    public static boolean containsBreaks(String text) {
        return AbstractC15885e.d("\n\r").D(text);
    }

    public static int count(String input) {
        return E1.Z(lineOffsetIterator(input)) - 1;
    }

    public static int firstBreak(String input) {
        Iterator<Integer> lineOffsetIterator = lineOffsetIterator(input);
        lineOffsetIterator.next();
        if (lineOffsetIterator.hasNext()) {
            return lineOffsetIterator.next().intValue();
        }
        return -1;
    }

    public static String getLineEnding(String input) {
        e3<String> it = BREAKS.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (input.endsWith(next)) {
                return next;
            }
        }
        return null;
    }

    public static String guessLineSeparator(String text) {
        char charAt;
        for (int i10 = 0; i10 < text.length() && (charAt = text.charAt(i10)) != '\n'; i10++) {
            if (charAt == '\r') {
                int i11 = i10 + 1;
                return (i11 >= text.length() || text.charAt(i11) != '\n') ? StringUtils.CR : C13208a.f86201f;
            }
        }
        return "\n";
    }

    public static int hasNewlineAt(String input, int idx) {
        e3<String> it = BREAKS.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (input.startsWith(next, idx)) {
                return next.length();
            }
        }
        return -1;
    }

    public static boolean isNewline(String input) {
        return BREAKS.contains(input);
    }

    public static Iterator<String> lineIterator(String input) {
        return new LineIterator(input);
    }

    public static Iterator<Integer> lineOffsetIterator(String input) {
        return new LineOffsetIterator(input);
    }
}
