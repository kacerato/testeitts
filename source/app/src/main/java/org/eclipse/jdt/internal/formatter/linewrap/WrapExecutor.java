package org.eclipse.jdt.internal.formatter.linewrap;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jdt.internal.formatter.TokenManager;
import org.eclipse.jdt.internal.formatter.TokenTraverser;

public class WrapExecutor {
    static final boolean $assertionsDisabled = false;
    private static final int[] EMPTY_ARRAY = new int[0];
    private final LineAnalyzer lineAnalyzer;
    final DefaultCodeFormatterOptions options;

    final TokenManager f102639tm;
    final HashMap<WrapInfo, WrapResult> wrapSearchResults = new HashMap<>();
    private final ArrayDeque<WrapInfo> wrapSearchStack = new ArrayDeque<>();
    private final WrapInfo wrapInfoTemp = new WrapInfo();

    public class LineAnalyzer extends TokenTraverser {
        static final boolean $assertionsDisabled = false;
        int activeTopPriorityWrap;
        private final CommentWrapExecutor commentWrapper;
        private int currentTopPriorityGroupEnd;
        int extraLines;
        int firstPotentialWrap;
        private boolean isNLSTagInLine;
        boolean isNextLineWrapped;
        boolean lineExceeded;
        private int lineIndent;
        int minStructureDepth;
        final List<Integer> extraLinesPerComment = new ArrayList();
        final List<Integer> topPriorityGroupStarts = new ArrayList();

        public LineAnalyzer(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
            this.commentWrapper = new CommentWrapExecutor(tokenManager, defaultCodeFormatterOptions);
        }

        private boolean isActiveTopPriorityWrap(int i10, Token.WrapPolicy wrapPolicy) {
            if (this.activeTopPriorityWrap >= 0) {
                return false;
            }
            for (int i11 = i10 - 1; i11 > wrapPolicy.wrapParentIndex; i11--) {
                Token token = WrapExecutor.this.f102639tm.get(i11);
                if (token.isWrappable() && token.getWrapPolicy().wrapParentIndex == wrapPolicy.wrapParentIndex && (token.getLineBreaksBefore() > 0 || WrapExecutor.this.f102639tm.get(i11 - 1).getLineBreaksAfter() > 0)) {
                    return true;
                }
            }
            return false;
        }

        public int analyzeLine(int i10, int i11) {
            this.counter = WrapExecutor.this.f102639tm.toIndent(i11, WrapExecutor.this.f102639tm.get(i10).isWrappable());
            this.lineIndent = i11;
            this.firstPotentialWrap = -1;
            this.activeTopPriorityWrap = -1;
            this.minStructureDepth = Integer.MAX_VALUE;
            this.extraLines = 0;
            this.isNextLineWrapped = false;
            this.extraLinesPerComment.clear();
            this.topPriorityGroupStarts.clear();
            this.currentTopPriorityGroupEnd = -1;
            this.isNLSTagInLine = false;
            return WrapExecutor.this.f102639tm.traverse(i10, this) + (this.isNextLineWrapped ? 1 : 0);
        }

