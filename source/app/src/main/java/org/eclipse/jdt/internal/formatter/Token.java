package org.eclipse.jdt.internal.formatter;

import java.util.List;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class Token {
    static final boolean $assertionsDisabled = false;
    private int align;
    private int emptyLineIndentAdjustment;
    private int indent;
    private List<Token> internalStructure;
    private int lineBreaksAfter;
    private int lineBreaksBefore;
    private boolean nextLineOnWrap;
    private Token nlsTagToken;
    public final int originalEnd;
    public final int originalStart;
    private boolean spaceAfter;
    private boolean spaceBefore;
    private boolean toEscape;
    public final int tokenType;
    private WrapPolicy wrapPolicy;
    private boolean wrapped;

    public enum WrapMode {
        DISABLED,
        WHERE_NECESSARY,
        TOP_PRIORITY,
        FORCE,
        BLOCK_INDENT;

        public static WrapMode[] valuesCustom() {
            WrapMode[] valuesCustom = values();
            int length = valuesCustom.length;
            WrapMode[] wrapModeArr = new WrapMode[length];
            System.arraycopy(valuesCustom, 0, wrapModeArr, 0, length);
            return wrapModeArr;
        }
    }

    public Token(int i10, int i11, int i12) {
        this.originalStart = i10;
        this.originalEnd = i11;
        this.tokenType = i12;
    }

    public static Token fromCurrent(Scanner scanner, int i10) {
        int currentTokenStartPosition = scanner.getCurrentTokenStartPosition();
        int currentTokenEndPosition = scanner.getCurrentTokenEndPosition();
        if (i10 == 1001) {
            while (currentTokenEndPosition >= currentTokenStartPosition) {
                char c10 = scanner.source[currentTokenEndPosition];
                if (c10 != '\r' && c10 != '\n') {
                    break;
                }
                currentTokenEndPosition--;
            }
        }
        return new Token(currentTokenStartPosition, currentTokenEndPosition, i10);
    }

    public void breakAfter() {
        putLineBreaksAfter(1);
    }

    public void breakBefore() {
        putLineBreaksBefore(1);
    }

    public void clearLineBreaksAfter() {
        this.lineBreaksAfter = 0;
    }

    public void clearLineBreaksBefore() {
        this.lineBreaksBefore = 0;
    }

    public void clearSpaceAfter() {
        this.spaceAfter = false;
    }

    public void clearSpaceBefore() {
        this.spaceBefore = false;
    }

    public int countChars() {
        return (this.originalEnd - this.originalStart) + 1;
    }

    public int getAlign() {
        return this.align;
    }

    public int getEmptyLineIndentAdjustment() {
        return this.emptyLineIndentAdjustment;
    }

    public int getIndent() {
        return this.indent;
    }

    public List<Token> getInternalStructure() {
        return this.internalStructure;
    }

    public int getLineBreaksAfter() {
        return this.lineBreaksAfter;
    }

    public int getLineBreaksBefore() {
        if (this.wrapped) {
            return 1;
        }
        return this.lineBreaksBefore;
    }

    public Token getNLSTag() {
        return this.nlsTagToken;
    }

    public WrapPolicy getWrapPolicy() {
        return this.wrapPolicy;
    }

    public boolean hasNLSTag() {
        return this.nlsTagToken != null;
    }

    public void indent() {
        this.indent++;
    }

    public boolean isComment() {
        switch (this.tokenType) {
            case 1001:
            case 1002:
            case 1003:
                return true;
            default:
                return false;
        }
    }

    public boolean isNextLineOnWrap() {
        return this.nextLineOnWrap;
    }

    public boolean isSpaceAfter() {
        return this.spaceAfter;
    }

    public boolean isSpaceBefore() {
        return this.spaceBefore;
    }

    public boolean isToEscape() {
        return this.toEscape;
    }

    public boolean isWrappable() {
        WrapMode wrapMode;
        WrapPolicy wrapPolicy = this.wrapPolicy;
        return (wrapPolicy == null || (wrapMode = wrapPolicy.wrapMode) == WrapMode.DISABLED || wrapMode == WrapMode.BLOCK_INDENT) ? false : true;
    }

    public void putLineBreaksAfter(int i10) {
        this.lineBreaksAfter = Math.max(this.lineBreaksAfter, i10);
    }

    public void putLineBreaksBefore(int i10) {
        this.lineBreaksBefore = Math.max(this.lineBreaksBefore, i10);
    }

    public void setAlign(int i10) {
        this.align = i10;
    }

    public void setEmptyLineIndentAdjustment(int i10) {
        this.emptyLineIndentAdjustment = i10;
    }

    public void setIndent(int i10) {
        this.indent = i10;
    }

    public void setInternalStructure(List<Token> list) {
        this.internalStructure = list;
    }

    public void setNLSTag(Token token) {
        this.nlsTagToken = token;
    }

    public void setNextLineOnWrap() {
        this.nextLineOnWrap = true;
    }

    public void setToEscape(boolean z10) {
        this.toEscape = z10;
    }

    public void setWrapPolicy(WrapPolicy wrapPolicy) {
        this.wrapPolicy = wrapPolicy;
    }

    public void setWrapped(boolean z10) {
        this.wrapped = z10;
    }

    public void spaceAfter() {
        this.spaceAfter = true;
    }

    public void spaceBefore() {
        this.spaceBefore = true;
    }

    public String toString(String str) {
        return str.substring(this.originalStart, this.originalEnd + 1);
    }

    public void unindent() {
        this.indent--;
    }

    public String toString() {
        return "[" + this.originalStart + "-" + this.originalEnd + "]";
    }

    public Token(Token token) {
        this(token, token.originalStart, token.originalEnd, token.tokenType);
    }

    public Token(Token token, int i10, int i11, int i12) {
        this.originalStart = i10;
        this.originalEnd = i11;
        this.tokenType = i12;
        this.spaceBefore = token.spaceBefore;
        this.spaceAfter = token.spaceAfter;
        this.lineBreaksBefore = token.lineBreaksBefore;
        this.lineBreaksAfter = token.lineBreaksAfter;
        this.indent = token.indent;
        this.nextLineOnWrap = token.nextLineOnWrap;
        this.wrapPolicy = token.wrapPolicy;
        this.nlsTagToken = token.nlsTagToken;
        this.internalStructure = token.internalStructure;
    }

    public static class WrapPolicy {
        static final boolean $assertionsDisabled = false;
        public static final WrapPolicy DISABLE_WRAP;
        public static final WrapPolicy FORCE_FIRST_COLUMN;
        public static final WrapPolicy SUBSTITUTE_ONLY;
        public final int extraIndent;
        public final int groupEndIndex;
        public final boolean indentOnColumn;
        public final boolean isFirstInGroup;
        public final float penaltyMultiplier;
        public final int structureDepth;
        public final WrapMode wrapMode;
        public final int wrapParentIndex;

        static {
            WrapMode wrapMode = WrapMode.DISABLED;
            DISABLE_WRAP = new WrapPolicy(wrapMode, 0, 0);
            SUBSTITUTE_ONLY = new WrapPolicy(wrapMode, 0, 0);
            FORCE_FIRST_COLUMN = new WrapPolicy(wrapMode, 0, 0);
        }

        public WrapPolicy(WrapMode wrapMode, int i10, int i11, int i12, int i13, float f10, boolean z10, boolean z11) {
            this.wrapMode = wrapMode;
            this.wrapParentIndex = i10;
            this.groupEndIndex = i11;
            this.extraIndent = i12;
            this.structureDepth = i13;
            this.penaltyMultiplier = f10;
            this.isFirstInGroup = z10;
            this.indentOnColumn = z11;
        }

        public WrapPolicy(WrapMode wrapMode, int i10, int i11) {
            this(wrapMode, i10, -1, i11, 0, 1.0f, false, false);
        }
    }
}
