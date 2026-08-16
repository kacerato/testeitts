package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.formatter.CodeFormatter;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.SourceModule;
import org.eclipse.jdt.internal.formatter.linewrap.CommentWrapExecutor;
import org.eclipse.jdt.internal.formatter.linewrap.WrapPreparator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

public class DefaultCodeFormatter extends CodeFormatter {
    public static boolean DEBUG = false;
    private static final Map<Integer, Integer> FORMAT_TO_PARSER_KIND;
    private static final int K_COMMENTS_MASK = 112;
    private static final int K_MASK = 255;
    private ASTNode astRoot;
    private List<IRegion> formatRegions;
    private Object oldCommentFormatOption;
    private DefaultCodeFormatterOptions originalOptions;
    char[] sourceArray;
    private String sourceLevel;
    private String sourceString;
    private TokenManager tokenManager;
    private List<Token> tokens;
    private DefaultCodeFormatterOptions workingOptions;

    static {
        HashMap hashMap = new HashMap();
        FORMAT_TO_PARSER_KIND = hashMap;
        hashMap.put(8, 8);
        hashMap.put(128, 8);
        hashMap.put(4, 4);
        hashMap.put(2, 2);
        hashMap.put(1, 1);
    }

    public DefaultCodeFormatter() {
        this(new DefaultCodeFormatterOptions(DefaultCodeFormatterConstants.getJavaConventionsSettings()), null);
    }

    private void applyFormatOff() {
        for (Token[] tokenArr : this.tokenManager.getDisableFormatTokenPairs()) {
            Token token = tokenArr[0];
            int i10 = token.originalStart;
            int i11 = tokenArr[1].originalEnd;
            token.setWrapPolicy(null);
            Token token2 = tokenArr[0];
            token2.setIndent(Math.min(token2.getIndent(), this.tokenManager.findSourcePositionInLine(i10)));
            ArrayList arrayList = new ArrayList();
            for (IRegion iRegion : this.formatRegions) {
                int offset = iRegion.getOffset();
                int offset2 = (iRegion.getOffset() + iRegion.getLength()) - 1;
                if (i11 < offset || offset2 < i10) {
                    arrayList.add(iRegion);
                } else if (i10 > offset || offset2 > i11) {
                    if (offset < i10) {
                        arrayList.add(new Region(offset, i10 - offset));
                    }
                    if (i11 < offset2) {
                        arrayList.add(new Region(i11 + 1, offset2 - i11));
                    }
                }
            }
            this.formatRegions = arrayList;
        }
    }

    private boolean canFormatComment(int i10, int i11) {
        if ((i10 & 4096) != 0) {
            return true;
        }
        if ("false".equals(this.oldCommentFormatOption)) {
            return false;
        }
        if ((i10 & 255) == i11) {
            return true;
        }
        return i10 == 0 && "true".equals(this.oldCommentFormatOption);
    }

    private ICompilationUnit createDummyModuleInfoCompilationUnit() {
        final JavaProject javaProject = new JavaProject() {
            @Override
            public IModuleDescription getModuleDescription() throws JavaModelException {
                return new SourceModule(this, "");
            }

            @Override
            public Map<String, String> getOptions(boolean z10) {
                return new HashMap();
            }
        };
        return new CompilationUnit(null, "module-info.java", null) {
            @Override
            public char[] getContents() {
                return DefaultCodeFormatter.this.sourceArray;
            }

            @Override
            public IJavaProject getJavaProject() {
                return javaProject;
            }
        };
    }

    private ASTParser createParser(int i10) {
        ASTParser newParser = ASTParser.newParser(12);
        if (i10 == 128) {
            newParser.setSource(createDummyModuleInfoCompilationUnit());
        } else {
            newParser.setSource(this.sourceArray);
        }
        newParser.setKind(FORMAT_TO_PARSER_KIND.get(Integer.valueOf(i10)).intValue());
        Hashtable<String, String> options = JavaCore.getOptions();
        options.put("org.eclipse.jdt.core.compiler.source", this.sourceLevel);
        options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        options.put("org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures", "enabled");
        options.put("org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures", "ignore");
        newParser.setCompilerOptions(options);
        return newParser;
    }

