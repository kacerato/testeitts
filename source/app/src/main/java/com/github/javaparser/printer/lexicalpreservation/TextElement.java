package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import java.util.Optional;
import java.util.function.Function;

public abstract class TextElement implements TextElementMatcher, PrintableTextElement {
    public boolean lambda$matchByRange$1(final TextElement textElement) {
        return ((Boolean) getRange().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$null$0;
                lambda$null$0 = TextElement.lambda$null$0(TextElement.this, (Range) obj);
                return lambda$null$0;
            }
        }).orElse(Boolean.TRUE)).booleanValue();
    }

    public static Optional lambda$null$0(final TextElement textElement, final Range r12) {
        Optional<Range> range = textElement.getRange();
        r12.getClass();
        return range.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(Range.this.equals((Range) obj));
            }
        });
    }

    public abstract String expand();

    public abstract Optional<Range> getRange();

    public boolean isChild() {
        return isChildOfClass(Node.class);
    }

    public abstract boolean isChildOfClass(Class<? extends Node> nodeClass);

    public abstract boolean isComment();

    public final boolean isCommentToken() {
        return isToken(8) || isToken(5) || isToken(9);
    }

    public abstract boolean isIdentifier();

    public abstract boolean isKeyword();

    public abstract boolean isLiteral();

    public abstract boolean isNewline();

    public abstract boolean isNode(Node node);

    public abstract boolean isPrimitive();

    public abstract boolean isSeparator();

    public abstract boolean isSpaceOrTab();

    public abstract boolean isToken(int tokenKind);

    public abstract boolean isWhiteSpace();

    public final boolean isWhiteSpaceOrComment() {
        return isWhiteSpace() || isComment();
    }

    @Override
    public boolean match(TextElement textElement) {
        return equals(textElement);
    }

    public TextElementMatcher matchByRange() {
        return new TextElementMatcher() {
            @Override
            public final boolean match(TextElement textElement) {
                boolean lambda$matchByRange$1;
                lambda$matchByRange$1 = TextElement.this.lambda$matchByRange$1(textElement);
                return lambda$matchByRange$1;
            }
        };
    }
}