        public int getLastPosition() {
            return this.counter;
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0122, code lost:
        
            if (r5.get(r5.findFirstTokenInLine(r6)).isWrappable() == false) goto L72;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean token(Token token, int i10) {
            if (token.hasNLSTag()) {
                this.isNLSTagInLine = true;
            }
            if (token.isWrappable()) {
                Token.WrapPolicy wrapPolicy = token.getWrapPolicy();
                if (wrapPolicy.wrapMode == Token.WrapMode.TOP_PRIORITY && getLineBreaksBefore() == 0 && i10 > this.currentTopPriorityGroupEnd) {
                    if (isActiveTopPriorityWrap(i10, wrapPolicy)) {
                        this.activeTopPriorityWrap = i10;
                    } else {
                        this.topPriorityGroupStarts.add(Integer.valueOf(i10));
                        this.currentTopPriorityGroupEnd = wrapPolicy.groupEndIndex;
                    }
                    if (this.firstPotentialWrap < 0) {
                        this.firstPotentialWrap = i10;
                    }
                } else if (this.firstPotentialWrap < 0 && WrapExecutor.this.getWrapIndent(token) < this.counter) {
                    this.firstPotentialWrap = i10;
                }
                this.minStructureDepth = Math.min(this.minStructureDepth, wrapPolicy.structureDepth);
            }
            if (token.getAlign() > 0) {
                this.counter = token.getAlign();
            } else if (isSpaceBefore() && getLineBreaksBefore() == 0 && i10 > 0 && token.tokenType != 1001) {
                this.counter++;
            }
            if (!token.isComment()) {
                int i11 = this.counter;
                this.counter = i11 + WrapExecutor.this.f102639tm.getLength(token, i11);
            } else if (token.tokenType != 1001) {
                this.counter = this.commentWrapper.wrapMultiLineComment(token, this.counter, true, this.isNLSTagInLine);
                this.extraLines += this.commentWrapper.getLinesCount() - 1;
                this.extraLinesPerComment.add(Integer.valueOf(this.commentWrapper.getLinesCount() - 1));
            }
            boolean z10 = false;
            boolean z11 = this.counter > WrapExecutor.this.options.page_width;
            this.lineExceeded = z11;
            if (z11 && this.firstPotentialWrap >= 0) {
                return false;
            }
            token.setIndent(this.lineIndent);
            if (getNext() != null && getNext().isWrappable() && getLineBreaksAfter() > 0) {
                this.isNextLineWrapped = true;
                if (this.firstPotentialWrap < 0) {
                    this.firstPotentialWrap = i10 + 1;
                }
                return false;
            }
            if (getLineBreaksAfter() <= 0 && getNext() != null) {
                if (getNext().isNextLineOnWrap()) {
                    TokenManager tokenManager = WrapExecutor.this.f102639tm;
                }
                return !z10;
            }
            z10 = true;
            return !z10;
        }
    }

    public class NLSTagHandler extends TokenTraverser {
        private final ArrayList<Token> nlsTags = new ArrayList<>();

        public NLSTagHandler() {
        }

        @Override
        public boolean token(Token token, int i10) {
            int i11;
            if (token.hasNLSTag()) {
                this.nlsTags.add(token.getNLSTag());
            }
            if (getLineBreaksAfter() > 0 || getNext() == null) {
                if (token.tokenType != 1001) {
                    if (this.nlsTags.isEmpty()) {
                        return true;
                    }
                    int i12 = token.originalEnd;
                    Token token2 = new Token(i12 + 1, i12 + 1, 1001);
                    token2.breakAfter();
                    token2.spaceBefore();
                    token2.setAlign(WrapExecutor.this.f102639tm.getNLSAlign(i10));
                    token2.setInternalStructure(new ArrayList());
                    WrapExecutor.this.f102639tm.insert(i10 + 1, token2);
                    structureChanged();
                    return true;
                }
                List<Token> internalStructure = token.getInternalStructure();
                if (internalStructure == null) {
                    if (this.nlsTags.isEmpty()) {
                        return true;
                    }
                    internalStructure = new ArrayList<>();
                    internalStructure.add(token);
                    token.setInternalStructure(internalStructure);
                }
                int i13 = 0;
                boolean z10 = false;
                while (i13 < internalStructure.size()) {
                    Token token3 = internalStructure.get(i13);
                    if (token3.hasNLSTag()) {
                        if (!this.nlsTags.remove(token3)) {
                            if (i13 == 0) {
                                z10 = true;
                            }
                            i11 = i13 - 1;
                            internalStructure.remove(i13);
                            i13 = i11;
                        }
                        z10 = false;
                    } else if (z10) {
                        int i14 = token3.originalStart;
                        while (i14 <= token3.originalEnd && ScannerHelper.isWhitespace(WrapExecutor.this.f102639tm.charAt(i14))) {
                            i14++;
                        }
                        if (i14 > token3.originalEnd) {
                            i11 = i13 - 1;
                            internalStructure.remove(i13);
                            i13 = i11;
                        } else {
                            if (i14 > token3.originalStart) {
                                Token token4 = new Token(i14, token3.originalEnd, 1001);
                                internalStructure.set(i13, token4);
                                token3 = token4;
                            }
                            if (!WrapExecutor.this.f102639tm.toString(token3).startsWith("//")) {
                                int i15 = token.originalStart;
                                Token token5 = new Token(i15, i15 + 1, 1001);
                                token5.spaceBefore();
                                internalStructure.add(i13, token5);
                            }
                            z10 = false;
                        }
                    }
                    i13++;
                }
                internalStructure.addAll(this.nlsTags);
                if (internalStructure.isEmpty() || (internalStructure.size() == 1 && internalStructure.get(0).tokenType == 1000)) {
                    WrapExecutor.this.f102639tm.remove(i10);
                    structureChanged();
                }
                this.nlsTags.clear();
            }
            return true;
        }
    }

