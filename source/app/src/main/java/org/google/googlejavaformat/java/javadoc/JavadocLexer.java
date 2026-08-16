package org.google.googlejavaformat.java.javadoc;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.E1;
import com.google.common.collect.InterfaceC12522g2;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.math3.geometry.VectorFormat;
import org.google.googlejavaformat.java.javadoc.Token;
import w2.AbstractC15885e;
import w2.C15883c;
import w2.H;
import w2.W;

final class JavadocLexer {
    private final CharStream input;
    private boolean somethingSinceNewline;
    private static final Pattern NON_UNIX_LINE_ENDING = Pattern.compile("\r\n?");
    private static final AbstractC15885e NEWLINE = AbstractC15885e.q('\n');
    private static final Pattern NEWLINE_PATTERN = Pattern.compile("^[ \t]*\n[ \t]*[*]?[ \t]?");
    private static final Pattern FOOTER_TAG_PATTERN = Pattern.compile("^@(param\\s+<\\w+>|[a-z]\\w*)");
    private static final Pattern MOE_BEGIN_STRIP_COMMENT_PATTERN = Pattern.compile("^<!--\\s*MOE:begin_intracomment_strip\\s*-->");
    private static final Pattern MOE_END_STRIP_COMMENT_PATTERN = Pattern.compile("^<!--\\s*MOE:end_intracomment_strip\\s*-->");
    private static final Pattern HTML_COMMENT_PATTERN = fullCommentPattern();
    private static final Pattern PRE_OPEN_PATTERN = openTagPattern("pre");
    private static final Pattern PRE_CLOSE_PATTERN = closeTagPattern("pre");
    private static final Pattern CODE_OPEN_PATTERN = openTagPattern("code");
    private static final Pattern CODE_CLOSE_PATTERN = closeTagPattern("code");
    private static final Pattern TABLE_OPEN_PATTERN = openTagPattern("table");
    private static final Pattern TABLE_CLOSE_PATTERN = closeTagPattern("table");
    private static final Pattern LIST_OPEN_PATTERN = openTagPattern("ul|ol|dl");
    private static final Pattern LIST_CLOSE_PATTERN = closeTagPattern("ul|ol|dl");
    private static final Pattern LIST_ITEM_OPEN_PATTERN = openTagPattern("li|dt|dd");
    private static final Pattern LIST_ITEM_CLOSE_PATTERN = closeTagPattern("li|dt|dd");
    private static final Pattern HEADER_OPEN_PATTERN = openTagPattern("h[1-6]");
    private static final Pattern HEADER_CLOSE_PATTERN = closeTagPattern("h[1-6]");
    private static final Pattern PARAGRAPH_OPEN_PATTERN = openTagPattern(a.f72594b);
    private static final Pattern PARAGRAPH_CLOSE_PATTERN = closeTagPattern(a.f72594b);
    private static final Pattern BLOCKQUOTE_OPEN_PATTERN = openTagPattern("blockquote");
    private static final Pattern BLOCKQUOTE_CLOSE_PATTERN = closeTagPattern("blockquote");
    private static final Pattern BR_PATTERN = openTagPattern("br");
    private static final Pattern INLINE_TAG_OPEN_PATTERN = Pattern.compile("^[{]@\\w*");
    private static final Pattern LITERAL_PATTERN = Pattern.compile("^.[^ \t\n@<{}*]*", 32);
    private final NestingCounter braceDepth = new NestingCounter();
    private final NestingCounter preDepth = new NestingCounter();
    private final NestingCounter codeDepth = new NestingCounter();
    private final NestingCounter tableDepth = new NestingCounter();

    public static class LexException extends Exception {
    }

    private JavadocLexer(CharStream input) {
        this.input = (CharStream) H.E(input);
    }

    private void checkMatchingTags() throws LexException {
        if (this.braceDepth.isPositive() || this.preDepth.isPositive() || this.tableDepth.isPositive() || this.codeDepth.isPositive()) {
            throw new LexException();
        }
    }

    private static Pattern closeTagPattern(String namePattern) {
        return Pattern.compile(String.format("^</(?:%s)\\b[^>]*>", namePattern), 2);
    }

