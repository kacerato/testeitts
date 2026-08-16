package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import w2.C15883c;

public class TextEditsBuilder extends TokenTraverser {
    static final boolean $assertionsDisabled = false;
    private int alignChar;
    private final StringBuilder buffer;
    private TextEditsBuilder childBuilder;
    private int currentRegion;
    private final List<TextEdit> edits;
    private final DefaultCodeFormatterOptions options;
    private final TextEditsBuilder parent;
    private int parentTokenIndex;
    private final List<IRegion> regions;
    private final String source;
    private int sourceLimit;
    private final List<Token> stringLiteralsInLine;

    private TokenManager f102603tm;

    public TextEditsBuilder(String str, List<IRegion> list, TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.stringLiteralsInLine = new ArrayList();
        this.edits = new ArrayList();
        this.currentRegion = 0;
        this.source = str;
        this.f102603tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
        this.regions = adaptRegions(list);
        this.alignChar = defaultCodeFormatterOptions.align_with_spaces ? 2 : defaultCodeFormatterOptions.tab_char;
        this.sourceLimit = str.length();
        this.parent = null;
        this.buffer = new StringBuilder();
    }

    private List<IRegion> adaptRegions(List<IRegion> list) {
        int i10;
        ArrayList arrayList = new ArrayList();
        Region region = null;
        for (IRegion iRegion : list) {
            int offset = iRegion.getOffset();
            int length = (iRegion.getLength() + offset) - 1;
            int i11 = this.f102603tm.get(0).originalStart;
            if (offset > i11) {
                TokenManager tokenManager = this.f102603tm;
                Token token = tokenManager.get(tokenManager.findIndex(offset, -1, false));
                int i12 = token.tokenType;
                if ((i12 == 1002 || i12 == 1003) && offset <= token.originalEnd) {
                    offset = token.originalStart;
                }
            }
            if (length > offset && length > i11) {
                TokenManager tokenManager2 = this.f102603tm;
                Token token2 = tokenManager2.get(tokenManager2.findIndex(length, -1, false));
                int i13 = token2.tokenType;
                if ((i13 == 1002 || i13 == 1003) && length < (i10 = token2.originalEnd)) {
                    length = i10;
                }
            }
            if (region != null && region.getOffset() + region.getLength() >= offset) {
                arrayList.remove(arrayList.size() - 1);
                offset = region.getOffset();
            }
            int i14 = length + 1;
            if (i14 == this.source.length()) {
                length = i14;
            }
            region = new Region(offset, (length - offset) + 1);
            arrayList.add(region);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:?, code lost:
    
        return r11.substring(0, r12 + 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String adaptReplaceText(String str, int i10, boolean z10, int i11) {
        char charAt;
        int length = z10 ? 0 : str.length() - 1;
        int i12 = z10 ? 1 : -1;
        int i13 = 0;
        while (length >= 0 && length < str.length()) {
            char charAt2 = str.charAt(length);
            if (charAt2 == '\r' || charAt2 == '\n') {
                if (i13 >= i10) {
                    break;
                }
                i13++;
                int i14 = length + i12;
                if (i14 >= 0 && i14 < str.length() && (((charAt = str.charAt(i14)) == '\r' || charAt == '\n') && charAt != charAt2)) {
                    length = i14;
                }
            }
            length += i12;
        }
        String substring = z10 ? str.substring(0, length) : str.substring(length + 1);
        int length2 = z10 ? substring.length() - 1 : 0;
        while (length2 >= 0 && length2 < substring.length() && i11 >= 0 && i11 < this.source.length()) {
            char charAt3 = substring.charAt(length2);
            char charAt4 = this.source.charAt(i11);
            if (charAt3 == charAt4 && (charAt3 == ' ' || charAt3 == '\t')) {
                length2 -= i12;
            } else if (charAt3 != '\t' || charAt4 != ' ') {
                if (charAt4 != '\t' || charAt3 != ' ') {
                    break;
                }
                int i15 = 0;
                while (true) {
                    int i16 = this.options.tab_size;
                    if (i15 >= i16) {
                        break;
                    }
                    length2 -= i12;
                    if (i15 >= i16 - 1 || (length2 >= 0 && length2 < substring.length() && substring.charAt(length2) == ' ')) {
                        i15++;
                    }
                }
            } else {
                int i17 = 0;
                while (true) {
                    int i18 = this.options.tab_size;
                    if (i17 >= i18) {
                        length2 -= i12;
                        break;
                    }
                    i11 += i12;
                    if (i17 >= i18 - 1 || (i11 >= 0 && i11 < this.source.length() && this.source.charAt(i11) == ' ')) {
                        i17++;
                    }
                }
            }
            i11 += i12;
        }
        return substring.substring(length2);
    }

    public static void appendIndentationString(StringBuilder sb2, int i10, int i11, int i12, int i13) {
        int i14;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    throw new IllegalStateException("Unrecognized tab char: " + i10);
                }
                if (i11 > 0) {
                    i14 = i12 / i11;
                    i13 += i12 % i11;
                }
            }
            i13 += i12;
            i14 = 0;
        } else {
            if (i11 > 0) {
                i14 = i12 / i11;
                if (i12 % i11 > 0) {
                    i14++;
                }
            }
            i14 = 0;
        }
        int i15 = i13 + i14;
        char[] cArr = new char[i15];
        Arrays.fill(cArr, 0, i14, '\t');
        Arrays.fill(cArr, i14, i15, C15883c.f126249O);
        sb2.append(cArr);
    }