    public static class WrapResult {
        public static final WrapResult NO_WRAP_NEEDED = new WrapResult(0.0d, 0, null);
        public final int extraPenalty;
        public final WrapInfo nextWrap;
        public final double penalty;

        public WrapResult(double d10, int i10, WrapInfo wrapInfo) {
            this.penalty = d10;
            this.extraPenalty = i10;
            this.nextWrap = wrapInfo;
        }
    }

    public class WrapsApplier extends TokenTraverser {
        private int currentIndent;
        private int initialIndent;
        private WrapInfo nextWrap;
        private ArrayDeque<Token> stack = new ArrayDeque<>();

        public WrapsApplier() {
        }

        private void newLine(Token token, int i10) {
            while (!this.stack.isEmpty() && i10 > this.stack.peek().getWrapPolicy().groupEndIndex) {
                this.stack.pop();
            }
            if (token.getWrapPolicy() != null) {
                token.setIndent(WrapExecutor.this.getWrapIndent(token));
                WrapExecutor.this.handleOnColumnIndent(i10, token.getWrapPolicy());
                this.stack.push(token);
            } else if (this.stack.isEmpty()) {
                this.initialIndent = token.getIndent();
                WrapExecutor.this.wrapSearchResults.clear();
            }
            int indent = this.stack.isEmpty() ? this.initialIndent : this.stack.peek().getIndent();
            this.currentIndent = indent;
            token.setIndent(indent);
            this.nextWrap = WrapExecutor.this.findWrapsCached(i10, this.currentIndent).nextWrap;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
        
            if (r0.get(r0.findFirstTokenInLine(r4)).isWrappable() != false) goto L18;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean token(Token token, int i10) {
            if (i10 == 0 || getLineBreaksBefore() > 0) {
                newLine(token, i10);
                return true;
            }
            WrapInfo wrapInfo = this.nextWrap;
            if ((wrapInfo == null || i10 != wrapInfo.wrapTokenIndex) && !WrapExecutor.this.checkForceWrap(token, i10, this.currentIndent)) {
                if (token.isNextLineOnWrap()) {
                    TokenManager tokenManager = WrapExecutor.this.f102639tm;
                }
                token.setIndent(this.currentIndent);
                return true;
            }
            token.breakBefore();
            newLine(token, i10);
            return true;
        }
    }

