package com.github.javaparser.ast.expr;

import com.android.tools.r8.internal.GF0;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TextBlockLiteralExprMetaModel;
import com.github.javaparser.utils.Pair;
import com.github.javaparser.utils.StringEscapeUtils;
import java.util.Arrays;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class TextBlockLiteralExpr extends LiteralStringValueExpr {
    public TextBlockLiteralExpr() {
        this(null, "empty");
    }

    private boolean emptyOrWhitespace(String rawLine) {
        return rawLine.trim().isEmpty();
    }

    private int indentSize(String s10) {
        String trim = s10.trim();
        return trim.isEmpty() ? s10.length() : s10.indexOf(trim);
    }

    private boolean isLastLine(String[] rawLines, Integer lineNr) {
        return lineNr.intValue() == rawLines.length - 1;
    }

    public static Pair lambda$stripIndentOfLines$0(final String[] rawLines, int nr) {
        return new Pair(Integer.valueOf(nr), rawLines[nr]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean lambda$stripIndentOfLines$1(final String[] rawLines, Pair l10) {
        return !emptyOrWhitespace((String) l10.f59827b) || isLastLine(rawLines, (Integer) l10.f59826a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Integer lambda$stripIndentOfLines$2(Pair l10) {
        return Integer.valueOf(indentSize((String) l10.f59827b));
    }

    public static String lambda$stripIndentOfLines$3(final int commonWhiteSpacePrefixSize, String l10) {
        return l10.length() < commonWhiteSpacePrefixSize ? l10 : l10.substring(commonWhiteSpacePrefixSize);
    }

    public String trimTrailing(String source) {
        int length = source.length() - 1;
        while (length >= 0 && Character.isWhitespace(source.charAt(length))) {
            length--;
        }
        int i10 = length + 1;
        return i10 < source.length() ? source.substring(0, i10) : source;
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (TextBlockLiteralExpr) arg);
    }

    public String asString() {
        return translateEscapes();
    }

    @Override
    public TextBlockLiteralExpr asTextBlockLiteralExpr() {
        return this;
    }

    @Override
    public void ifTextBlockLiteralExpr(Consumer<TextBlockLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isTextBlockLiteralExpr() {
        return true;
    }

    public String stripIndent() {
        return (String) stripIndentOfLines().collect(Collectors.joining("\n"));
    }

    public Stream<String> stripIndentOfLines() {
        final String[] split = getValue().split("\\R", -1);
        final int intValue = ((Integer) IntStream.range(0, split.length).mapToObj(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                Pair lambda$stripIndentOfLines$0;
                lambda$stripIndentOfLines$0 = TextBlockLiteralExpr.lambda$stripIndentOfLines$0(split, i10);
                return lambda$stripIndentOfLines$0;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$stripIndentOfLines$1;
                lambda$stripIndentOfLines$1 = TextBlockLiteralExpr.this.lambda$stripIndentOfLines$1(split, (Pair) obj);
                return lambda$stripIndentOfLines$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer lambda$stripIndentOfLines$2;
                lambda$stripIndentOfLines$2 = TextBlockLiteralExpr.this.lambda$stripIndentOfLines$2((Pair) obj);
                return lambda$stripIndentOfLines$2;
            }
        }).min(new GF0()).orElse(0)).intValue();
        return Arrays.stream(split).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$stripIndentOfLines$3;
                lambda$stripIndentOfLines$3 = TextBlockLiteralExpr.lambda$stripIndentOfLines$3(intValue, (String) obj);
                return lambda$stripIndentOfLines$3;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String trimTrailing;
                trimTrailing = TextBlockLiteralExpr.this.trimTrailing((String) obj);
                return trimTrailing;
            }
        });
    }

    @Override
    public Optional<TextBlockLiteralExpr> toTextBlockLiteralExpr() {
        return Optional.of(this);
    }

    public String translateEscapes() {
        return StringEscapeUtils.unescapeJavaTextBlock(stripIndent());
    }

    @AllFieldsConstructor
    public TextBlockLiteralExpr(final String value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (TextBlockLiteralExpr) arg);
    }

    public TextBlockLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    @Override
    public TextBlockLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.textBlockLiteralExprMetaModel;
    }

    @Override
    public TextBlockLiteralExpr mo1220clone() {
        return (TextBlockLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