    private Token.Type consumeToken() throws LexException {
        boolean preserveExistingFormatting = preserveExistingFormatting();
        if (this.input.tryConsumeRegex(NEWLINE_PATTERN)) {
            this.somethingSinceNewline = false;
            return preserveExistingFormatting ? Token.Type.FORCED_NEWLINE : Token.Type.WHITESPACE;
        }
        if (this.input.tryConsume(" ") || this.input.tryConsume("\t")) {
            return preserveExistingFormatting ? Token.Type.LITERAL : Token.Type.WHITESPACE;
        }
        if (!this.somethingSinceNewline && this.input.tryConsumeRegex(FOOTER_TAG_PATTERN)) {
            checkMatchingTags();
            this.somethingSinceNewline = true;
            return Token.Type.FOOTER_JAVADOC_TAG_START;
        }
        this.somethingSinceNewline = true;
        if (this.input.tryConsumeRegex(INLINE_TAG_OPEN_PATTERN)) {
            this.braceDepth.increment();
            return Token.Type.LITERAL;
        }
        if (this.input.tryConsume("{")) {
            this.braceDepth.incrementIfPositive();
            return Token.Type.LITERAL;
        }
        if (this.input.tryConsume(VectorFormat.DEFAULT_SUFFIX)) {
            this.braceDepth.decrementIfPositive();
            return Token.Type.LITERAL;
        }
        if (this.braceDepth.isPositive()) {
            W.a(this.input.tryConsumeRegex(LITERAL_PATTERN));
            return Token.Type.LITERAL;
        }
        if (this.input.tryConsumeRegex(PRE_OPEN_PATTERN)) {
            this.preDepth.increment();
            return preserveExistingFormatting ? Token.Type.LITERAL : Token.Type.PRE_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(PRE_CLOSE_PATTERN)) {
            this.preDepth.decrementIfPositive();
            return preserveExistingFormatting() ? Token.Type.LITERAL : Token.Type.PRE_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(CODE_OPEN_PATTERN)) {
            this.codeDepth.increment();
            return preserveExistingFormatting ? Token.Type.LITERAL : Token.Type.CODE_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(CODE_CLOSE_PATTERN)) {
            this.codeDepth.decrementIfPositive();
            return preserveExistingFormatting() ? Token.Type.LITERAL : Token.Type.CODE_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(TABLE_OPEN_PATTERN)) {
            this.tableDepth.increment();
            return preserveExistingFormatting ? Token.Type.LITERAL : Token.Type.TABLE_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(TABLE_CLOSE_PATTERN)) {
            this.tableDepth.decrementIfPositive();
            return preserveExistingFormatting() ? Token.Type.LITERAL : Token.Type.TABLE_CLOSE_TAG;
        }
        if (preserveExistingFormatting) {
            W.a(this.input.tryConsumeRegex(LITERAL_PATTERN));
            return Token.Type.LITERAL;
        }
        if (this.input.tryConsumeRegex(PARAGRAPH_OPEN_PATTERN)) {
            return Token.Type.PARAGRAPH_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(PARAGRAPH_CLOSE_PATTERN)) {
            return Token.Type.PARAGRAPH_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(LIST_OPEN_PATTERN)) {
            return Token.Type.LIST_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(LIST_CLOSE_PATTERN)) {
            return Token.Type.LIST_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(LIST_ITEM_OPEN_PATTERN)) {
            return Token.Type.LIST_ITEM_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(LIST_ITEM_CLOSE_PATTERN)) {
            return Token.Type.LIST_ITEM_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(BLOCKQUOTE_OPEN_PATTERN)) {
            return Token.Type.BLOCKQUOTE_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(BLOCKQUOTE_CLOSE_PATTERN)) {
            return Token.Type.BLOCKQUOTE_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(HEADER_OPEN_PATTERN)) {
            return Token.Type.HEADER_OPEN_TAG;
        }
        if (this.input.tryConsumeRegex(HEADER_CLOSE_PATTERN)) {
            return Token.Type.HEADER_CLOSE_TAG;
        }
        if (this.input.tryConsumeRegex(BR_PATTERN)) {
            return Token.Type.BR_TAG;
        }
        if (this.input.tryConsumeRegex(MOE_BEGIN_STRIP_COMMENT_PATTERN)) {
            return Token.Type.MOE_BEGIN_STRIP_COMMENT;
        }
        if (this.input.tryConsumeRegex(MOE_END_STRIP_COMMENT_PATTERN)) {
            return Token.Type.MOE_END_STRIP_COMMENT;
        }
        if (this.input.tryConsumeRegex(HTML_COMMENT_PATTERN)) {
            return Token.Type.HTML_COMMENT;
        }
        if (this.input.tryConsumeRegex(LITERAL_PATTERN)) {
            return Token.Type.LITERAL;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void deindentPreCodeBlock(AbstractC12521g1.a<Token> output, InterfaceC12522g2<Token> tokens) {
        int n10;
        ArrayDeque<Token> arrayDeque = new ArrayDeque();
        output.a(new Token(Token.Type.LITERAL, tokens.next().getValue().trim()));
        while (tokens.hasNext() && tokens.peek().getType() != Token.Type.PRE_CLOSE_TAG) {
            arrayDeque.addLast(tokens.next());
        }
        while (!arrayDeque.isEmpty() && ((Token) arrayDeque.peekFirst()).getType() == Token.Type.FORCED_NEWLINE) {
            arrayDeque.removeFirst();
        }
        while (!arrayDeque.isEmpty() && ((Token) arrayDeque.peekLast()).getType() == Token.Type.FORCED_NEWLINE) {
            arrayDeque.removeLast();
        }
        if (arrayDeque.isEmpty()) {
            return;
        }
        Token token = (Token) arrayDeque.peekLast();
        Token.Type type = token.getType();
        Token.Type type2 = Token.Type.LITERAL;
        boolean z10 = false;
        if (type == type2 && token.getValue().endsWith(VectorFormat.DEFAULT_SUFFIX)) {
            arrayDeque.removeLast();
            if (token.length() > 1) {
                arrayDeque.addLast(new Token(type2, token.getValue().substring(0, token.getValue().length() - 1)));
                arrayDeque.addLast(new Token(Token.Type.FORCED_NEWLINE, null));
            }
            z10 = true;
        }
        int i10 = -1;
        for (Token token2 : arrayDeque) {
            if (token2.getType() == Token.Type.LITERAL && (n10 = AbstractC15885e.s(C15883c.f126249O).n(token2.getValue())) != -1 && (i10 == -1 || n10 < i10)) {
                i10 = n10;
            }
        }
        output.a(new Token(Token.Type.FORCED_NEWLINE, "\n"));
        for (Token token3 : arrayDeque) {
            Token.Type type3 = token3.getType();
            Token.Type type4 = Token.Type.LITERAL;
            if (type3 == type4) {
                output.a(new Token(type4, (i10 <= 0 || token3.length() <= i10) ? token3.getValue() : token3.getValue().substring(i10)));
            } else {
                output.a(token3);
            }
        }
        if (z10) {
            output.a(new Token(Token.Type.LITERAL, VectorFormat.DEFAULT_SUFFIX));
        } else {
            output.a(new Token(Token.Type.FORCED_NEWLINE, "\n"));
        }
    }

    private static AbstractC12521g1<Token> deindentPreCodeBlocks(List<Token> input) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        InterfaceC12522g2 T10 = E1.T(input.iterator());
        while (T10.hasNext()) {
            if (((Token) T10.peek()).getType() != Token.Type.PRE_OPEN_TAG) {
                m10.a((Token) T10.next());
            } else {
                m10.a((Token) T10.next());
                ArrayList arrayList = new ArrayList();
                while (T10.hasNext() && ((Token) T10.peek()).getType() == Token.Type.FORCED_NEWLINE) {
                    arrayList.add((Token) T10.next());
                }
                if (((Token) T10.peek()).getType() == Token.Type.LITERAL && ((Token) T10.peek()).getValue().matches("[ \t]*[{]@code")) {
                    deindentPreCodeBlock(m10, T10);
                } else {
                    m10.c(arrayList);
                    m10.a((Token) T10.next());
                }
            }
        }
        return m10.e();
    }

    private static Pattern fullCommentPattern() {
        return Pattern.compile("^<!--.*?-->", 32);
    }

    private AbstractC12521g1<Token> generateTokens() throws LexException {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        m10.a(new Token(Token.Type.BEGIN_JAVADOC, "/**"));
        while (!this.input.isExhausted()) {
            m10.a(readToken());
        }
        checkMatchingTags();
        m10.a(new Token(Token.Type.END_JAVADOC, "*/"));
        return deindentPreCodeBlocks(optionalizeSpacesAfterLinks(inferParagraphTags(joinAdjacentLiteralsAndAdjacentWhitespace(m10.e()))));
    }

    private static boolean hasMultipleNewlines(String s10) {
        return NEWLINE.i(s10) > 1;
    }

    private static AbstractC12521g1<Token> inferParagraphTags(List<Token> input) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        InterfaceC12522g2 T10 = E1.T(input.iterator());
        while (T10.hasNext()) {
            Token.Type type = ((Token) T10.peek()).getType();
            Token.Type type2 = Token.Type.LITERAL;
            if (type == type2) {
                m10.a((Token) T10.next());
                if (((Token) T10.peek()).getType() == Token.Type.WHITESPACE && hasMultipleNewlines(((Token) T10.peek()).getValue())) {
                    m10.a((Token) T10.next());
                    if (((Token) T10.peek()).getType() == type2) {
                        m10.a(new Token(Token.Type.PARAGRAPH_OPEN_TAG, "<p>"));
                    }
                }
            } else {
                m10.a((Token) T10.next());
            }
        }
        return m10.e();
    }