    private void findHeader() {
        ASTNode aSTNode = this.astRoot;
        if (aSTNode instanceof org.eclipse.jdt.core.dom.CompilationUnit) {
            org.eclipse.jdt.core.dom.CompilationUnit compilationUnit = (org.eclipse.jdt.core.dom.CompilationUnit) aSTNode;
            List types = compilationUnit.types();
            ASTNode aSTNode2 = types.isEmpty() ? compilationUnit.getPackage() : (ASTNode) types.get(0);
            if (aSTNode2 != null) {
                this.tokenManager.setHeaderEndIndex(this.tokenManager.firstIndexIn(aSTNode2, -1));
            }
        }
    }

    private TextEdit formatComments(String str, int i10) {
        MultiTextEdit multiTextEdit = new MultiTextEdit();
        if (!init(str, i10)) {
            return multiTextEdit;
        }
        CommentsPreparator commentsPreparator = new CommentsPreparator(this.tokenManager, this.workingOptions, this.sourceLevel);
        CommentWrapExecutor commentWrapExecutor = new CommentWrapExecutor(this.tokenManager, this.workingOptions);
        int i11 = 0;
        if (i10 == 16) {
            while (i11 < this.tokens.size()) {
                Token token = this.tokens.get(i11);
                if (token.tokenType == 1001) {
                    commentsPreparator.handleLineComment(i11);
                    if (i11 >= this.tokens.size() || this.tokens.get(i11) != token) {
                        i11--;
                        token = this.tokens.get(i11);
                    }
                    commentWrapExecutor.wrapLineComment(token, this.tokenManager.findSourcePositionInLine(token.originalStart));
                }
                i11++;
            }
        } else if (i10 == 32) {
            for (int i12 = 0; i12 < this.tokens.size(); i12++) {
                Token token2 = this.tokens.get(i12);
                if (token2.tokenType == 1002) {
                    commentsPreparator.handleBlockComment(i12);
                    commentWrapExecutor.wrapMultiLineComment(token2, this.tokenManager.findSourcePositionInLine(token2.originalStart), false, false);
                }
            }
        } else {
            if (i10 != 64) {
                throw new AssertionError((Object) String.valueOf(i10));
            }
            for (Token token3 : this.tokens) {
                if (token3.tokenType == 1003) {
                    ((Javadoc) ((org.eclipse.jdt.core.dom.CompilationUnit) parseSourceCode(8)).getCommentList().get(0)).accept(commentsPreparator);
                    commentWrapExecutor.wrapMultiLineComment(token3, this.tokenManager.findSourcePositionInLine(token3.originalStart), false, false);
                }
            }
        }
        applyFormatOff();
        TextEditsBuilder textEditsBuilder = new TextEditsBuilder(str, this.formatRegions, this.tokenManager, this.workingOptions);
        textEditsBuilder.setAlignChar(2);
        for (Token token4 : this.tokens) {
            List<Token> internalStructure = token4.getInternalStructure();
            if (internalStructure != null && !internalStructure.isEmpty()) {
                textEditsBuilder.processComment(token4);
            }
        }
        Iterator<TextEdit> it = textEditsBuilder.getEdits().iterator();
        while (it.hasNext()) {
            multiTextEdit.addChild(it.next());
        }
        return multiTextEdit;
    }

