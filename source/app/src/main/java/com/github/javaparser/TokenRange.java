package com.github.javaparser;

import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.Optional;

public class TokenRange implements Iterable<JavaToken> {
    public static final TokenRange INVALID;
    private final JavaToken begin;
    private final JavaToken end;

    static {
        JavaToken javaToken = JavaToken.INVALID;
        INVALID = new TokenRange(javaToken, javaToken);
    }

    public TokenRange(JavaToken begin, JavaToken end) {
        this.begin = (JavaToken) Utils.assertNotNull(begin);
        this.end = (JavaToken) Utils.assertNotNull(end);
    }

    public JavaToken getBegin() {
        return this.begin;
    }

    public JavaToken getEnd() {
        return this.end;
    }

    @Override
    public Iterator<JavaToken> iterator() {
        return new Iterator<JavaToken>() {
            private JavaToken current;
            private boolean hasNext = true;

            {
                this.current = TokenRange.this.begin;
            }

            @Override
            public boolean hasNext() {
                return this.hasNext;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public JavaToken next() {
                JavaToken javaToken = this.current;
                if (javaToken != null) {
                    if (javaToken == TokenRange.this.end) {
                        this.hasNext = false;
                    }
                    JavaToken orElse = this.current.getNextToken().orElse(null);
                    this.current = orElse;
                    if (orElse == null && this.hasNext) {
                        throw new IllegalStateException("End token is not linked to begin token.");
                    }
                    return javaToken;
                }
                throw new IllegalStateException("Attempting to move past end of range.");
            }
        };
    }

    public Optional<Range> toRange() {
        return (this.begin.hasRange() && this.end.hasRange()) ? Optional.of(new Range(this.begin.getRange().get().begin, this.end.getRange().get().end)) : Optional.empty();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<JavaToken> it = iterator();
        while (it.hasNext()) {
            sb2.append(it.next().getText());
        }
        return sb2.toString();
    }

    public TokenRange withBegin(JavaToken begin) {
        return new TokenRange((JavaToken) Utils.assertNotNull(begin), this.end);
    }

    public TokenRange withEnd(JavaToken end) {
        return new TokenRange(this.begin, (JavaToken) Utils.assertNotNull(end));
    }
}