    public WrapExecutor(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102639tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
        this.lineAnalyzer = new LineAnalyzer(tokenManager, defaultCodeFormatterOptions);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private WrapResult findWraps(int i10, int i11) {
        int i12;
        WrapResult wrapResult;
        int i13;
        int i14;
        LinkedHashSet linkedHashSet;
        int i15;
        boolean z10;
        int analyzeLine = this.lineAnalyzer.analyzeLine(i10, i11);
        LineAnalyzer lineAnalyzer = this.lineAnalyzer;
        boolean z11 = lineAnalyzer.isNextLineWrapped;
        boolean z12 = lineAnalyzer.lineExceeded || z11;
        int max = Math.max(0, lineAnalyzer.getLastPosition() - this.options.page_width);
        LineAnalyzer lineAnalyzer2 = this.lineAnalyzer;
        int i16 = lineAnalyzer2.extraLines;
        int i17 = lineAnalyzer2.firstPotentialWrap;
        int i18 = lineAnalyzer2.activeTopPriorityWrap;
        int[] array = toArray(lineAnalyzer2.extraLinesPerComment);
        int length = array.length;
        int[] array2 = toArray(this.lineAnalyzer.topPriorityGroupStarts);
        int length2 = array2.length - 1;
        int i19 = length2 == -1 ? 0 : this.f102639tm.get(array2[length2]).getWrapPolicy().groupEndIndex;
        int i20 = i17;
        double wrapPenalty = getWrapPenalty(i10, i11, analyzeLine + 1, -1, WrapResult.NO_WRAP_NEEDED);
        int i21 = max + i16;
        WrapResult wrapResult2 = null;
        if (!z12 && i18 < 0) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            if (!defaultCodeFormatterOptions.join_wrapped_lines || !defaultCodeFormatterOptions.wrap_outer_expressions_when_nested) {
                return new WrapResult(wrapPenalty, i21, null);
            }
        }
        Token token = this.f102639tm.get(i10);
        if (!token.isWrappable() || !this.options.wrap_outer_expressions_when_nested || i18 >= 0 || this.lineAnalyzer.minStructureDepth >= (i12 = token.getWrapPolicy().structureDepth)) {
            i12 = Integer.MAX_VALUE;
        }
        int i22 = i12;
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        int i23 = max;
        int i24 = i16;
        int i25 = 0;
        double d10 = wrapPenalty;
        int i26 = i19;
        int i27 = length2;
        boolean z13 = false;
        int i28 = analyzeLine;
        int i29 = i21;
        int i30 = length;
        int i31 = -1;
        while (i20 >= 0 && i28 >= i20) {
            Token token2 = this.f102639tm.get(i28);
            if (i30 > 0) {
                int i32 = token2.tokenType;
                i14 = i20;
                if (i32 == 1002 || i32 == 1003) {
                    i30--;
                    int i33 = array[i30];
                    i24 -= i33;
                    if (i33 > 0) {
                        linkedHashSet2.clear();
                    }
                }
            } else {
                i14 = i20;
            }
            int i34 = i30;
            if (i27 >= 0 && i28 <= i26) {
                if (i28 > array2[i27]) {
                    linkedHashSet = linkedHashSet2;
                    i15 = i22;
                    wrapResult = null;
                    i28--;
                    i30 = i34;
                    wrapResult2 = wrapResult;
                    i20 = i14;
                    linkedHashSet2 = linkedHashSet;
                    i22 = i15;
                } else {
                    i27--;
                    i26 = i27 == -1 ? 0 : this.f102639tm.get(array2[i27]).getWrapPolicy().groupEndIndex;
                }
            }
            int i35 = i27;
            int i36 = i26;
            Token.WrapPolicy wrapPolicy = token2.getWrapPolicy();
            if (!token2.isWrappable() || ((i18 >= 0 && i28 != i18) || linkedHashSet2.contains(wrapPolicy) || wrapPolicy.structureDepth >= i22)) {
                linkedHashSet = linkedHashSet2;
                i15 = i22;
                wrapResult = null;
            } else {
                linkedHashSet2.add(wrapPolicy);
                int wrapIndent = getWrapIndent(token2);
                WrapResult findWrapsCached = findWrapsCached(i28, wrapIndent);
                z13 |= findWrapsCached == null;
                if (z13) {
                    linkedHashSet = linkedHashSet2;
                    i15 = i22;
                    i27 = i35;
                    i26 = i36;
                    wrapResult = null;
                    i28--;
                    i30 = i34;
                    wrapResult2 = wrapResult;
                    i20 = i14;
                    linkedHashSet2 = linkedHashSet;
                    i22 = i15;
                } else {
                    linkedHashSet = linkedHashSet2;
                    i15 = i22;
                    wrapResult = null;
                    double wrapPenalty2 = getWrapPenalty(i10, i11, i28, wrapIndent, findWrapsCached);
                    int i37 = findWrapsCached.extraPenalty + i24;
                    if (i23 > 0) {
                        int i38 = i28 - 1;
                        int positionInLine = this.f102639tm.getPositionInLine(i38);
                        TokenManager tokenManager = this.f102639tm;
                        int length3 = (positionInLine + tokenManager.getLength(tokenManager.get(i38), positionInLine)) - this.options.page_width;
                        z10 = false;
                        i37 += Math.max(0, length3);
                        i23 = length3;
                    } else {
                        z10 = false;
                    }
                    boolean z14 = (i37 < i29 || i28 == i18 || (i31 < 0 && z12)) ? true : z10;
                    if (!z14 && i37 == i29) {
                        z14 = (wrapPenalty2 < d10 || d10 == Double.MAX_VALUE) ? true : z10;
                    }
                    if (z14) {
                        if (!this.options.wrap_outer_expressions_when_nested || i28 == i18 || z11) {
                            d10 = wrapPenalty2;
                            i29 = i37;
                            i13 = wrapIndent;
                            break;
                        }
                        d10 = wrapPenalty2;
                        i29 = i37;
                        i27 = i35;
                        i31 = i28;
                        i26 = i36;
                        i25 = wrapIndent;
                        i28--;
                        i30 = i34;
                        wrapResult2 = wrapResult;
                        i20 = i14;
                        linkedHashSet2 = linkedHashSet;
                        i22 = i15;
                    }
                }
            }
            i27 = i35;
            i26 = i36;
            i28--;
            i30 = i34;
            wrapResult2 = wrapResult;
            i20 = i14;
            linkedHashSet2 = linkedHashSet;
            i22 = i15;
        }
        wrapResult = wrapResult2;
        i28 = i31;
        i13 = i25;
        if (z13) {
            return wrapResult;
        }
        return new WrapResult(d10, i29, i28 == -1 ? wrapResult : new WrapInfo(i28, i13));
    }

