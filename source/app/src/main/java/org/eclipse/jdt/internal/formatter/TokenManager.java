package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jdt.internal.formatter.linewrap.CommentWrapExecutor;

public class TokenManager implements Iterable<Token> {
    static final boolean $assertionsDisabled = false;
    private static final Pattern COMMENT_LINE_ANNOTATION_PATTERN = Pattern.compile("^(\\s*\\*?\\s*)(@)");
    final CommentWrapExecutor commentWrapper;
    private List<Token[]> formatOffTagPairs = new ArrayList();
    private int headerEndIndex = 0;
    private TokenTraverser positionInLineCounter = new TokenTraverser() {
        private boolean isNLSTagInLine = false;

        @Override
        public boolean token(Token token, int i10) {
            int i11;
            if (i10 == this.value) {
                this.isNLSTagInLine = false;
                return false;
            }
            if (token.hasNLSTag()) {
                if (!TokenManager.$assertionsDisabled && token.tokenType != 46) {
                    throw new AssertionError();
                }
                this.isNLSTagInLine = true;
            }
            if (token.getAlign() > 0) {
                this.counter = token.getAlign();
            }
            List<Token> internalStructure = token.getInternalStructure();
            if (internalStructure == null || internalStructure.isEmpty()) {
                int i12 = this.counter;
                this.counter = i12 + TokenManager.this.getLength(token, i12);
            } else {
                if (!TokenManager.$assertionsDisabled && (i11 = token.tokenType) != 1002 && i11 != 1003) {
                    throw new AssertionError();
                }
                this.counter = TokenManager.this.commentWrapper.wrapMultiLineComment(token, this.counter, true, this.isNLSTagInLine);
            }
            if (isSpaceAfter()) {
                this.counter++;
            }
            return true;
        }
    };
    private final String source;
    private final int tabChar;
    private final int tabSize;
    private HashMap<Integer, Integer> tokenIndexToNLSAlign;
    private final List<Token> tokens;
    private final boolean wrapWithSpaces;

    public TokenManager(List<Token> list, String str, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.tokens = list;
        this.source = str;
        this.tabSize = defaultCodeFormatterOptions.tab_size;
        this.tabChar = defaultCodeFormatterOptions.tab_char;
        this.wrapWithSpaces = defaultCodeFormatterOptions.use_tabs_only_for_leading_indentations;
        this.commentWrapper = new CommentWrapExecutor(this, defaultCodeFormatterOptions);
    }

    private String getEscapedTokenString(Token token) {
        if (token.getLineBreaksBefore() > 0 && charAt(token.originalStart) == '@') {
            return "&#64;" + this.source.substring(token.originalStart + 1, token.originalEnd + 1);
        }
        if (token.tokenType == 0) {
            String token2 = token.toString(this.source);
            Matcher matcher = COMMENT_LINE_ANNOTATION_PATTERN.matcher(token2);
            if (matcher.find()) {
                return String.valueOf(matcher.group(1)) + "&#64;" + token2.substring(matcher.end(2));
            }
        }
        return token.toString(this.source);
    }

    private boolean tokenInside(ASTNode aSTNode, int i10) {
        return get(i10).originalStart >= aSTNode.getStartPosition() && get(i10).originalEnd <= aSTNode.getStartPosition() + aSTNode.getLength();
    }

    public void addDisableFormatTokenPair(Token token, Token token2) {
        this.formatOffTagPairs.add(new Token[]{token, token2});
    }

