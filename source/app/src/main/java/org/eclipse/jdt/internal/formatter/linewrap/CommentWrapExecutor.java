package org.eclipse.jdt.internal.formatter.linewrap;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jdt.internal.formatter.TokenManager;
import org.eclipse.jdt.internal.formatter.TokenTraverser;

public class CommentWrapExecutor extends TokenTraverser {
    static final boolean $assertionsDisabled = false;
    private int counterIfWrapped;
    private int counterIfWrappedSubstitute;
    private int lineCounter;
    private int lineLimit;
    private int lineStartPosition;
    private boolean newLinesAtBoundries;
    private final ArrayList<Token> nlsTags = new ArrayList<>();
    private final DefaultCodeFormatterOptions options;
    private Token potentialWrapToken;
    private Token potentialWrapTokenSubstitute;
    private boolean simulation;

    private final TokenManager f102638tm;
    private boolean wrapDisabled;

    public CommentWrapExecutor(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102638tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
    }

    private void cleanupIndent(List<Token> list) {
        if (this.simulation) {
            return;
        }
        new TokenTraverser() {
            @Override
            public boolean token(Token token, int i10) {
                if (token.tokenType != 1003 || token.getInternalStructure() != null) {
                    return true;
                }
                if (getLineBreaksBefore() > 0) {
                    token.setAlign(token.getAlign() + token.getIndent());
                }
                token.setIndent(0);
                return true;
            }
        }.traverse(list, 0);
    }

