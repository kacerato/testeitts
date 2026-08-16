package org.google.googlejavaformat.java.javadoc;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.google.googlejavaformat.java.javadoc.JavadocLexer;
import org.google.googlejavaformat.java.javadoc.Token;

public final class JavadocFormatter {
    private static final Token STANDARD_BR_TOKEN = new Token(Token.Type.BR_TAG, "<br>");
    private static final Token STANDARD_P_TOKEN = new Token(Token.Type.PARAGRAPH_OPEN_TAG, "<p>");
    private static final Pattern SIMPLE_TAG_PATTERN = Pattern.compile("^<\\w+\\s*/?\\s*>", 2);
    private static final Pattern ONE_CONTENT_LINE_PATTERN = Pattern.compile(" */[*][*]\n *[*] (.*)\n *[*]/");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type;

        static {
            int[] iArr = new int[Token.Type.values().length];
            $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type = iArr;
            try {
                iArr[Token.Type.BEGIN_JAVADOC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.END_JAVADOC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.FOOTER_JAVADOC_TAG_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.LIST_OPEN_TAG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.LIST_CLOSE_TAG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.LIST_ITEM_OPEN_TAG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.HEADER_OPEN_TAG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.HEADER_CLOSE_TAG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.PARAGRAPH_OPEN_TAG.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.BLOCKQUOTE_OPEN_TAG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.BLOCKQUOTE_CLOSE_TAG.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.PRE_OPEN_TAG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.PRE_CLOSE_TAG.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.CODE_OPEN_TAG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.CODE_CLOSE_TAG.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.TABLE_OPEN_TAG.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.TABLE_CLOSE_TAG.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.MOE_BEGIN_STRIP_COMMENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.MOE_END_STRIP_COMMENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.HTML_COMMENT.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.BR_TAG.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.WHITESPACE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.FORCED_NEWLINE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.LITERAL.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.PARAGRAPH_CLOSE_TAG.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.LIST_ITEM_CLOSE_TAG.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[Token.Type.OPTIONAL_LINE_BREAK.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    private JavadocFormatter() {
    }

    public static String formatJavadoc(String input, int blockIndent, JavadocOptions options) {
        try {
            return makeSingleLineIfPossible(blockIndent, render(JavadocLexer.lex(input), blockIndent, options), options);
        } catch (JavadocLexer.LexException unused) {
            return input;
        }
    }

    private static String makeSingleLineIfPossible(int blockIndent, String input, JavadocOptions options) {
        int maxLineLength = (options.maxLineLength() - 7) - blockIndent;
        Matcher matcher = ONE_CONTENT_LINE_PATTERN.matcher(input);
        if (matcher.matches() && matcher.group(1).isEmpty()) {
            return "/** */";
        }
        if (!matcher.matches() || matcher.group(1).length() > maxLineLength) {
            return input;
        }
        return "/** " + matcher.group(1) + " */";
    }

    private static String render(List<Token> input, int blockIndent, JavadocOptions options) {
        JavadocWriter javadocWriter = new JavadocWriter(blockIndent, options);
        for (Token token : input) {
            switch (AnonymousClass1.$SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type[token.getType().ordinal()]) {
                case 1:
                    javadocWriter.writeBeginJavadoc();
                    break;
                case 2:
                    javadocWriter.writeEndJavadoc();
                    return javadocWriter.toString();
                case 3:
                    javadocWriter.writeFooterJavadocTagStart(token);
                    break;
                case 4:
                    javadocWriter.writeListOpen(token);
                    break;
                case 5:
                    javadocWriter.writeListClose(token);
                    break;
                case 6:
                    javadocWriter.writeListItemOpen(token);
                    break;
                case 7:
                    javadocWriter.writeHeaderOpen(token);
                    break;
                case 8:
                    javadocWriter.writeHeaderClose(token);
                    break;
                case 9:
                    javadocWriter.writeParagraphOpen(standardizePToken(token));
                    break;
                case 10:
                case 11:
                    javadocWriter.writeBlockquoteOpenOrClose(token);
                    break;
                case 12:
                    javadocWriter.writePreOpen(token);
                    break;
                case 13:
                    javadocWriter.writePreClose(token);
                    break;
                case 14:
                    javadocWriter.writeCodeOpen(token);
                    break;
                case 15:
                    javadocWriter.writeCodeClose(token);
                    break;
                case 16:
                    javadocWriter.writeTableOpen(token);
                    break;
                case 17:
                    javadocWriter.writeTableClose(token);
                    break;
                case 18:
                    javadocWriter.requestMoeBeginStripComment(token);
                    break;
                case 19:
                    javadocWriter.writeMoeEndStripComment(token);
                    break;
                case 20:
                    javadocWriter.writeHtmlComment(token);
                    break;
                case 21:
                    javadocWriter.writeBr(standardizeBrToken(token));
                    break;
                case 22:
                    javadocWriter.requestWhitespace();
                    break;
                case 23:
                    javadocWriter.writeLineBreakNoAutoIndent();
                    break;
                case 24:
                    javadocWriter.writeLiteral(token);
                    break;
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    throw new AssertionError(token.getType());
            }
        }
        throw new AssertionError();
    }

    private static Token standardize(Token token, Token standardToken) {
        return SIMPLE_TAG_PATTERN.matcher(token.getValue()).matches() ? standardToken : token;
    }

    private static Token standardizeBrToken(Token token) {
        return standardize(token, STANDARD_BR_TOKEN);
    }

    private static Token standardizePToken(Token token) {
        return standardize(token, STANDARD_P_TOKEN);
    }
}