    private double getPenalty(Token.WrapPolicy wrapPolicy) {
        return Math.exp(wrapPolicy.structureDepth) * wrapPolicy.penaltyMultiplier;
    }

    private double getWrapPenalty(int i10, int i11, int i12, int i13, WrapResult wrapResult) {
        Token token;
        int i14;
        Token.WrapPolicy wrapPolicy;
        int i15;
        double d10;
        int i16;
        if (i12 < this.f102639tm.size()) {
            token = this.f102639tm.get(i12);
            wrapPolicy = token.getWrapPolicy();
            i14 = i13 < 0 ? getWrapIndent(this.f102639tm.get(i12)) : i13;
        } else {
            token = null;
            i14 = i13;
            wrapPolicy = null;
        }
        double d11 = 0.0d;
        if (token == null || !token.isWrappable()) {
            i15 = i11;
            d10 = 0.0d;
        } else {
            d10 = getPenalty(wrapPolicy);
            i15 = i11;
        }
        if (i14 > i15) {
            d10 *= 1.1875d;
        }
        Token token2 = this.f102639tm.get(i10);
        Token.WrapPolicy wrapPolicy2 = token2.getWrapPolicy();
        boolean z10 = true;
        if (token != null && token.isWrappable() && token2.isWrappable()) {
            for (int i17 = i10 + 1; i17 < i12; i17++) {
                Token.WrapPolicy wrapPolicy3 = this.f102639tm.get(i17).getWrapPolicy();
                if (wrapPolicy3 != null && (i16 = wrapPolicy3.structureDepth) < wrapPolicy2.structureDepth && i16 < wrapPolicy.structureDepth) {
                    d10 += getPenalty(wrapPolicy3) * 1.25d;
                }
            }
        }
        WrapInfo wrapInfo = wrapResult.nextWrap;
        if (token == null || !token.isWrappable() || (wrapPolicy2 != null && wrapPolicy.structureDepth < wrapPolicy2.structureDepth)) {
            z10 = false;
        }
        double d12 = 0.0d;
        while (z10 && wrapInfo != null) {
            Token.WrapPolicy wrapPolicy4 = this.f102639tm.get(wrapInfo.wrapTokenIndex).getWrapPolicy();
            if (wrapPolicy4.wrapParentIndex == wrapPolicy.wrapParentIndex || !(d12 == d11 || wrapPolicy.isFirstInGroup)) {
                d10 -= d12 * 1.015625d;
                break;
            }
            if (wrapPolicy4.structureDepth <= wrapPolicy.structureDepth) {
                break;
            }
            d12 = Math.max(d12, getPenalty(wrapPolicy4));
            wrapInfo = this.wrapSearchResults.get(wrapInfo).nextWrap;
            d11 = 0.0d;
        }
        return d10 + wrapResult.penalty;
    }

    private int[] toArray(List<Integer> list) {
        if (list.isEmpty()) {
            return EMPTY_ARRAY;
        }
        int[] iArr = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        return iArr;
    }

    public boolean checkForceWrap(Token token, int i10, int i11) {
        if (token.isWrappable() && this.options.wrap_outer_expressions_when_nested && getWrapIndent(token) < i11) {
            TokenManager tokenManager = this.f102639tm;
            Token.WrapPolicy wrapPolicy = tokenManager.get(tokenManager.findFirstTokenInLine(i10, false, true)).getWrapPolicy();
            if (wrapPolicy != null && wrapPolicy.wrapMode != Token.WrapMode.BLOCK_INDENT) {
                return true;
            }
        }
        return false;
    }

    public void executeWraps() {
        this.f102639tm.traverse(0, new WrapsApplier());
        this.f102639tm.traverse(0, new NLSTagHandler());
    }