    private int getLineLimit(int i10) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        int i11 = defaultCodeFormatterOptions.comment_line_length;
        if (!defaultCodeFormatterOptions.comment_count_line_length_from_starting_position) {
            return i11;
        }
        int i12 = defaultCodeFormatterOptions.page_width;
        int i13 = i10 + i11;
        return (i13 <= i12 || i11 > i12) ? i13 : i12;
    }

    private int getStartingPosition(Token token, boolean z10) {
        int align = this.lineStartPosition + token.getAlign() + (z10 ? token.getIndent() : 0);
        return token.tokenType != 0 ? align + 3 : align;
    }

    private boolean shouldWrap() {
        int i10;
        if (this.wrapDisabled || this.counter <= this.lineLimit) {
            return false;
        }
        if (getLineBreaksAfter() == 0 && getNext() != null && getNext().getWrapPolicy() == Token.WrapPolicy.DISABLE_WRAP) {
            return false;
        }
        if (this.potentialWrapToken != null && this.potentialWrapTokenSubstitute != null && (i10 = this.counterIfWrapped) > this.lineLimit && this.counterIfWrappedSubstitute < i10) {
            this.potentialWrapToken = null;
        }
        return (this.potentialWrapToken == null && this.potentialWrapTokenSubstitute == null) ? false : true;
    }

    private int tryToFitInOneLine(List<Token> list, int i10, boolean z10) {
        boolean z11 = false;
        boolean z12 = false;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Token token = list.get(i11);
            if (token.getLineBreaksBefore() > 0 || token.getLineBreaksAfter() > 0) {
                return -1;
            }
            if (!z11 && token.isSpaceBefore()) {
                i10++;
            }
            i10 += this.f102638tm.getLength(token, i10);
            z11 = token.isSpaceAfter();
            if (z11) {
                i10++;
            }
            Token.WrapPolicy wrapPolicy = token.getWrapPolicy();
            if (i11 > 1 && (wrapPolicy == null || wrapPolicy == Token.WrapPolicy.SUBSTITUTE_ONLY)) {
                z12 = true;
            }
        }
        if (i10 <= this.lineLimit || z10 || !z12) {
            return i10;
        }
        return -1;
    }

    public int getLinesCount() {
        return this.lineCounter;
    }

    @Override
    public boolean token(Token token, int i10) {
        int startingPosition = getStartingPosition(token, true);
        int lineBreaksBefore = getLineBreaksBefore();
        if ((i10 == 1 || getNext() == null) && this.newLinesAtBoundries && lineBreaksBefore == 0) {
            if (!this.simulation) {
                token.breakBefore();
            }
            lineBreaksBefore = 1;
        }
        if (lineBreaksBefore > 0) {
            this.lineCounter += lineBreaksBefore;
            this.counter = startingPosition;
            this.potentialWrapTokenSubstitute = null;
            this.potentialWrapToken = null;
            this.lineLimit = getLineLimit(this.lineStartPosition);
        }
        if (getNext() != null && lineBreaksBefore == 0 && i10 > 1 && startingPosition < this.counter) {
            if (token.getWrapPolicy() == null) {
                this.potentialWrapToken = token;
                this.counterIfWrapped = startingPosition;
            } else if (token.getWrapPolicy() == Token.WrapPolicy.SUBSTITUTE_ONLY) {
                this.potentialWrapTokenSubstitute = token;
                this.counterIfWrappedSubstitute = startingPosition;
            }
        }
        if (i10 > 1 && getNext() != null && token.getAlign() + token.getIndent() > 0) {
            this.counter = Math.max(this.counter, getStartingPosition(token, getLineBreaksBefore() > 0));
        }
        int i11 = this.counter;
        this.counter = i11 + this.f102638tm.getLength(token, i11);
        int i12 = this.counterIfWrapped;
        this.counterIfWrapped = i12 + this.f102638tm.getLength(token, i12);
        int i13 = this.counterIfWrappedSubstitute;
        this.counterIfWrappedSubstitute = i13 + this.f102638tm.getLength(token, i13);
        if (shouldWrap()) {
            if (this.potentialWrapToken == null) {
                this.potentialWrapToken = this.potentialWrapTokenSubstitute;
                this.counterIfWrapped = this.counterIfWrappedSubstitute;
            }
            if (!this.simulation) {
                this.potentialWrapToken.breakBefore();
            }
            this.counter = this.counterIfWrapped;
            this.lineCounter++;
            this.potentialWrapTokenSubstitute = null;
            this.potentialWrapToken = null;
            this.lineLimit = getLineLimit(this.lineStartPosition);
        }
        if (isSpaceAfter()) {
            this.counter++;
            this.counterIfWrapped++;
        }
        return true;
    }

    public void wrapLineComment(Token token, int i10) {
        Token token2;
        List<Token> internalStructure = token.getInternalStructure();
        if (internalStructure == null || internalStructure.isEmpty()) {
            return;
        }
        int indexOf = this.f102638tm.indexOf(token);
        boolean isInHeader = this.f102638tm.isInHeader(indexOf);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if ((!defaultCodeFormatterOptions.comment_format_line_comment || isInHeader) && !(defaultCodeFormatterOptions.comment_format_header && isInHeader)) {
            return;
        }
        int indent = this.f102638tm.toIndent(i10, true);
        int lineLimit = getLineLimit(i10);
        for (Token token3 : internalStructure) {
            if (token3.hasNLSTag()) {
                this.nlsTags.add(token3);
                i10 += token3.countChars() + (token3.isSpaceBefore() ? 1 : 0);
            }
        }
        int i11 = 0;
        Token token4 = internalStructure.get(0);
        if (token4.tokenType == 1000) {
            token2 = new Token(token4);
            token2.breakBefore();
            token2.setIndent(indent);
            token2.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, indexOf, 0));
            token4 = internalStructure.get(1);
        } else {
            token2 = null;
        }
        int i12 = token.originalStart + 1;
        if (!token4.hasNLSTag()) {
            i12 = Math.max(i12, token4.originalEnd);
        }
        Token token5 = new Token(token.originalStart, i12, 1001);
        if (token2 == null) {
            token5.breakBefore();
            token5.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, indexOf, 0));
        }
        int i13 = token2 == null ? 0 : 1;
        while (i11 < internalStructure.size()) {
            Token token6 = internalStructure.get(i11);
            token6.setIndent(indent);
            if (token6.hasNLSTag()) {
                this.nlsTags.remove(token6);
            } else {
                if (token6.isSpaceBefore()) {
                    i10++;
                }
                if (token6.getLineBreaksBefore() > 0) {
                    lineLimit = getLineLimit(indent);
                    i13 = token2 == null ? i11 : i11 + 1;
                    if (token2 == null || token6 == token2) {
                        i10 = indent;
                    } else {
                        token6.clearLineBreaksBefore();
                        internalStructure.add(i11, token2);
                        i10 = indent;
                        token6 = token2;
                    }
                }
                i10 += this.f102638tm.getLength(token6, i10);
                if (token6.tokenType == 1000) {
                    lineLimit = getLineLimit(i10);
                }
                if (i10 > lineLimit && i11 > i13 + 1) {
                    internalStructure.add(i11, token5);
                    if (token2 != null) {
                        internalStructure.add(i11, token2);
                    }
                    internalStructure.removeAll(this.nlsTags);
                    internalStructure.addAll(i11, this.nlsTags);
                    i11 = (i11 + this.nlsTags.size()) - 1;
                    this.nlsTags.clear();
                }
            }
            i11++;
        }
        this.nlsTags.clear();
    }

    public int wrapMultiLineComment(Token token, int i10, boolean z10, boolean z11) {
        int length;
        this.lineCounter = 1;
        this.counter = i10;
        token.setIndent(this.f102638tm.toIndent(i10, true));
        this.lineStartPosition = token.getIndent();
        this.lineLimit = getLineLimit(i10);
        this.simulation = z10;
        this.wrapDisabled = z11;
        this.potentialWrapTokenSubstitute = null;
        this.potentialWrapToken = null;
        this.newLinesAtBoundries = token.tokenType == 1003 ? this.options.comment_new_lines_at_javadoc_boundaries : this.options.comment_new_lines_at_block_boundaries;
        List<Token> internalStructure = token.getInternalStructure();
        if (internalStructure == null || internalStructure.isEmpty()) {
            length = this.f102638tm.getLength(token, i10);
        } else {
            int tryToFitInOneLine = tryToFitInOneLine(internalStructure, i10, z11);
            if (tryToFitInOneLine > 0) {
                return tryToFitInOneLine;
            }
            traverse(internalStructure, 0);
            cleanupIndent(internalStructure);
            if (!this.newLinesAtBoundries) {
                return this.counter;
            }
            i10 = this.lineStartPosition + 1;
            length = this.f102638tm.getLength(internalStructure.get(internalStructure.size() - 1), 0);
        }
        return i10 + length;
    }
}
