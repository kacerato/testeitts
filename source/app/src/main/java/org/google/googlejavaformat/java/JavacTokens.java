package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.M1;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.javac.parser.JavaTokenizer;
import org.openjdk.tools.javac.parser.Scanner;
import org.openjdk.tools.javac.parser.ScannerFactory;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.parser.UnicodeReader;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import w2.H;

class JavacTokens {
    private static final CharSequence EOF_COMMENT = "\n//EOF";

    public static class AccessibleReader extends UnicodeReader {
        public AccessibleReader(ScannerFactory fac, char[] buffer, int length) {
            super(fac, buffer, length);
        }
    }

    public static class AccessibleScanner extends Scanner {
        public AccessibleScanner(ScannerFactory fac, JavaTokenizer tokenizer) {
            super(fac, tokenizer);
        }
    }

    public static class CommentSavingTokenizer extends JavaTokenizer {
        public CommentSavingTokenizer(ScannerFactory fac, char[] buffer, int length) {
            super(fac, buffer, length);
        }

        @Override
        public Tokens.Comment processComment(int pos, int endPos, Tokens.Comment.CommentStyle style) {
            char[] rawCharacters = this.reader.getRawCharacters(pos, endPos);
            return new CommentWithTextAndPosition(pos, endPos, new AccessibleReader(this.fac, rawCharacters, rawCharacters.length), style);
        }
    }

    public static class CommentWithTextAndPosition implements Tokens.Comment {
        private final int endPos;
        private final int pos;
        private final AccessibleReader reader;
        private final Tokens.Comment.CommentStyle style;
        private String text = null;

        public CommentWithTextAndPosition(int pos, int endPos, AccessibleReader reader, Tokens.Comment.CommentStyle style) {
            this.pos = pos;
            this.endPos = endPos;
            this.reader = reader;
            this.style = style;
        }

        @Override
        public int getSourcePos(int index) {
            H.m(index >= 0 && index < this.endPos - this.pos, "Expected %s in the range [0, %s)", index, this.endPos - this.pos);
            return this.pos + index;
        }

        @Override
        public Tokens.Comment.CommentStyle getStyle() {
            return this.style;
        }

        @Override
        public String getText() {
            String str = this.text;
            if (str != null) {
                return str;
            }
            String str2 = new String(this.reader.getRawCharacters());
            this.text = str2;
            return str2;
        }

        @Override
        public boolean isDeprecated() {
            return false;
        }

        public String toString() {
            return String.format("Comment: '%s'", getText());
        }
    }

    public static class RawTok {
        private final int endPos;
        private final Tokens.TokenKind kind;
        private final int pos;
        private final String stringVal;

        public RawTok(String stringVal, Tokens.TokenKind kind, int pos, int endPos) {
            this.stringVal = stringVal;
            this.kind = kind;
            this.pos = pos;
            this.endPos = endPos;
        }

        public int endPos() {
            return this.endPos;
        }

        public Tokens.TokenKind kind() {
            return this.kind;
        }

        public int pos() {
            return this.pos;
        }

        public String stringVal() {
            return this.stringVal;
        }
    }

    public static AbstractC12521g1<RawTok> getTokens(String source, Context context, Set<Tokens.TokenKind> stopTokens) {
        if (source == null) {
            return AbstractC12521g1.x();
        }
        ScannerFactory instance = ScannerFactory.instance(context);
        char[] charArray = (source + ((Object) EOF_COMMENT)).toCharArray();
        AccessibleScanner accessibleScanner = new AccessibleScanner(instance, new CommentSavingTokenizer(instance, charArray, charArray.length));
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        int length = source.length();
        int i10 = 0;
        while (true) {
            accessibleScanner.nextToken();
            Tokens.Token token = accessibleScanner.token();
            List<Tokens.Comment> list = token.comments;
            if (list != null) {
                for (Tokens.Comment comment : M1.B(list)) {
                    if (i10 < comment.getSourcePos(0)) {
                        m10.a(new RawTok(null, null, i10, comment.getSourcePos(0)));
                    }
                    m10.a(new RawTok(null, null, comment.getSourcePos(0), comment.getSourcePos(0) + comment.getText().length()));
                    i10 = comment.getSourcePos(0) + comment.getText().length();
                }
            }
            if (!stopTokens.contains(token.kind)) {
                int i11 = token.pos;
                if (i10 < i11) {
                    m10.a(new RawTok(null, null, i10, i11));
                }
                m10.a(new RawTok(token.kind == Tokens.TokenKind.STRINGLITERAL ? JavadocConstants.ANCHOR_PREFIX_END + token.stringVal() + JavadocConstants.ANCHOR_PREFIX_END : null, token.kind, token.pos, token.endPos));
                i10 = token.endPos;
                if (accessibleScanner.token().kind == Tokens.TokenKind.EOF) {
                    break;
                }
            } else if (token.kind != Tokens.TokenKind.EOF) {
                length = token.pos;
            }
        }
        if (i10 < length) {
            m10.a(new RawTok(null, null, i10, length));
        }
        return m10.e();
    }
}