    public WrapResult findWrapsCached(int i10, int i11) {
        boolean z10;
        WrapInfo wrapInfo;
        WrapInfo wrapInfo2 = this.wrapInfoTemp;
        wrapInfo2.wrapTokenIndex = i10;
        wrapInfo2.indent = i11;
        WrapResult wrapResult = this.wrapSearchResults.get(wrapInfo2);
        int i12 = 50;
        WrapResult wrapResult2 = wrapResult;
        while (wrapResult2 != null && (wrapInfo = wrapResult2.nextWrap) != null) {
            int i13 = i12 - 1;
            if (i12 > 0) {
                Token token = this.f102639tm.get(wrapInfo.wrapTokenIndex);
                if (token.getWrapPolicy().wrapParentIndex < i10 && getWrapIndent(token) != wrapInfo.indent) {
                    z10 = false;
                    wrapResult = null;
                    break;
                }
                wrapResult2 = this.wrapSearchResults.get(wrapInfo);
                i12 = i13;
            } else {
                break;
            }
        }
        z10 = true;
        if (wrapResult != null) {
            return wrapResult;
        }
        this.wrapSearchStack.push(new WrapInfo(i10, i11));
        if (this.wrapSearchStack.size() > 1 && z10) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            WrapInfo peek = this.wrapSearchStack.peek();
            Token token2 = this.f102639tm.get(peek.wrapTokenIndex);
            token2.setWrapped(true);
            WrapResult findWraps = findWraps(peek.wrapTokenIndex, peek.indent);
            if (findWraps != null) {
                token2.setWrapped(false);
                this.wrapSearchStack.pop();
                this.wrapSearchResults.put(peek, findWraps);
                if (peek.wrapTokenIndex == i10 && peek.indent == i11) {
                    return findWraps;
                }
            } else {
                while (this.wrapSearchStack.peek() != peek) {
                    arrayList.add(this.wrapSearchStack.pop());
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.wrapSearchStack.push((WrapInfo) it.next());
                }
                arrayList.clear();
            }
        }
    }

    public int getWrapIndent(Token token) {
        Token.WrapPolicy wrapPolicy = token.getWrapPolicy();
        if (wrapPolicy == null) {
            return token.getIndent();
        }
        if (wrapPolicy == Token.WrapPolicy.FORCE_FIRST_COLUMN) {
            return 0;
        }
        Token token2 = this.f102639tm.get(wrapPolicy.wrapParentIndex);
        int indent = token2.getIndent();
        if (wrapPolicy.indentOnColumn) {
            int positionInLine = this.f102639tm.getPositionInLine(wrapPolicy.wrapParentIndex);
            indent = positionInLine + this.f102639tm.getLength(token2, positionInLine);
            Token token3 = this.f102639tm.get(wrapPolicy.wrapParentIndex + 1);
            if (token2.isSpaceAfter() || (token3.isSpaceBefore() && !token3.isComment())) {
                indent++;
            }
        }
        return this.f102639tm.toIndent(indent + wrapPolicy.extraIndent, true);
    }

    public void handleOnColumnIndent(int i10, Token.WrapPolicy wrapPolicy) {
        if (wrapPolicy == null || !wrapPolicy.indentOnColumn || wrapPolicy.isFirstInGroup) {
            return;
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.tab_char != 1 || defaultCodeFormatterOptions.use_tabs_only_for_leading_indentations) {
            return;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            Token token = this.f102639tm.get(i11);
            Token.WrapPolicy wrapPolicy2 = token.getWrapPolicy();
            if (wrapPolicy2 != null && wrapPolicy2.isFirstInGroup && wrapPolicy2.wrapParentIndex == wrapPolicy.wrapParentIndex) {
                token.setAlign(getWrapIndent(token));
                return;
            }
        }
    }

    public static class WrapInfo {
        public int indent;
        public int wrapTokenIndex;

        public WrapInfo(int i10, int i11) {
            this.wrapTokenIndex = i10;
            this.indent = i11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            WrapInfo wrapInfo = (WrapInfo) obj;
            return this.indent == wrapInfo.indent && this.wrapTokenIndex == wrapInfo.wrapTokenIndex;
        }

        public int hashCode() {
            return ((this.indent + 31) * 31) + this.wrapTokenIndex;
        }

        public WrapInfo() {
        }
    }
}