    private static AbstractC12521g1<Token> joinAdjacentLiteralsAndAdjacentWhitespace(List<Token> input) {
        Token.Type type;
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        StringBuilder sb2 = new StringBuilder();
        InterfaceC12522g2 T10 = E1.T(input.iterator());
        while (T10.hasNext()) {
            if (((Token) T10.peek()).getType() == Token.Type.LITERAL) {
                sb2.append(((Token) T10.peek()).getValue());
                T10.next();
            } else if (sb2.length() == 0) {
                m10.a((Token) T10.peek());
                T10.next();
            } else {
                StringBuilder sb3 = new StringBuilder();
                while (true) {
                    Token.Type type2 = ((Token) T10.peek()).getType();
                    type = Token.Type.WHITESPACE;
                    if (type2 != type) {
                        break;
                    }
                    sb3.append(((Token) T10.next()).getValue());
                }
                Token.Type type3 = ((Token) T10.peek()).getType();
                Token.Type type4 = Token.Type.LITERAL;
                if (type3 == type4 && ((Token) T10.peek()).getValue().startsWith("@")) {
                    sb2.append(" ");
                    sb2.append(((Token) T10.peek()).getValue());
                    T10.next();
                } else {
                    m10.a(new Token(type4, sb2.toString()));
                    sb2.setLength(0);
                    if (sb3.length() > 0) {
                        m10.a(new Token(type, sb3.toString()));
                    }
                }
            }
        }
        return m10.e();
    }