    public void addNLSAlignIndex(int i10, int i11) {
        if (this.tokenIndexToNLSAlign == null) {
            this.tokenIndexToNLSAlign = new HashMap<>();
        }
        this.tokenIndexToNLSAlign.put(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public char charAt(int i10) {
        return this.source.charAt(i10);
    }

    public int countLineBreaksBetween(Token token, Token token2) {
        return countLineBreaksBetween(this.source, token != null ? token.originalEnd + 1 : 0, token2 != null ? token2.originalStart : this.source.length());
    }

    public int findFirstTokenInLine(int i10) {
        return findFirstTokenInLine(i10, false, false);
    }

    public int findIndex(int i10, int i11, boolean z10) {
        int size = size() - 1;
        int i12 = 0;
        while (true) {
            if (i12 < size) {
                int i13 = (size + i12) / 2;
                Token token = get(i13);
                if (token.originalStart <= i10 && i10 <= token.originalEnd) {
                    i12 = i13;
                    break;
                }
                if (token.originalEnd < i10) {
                    i12 = i13 + 1;
                } else {
                    size = i13 - 1;
                }
            } else {
                break;
            }
        }
        if (!z10 && get(i12).originalStart > i10) {
            i12--;
        }
        if (z10 && get(i12).originalEnd < i10) {
            i12++;
        }
        while (i11 >= 0 && get(i12).tokenType != i11) {
            i12 += z10 ? 1 : -1;
        }
        return i12;
    }

    public int findSourcePositionInLine(int i10) {
        int i11 = i10;
        while (i11 > 0) {
            char charAt = charAt(i11);
            if (charAt == '\r' || charAt == '\n') {
                break;
            }
            i11--;
        }
        return getLength(i11, i10 - 1, 0);
    }

    public int firstIndexAfter(ASTNode aSTNode, int i10) {
        return findIndex(aSTNode.getStartPosition() + aSTNode.getLength(), i10, true);
    }

    public int firstIndexBefore(ASTNode aSTNode, int i10) {
        return findIndex(aSTNode.getStartPosition() - 1, i10, false);
    }

    public int firstIndexIn(ASTNode aSTNode, int i10) {
        return findIndex(aSTNode.getStartPosition(), i10, true);
    }

    public Token firstTokenAfter(ASTNode aSTNode, int i10) {
        return get(firstIndexAfter(aSTNode, i10));
    }

    public Token firstTokenBefore(ASTNode aSTNode, int i10) {
        return get(firstIndexBefore(aSTNode, i10));
    }

    public Token firstTokenIn(ASTNode aSTNode, int i10) {
        return get(firstIndexIn(aSTNode, i10));
    }

    public Token get(int i10) {
        return this.tokens.get(i10);
    }

    public List<Token[]> getDisableFormatTokenPairs() {
        return this.formatOffTagPairs;
    }

    public int getLength(Token token, int i10) {
        int length = getLength(token.originalStart, token.originalEnd, i10);
        return token.isToEscape() ? ((token.getLineBreaksBefore() <= 0 || charAt(token.originalStart) != '@') && !(token.tokenType == 0 && COMMENT_LINE_ANNOTATION_PATTERN.matcher(token.toString(this.source)).find())) ? length : length + 4 : length;
    }

    public int getNLSAlign(int i10) {
        Integer num;
        HashMap<Integer, Integer> hashMap = this.tokenIndexToNLSAlign;
        if (hashMap == null || (num = hashMap.get(Integer.valueOf(i10))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getPositionInLine(int i10) {
        Token token = get(i10);
        int findFirstTokenInLine = token.getLineBreaksBefore() > 0 ? i10 : findFirstTokenInLine(i10);
        Token token2 = get(findFirstTokenInLine);
        int indent = toIndent(token2.getIndent(), token2.getWrapPolicy() != null);
        TokenTraverser tokenTraverser = this.positionInLineCounter;
        tokenTraverser.value = i10;
        tokenTraverser.counter = indent;
        traverse(findFirstTokenInLine, tokenTraverser);
        return Math.max(this.positionInLineCounter.counter, token.getAlign());
    }

    public String getSource() {
        return this.source;
    }

    public int getSourceLength() {
        return this.source.length();
    }

    public int indexOf(Token token) {
        int findIndex = findIndex(token.originalStart, -1, false);
        if (get(findIndex) != token) {
            return -1;
        }
        return findIndex;
    }

    public void insert(int i10, Token token) {
        this.tokens.add(i10, token);
    }

    public boolean isInHeader(int i10) {
        return i10 < this.headerEndIndex;
    }

    public boolean isStringConcatenation(InfixExpression infixExpression) {
        if (!infixExpression.getOperator().equals(InfixExpression.Operator.PLUS)) {
            return false;
        }
        ArrayList<Expression> arrayList = new ArrayList(infixExpression.extendedOperands());
        arrayList.add(infixExpression.getLeftOperand());
        arrayList.add(infixExpression.getRightOperand());
        for (Expression expression : arrayList) {
            if (expression instanceof StringLiteral) {
                return true;
            }
            if ((expression instanceof InfixExpression) && isStringConcatenation((InfixExpression) expression)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Iterator<Token> iterator() {
        return this.tokens.iterator();
    }

    public int lastIndexIn(ASTNode aSTNode, int i10) {
        return findIndex((aSTNode.getStartPosition() + aSTNode.getLength()) - 1, i10, false);
    }

    public Token lastTokenIn(ASTNode aSTNode, int i10) {
        return get(lastIndexIn(aSTNode, i10));
    }

    public void remove(int i10) {
        this.tokens.remove(i10);
    }

    public void setHeaderEndIndex(int i10) {
        this.headerEndIndex = i10;
    }

    public int size() {
        return this.tokens.size();
    }

    public int toIndent(int i10, boolean z10) {
        if (this.tabChar != 1) {
            return i10;
        }
        if (z10 && this.wrapWithSpaces) {
            return i10;
        }
        int i11 = this.tabSize;
        if (i11 <= 0) {
            return 0;
        }
        return (((i10 + i11) - 1) / i11) * i11;
    }

    public String toString(int i10) {
        return toString(get(i10));
    }

    public int traverse(int i10, TokenTraverser tokenTraverser) {
        return tokenTraverser.traverse(this.tokens, i10);
    }

    public int findFirstTokenInLine(int i10, boolean z10, boolean z11) {
        Token token = get(i10);
        int i11 = i10 - 1;
        while (i11 >= 0) {
            Token token2 = get(i11);
            if (token2.getLineBreaksAfter() > 0 || token.getLineBreaksBefore() > 0) {
                if (token.getWrapPolicy() != null) {
                    if (token.getWrapPolicy().wrapMode == Token.WrapMode.BLOCK_INDENT) {
                        if (z11) {
                        }
                    } else if (z10) {
                    }
                }
                return i11 + 1;
            }
            i11--;
            token = token2;
        }
        return 0;
    }

    public String toString(Token token) {
        if (token.isToEscape()) {
            return getEscapedTokenString(token);
        }
        return token.toString(this.source);
    }

    public int countLineBreaksBetween(String str, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt != '\n') {
                if (charAt == '\r') {
                    i13++;
                    i12 = i10 + 1;
                    if (i12 < i11) {
                        if (str.charAt(i12) != '\n') {
                        }
                        i10 = i12;
                    }
                }
                i10++;
            } else {
                i13++;
                i12 = i10 + 1;
                if (i12 < i11) {
                    if (str.charAt(i12) != '\r') {
                    }
                    i10 = i12;
                }
                i10++;
            }
        }
        return i13;
    }

    public String toString(ASTNode aSTNode) {
        return this.source.substring(aSTNode.getStartPosition(), aSTNode.getStartPosition() + aSTNode.getLength());
    }

    public int getLength(int i10, int i11, int i12) {
        int i13 = i12;
        while (i10 <= i11) {
            char charAt = this.source.charAt(i10);
            if (charAt != '\t') {
                i13 = (charAt == '\n' || charAt == '\r') ? 0 : i13 + 1;
            } else {
                int i14 = this.tabSize;
                if (i14 > 0) {
                    i13 += i14 - (i13 % i14);
                }
            }
            i10++;
        }
        return i13 - i12;
    }

    public TokenManager(List<Token> list, TokenManager tokenManager) {
        this.tokens = list;
        this.source = tokenManager.source;
        this.tabSize = tokenManager.tabSize;
        this.tabChar = tokenManager.tabChar;
        this.wrapWithSpaces = tokenManager.wrapWithSpaces;
        this.commentWrapper = tokenManager.commentWrapper;
    }
}