    private boolean bufferAlign(Token token, int i10) {
        int length;
        int align = token.getAlign();
        int i11 = this.alignChar;
        if (align == 0 && getLineBreaksBefore() == 0 && this.parent != null) {
            align = token.getIndent();
            token.setAlign(align);
            i11 = 2;
        }
        if (align == 0) {
            return false;
        }
        if (getLineBreaksBefore() <= 0) {
            int i12 = i10 - 1;
            int positionInLine = this.f102603tm.getPositionInLine(i12);
            TokenManager tokenManager = this.f102603tm;
            length = positionInLine + tokenManager.getLength(tokenManager.get(i12), positionInLine);
        } else if (this.parent == null) {
            length = this.f102603tm.toIndent(token.getIndent(), token.getWrapPolicy() != null);
        } else {
            length = 0;
        }
        if (length >= align) {
            return false;
        }
        int i13 = this.options.tab_size;
        if (i11 == 1) {
            while (length < align && i13 > 0) {
                this.buffer.append('\t');
                length += i13 - (length % i13);
            }
        } else if (i11 == 2) {
            while (true) {
                int i14 = length + 1;
                if (length >= align) {
                    break;
                }
                this.buffer.append(C15883c.f126249O);
                length = i14;
            }
        } else {
            if (i11 != 4) {
                throw new IllegalStateException("Unrecognized align char: " + i11);
            }
            while (i13 > 0) {
                int i15 = length % i13;
                if ((length + i13) - i15 > align) {
                    break;
                }
                this.buffer.append('\t');
                length += i13 - i15;
            }
            while (true) {
                int i16 = length + 1;
                if (length >= align) {
                    break;
                }
                this.buffer.append(C15883c.f126249O);
                length = i16;
            }
        }
        return true;
    }