    public static AbstractC12521g1<Token> lex(String input) throws LexException {
        return new JavadocLexer(new CharStream(normalizeLineEndings(stripJavadocBeginAndEnd(input)))).generateTokens();
    }

    private static String normalizeLineEndings(String input) {
        return NON_UNIX_LINE_ENDING.matcher(input).replaceAll("\n");
    }

    private static Pattern openTagPattern(String namePattern) {
        return Pattern.compile(String.format("^<(?:%s)\\b[^>]*>", namePattern), 2);
    }

    private static AbstractC12521g1<Token> optionalizeSpacesAfterLinks(List<Token> input) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        InterfaceC12522g2 T10 = E1.T(input.iterator());
        while (T10.hasNext()) {
            if (((Token) T10.peek()).getType() == Token.Type.LITERAL && ((Token) T10.peek()).getValue().matches("^href=[^>]*>")) {
                m10.a((Token) T10.next());
                if (((Token) T10.peek()).getType() == Token.Type.WHITESPACE) {
                    m10.a(new Token(Token.Type.OPTIONAL_LINE_BREAK, ((Token) T10.next()).getValue()));
                }
            } else {
                m10.a((Token) T10.next());
            }
        }
        return m10.e();
    }

    private boolean preserveExistingFormatting() {
        return this.preDepth.isPositive() || this.tableDepth.isPositive() || this.codeDepth.isPositive();
    }

    private Token readToken() throws LexException {
        return new Token(consumeToken(), this.input.readAndResetRecorded());
    }

    private static String stripJavadocBeginAndEnd(String input) {
        H.u(input.startsWith("/**"), "Missing /**: %s", input);
        H.u(input.endsWith("*/") && input.length() > 4, "Missing */: %s", input);
        return input.substring(3, input.length() - 2);
    }
}