    @Deprecated
    private Object getOldCommentFormatOption(Map<String, String> map) {
        return map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT);
    }

    private boolean hasErrors(ASTNode aSTNode) {
        for (IProblem iProblem : ((org.eclipse.jdt.core.dom.CompilationUnit) aSTNode.getRoot()).getProblems()) {
            if (iProblem.isError()) {
                return true;
            }
        }
        return false;
    }

    private boolean init(String str, int i10) {
        this.sourceString = str;
        this.sourceArray = str.toCharArray();
        this.tokens.clear();
        this.tokenManager = new TokenManager(this.tokens, str, this.workingOptions);
        tokenizeSource(i10);
        return !this.tokens.isEmpty();
    }

    private void initOptions(DefaultCodeFormatterOptions defaultCodeFormatterOptions, Map<String, String> map) {
        if (map != null) {
            this.originalOptions = new DefaultCodeFormatterOptions(map);
            this.workingOptions = new DefaultCodeFormatterOptions(map);
            this.oldCommentFormatOption = getOldCommentFormatOption(map);
            String str = map.get("org.eclipse.jdt.core.compiler.source");
            this.sourceLevel = str != null ? str : "12";
        } else {
            Map javaConventionsSettings = DefaultCodeFormatterConstants.getJavaConventionsSettings();
            this.originalOptions = new DefaultCodeFormatterOptions(javaConventionsSettings);
            this.workingOptions = new DefaultCodeFormatterOptions(javaConventionsSettings);
            this.oldCommentFormatOption = "true";
            this.sourceLevel = "12";
        }
        if (defaultCodeFormatterOptions != null) {
            this.originalOptions.set(defaultCodeFormatterOptions.getMap());
            this.workingOptions.set(defaultCodeFormatterOptions.getMap());
        }
    }

    private ASTNode parseSourceCode(int i10) {
        int i11 = i10 & 255;
        if (i11 != 0) {
            ASTNode createAST = createParser(i11).createAST(null);
            if (i11 == 8 || i11 == 128 || !hasErrors(createAST)) {
                return createAST;
            }
            return null;
        }
        int[] iArr = {8, 1, 4, 2, 128};
        for (int i12 = 0; i12 < 5; i12++) {
            int i13 = iArr[i12];
            ASTNode createAST2 = createParser(i13).createAST(null);
            if (!hasErrors(createAST2)) {
                if (i13 == 128) {
                    tokenizeSource(i13);
                }
                return createAST2;
            }
        }
        return null;
    }

    private void prepareComments() {
        CommentsPreparator commentsPreparator = new CommentsPreparator(this.tokenManager, this.workingOptions, this.sourceLevel);
        Iterator it = ((org.eclipse.jdt.core.dom.CompilationUnit) this.astRoot.getRoot()).getCommentList().iterator();
        while (it.hasNext()) {
            ((Comment) it.next()).accept(commentsPreparator);
        }
        commentsPreparator.finishUp();
    }

    private void prepareLineBreaks() {
        LineBreaksPreparator lineBreaksPreparator = new LineBreaksPreparator(this.tokenManager, this.workingOptions);
        this.astRoot.accept(lineBreaksPreparator);
        lineBreaksPreparator.finishUp();
        this.astRoot.accept(new OneLineEnforcer(this.tokenManager, this.workingOptions));
    }

    private void prepareSpaces() {
        SpacePreparator spacePreparator = new SpacePreparator(this.tokenManager, this.workingOptions);
        this.astRoot.accept(spacePreparator);
        spacePreparator.finishUp();
    }

    private void prepareWraps(int i10) {
        WrapPreparator wrapPreparator = new WrapPreparator(this.tokenManager, this.workingOptions, i10);
        this.astRoot.accept(wrapPreparator);
        applyFormatOff();
        wrapPreparator.finishUp(this.astRoot, this.formatRegions);
    }

    private boolean regionsSatisfiesPreconditions(IRegion[] iRegionArr, int i10) {
        int length = iRegionArr == null ? 0 : iRegionArr.length;
        if (length == 0) {
            return false;
        }
        IRegion iRegion = iRegionArr[0];
        if (iRegion.getOffset() >= 0 && iRegion.getLength() >= 0 && iRegion.getOffset() + iRegion.getLength() <= i10) {
            int offset = (iRegion.getOffset() + iRegion.getLength()) - 1;
            for (int i11 = 1; i11 < length; i11++) {
                IRegion iRegion2 = iRegionArr[i11];
                if (offset <= iRegion2.getOffset() && iRegion2.getOffset() >= 0 && iRegion2.getLength() >= 0 && iRegion2.getOffset() + iRegion2.getLength() <= i10) {
                    offset = (iRegion2.getOffset() + iRegion2.getLength()) - 1;
                }
            }
            return true;
        }
        return false;
    }

    private void tokenizeSource(int i10) {
        int nextToken;
        this.tokens.clear();
        Scanner scanner = new Scanner(true, false, false, CompilerOptions.versionToJdkLevel(this.sourceLevel), null, null, false);
        scanner.setSource(this.sourceArray);
        scanner.fakeInModule = (i10 & 128) != 0;
        while (true) {
            try {
                nextToken = scanner.getNextToken();
            } catch (InvalidInputException unused) {
                this.tokens.add(Token.fromCurrent(scanner, 0));
            }
            if (nextToken == 61) {
                return;
            } else {
                this.tokens.add(Token.fromCurrent(scanner, nextToken));
            }
        }
    }

    private void updateWorkingOptions(int i10, String str, int i11) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.workingOptions;
        if (str == null) {
            str = this.originalOptions.line_separator;
        }
        defaultCodeFormatterOptions.line_separator = str;
        if (str == null) {
            defaultCodeFormatterOptions.line_separator = Util.LINE_SEPARATOR;
        }
        defaultCodeFormatterOptions.initial_indentation_level = i10;
        boolean z10 = false;
        defaultCodeFormatterOptions.comment_format_javadoc_comment = this.originalOptions.comment_format_javadoc_comment && canFormatComment(i11, 64);
        this.workingOptions.comment_format_block_comment = this.originalOptions.comment_format_block_comment && canFormatComment(i11, 32);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.workingOptions;
        if (this.originalOptions.comment_format_line_comment && canFormatComment(i11, 16)) {
            z10 = true;
        }
        defaultCodeFormatterOptions2.comment_format_line_comment = z10;
    }

    @Override
    public String createIndentationString(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        StringBuilder sb2 = new StringBuilder();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.originalOptions;
        TextEditsBuilder.appendIndentationString(sb2, defaultCodeFormatterOptions.tab_char, defaultCodeFormatterOptions.tab_size, i10 * defaultCodeFormatterOptions.indentation_size, 0);
        return sb2.toString();
    }

    @Override
    public TextEdit format(int i10, String str, int i11, int i12, int i13, String str2) {
        return format(i10, str, new IRegion[]{new Region(i11, i12)}, i13, str2);
    }

    public List<Token> prepareFormattedCode(String str) {
        this.formatRegions = Arrays.asList(new Region(0, str.length()));
        return prepareFormattedCode(str, 0);
    }

    @Override
    public void setOptions(Map<String, String> map) {
        initOptions(null, map);
    }

    public DefaultCodeFormatter(DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this(defaultCodeFormatterOptions, null);
    }

    @Override
    public TextEdit format(int i10, String str, IRegion[] iRegionArr, int i11, String str2) {
        if (regionsSatisfiesPreconditions(iRegionArr, str.length())) {
            this.formatRegions = Arrays.asList(iRegionArr);
            updateWorkingOptions(i11, str2, i10);
            int i12 = i10 & 112;
            if (i12 != 0) {
                return formatComments(str, i12);
            }
            if (prepareFormattedCode(str, i10) == null) {
                if (this.tokens.isEmpty()) {
                    return new MultiTextEdit();
                }
                return null;
            }
            MultiTextEdit multiTextEdit = new MultiTextEdit();
            TextEditsBuilder textEditsBuilder = new TextEditsBuilder(this.sourceString, this.formatRegions, this.tokenManager, this.workingOptions);
            this.tokenManager.traverse(0, textEditsBuilder);
            Iterator<TextEdit> it = textEditsBuilder.getEdits().iterator();
            while (it.hasNext()) {
                multiTextEdit.addChild(it.next());
            }
            return multiTextEdit;
        }
        throw new IllegalArgumentException();
    }

    public DefaultCodeFormatter(Map<String, String> map) {
        this(null, map);
    }

    private List<Token> prepareFormattedCode(String str, int i10) {
        if (!init(str, i10)) {
            return null;
        }
        ASTNode parseSourceCode = parseSourceCode(i10);
        this.astRoot = parseSourceCode;
        if (parseSourceCode == null) {
            return null;
        }
        if (i10 != 0) {
            findHeader();
        }
        prepareSpaces();
        prepareLineBreaks();
        prepareComments();
        prepareWraps(i10);
        return this.tokens;
    }

    public DefaultCodeFormatter(DefaultCodeFormatterOptions defaultCodeFormatterOptions, Map<String, String> map) {
        this.tokens = new ArrayList();
        initOptions(defaultCodeFormatterOptions, map);
    }
}
