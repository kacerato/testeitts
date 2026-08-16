package com.github.javaparser.printer.lexicalpreservation;

public interface TextElementMatcher {
    default boolean lambda$and$0(final TextElementMatcher textElementMatcher, TextElement textElement) {
        return match(textElement) && textElementMatcher.match(textElement);
    }

    default TextElementMatcher and(final TextElementMatcher textElementMatcher) {
        return new TextElementMatcher() {
            @Override
            public final boolean match(TextElement textElement) {
                boolean lambda$and$0;
                lambda$and$0 = TextElementMatcher.this.lambda$and$0(textElementMatcher, textElement);
                return lambda$and$0;
            }
        };
    }

    boolean match(TextElement textElement);
}
