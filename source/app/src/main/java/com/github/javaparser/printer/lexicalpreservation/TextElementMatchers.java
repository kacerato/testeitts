package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;

public class TextElementMatchers {
    public static TextElementMatcher byNode(final Node node) {
        return new TextElementMatcher() {
            @Override
            public boolean match(TextElement textElement) {
                return textElement.isNode(Node.this);
            }

            public String toString() {
                return "match node " + ((Object) Node.this);
            }
        };
    }

    public static TextElementMatcher byTokenType(final int tokenType) {
        return new TextElementMatcher() {
            @Override
            public final boolean match(TextElement textElement) {
                boolean lambda$byTokenType$0;
                lambda$byTokenType$0 = TextElementMatchers.lambda$byTokenType$0(tokenType, textElement);
                return lambda$byTokenType$0;
            }
        };
    }

    public static boolean lambda$byTokenType$0(final int tokenType, TextElement textElement) {
        return textElement.isToken(tokenType);
    }
}