    private void bufferIndent(Token token, int i10) {
        int indent = token.getIndent();
        if (getCurrent() != null && getCurrent() != token) {
            indent += getCurrent().getEmptyLineIndentAdjustment();
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        int i11 = 0;
        if (defaultCodeFormatterOptions.use_tabs_only_for_leading_indentations && defaultCodeFormatterOptions.tab_char != 2) {
            Token.WrapPolicy wrapPolicy = token.getWrapPolicy();
            TextEditsBuilder textEditsBuilder = this.childBuilder;
            if (textEditsBuilder != null && textEditsBuilder.parentTokenIndex == i10) {
                TokenManager tokenManager = this.f102603tm;
                Token token2 = tokenManager.get(tokenManager.findFirstTokenInLine(i10));
                i11 = token.getIndent() - token2.getIndent();
                wrapPolicy = token2.getWrapPolicy();
                token = token2;
            }
            while (wrapPolicy != null) {
                TokenManager tokenManager2 = this.f102603tm;
                Token token3 = tokenManager2.get(tokenManager2.findFirstTokenInLine(wrapPolicy.wrapParentIndex));
                if (wrapPolicy.wrapMode != Token.WrapMode.BLOCK_INDENT) {
                    i11 += token.getIndent() - token3.getIndent();
                }
                if (wrapPolicy == token3.getWrapPolicy()) {
                    break;
                }
                wrapPolicy = token3.getWrapPolicy();
                token = token3;
            }
        }
        StringBuilder sb2 = this.buffer;
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        appendIndentationString(sb2, defaultCodeFormatterOptions2.tab_char, defaultCodeFormatterOptions2.tab_size, indent - i11, i11);
    }

    private void bufferLineSeparator(Token token, boolean z10) {
        TextEditsBuilder textEditsBuilder = this.parent;
        if (textEditsBuilder == null) {
            this.buffer.append(this.options.line_separator);
            return;
        }
        textEditsBuilder.counter = this.counter;
        textEditsBuilder.bufferLineSeparator(null, false);
        TextEditsBuilder textEditsBuilder2 = this.parent;
        textEditsBuilder2.bufferIndent(textEditsBuilder2.f102603tm.get(this.parentTokenIndex), this.parentTokenIndex);
        this.counter = this.parent.counter;
        if (token == null || token.tokenType != 0) {
            if (getNext() != null || z10) {
                int i10 = token != null ? token.originalStart : this.sourceLimit;
                int i11 = this.counter;
                while (i11 < i10) {
                    char charAt = this.source.charAt(i11);
                    if (charAt == '*') {
                        this.buffer.append(C15883c.f126249O);
                        flushBuffer(i11);
                        do {
                            i11++;
                            if (i11 >= this.sourceLimit) {
                                break;
                            }
                        } while (this.source.charAt(i11) == '*');
                        this.counter = i11;
                        char charAt2 = this.source.charAt(i11);
                        if ((charAt2 == '\r' || charAt2 == '\n') && z10) {
                            return;
                        }
                        this.buffer.append(C15883c.f126249O);
                        return;
                    }
                    if (!ScannerHelper.isWhitespace(charAt)) {
                        break;
                    } else {
                        i11++;
                    }
                }
                this.buffer.append(" * ");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        if (r6.getIndent() > r0.getIndent()) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void bufferWhitespaceBefore(Token token, int i10) {
        Token token2;
        if (getLineBreaksBefore() <= 0) {
            if (i10 == 0 && this.parent == null) {
                bufferIndent(token, i10);
                return;
            } else {
                if (bufferAlign(token, i10) || !isSpaceBefore()) {
                    return;
                }
                this.buffer.append(C15883c.f126249O);
                return;
            }
        }
        this.stringLiteralsInLine.clear();
        if (getLineBreaksBefore() > 1) {
            if (!this.options.indent_empty_lines || token.tokenType == 0) {
                token2 = null;
            } else {
                if (i10 != 0) {
                    boolean z10 = token.getWrapPolicy() != null && token.getWrapPolicy().wrapMode == Token.WrapMode.BLOCK_INDENT;
                    TokenManager tokenManager = this.f102603tm;
                    token2 = tokenManager.get(tokenManager.findFirstTokenInLine(i10 - 1, true, !z10));
                }
                token2 = token;
            }
            for (int i11 = 1; i11 < getLineBreaksBefore(); i11++) {
                bufferLineSeparator(token, true);
                if (token2 != null) {
                    bufferIndent(token2, i10);
                }
            }
        }
        bufferLineSeparator(token, false);
        bufferAlign(token, i10);
        bufferIndent(token, i10);
    }

    private void flushBuffer(int i10) {
        String sb2 = this.buffer.toString();
        boolean z10 = this.source.startsWith(sb2, this.counter) && this.counter + sb2.length() == i10;
        while (!z10 && this.currentRegion < this.regions.size()) {
            IRegion iRegion = this.regions.get(this.currentRegion);
            if (i10 < iRegion.getOffset()) {
                break;
            }
            int offset = iRegion.getOffset() + iRegion.getLength();
            if (this.counter >= offset) {
                this.currentRegion++;
            } else {
                if (this.currentRegion == this.regions.size() - 1 || this.regions.get(this.currentRegion + 1).getOffset() > i10) {
                    this.edits.add(getReplaceEdit(this.counter, i10, sb2, iRegion));
                    break;
                }
                IRegion iRegion2 = this.regions.get(this.currentRegion + 1);
                int i11 = Integer.MAX_VALUE;
                int i12 = 0;
                for (int i13 = 0; i13 < sb2.length(); i13++) {
                    ReplaceEdit replaceEdit = getReplaceEdit(this.counter, offset, sb2.substring(0, i13), iRegion);
                    ReplaceEdit replaceEdit2 = getReplaceEdit(offset, i10, sb2.substring(i13), iRegion2);
                    int length = replaceEdit.getLength() + replaceEdit.getText().length() + replaceEdit2.getLength() + replaceEdit2.getText().length();
                    if (length < i11) {
                        i12 = i13;
                        i11 = length;
                    }
                }
                this.edits.add(getReplaceEdit(this.counter, offset, sb2.substring(0, i12), iRegion));
                sb2 = sb2.substring(i12);
                this.counter = offset;
            }
        }
        this.buffer.setLength(0);
        this.counter = i10;
    }

    private ReplaceEdit getReplaceEdit(int i10, int i11, String str, IRegion iRegion) {
        int offset = iRegion.getOffset() + iRegion.getLength();
        if (i10 < iRegion.getOffset() && offset < i11) {
            if (this.f102603tm.countLineBreaksBetween(this.source, i10, iRegion.getOffset()) + this.f102603tm.countLineBreaksBetween(this.source, offset, i11) > this.f102603tm.countLineBreaksBetween(str, 0, str.length())) {
                i10 = iRegion.getOffset();
                str = "";
                i11 = offset;
            }
        }
        if (iRegion.getOffset() > i10 && isOnlyWhitespace(str)) {
            str = adaptReplaceText(str, this.f102603tm.countLineBreaksBetween(str, 0, str.length()) - this.f102603tm.countLineBreaksBetween(this.source, i10, iRegion.getOffset()), false, iRegion.getOffset() - 1);
            i10 = iRegion.getOffset();
        }
        if (offset >= i11 || !isOnlyWhitespace(str)) {
            offset = i11;
        } else {
            str = adaptReplaceText(str, this.f102603tm.countLineBreaksBetween(str, 0, str.length()) - this.f102603tm.countLineBreaksBetween(this.source, offset, i11), true, offset);
        }
        return new ReplaceEdit(i10, offset - i10, str);
    }

    private void handleMultiLineComment(Token token, int i10) {
        flushBuffer(token.originalStart);
        if (this.childBuilder == null) {
            this.childBuilder = new TextEditsBuilder(this);
        }
        this.childBuilder.traverseInternalStructure(token, i10);
        this.edits.addAll(this.childBuilder.edits);
        this.childBuilder.edits.clear();
        this.counter = this.childBuilder.sourceLimit;
    }

    private void handleSingleLineComment(Token token, int i10) {
        List<Token> internalStructure = token.getInternalStructure();
        if (internalStructure == null) {
            flushBuffer(token.originalStart);
            this.counter = token.originalEnd + 1;
            return;
        }
        if (internalStructure.get(0).tokenType == 1000) {
            flushBuffer(internalStructure.get(0).originalStart);
        } else {
            flushBuffer(token.originalStart);
        }
        for (int i11 = 0; i11 < internalStructure.size(); i11++) {
            Token token2 = internalStructure.get(i11);
            if (token2.getLineBreaksBefore() > 0) {
                bufferLineSeparator(token2, false);
                if (this.parent != null) {
                    bufferAlign(token, i10);
                }
                bufferIndent(token2, i10);
            } else if (token2.isSpaceBefore() && i11 > 0) {
                this.buffer.append(C15883c.f126249O);
            }
            if (token2.hasNLSTag()) {
                int indexOf = this.stringLiteralsInLine.indexOf(token2.getNLSTag());
                StringBuilder sb2 = this.buffer;
                sb2.append("//$NON-NLS-");
                sb2.append(indexOf + 1);
                sb2.append("$");
            } else {
                int i12 = token2.originalStart;
                if (i12 < this.counter) {
                    this.buffer.append(this.f102603tm.toString(token2));
                } else {
                    flushBuffer(i12);
                    this.counter = token2.originalEnd + 1;
                }
            }
        }
        int i13 = token.originalEnd;
        if (i13 > token.originalStart) {
            flushBuffer(i13 + 1);
        }
    }

    private boolean isOnlyWhitespace(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (!ScannerHelper.isWhitespace(str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    private void traverseInternalStructure(Token token, int i10) {
        List<Token> internalStructure = token.getInternalStructure();
        this.f102603tm = new TokenManager(internalStructure, this.parent.f102603tm);
        this.counter = token.originalStart;
        this.sourceLimit = token.originalEnd + 1;
        this.parentTokenIndex = i10;
        traverse(internalStructure, 0);
    }

    public List<TextEdit> getEdits() {
        return this.edits;
    }

    public void processComment(Token token) {
        if (token.tokenType == 1001) {
            handleSingleLineComment(token, this.f102603tm.indexOf(token));
        } else {
            handleMultiLineComment(token, this.f102603tm.indexOf(token));
        }
    }

    public void setAlignChar(int i10) {
        this.alignChar = i10;
    }

    @Override
    public boolean token(Token token, int i10) {
        bufferWhitespaceBefore(token, i10);
        List<Token> internalStructure = token.getInternalStructure();
        if (token.tokenType == 1001) {
            handleSingleLineComment(token, i10);
        } else if (internalStructure == null || internalStructure.isEmpty()) {
            flushBuffer(token.originalStart);
            if (token.isToEscape()) {
                this.buffer.append(this.f102603tm.toString(token));
                flushBuffer(token.originalEnd + 1);
            } else {
                this.counter = token.originalEnd + 1;
            }
        } else {
            handleMultiLineComment(token, i10);
        }
        if (token.tokenType == 46) {
            this.stringLiteralsInLine.add(token);
        }
        if (getNext() == null) {
            int i11 = 0;
            while (i11 < token.getLineBreaksAfter()) {
                i11++;
                bufferLineSeparator(null, i11 == token.getLineBreaksAfter());
            }
            char charAt = this.source.charAt(this.sourceLimit - 1);
            if (token.getLineBreaksAfter() == 0 && (charAt == '\r' || charAt == '\n')) {
                bufferLineSeparator(null, false);
            }
            flushBuffer(this.sourceLimit);
        }
        return true;
    }

    private TextEditsBuilder(TextEditsBuilder textEditsBuilder) {
        this.stringLiteralsInLine = new ArrayList();
        this.edits = new ArrayList();
        this.currentRegion = 0;
        this.buffer = textEditsBuilder.buffer;
        this.parent = textEditsBuilder;
        this.source = textEditsBuilder.source;
        this.options = textEditsBuilder.options;
        this.regions = textEditsBuilder.regions;
        this.alignChar = 2;
    }
}
