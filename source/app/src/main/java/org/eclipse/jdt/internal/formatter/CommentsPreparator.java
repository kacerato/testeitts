package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.formatter.Token;

public class CommentsPreparator extends ASTVisitor {
    static final boolean $assertionsDisabled = false;
    public static final int COMMENT_LINE_SEPARATOR_LENGTH = 3;
    private static final Pattern HTML_ATTRIBUTE_PATTERN;
    private static final String HTML_ENTITY_REPLACE = "   <> &^~\"";
    private static final Pattern HTML_TAG_PATTERN;
    private boolean[] allowSubstituteWrapping;
    private DefaultCodeFormatter commentCodeFormatter;
    private int commentIndent;
    private List<Token> commentStructure;
    private TokenManager ctm;
    private Token firstTagToken;
    private final String formatDisableTag;
    private final String formatEnableTag;
    private Token lastFormatOffComment;
    private Token lastLineComment;
    private int lastLineCommentPosition;
    private final DefaultCodeFormatterOptions options;
    private final String sourceLevel;

    private final TokenManager f102578tm;
    private static final Pattern NLS_TAG_PATTERN = Pattern.compile("//\\$NON-NLS-([0-9]+)\\$");
    private static final Pattern STRING_LITERAL_PATTERN = Pattern.compile("\".*?(\\\\(\\\\\\\\)*\".*?)*\"");
    private static final Pattern HTML_ENTITY_PATTERN = Pattern.compile("&(#x[0-9a-fA-F]+)?(#[0-9]+)?(lt)?(gt)?(nbsp)?(amp)?(circ)?(tilde)?(quot)?;");
    private static final List<String> PARAM_TAGS = Arrays.asList(TagElement.TAG_PARAM, TagElement.TAG_EXCEPTION, TagElement.TAG_SERIALFIELD, TagElement.TAG_THROWS);
    private static final List<String> IMMUTABLE_TAGS = Arrays.asList(TagElement.TAG_CODE, TagElement.TAG_LITERAL);
    private int noFormatTagOpenStart = -1;
    private int formatCodeTagOpenEnd = -1;
    private int lastFormatCodeClosingTagIndex = -1;

    static {
        String str = "(?>(?>[ \\t]++|[\\r\\n]++[ \\t]*+\\*?)+[\\S&&[^=]]+(?>[ \\t]++|[\\r\\n]++[ \\t]*+\\*?)*(=)(?>[ \\t]++|[\\r\\n]++[ \\t]*+\\*?)*(?>(?>\"[^\"]*\")|(?>'[^']*')|[\\S&&[^/>\"']]++))";
        HTML_TAG_PATTERN = Pattern.compile("<(/)?+(?:(pre)|(dl|hr|nl|p|ul|ol|table|tr)|(dd|dt|li|td|th|h1|h2|h3|h4|h5|h6|q)|(br)|(code|tt)|([\\S&&[^<>]]++))(" + str + "*)(?>[ \\t]++|[\\r\\n]++[ \\t]*+\\*?)*/?>", 2);
        HTML_ATTRIBUTE_PATTERN = Pattern.compile(str);
    }

    public CommentsPreparator(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions, String str) {
        this.f102578tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
        this.sourceLevel = str;
        char[] cArr = defaultCodeFormatterOptions.disabling_tag;
        this.formatDisableTag = cArr != null ? new String(cArr) : null;
        char[] cArr2 = defaultCodeFormatterOptions.enabling_tag;
        this.formatEnableTag = cArr2 != null ? new String(cArr2) : null;
    }

    private void addSubstituteWraps() {
        Token token = this.ctm.get(0);
        int i10 = token.originalStart;
        int i11 = 1;
        while (i11 < this.ctm.size() - 1) {
            Token token2 = this.ctm.get(i11);
            if (token2.originalStart == this.ctm.get(i11 - 1).originalEnd + 1 && token2.getLineBreaksBefore() == 0 && token.getLineBreaksAfter() == 0 && token2.getWrapPolicy() == null) {
                token2.setWrapPolicy(this.allowSubstituteWrapping[token2.originalStart - i10] ? Token.WrapPolicy.SUBSTITUTE_ONLY : Token.WrapPolicy.DISABLE_WRAP);
            }
            for (int i12 = token2.originalStart + 1; i12 < token2.originalEnd; i12++) {
                if (this.allowSubstituteWrapping[i12 - i10] && !ScannerHelper.isJavaIdentifierPart(this.ctm.charAt(i12))) {
                    Token token3 = this.ctm.get(tokenStartingAt(i12));
                    Token.WrapPolicy wrapPolicy = Token.WrapPolicy.SUBSTITUTE_ONLY;
                    token3.setWrapPolicy(wrapPolicy);
                    this.ctm.get(tokenStartingAt(i12 + 1)).setWrapPolicy(wrapPolicy);
                }
            }
            i11++;
            token = token2;
        }
    }

    private void alignJavadocTag(List<Token> list, int i10, int i11) {
        boolean z10 = true;
        Token token = list.get(1);
        if (token != null) {
            token.setAlign(i10);
            if (this.options.comment_insert_new_line_for_parameter && list.size() > 2) {
                list.get(2).breakBefore();
            }
        }
        if ((token == null || !this.options.comment_indent_parameter_description) && (token != null || !this.options.comment_indent_tag_description)) {
            z10 = false;
        }
        for (int i12 = 2; i12 < list.size(); i12++) {
            Token token2 = list.get(i12);
            token2.setAlign(i11);
            token2.setIndent(z10 ? this.options.indentation_size : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Token> commentToLines(Token token, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = this.options.tab_size;
        String tokenManager = this.f102578tm.toString(token);
        int findSourcePositionInLine = i10 < 0 ? this.f102578tm.findSourcePositionInLine(token.originalStart) : i10;
        int i12 = findSourcePositionInLine;
        boolean z10 = true;
        boolean z11 = true;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < tokenManager.length()) {
            char charAt = tokenManager.charAt(i13);
            if (charAt != '\t') {
                if (charAt == '\n' || charAt == '\r') {
                    if (i14 < i13) {
                        int i16 = token.originalStart;
                        Token token2 = new Token(i14 + i16, (i16 + i13) - 1, z10 ? token.tokenType : 0);
                        token2.breakAfter();
                        if (arrayList.isEmpty()) {
                            token2.putLineBreaksBefore(i15);
                        }
                        arrayList.add(token2);
                    } else if (arrayList.isEmpty()) {
                        i15++;
                    } else {
                        Token token3 = (Token) arrayList.get(arrayList.size() - 1);
                        token3.putLineBreaksAfter(token3.getLineBreaksAfter() + 1);
                    }
                    int i17 = i13 + 1;
                    if (i17 < tokenManager.length()) {
                        if (tokenManager.charAt(i17) == (charAt != '\r' ? '\r' : '\n')) {
                            i13 = i17;
                        }
                    }
                    i14 = i13 + 1;
                    z11 = true;
                    i12 = 0;
                    z10 = false;
                } else if (charAt != ' ') {
                    i12++;
                    z11 = false;
                } else {
                    if ((i14 == i13 && i12 < findSourcePositionInLine) || (z11 && i12 == token.getIndent() - 1)) {
                        i14 = i13 + 1;
                    }
                    i12++;
                }
            } else {
                if ((i14 == i13 && i12 < findSourcePositionInLine) || (z11 && i12 == token.getIndent() - 1)) {
                    i14 = i13 + 1;
                }
                if (i11 > 0) {
                    i12 += i11 - (i12 % i11);
                }
            }
            i13++;
        }
        if (i14 < tokenManager.length()) {
            Token token4 = new Token(token.originalStart + i14, token.originalEnd, z10 ? token.tokenType : 0);
            token4.setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
            arrayList.add(token4);
        }
        return arrayList;
    }

    private void disableFormatting(int i10, int i11, boolean z10) {
        Token token = this.ctm.get(i10);
        Token token2 = this.ctm.get(i11);
        List<Token> commentToLines = commentToLines(new Token(token.originalStart, token2.originalEnd, 1003), findCommentLineIndent(i10));
        Iterator<Token> it = commentToLines.iterator();
        while (it.hasNext()) {
            it.next().setToEscape(z10);
        }
        Token token3 = commentToLines.get(0);
        if (token.isSpaceBefore()) {
            token3.spaceBefore();
        }
        token3.setAlign(token.getAlign());
        token3.setIndent(token.getIndent());
        token3.putLineBreaksBefore(token.getLineBreaksBefore());
        token3.setWrapPolicy(token.getWrapPolicy());
        commentToLines.get(commentToLines.size() - 1).putLineBreaksAfter(token2.getLineBreaksAfter());
        int i12 = i11 + 1;
        fixJavadocTagAlign(token, i12);
        List<Token> subList = this.commentStructure.subList(i10, i12);
        subList.clear();
        subList.addAll(commentToLines);
    }

    private void disableFormattingExclusively(int i10, int i11) {
        Token token = this.ctm.get(i10);
        int i12 = token.originalEnd + 1;
        int i13 = this.ctm.get(i11 - 1).originalEnd;
        if (i12 > i13) {
            this.commentStructure.subList(i10 + 1, i11).clear();
            Token token2 = this.ctm.get(i11);
            if (this.ctm.countLineBreaksBetween(token, token2) == 0) {
                token.clearLineBreaksAfter();
                token2.clearLineBreaksBefore();
                return;
            }
            return;
        }
        List<Token> commentToLines = commentToLines(new Token(i12, i13, 1003), findCommentLineIndent(i10));
        Iterator<Token> it = commentToLines.iterator();
        while (it.hasNext()) {
            it.next().setToEscape(true);
        }
        fixJavadocTagAlign(token, i11);
        List<Token> subList = this.commentStructure.subList(i10 + 1, i11);
        subList.clear();
        subList.addAll(commentToLines);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r3.ctm.charAt(r0 - 1) != ' ') goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        r0 = r0 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int findCommentLineIndent(int i10) {
        int i11;
        char charAt;
        int i12 = this.ctm.get(i10).originalStart;
        loop0: while (true) {
            i11 = i12;
            do {
                i12--;
                if (i12 > 0 && (charAt = this.ctm.charAt(i12)) != '\r' && charAt != '\n') {
                }
            } while (ScannerHelper.isWhitespace(charAt));
        }
        return this.ctm.getLength(i12, i11 - 1, 0);
    }

    private List<Token> findStringLiteralsInLine(int i10) {
        ArrayList arrayList = new ArrayList();
        Token token = this.f102578tm.get(i10);
        int i11 = i10 - 1;
        while (i11 >= 0) {
            Token token2 = this.f102578tm.get(i11);
            if (this.f102578tm.countLineBreaksBetween(token2, token) > 0) {
                break;
            }
            if (token2.tokenType == 46) {
                arrayList.add(token2);
            }
            i11--;
            token = token2;
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    private void fixJavadocTagAlign(Token token, int i10) {
        while (i10 < this.ctm.size() - 1) {
            Token token2 = this.ctm.get(i10);
            if (token2.getAlign() == 0 && token2.getIndent() == 0) {
                return;
            }
            token2.setAlign(token.getAlign());
            token2.setIndent(token.getIndent());
            i10++;
        }
    }

    private void formatCode(int i10, int i11) {
        int i12 = tokenEndingAt(this.formatCodeTagOpenEnd);
        int i13 = tokenStartingAt(i10);
        int i14 = this.formatCodeTagOpenEnd + 1;
        int i15 = i10 - 1;
        int i16 = (i15 - i14) + 1;
        StringBuilder sb2 = new StringBuilder(i16);
        int[] iArr = new int[i16];
        getCodeToFormat(i14, i15, sb2, iArr);
        List<Token> prepareFormattedCode = getCommentCodeFormatter().prepareFormattedCode(sb2.toString());
        if (prepareFormattedCode == null) {
            disableFormattingExclusively(i12, i13);
            return;
        }
        List<Token> translateFormattedTokens = translateFormattedTokens(i14, prepareFormattedCode, iArr, null);
        Token token = this.ctm.get(i12);
        for (Token token2 : translateFormattedTokens) {
            token2.setAlign(token2.getAlign() + token.getAlign() + token.getIndent());
        }
        fixJavadocTagAlign(token, i13);
        Token token3 = translateFormattedTokens.get(0);
        token3.putLineBreaksBefore(token3.getLineBreaksBefore() + 1);
        Token token4 = translateFormattedTokens.get(translateFormattedTokens.size() - 1);
        token4.putLineBreaksAfter(token4.getLineBreaksAfter() + 1);
        this.ctm.get(i13).clearLineBreaksBefore();
        List<Token> subList = this.commentStructure.subList(i12 + 1, i13);
        subList.clear();
        subList.addAll(translateFormattedTokens);
    }

    private void getCodeToFormat(int i10, int i11, StringBuilder sb2, int[] iArr) {
        char charAt;
        char charAt2;
        char charAt3 = this.ctm.charAt(i10);
        int i12 = 0;
        if (charAt3 == '\r' || charAt3 == '\n') {
            iArr[0] = sb2.length() - 1;
            char charAt4 = this.ctm.charAt(1 + i10);
            if ((charAt4 == '\r' || charAt4 == '\n') && charAt4 != charAt3) {
                iArr[1] = sb2.length() - 1;
                i12 = 2;
            } else {
                i12 = 1;
            }
        }
        while (true) {
            int i13 = i12 + i10;
            if (i13 > i11) {
                break;
            }
            int i14 = i13;
            while (true) {
                charAt2 = this.ctm.charAt(i13);
                if (charAt2 != '\r' && charAt2 != '\n') {
                    if (!ScannerHelper.isWhitespace(charAt2)) {
                        break;
                    }
                } else {
                    sb2.append(charAt2);
                    i14 = i13 + 1;
                }
                i13++;
            }
            if (charAt2 == '*') {
                int i15 = i13 + 1;
                i14 = this.ctm.charAt(i15) == ' ' ? i13 + 2 : i15;
            }
            int i16 = i14;
            int i17 = i11 + 1;
            for (int i18 = i16; i18 <= i11; i18++) {
                char charAt5 = this.ctm.charAt(i18);
                if (charAt5 == '\r' || charAt5 == '\n') {
                    i17 = i18;
                    break;
                }
            }
            while (i12 + i10 < i16) {
                iArr[i12] = sb2.length() - 1;
                i12++;
            }
            int i19 = -1;
            while (i16 < i17) {
                char charAt6 = this.ctm.charAt(i16);
                sb2.append(charAt6);
                int i20 = i12 + 1;
                iArr[i12] = sb2.length() - 1;
                if (charAt6 == '&') {
                    i19 = i16;
                } else if (charAt6 == ';' && i19 >= 0) {
                    int i21 = i16 + 1;
                    char htmlEntityChar = getHtmlEntityChar(this.ctm.getSource().substring(i19, i21));
                    if (htmlEntityChar != 0) {
                        int i22 = i21 - i19;
                        sb2.setLength(sb2.length() - i22);
                        sb2.append(htmlEntityChar);
                        for (int i23 = i20 - i22; i23 < i20; i23++) {
                            iArr[i23] = sb2.length() - 1;
                        }
                    }
                    i19 = -1;
                }
                i16++;
                i12 = i20;
            }
        }
        while (sb2.length() > 0 && ((charAt = sb2.charAt(sb2.length() - 1)) == ' ' || charAt == '\t')) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        if (sb2.length() > 0) {
            char charAt7 = sb2.charAt(sb2.length() - 1);
            if (charAt7 == '\r' || charAt7 == '\n') {
                sb2.deleteCharAt(sb2.length() - 1);
                if (sb2.length() > 0) {
                    char charAt8 = sb2.charAt(sb2.length() - 1);
                    if ((charAt8 == '\r' || charAt8 == '\n') && charAt8 != charAt7) {
                        sb2.deleteCharAt(sb2.length() - 1);
                    }
                }
            }
        }
    }

    private DefaultCodeFormatter getCommentCodeFormatter() {
        if (this.commentCodeFormatter == null) {
            Map<String, String> map = this.options.getMap();
            map.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_LINE_LENGTH, String.valueOf((this.options.comment_line_length - this.commentIndent) - 3));
            map.put("org.eclipse.jdt.core.formatter.lineSplit", String.valueOf((this.options.page_width - this.commentIndent) - 3));
            map.put("org.eclipse.jdt.core.compiler.source", this.sourceLevel);
            this.commentCodeFormatter = new DefaultCodeFormatter(map);
        }
        return this.commentCodeFormatter;
    }

    private char getHtmlEntityChar(String str) {
        int parseInt;
        Matcher matcher = HTML_ENTITY_PATTERN.matcher(str);
        if (!matcher.find()) {
            return (char) 0;
        }
        char c10 = 0;
        for (int i10 = 1; i10 < 10; i10++) {
            int start = matcher.start(i10);
            int end = matcher.end(i10);
            if (start != end) {
                if (c10 != 0) {
                    return (char) 0;
                }
                if (i10 == 1) {
                    parseInt = Integer.parseInt(str.substring(start + 2, end), 16);
                } else if (i10 != 2) {
                    c10 = HTML_ENTITY_REPLACE.charAt(i10);
                } else {
                    parseInt = Integer.parseInt(str.substring(start + 1, end), 10);
                }
                c10 = (char) parseInt;
            }
        }
        return c10;
    }

    private void handleBreakAfterTag(int i10, int i11) {
        this.ctm.get(tokenEndingAt(i11)).breakAfter();
    }

    private void handleBreakBeforeTag(int i10, int i11, boolean z10) {
        int i12 = tokenStartingAt(i10);
        int i13 = tokenEndingAt(i11);
        Token token = this.ctm.get(i12);
        token.setWrapPolicy(null);
        if (!z10) {
            token.clearSpaceBefore();
        } else {
            token.breakBefore();
            this.ctm.get(i13 + 1).clearSpaceBefore();
        }
    }

    private void handleCompilerTags(Token token, int i10) {
        String tokenManager = this.f102578tm.toString(token);
        List<Token> internalStructure = token.getInternalStructure();
        if (tokenManager.startsWith("//$FALL-THROUGH$") || tokenManager.startsWith("//$IDENTITY-COMPARISON$")) {
            internalStructure.get(1).clearSpaceBefore();
        }
        if (tokenManager.contains("//$IDENTITY-COMPARISON$")) {
            while (i10 > 0) {
                Token token2 = this.f102578tm.get(i10 - 1);
                if (this.f102578tm.countLineBreaksBetween(token2, token) > 0) {
                    return;
                }
                token.clearLineBreaksBefore();
                token2.clearLineBreaksAfter();
                token.setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
                i10--;
                token = token2;
            }
        }
    }

    private void handleFormatCodeTag(int i10, int i11, boolean z10) {
        if (!this.options.comment_format_source) {
            handleNoFormatTag(i10, i11, z10);
            return;
        }
        handleSeparateLineTag(i10, i11);
        if (z10) {
            int i12 = tokenStartingAt(i10);
            if (i12 > 1) {
                this.ctm.get(i12).putLineBreaksBefore(2);
            }
            if (this.formatCodeTagOpenEnd < 0) {
                this.formatCodeTagOpenEnd = i11;
                return;
            }
            return;
        }
        if (this.formatCodeTagOpenEnd >= 0) {
            int i13 = tokenEndingAt(i11);
            if (i13 < this.ctm.size() - 2) {
                this.ctm.get(i13).putLineBreaksAfter(2);
            }
            formatCode(i10, i11);
            this.formatCodeTagOpenEnd = -1;
            this.lastFormatCodeClosingTagIndex = this.ctm.findIndex(i10, -1, true);
        }
    }

    private boolean handleFormatOnOffTags(Token token) {
        if (!this.options.use_tags) {
            return false;
        }
        String tokenManager = this.f102578tm.toString(token);
        String str = this.formatDisableTag;
        int lastIndexOf = str != null ? tokenManager.lastIndexOf(str) : -1;
        String str2 = this.formatEnableTag;
        int lastIndexOf2 = str2 != null ? tokenManager.lastIndexOf(str2) : -1;
        Token token2 = this.lastFormatOffComment;
        if (token2 == null) {
            if (lastIndexOf > lastIndexOf2) {
                this.lastFormatOffComment = token;
            }
        } else if (lastIndexOf2 > lastIndexOf) {
            this.f102578tm.addDisableFormatTokenPair(token2, token);
            this.lastFormatOffComment = null;
        }
        return lastIndexOf >= 0 || lastIndexOf2 >= 0;
    }

    private void handleHtml(TagElement tagElement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.comment_format_html || defaultCodeFormatterOptions.comment_format_source) {
            Matcher matcher = HTML_TAG_PATTERN.matcher(this.f102578tm.toString(tagElement));
            while (matcher.find()) {
                int start = matcher.start() + tagElement.getStartPosition();
                int end = (matcher.end() - 1) + tagElement.getStartPosition();
                boolean z10 = matcher.start(1) == matcher.end(1);
                if (this.options.comment_format_html) {
                    int i10 = tokenStartingAt(start);
                    int i11 = tokenEndingAt(end);
                    for (int i12 = i10 + 1; i12 <= i11; i12++) {
                        Token token = this.ctm.get(i12);
                        if (token.getWrapPolicy() == null) {
                            token.setWrapPolicy(Token.WrapPolicy.SUBSTITUTE_ONLY);
                        }
                    }
                    Matcher matcher2 = HTML_ATTRIBUTE_PATTERN.matcher(matcher.group(8));
                    int i13 = this.ctm.get(0).originalStart;
                    while (matcher2.find()) {
                        this.allowSubstituteWrapping[((tagElement.getStartPosition() + matcher.start(8)) + matcher2.start(1)) - i13] = true;
                    }
                }
                int i14 = 0;
                for (int i15 = 2; i15 <= 7; i15++) {
                    if (matcher.start(i15) < matcher.end(i15)) {
                        i14++;
                    }
                }
                if (i14 == 1) {
                    if (matcher.start(2) < matcher.end(2)) {
                        handleFormatCodeTag(start, end, z10);
                    }
                    if (this.options.comment_format_html && (!TagElement.TAG_PARAM.equals(tagElement.getTagName()) || this.ctm.findIndex(start, -1, false) != this.ctm.firstIndexIn(tagElement, -1) + 1)) {
                        if (matcher.start(3) < matcher.end(3)) {
                            handleSeparateLineTag(start, end);
                        } else if (matcher.start(4) < matcher.end(4)) {
                            handleBreakBeforeTag(start, end, z10);
                        } else if (matcher.start(5) < matcher.end(5)) {
                            handleBreakAfterTag(start, end);
                        } else if (matcher.start(6) < matcher.end(6)) {
                            handleNoFormatTag(start, end, z10);
                        }
                    }
                }
            }
        }
    }

    private void handleJavadocTagAlignment(Javadoc javadoc) {
        String str;
        ArrayList<List> arrayList = new ArrayList();
        Iterator it = javadoc.tags().iterator();
        while (true) {
            str = null;
            if (!it.hasNext()) {
                break;
            }
            TagElement tagElement = (TagElement) it.next();
            String tagName = tagElement.getTagName();
            if (tagName != null && tagName.length() > 1) {
                int i10 = tokenStartingAt(tagElement.getStartPosition());
                int startPosition = (tagElement.getStartPosition() + tagElement.getLength()) - 1;
                while (ScannerHelper.isWhitespace(this.ctm.charAt(startPosition))) {
                    startPosition--;
                }
                int i11 = tokenEndingAt(startPosition);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(this.ctm.get(i10));
                if (!PARAM_TAGS.contains(tagName) || i10 == i11) {
                    arrayList2.add(null);
                }
                while (true) {
                    i10++;
                    if (i10 > i11) {
                        break;
                    } else {
                        arrayList2.add(this.ctm.get(i10));
                    }
                }
                arrayList.add(arrayList2);
            }
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.comment_align_tags_names_descriptions) {
            int i12 = 0;
            int i13 = 0;
            for (List list : arrayList) {
                Token token = (Token) list.get(0);
                Token token2 = (Token) list.get(1);
                i12 = Math.max(i12, this.f102578tm.getLength(token, 0));
                if (token2 != null) {
                    i13 = Math.max(i13, this.f102578tm.getLength(token2, 0));
                }
            }
            int i14 = i12 + 1;
            int i15 = i13 > 0 ? i13 + 1 + i14 : i14;
            Iterator<E> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                alignJavadocTag((List) it2.next(), i14, i15);
            }
            return;
        }
        if (!defaultCodeFormatterOptions.comment_align_tags_descriptions_grouped) {
            Iterator<E> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                List<Token> list2 = (List) it3.next();
                alignJavadocTag(list2, 0, this.options.comment_indent_root_tags ? this.ctm.getLength(list2.get(0), 0) + 1 : 0);
            }
            return;
        }
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < arrayList.size(); i18++) {
            List list3 = (List) arrayList.get(i18);
            String tokenManager = this.ctm.toString((Token) list3.get(0));
            if (!tokenManager.equals(str)) {
                while (i16 < i18) {
                    alignJavadocTag((List) arrayList.get(i16), 0, i17);
                    i16++;
                }
                i16 = i18;
                i17 = 0;
                str = tokenManager;
            }
            int length = tokenManager.length() + 1;
            if (list3.get(1) != null) {
                length += this.ctm.getLength((Token) list3.get(1), 0) + 1;
            }
            i17 = Math.max(i17, length);
        }
        while (i16 < arrayList.size()) {
            alignJavadocTag((List) arrayList.get(i16), 0, i17);
            i16++;
        }
    }

    private void handleNLSTags(Token token, int i10) {
        List<Token> findStringLiteralsInLine = findStringLiteralsInLine(i10);
        if (findStringLiteralsInLine.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher = NLS_TAG_PATTERN.matcher(this.f102578tm.toString(token));
        boolean z10 = false;
        int i11 = 0;
        while (matcher.find()) {
            int parseInt = Integer.parseInt(matcher.group(1));
            if (parseInt > 0 && parseInt <= findStringLiteralsInLine.size()) {
                if (matcher.start() > i11) {
                    int i12 = token.originalStart;
                    arrayList.add(new Token(i11 + i12, (i12 + matcher.start()) - 1, 1001));
                }
                Token token2 = new Token(token.originalStart + matcher.start(), (token.originalStart + matcher.end()) - 1, 1001);
                int i13 = parseInt - 1;
                findStringLiteralsInLine.get(i13).setNLSTag(token2);
                token2.setNLSTag(findStringLiteralsInLine.get(i13));
                arrayList.add(token2);
                i11 = matcher.end();
                z10 = true;
            }
        }
        if (z10) {
            token.setInternalStructure(arrayList);
            if (token.originalStart + i11 <= token.originalEnd) {
                arrayList.add(new Token(token.originalStart + i11, token.originalEnd, 1001));
            }
        }
    }

    private void handleNoFormatTag(int i10, int i11, boolean z10) {
        if (z10) {
            if (this.noFormatTagOpenStart < 0) {
                this.noFormatTagOpenStart = i10;
                return;
            }
            return;
        }
        int i12 = this.noFormatTagOpenStart;
        if (i12 >= 0) {
            int i13 = tokenStartingAt(i12);
            int i14 = tokenEndingAt(i11);
            if (i13 < i14) {
                disableFormatting(i13, i14, true);
            }
            this.noFormatTagOpenStart = -1;
        }
    }

    private void handleReference(ASTNode aSTNode) {
        ASTNode parent = aSTNode.getParent();
        if ((parent instanceof TagElement) && ((TagElement) parent).isNested()) {
            int i10 = tokenEndingAt((aSTNode.getStartPosition() + aSTNode.getLength()) - 1);
            TokenManager tokenManager = this.ctm;
            int i11 = i10 + 1;
            if (tokenManager.charAt(tokenManager.get(i11).originalStart) == '}') {
                i10 = i11;
            }
            for (int i12 = tokenStartingAt(aSTNode.getStartPosition()); i12 <= i10; i12++) {
                this.ctm.get(i12).setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
            }
        }
    }

    private void handleSeparateLineTag(int i10, int i11) {
        int i12;
        int i13 = tokenStartingAt(i10);
        if (i13 > 1 && this.lastFormatCodeClosingTagIndex == (i12 = i13 - 1)) {
            Token token = this.ctm.get(i12);
            token.clearLineBreaksAfter();
            token.breakAfter();
        }
        handleBreakBeforeTag(i10, i11, true);
        handleBreakAfterTag(i10, i11);
    }

    private void handleStringLiterals(String str, int i10) {
        Matcher matcher = STRING_LITERAL_PATTERN.matcher(str);
        while (matcher.find()) {
            int start = matcher.start() + i10;
            int findIndex = this.ctm.findIndex(start, -1, false);
            int end = (matcher.end() + i10) - 1;
            if (findIndex != this.ctm.findIndex(end, -1, false)) {
                disableFormatting(tokenStartingAt(start), tokenEndingAt(end), false);
            }
            noSubstituteWrapping(start, end);
        }
    }

    private boolean handleWhitespaceAround(int i10) {
        Token token;
        int i11;
        int i12;
        int i13;
        char charAt;
        Token token2 = this.f102578tm.get(i10);
        int i14 = token2.originalStart;
        char charAt2 = i14 > 0 ? this.f102578tm.charAt(i14 - 1) : (char) 0;
        if (charAt2 == ' ' || charAt2 == '\t') {
            token2.spaceBefore();
        }
        if (token2.originalEnd < this.f102578tm.getSourceLength() - 1 && ((charAt = this.f102578tm.charAt(token2.originalEnd + 1)) == ' ' || charAt == '\t')) {
            token2.spaceAfter();
        }
        Token token3 = null;
        if (i10 > 0) {
            token = this.f102578tm.get(i10 - 1);
            i11 = this.f102578tm.countLineBreaksBetween(token, token2);
            if (i11 > 0) {
                token2.breakBefore();
                token2.clearSpaceBefore();
            }
        } else {
            token = null;
            i11 = 2;
        }
        if (i10 < this.f102578tm.size() - 1) {
            token3 = this.f102578tm.get(i10 + 1);
            i12 = this.f102578tm.countLineBreaksBetween(token2, token3);
            if (i12 > 0) {
                token2.breakAfter();
            }
        } else {
            i12 = 2;
        }
        if (i11 > 1 || !((i13 = token.tokenType) == 1001 || i13 == 1002)) {
            int i15 = i10 + 2;
            while (i12 <= 1 && i15 < this.f102578tm.size()) {
                int i16 = token3.tokenType;
                if (i16 != 1001 && i16 != 1002) {
                    break;
                }
                int i17 = i15 + 1;
                Token token4 = this.f102578tm.get(i15);
                int countLineBreaksBetween = this.f102578tm.countLineBreaksBetween(token3, token4);
                token3 = token4;
                i15 = i17;
                i12 = countLineBreaksBetween;
            }
            if (i11 < i12 && token != null) {
                token2.putLineBreaksAfter(token.getLineBreaksAfter());
                token.clearLineBreaksAfter();
            } else if (i12 <= i11 && token3 != null && token3.tokenType != 85) {
                token2.putLineBreaksBefore(token3.getLineBreaksBefore());
                token3.clearLineBreaksBefore();
            }
        } else if (token.getWrapPolicy() != Token.WrapPolicy.FORCE_FIRST_COLUMN) {
            token2.setWrapPolicy(token.getWrapPolicy());
        }
        return charAt2 == '\r' || charAt2 == '\n' || token2.originalStart == 0;
    }

    private void noSubstituteWrapping(int i10, int i11) {
        int i12 = this.ctm.get(0).originalStart;
        Arrays.fill(this.allowSubstituteWrapping, i10 - i12, (i11 - i12) + 1, false);
    }

    private void preserveWhitespace(Token token, int i10) {
        if (this.options.comment_preserve_white_space_between_code_and_line_comments && token.getLineBreaksBefore() == 0 && i10 > 0) {
            token.clearSpaceBefore();
            List<Token> internalStructure = token.getInternalStructure();
            if (internalStructure != null && !internalStructure.isEmpty()) {
                internalStructure.get(0).clearSpaceBefore();
            }
            Token token2 = this.f102578tm.get(i10 - 1);
            token2.clearSpaceAfter();
            if (token2.originalEnd + 1 >= token.originalStart) {
                return;
            }
            if (internalStructure != null && !internalStructure.isEmpty()) {
                internalStructure.add(0, new Token(token2.originalEnd + 1, token.originalStart - 1, 1000));
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Token(token2.originalEnd + 1, token.originalEnd, 1001));
            token.setInternalStructure(arrayList);
        }
    }

    private void splitToken(Token token, int i10, int i11) {
        Token token2 = new Token(token.originalStart, i11 - 1, token.tokenType);
        Token token3 = new Token(i11, token.originalEnd, token.tokenType);
        if (token.isSpaceBefore()) {
            token2.spaceBefore();
        }
        token2.putLineBreaksBefore(token.getLineBreaksBefore());
        token3.putLineBreaksAfter(token.getLineBreaksAfter());
        token2.setIndent(token.getIndent());
        token3.setIndent(token.getIndent());
        token2.setAlign(token.getAlign());
        token3.setAlign(token.getAlign());
        token2.setWrapPolicy(token.getWrapPolicy());
        this.commentStructure.set(i10, token2);
        this.commentStructure.add(i10 + 1, token3);
    }

    private int tokenEndingAt(int i10) {
        int findIndex = this.ctm.findIndex(i10, -1, true);
        Token token = this.ctm.get(findIndex);
        if (token.originalEnd == i10) {
            return findIndex;
        }
        splitToken(token, findIndex, i10 + 1);
        return findIndex;
    }

    private int tokenStartingAt(int i10) {
        int findIndex = this.ctm.findIndex(i10, -1, false);
        Token token = this.ctm.get(findIndex);
        if (token.originalStart == i10) {
            return findIndex;
        }
        splitToken(token, findIndex, i10);
        return findIndex + 1;
    }

    private List<Token> tokenizeLineComment(Token token) {
        List<Token> internalStructure = token.getInternalStructure();
        if (internalStructure == null) {
            internalStructure = Arrays.asList(token);
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < internalStructure.size(); i10++) {
            Token token2 = internalStructure.get(i10);
            if (token2.hasNLSTag()) {
                if (ScannerHelper.isWhitespace(this.f102578tm.charAt(token2.originalStart - 1))) {
                    token2.spaceBefore();
                }
                arrayList.add(token2);
            } else {
                int i11 = token2.originalStart;
                if (i11 == token.originalStart) {
                    while (i11 <= token2.originalEnd && this.f102578tm.charAt(i11) == '/') {
                        i11++;
                    }
                    arrayList.add(new Token(token.originalStart, i11 - 1, 1001));
                }
                int i12 = i11;
                while (true) {
                    int i13 = token2.originalEnd;
                    if (i11 > i13 + 1) {
                        break;
                    }
                    if (i11 == i13 + 1 || ScannerHelper.isWhitespace(this.f102578tm.charAt(i11))) {
                        if (i12 < i11) {
                            Token token3 = new Token(i12, i11 - 1, 1001);
                            token3.spaceBefore();
                            arrayList.add(token3);
                        }
                        i12 = i11 + 1;
                    }
                    i11++;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x017b, code lost:
    
        r3 = 1003;
        r4 = false;
        r9 = '*';
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean tokenizeMultilineComment(Token token) {
        char c10;
        char c11;
        boolean[] zArr = this.allowSubstituteWrapping;
        if (zArr == null || zArr.length < token.countChars()) {
            this.allowSubstituteWrapping = new boolean[token.countChars()];
        }
        int i10 = 1003;
        boolean z10 = false;
        boolean z11 = token.tokenType == 1003;
        Arrays.fill(this.allowSubstituteWrapping, 0, token.countChars(), !z11);
        boolean z12 = z11 ? this.options.comment_clear_blank_lines_in_javadoc_comment : this.options.comment_clear_blank_lines_in_block_comment;
        ArrayList arrayList = new ArrayList();
        int i11 = token.originalStart + 1;
        while (true) {
            c10 = '*';
            if (i11 >= token.originalEnd - 1) {
                break;
            }
            int i12 = i11 + 1;
            if (this.f102578tm.charAt(i12) != '*') {
                break;
            }
            i11 = i12;
        }
        Token token2 = new Token(token.originalStart, i11, token.tokenType);
        token2.spaceAfter();
        arrayList.add(token2);
        int i13 = token.originalEnd - 1;
        while (true) {
            int i14 = i13 - 1;
            if (i14 <= i11 || this.f102578tm.charAt(i14) != '*') {
                break;
            }
            i13--;
        }
        int i15 = i11 + 1;
        int i16 = 0;
        while (i15 <= token.originalEnd) {
            int i17 = i16;
            int i18 = i15;
            while (true) {
                if (i15 >= i13) {
                    break;
                }
                char charAt = this.f102578tm.charAt(i15);
                if (charAt == '\r' || charAt == '\n') {
                    i17++;
                    int i19 = i15 + 1;
                    char charAt2 = this.f102578tm.charAt(i19);
                    if ((charAt2 == '\r' || charAt2 == '\n') && charAt2 != charAt) {
                        i15 = i19;
                    }
                    i18 = i15 + 1;
                } else if (!ScannerHelper.isWhitespace(charAt)) {
                    while (this.f102578tm.charAt(i15) == c10 && i17 > 0) {
                        i15++;
                    }
                    i18 = i15;
                }
                i15++;
                c10 = '*';
            }
            int i20 = i18;
            i15 = i20;
            i16 = i17;
            while (true) {
                int i21 = token.originalEnd;
                if (i15 > i21 + 1) {
                    i10 = 1003;
                    z10 = false;
                    break;
                }
                if (i15 == i21 + 1 || i15 == i13) {
                    c11 = 0;
                } else {
                    c11 = this.f102578tm.charAt(i15);
                    if (!ScannerHelper.isWhitespace(c11)) {
                        continue;
                        i15++;
                        c10 = '*';
                    }
                }
                if (i20 < i15) {
                    Token token3 = new Token(i20, i15 - 1, token.tokenType);
                    token3.spaceBefore();
                    if (i16 > 0) {
                        if (z12) {
                            i16 = 1;
                        }
                        if (i16 > 1 || !this.options.join_lines_in_comments) {
                            token3.putLineBreaksBefore(i16);
                        }
                    }
                    if (this.f102578tm.charAt(i20) == '@') {
                        token3.setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
                        if (token.tokenType == 1002 && i16 == 1 && arrayList.size() > 1) {
                            token3.putLineBreaksBefore(z12 ? 1 : 2);
                        }
                        if (this.f102578tm.charAt(i20 + 1) == '@' && i16 > 0 && this.firstTagToken == null) {
                            this.firstTagToken = token3;
                        }
                    }
                    arrayList.add(token3);
                    i16 = 0;
                }
                if (c11 == '\r' || c11 == '\n') {
                    break;
                }
                i20 = i15 == i13 ? i15 : i15 + 1;
                i15++;
                c10 = '*';
            }
        }
        Token token4 = arrayList.get(arrayList.size() - 1);
        if (!(token.tokenType == i10 ? this.options.comment_new_lines_at_javadoc_boundaries : this.options.comment_new_lines_at_block_boundaries)) {
            arrayList.get(1).clearLineBreaksBefore();
            token4.clearLineBreaksBefore();
        } else if (this.f102578tm.countLineBreaksBetween(token2, token4) > 0) {
            token2.breakAfter();
            token4.breakBefore();
        }
        token4.setAlign(1);
        if (arrayList.size() == 2) {
            return z10;
        }
        token.setInternalStructure(arrayList);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Token> translateFormattedTokens(int i10, List<Token> list, int[] iArr, HashMap<Token, Token> hashMap) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (Token token : list) {
            int binarySearch = Arrays.binarySearch(iArr, token.originalStart);
            while (binarySearch > 0 && iArr[binarySearch - 1] == token.originalStart) {
                binarySearch--;
            }
            int binarySearch2 = Arrays.binarySearch(iArr, token.originalEnd);
            while (true) {
                int i12 = binarySearch2 + 1;
                if (i12 >= iArr.length || iArr[i12] != token.originalEnd) {
                    break;
                }
                binarySearch2 = i12;
            }
            Token token2 = new Token(token, binarySearch + i10, binarySearch2 + i10, token.tokenType);
            if (token2.getWrapPolicy() == null) {
                token2.setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
            }
            if (token.hasNLSTag()) {
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                }
                Token token3 = hashMap.get(token.getNLSTag());
                if (token3 != null) {
                    token3.setNLSTag(token2);
                    token2.setNLSTag(token3);
                } else {
                    hashMap.put(token, token2);
                }
            }
            int max = Math.max(i11, token.getLineBreaksBefore());
            List<Token> internalStructure = token.getInternalStructure();
            if (internalStructure != null && !internalStructure.isEmpty()) {
                token2.setInternalStructure(translateFormattedTokens(i10, internalStructure, iArr, hashMap));
            }
            token2.putLineBreaksBefore(max);
            token2.setToEscape(true);
            arrayList.add(token2);
            i11 = token.getLineBreaksAfter();
        }
        ((Token) arrayList.get(arrayList.size() - 1)).putLineBreaksAfter(i11);
        return arrayList;
    }

    @Override
    public void endVisit(Javadoc javadoc) {
        Token token;
        TokenManager tokenManager = this.ctm;
        if (tokenManager == null) {
            return;
        }
        if (this.options.comment_insert_empty_line_before_root_tags && (token = this.firstTagToken) != null && tokenManager.indexOf(token) > 1) {
            this.firstTagToken.putLineBreaksBefore(2);
        }
        addSubstituteWraps();
    }

    public void finishUp() {
        Token token = this.lastFormatOffComment;
        if (token != null) {
            TokenManager tokenManager = this.f102578tm;
            tokenManager.addDisableFormatTokenPair(token, tokenManager.get(tokenManager.size() - 1));
        }
    }

    public void handleBlockComment(int i10) {
        Token token = this.f102578tm.get(i10);
        boolean handleWhitespaceAround = handleWhitespaceAround(i10);
        if (handleFormatOnOffTags(token)) {
            return;
        }
        boolean isInHeader = this.f102578tm.isInHeader(i10);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (((!defaultCodeFormatterOptions.comment_format_block_comment || isInHeader) && !(defaultCodeFormatterOptions.comment_format_header && isInHeader)) || this.f102578tm.charAt(token.originalStart + 2) == '-' || !tokenizeMultilineComment(token)) {
            token.setInternalStructure(commentToLines(token, -1));
        } else {
            this.commentStructure = token.getInternalStructure();
            this.ctm = new TokenManager(this.commentStructure, this.f102578tm);
            handleStringLiterals(this.f102578tm.toString(token), token.originalStart);
            addSubstituteWraps();
        }
        if (this.options.never_indent_block_comments_on_first_column && handleWhitespaceAround) {
            token.setIndent(0);
            token.setWrapPolicy(Token.WrapPolicy.FORCE_FIRST_COLUMN);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handleLineComment(int i10) {
        boolean z10;
        DefaultCodeFormatterOptions defaultCodeFormatterOptions;
        Token token = this.f102578tm.get(i10);
        boolean handleWhitespaceAround = handleWhitespaceAround(i10);
        if (handleFormatOnOffTags(token)) {
            return;
        }
        if (handleWhitespaceAround) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            if (defaultCodeFormatterOptions2.comment_format_line_comment && !defaultCodeFormatterOptions2.comment_format_line_comment_starting_on_first_column) {
                this.lastLineComment = null;
                token.setIndent(0);
                token.setWrapPolicy(Token.WrapPolicy.FORCE_FIRST_COLUMN);
                return;
            } else if (defaultCodeFormatterOptions2.never_indent_line_comments_on_first_column) {
                token.setIndent(0);
                token.setWrapPolicy(Token.WrapPolicy.FORCE_FIRST_COLUMN);
            }
        }
        handleNLSTags(token, i10);
        int findSourcePositionInLine = this.f102578tm.findSourcePositionInLine(token.originalStart);
        if (i10 > 0) {
            Token token2 = this.f102578tm.get(i10 - 1);
            Token token3 = this.lastLineComment;
            if (token2 == token3 && findSourcePositionInLine >= (this.lastLineCommentPosition - this.options.indentation_size) + 1 && this.f102578tm.countLineBreaksBetween(token3, token) == 1) {
                z10 = true;
                boolean isInHeader = this.f102578tm.isInHeader(i10);
                defaultCodeFormatterOptions = this.options;
                if ((defaultCodeFormatterOptions.comment_format_line_comment || isInHeader) && !(defaultCodeFormatterOptions.comment_format_header && isInHeader)) {
                    preserveWhitespace(token, i10);
                    if (z10) {
                        if (token.getLineBreaksBefore() == 0) {
                            this.lastLineComment = token;
                            this.lastLineCommentPosition = findSourcePositionInLine;
                            return;
                        }
                        return;
                    }
                    Token.WrapPolicy wrapPolicy = this.lastLineComment.getWrapPolicy();
                    if (wrapPolicy == null) {
                        TokenManager tokenManager = this.f102578tm;
                        int i11 = i10 - 1;
                        wrapPolicy = new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, i11, this.f102578tm.getPositionInLine(i11) - tokenManager.getPositionInLine(tokenManager.findFirstTokenInLine(i11)));
                    }
                    token.setWrapPolicy(wrapPolicy);
                    this.lastLineComment = token;
                    return;
                }
                List<Token> list = tokenizeLineComment(token);
                if (!z10) {
                    token.setInternalStructure(list);
                    handleCompilerTags(token, i10);
                    preserveWhitespace(token, i10);
                    this.lastLineComment = token;
                    this.lastLineCommentPosition = findSourcePositionInLine;
                    return;
                }
                Token token4 = list.get(0);
                token4.breakBefore();
                int i12 = i10 - 1;
                token4.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, i12, this.lastLineCommentPosition));
                Token token5 = this.lastLineComment;
                Token token6 = new Token(token5, token5.originalStart, token.originalEnd, token5.tokenType);
                this.f102578tm.remove(i12);
                this.f102578tm.insert(i12, token6);
                this.f102578tm.remove(i10);
                List<Token> internalStructure = this.lastLineComment.getInternalStructure();
                internalStructure.addAll(list);
                token6.setInternalStructure(internalStructure);
                this.lastLineComment = token6;
                return;
            }
        }
        z10 = false;
        boolean isInHeader2 = this.f102578tm.isInHeader(i10);
        defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.comment_format_line_comment) {
        }
        preserveWhitespace(token, i10);
        if (z10) {
        }
    }

    @Override
    public boolean preVisit2(ASTNode aSTNode) {
        return !((aSTNode.getFlags() & 1) != 0);
    }

    @Override
    public boolean visit(LineComment lineComment) {
        handleLineComment(this.f102578tm.firstIndexIn(lineComment, 1001));
        return true;
    }

    @Override
    public boolean visit(BlockComment blockComment) {
        handleBlockComment(this.f102578tm.firstIndexIn(blockComment, 1002));
        return true;
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        this.noFormatTagOpenStart = -1;
        this.formatCodeTagOpenEnd = -1;
        this.lastFormatCodeClosingTagIndex = -1;
        this.firstTagToken = null;
        this.ctm = null;
        int firstIndexIn = this.f102578tm.firstIndexIn(javadoc, 1003);
        Token token = this.f102578tm.get(firstIndexIn);
        if (javadoc.getParent() == null) {
            handleWhitespaceAround(firstIndexIn);
        }
        if (firstIndexIn < this.f102578tm.size() - 1) {
            token.breakAfter();
        }
        if (handleFormatOnOffTags(token)) {
            return false;
        }
        boolean isInHeader = this.f102578tm.isInHeader(firstIndexIn);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (((defaultCodeFormatterOptions.comment_format_javadoc_comment && !isInHeader) || (defaultCodeFormatterOptions.comment_format_header && isInHeader)) && tokenizeMultilineComment(token)) {
            this.commentStructure = token.getInternalStructure();
            this.commentIndent = this.f102578tm.toIndent(token.getIndent(), true);
            this.ctm = new TokenManager(token.getInternalStructure(), this.f102578tm);
            handleJavadocTagAlignment(javadoc);
            return true;
        }
        token.setInternalStructure(commentToLines(token, -1));
        return false;
    }

    @Override
    public void endVisit(TagElement tagElement) {
        String tagName = tagElement.getTagName();
        if (tagName != null && tagName.length() > 1) {
            if (TagElement.TAG_SEE.equals(tagName)) {
                handleStringLiterals(this.f102578tm.toString(tagElement), tagElement.getStartPosition());
                return;
            }
            return;
        }
        handleHtml(tagElement);
    }

    @Override
    public boolean visit(TagElement tagElement) {
        int indexOf;
        String tagName = tagElement.getTagName();
        if (tagName == null || tagName.length() <= 1) {
            return true;
        }
        int i10 = tokenStartingAt(tagElement.getStartPosition());
        int startPosition = (tagElement.getStartPosition() + tagElement.getLength()) - 1;
        while (ScannerHelper.isWhitespace(this.ctm.charAt(startPosition))) {
            startPosition--;
        }
        int i11 = tokenEndingAt(startPosition);
        this.ctm.get(i10 + 1).setWrapPolicy(Token.WrapPolicy.DISABLE_WRAP);
        if (tagElement.getParent() instanceof Javadoc) {
            Token token = this.ctm.get(i10);
            if (i10 > 1) {
                token.breakBefore();
            }
            Token token2 = this.firstTagToken;
            if (token2 == null || (indexOf = this.ctm.indexOf(token2)) < 0 || i10 < indexOf) {
                this.firstTagToken = token;
            }
            handleHtml(tagElement);
        }
        if (tagElement.isNested() && IMMUTABLE_TAGS.contains(tagName) && i10 < i11) {
            disableFormatting(i10, i11, false);
        }
        return true;
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        handleReference(methodRef);
        return true;
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        handleReference(memberRef);
        return true;
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        handleReference(qualifiedName);
        return false;
    }
}
