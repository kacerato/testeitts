package org.eclipse.jdt.core.dom;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFileWorkingCopy;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil;
import org.eclipse.jdt.internal.core.util.RecordedParsingInformation;

public class ASTParser {
    public static final int K_CLASS_BODY_DECLARATIONS = 4;
    public static final int K_COMPILATION_UNIT = 8;
    public static final int K_EXPRESSION = 1;
    public static final int K_STATEMENTS = 2;
    private final int apiLevel;
    private int astKind;
    private int bits;
    private String[] classpaths;
    private Map<String, String> compilerOptions;
    private int focalPointPosition;
    private String[] sourcepaths;
    private String[] sourcepathsEncodings;
    private char[] rawSource = null;
    private ITypeRoot typeRoot = null;
    private int sourceOffset = 0;
    private int sourceLength = -1;
    private WorkingCopyOwner workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
    private IJavaProject project = null;
    private String unitName = null;

    public ASTParser(int i10) {
        if (i10 != 2 && i10 != 3 && i10 != 4) {
            switch (i10) {
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        }
        this.apiLevel = i10;
        initializeDefaults();
    }

    private List<FileSystem.Classpath> getClasspath() throws IllegalStateException {
        Main main = new Main(new PrintWriter(System.out), new PrintWriter(System.err), false, null, null);
        ArrayList<FileSystem.Classpath> arrayList = new ArrayList<>();
        try {
            if ((this.bits & 32) != 0) {
                Util.collectRunningVMBootclasspath(arrayList);
            }
            String[] strArr = this.sourcepaths;
            if (strArr != null) {
                int length = strArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    String[] strArr2 = this.sourcepathsEncodings;
                    main.processPathEntries(4, arrayList, this.sourcepaths[i10], strArr2 == null ? null : strArr2[i10], true, false);
                }
            }
            String[] strArr3 = this.classpaths;
            if (strArr3 != null) {
                int length2 = strArr3.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    main.processPathEntries(4, arrayList, this.classpaths[i11], null, false, false);
                }
            }
            ArrayList<String> arrayList2 = main.pendingErrors;
            if (arrayList2 != null && arrayList2.size() != 0) {
                throw new IllegalStateException("invalid environment settings");
            }
            return arrayList;
        } catch (IllegalArgumentException e10) {
            throw new IllegalStateException("invalid environment settings", e10);
        }
    }

    private void initializeDefaults() {
        this.astKind = 8;
        this.rawSource = null;
        this.typeRoot = null;
        this.bits = 0;
        this.sourceLength = -1;
        this.sourceOffset = 0;
        this.workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        this.unitName = null;
        this.project = null;
        this.classpaths = null;
        this.sourcepaths = null;
        this.sourcepathsEncodings = null;
        Hashtable<String, String> options = JavaCore.getOptions();
        options.remove("org.eclipse.jdt.core.compiler.taskTags");
        this.compilerOptions = options;
    }

    private ASTNode internalCreateAST(IProgressMonitor iProgressMonitor) {
        ITypeRoot iTypeRoot;
        PrintWriter printWriter;
        String elementName;
        BasicCompilationUnit basicCompilationUnit;
        CompilationUnitDeclaration parse;
        boolean z10;
        int i10;
        int i11 = this.bits;
        boolean z11 = (i11 & 1) != 0;
        int i12 = this.astKind;
        PrintWriter printWriter2 = null;
        CompilationUnitDeclaration compilationUnitDeclaration = null;
        if (i12 != 1) {
            if (i12 != 2 && i12 != 4) {
                if (i12 == 8) {
                    try {
                        WorkingCopyOwner workingCopyOwner = this.workingCopyOwner;
                        ITypeRoot iTypeRoot2 = this.typeRoot;
                        if (iTypeRoot2 instanceof ClassFileWorkingCopy) {
                            this.typeRoot = ((ClassFileWorkingCopy) iTypeRoot2).classFile;
                        }
                        ITypeRoot iTypeRoot3 = this.typeRoot;
                        if (iTypeRoot3 instanceof ICompilationUnit) {
                            org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iTypeRoot3;
                            basicCompilationUnit = new BasicCompilationUnit(iCompilationUnit.getContents(), iCompilationUnit.getPackageName(), new String(iCompilationUnit.getFileName()), this.project);
                            workingCopyOwner = ((ICompilationUnit) this.typeRoot).getOwner();
                        } else if (iTypeRoot3 instanceof IClassFile) {
                            try {
                                String source = iTypeRoot3.getSource();
                                if (source == null) {
                                    throw new IllegalStateException();
                                }
                                PackageFragment packageFragment = (PackageFragment) this.typeRoot.getParent();
                                BinaryType binaryType = (BinaryType) this.typeRoot.findPrimaryType();
                                if (binaryType != null) {
                                    char[] fileName = ((IBinaryType) binaryType.getElementInfo()).getFileName();
                                    int indexOf = CharOperation.indexOf('$', fileName);
                                    if (indexOf != -1) {
                                        char[] cArr = SuffixConstants.SUFFIX_class;
                                        int length = cArr.length;
                                        char[] cArr2 = new char[indexOf + length];
                                        System.arraycopy(fileName, 0, cArr2, 0, indexOf);
                                        System.arraycopy(cArr, 0, cArr2, indexOf, length);
                                        fileName = cArr2;
                                    }
                                    elementName = new String(fileName);
                                } else {
                                    elementName = this.typeRoot.getElementName();
                                }
                                basicCompilationUnit = new BasicCompilationUnit(source.toCharArray(), org.eclipse.jdt.internal.core.util.Util.toCharArrays(packageFragment.names), elementName, this.typeRoot);
                            } catch (JavaModelException e10) {
                                StringWriter stringWriter = new StringWriter();
                                try {
                                    printWriter = new PrintWriter(stringWriter);
                                    try {
                                        e10.printStackTrace(printWriter);
                                        printWriter.close();
                                        throw new IllegalStateException(String.valueOf(stringWriter.getBuffer()));
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (printWriter != null) {
                                            printWriter.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    printWriter = null;
                                }
                            }
                        } else {
                            char[] cArr3 = this.rawSource;
                            if (cArr3 == null) {
                                throw new IllegalStateException();
                            }
                            boolean z12 = ((i11 & 1) == 0 || this.unitName == null || (this.project == null && this.classpaths == null && this.sourcepaths == null && (i11 & 32) == 0) || this.compilerOptions == null) ? false : true;
                            String str = this.unitName;
                            if (str == null) {
                                str = "";
                            }
                            BasicCompilationUnit basicCompilationUnit2 = new BasicCompilationUnit(cArr3, (char[][]) null, str, this.project);
                            z11 = z12;
                            basicCompilationUnit = basicCompilationUnit2;
                        }
                        NodeSearcher nodeSearcher = (this.bits & 2) != 0 ? new NodeSearcher(this.focalPointPosition) : null;
                        int i13 = this.bits;
                        int i14 = (i13 & 4) == 0 ? 0 : 2;
                        if (nodeSearcher == null && (i13 & 8) != 0) {
                            i14 |= 8;
                        }
                        if (z11) {
                            if ((i13 & 16) != 0) {
                                i14 |= 4;
                            }
                            try {
                                parse = CompilationUnitResolver.resolve(basicCompilationUnit, this.project, getClasspath(), nodeSearcher, this.compilerOptions, this.workingCopyOwner, i14, iProgressMonitor);
                                z10 = z11;
                            } catch (JavaModelException unused) {
                                int i15 = i14 & (-5);
                                parse = CompilationUnitResolver.parse(basicCompilationUnit, nodeSearcher, this.compilerOptions, i15);
                                i10 = i15;
                                z10 = false;
                            }
                        } else {
                            parse = CompilationUnitResolver.parse(basicCompilationUnit, nodeSearcher, this.compilerOptions, i14);
                            z10 = false;
                        }
                        i10 = i14;
                        CompilationUnitDeclaration compilationUnitDeclaration2 = parse;
                        try {
                            CompilationUnit convert = CompilationUnitResolver.convert(compilationUnitDeclaration2, basicCompilationUnit.getContents(), this.apiLevel, this.compilerOptions, z10, workingCopyOwner, z10 ? new DefaultBindingResolver.BindingTables() : null, i10, iProgressMonitor, this.project != null);
                            convert.setTypeRoot(this.typeRoot);
                            if (compilationUnitDeclaration2 != null && (this.bits & 1) != 0) {
                                compilationUnitDeclaration2.cleanUp();
                            }
                            return convert;
                        } catch (Throwable th4) {
                            th = th4;
                            compilationUnitDeclaration = compilationUnitDeclaration2;
                            if (compilationUnitDeclaration != null && (this.bits & 1) != 0) {
                                compilationUnitDeclaration.cleanUp();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (compilationUnitDeclaration != null) {
                            compilationUnitDeclaration.cleanUp();
                        }
                        throw th;
                    }
                }
                throw new IllegalStateException();
            }
        }
        if (this.rawSource == null && (iTypeRoot = this.typeRoot) != null) {
            if (iTypeRoot instanceof ICompilationUnit) {
                this.rawSource = ((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iTypeRoot).getContents();
            } else if (iTypeRoot instanceof IClassFile) {
                try {
                    String source2 = iTypeRoot.getSource();
                    if (source2 != null) {
                        this.rawSource = source2.toCharArray();
                    }
                } catch (JavaModelException e11) {
                    StringWriter stringWriter2 = new StringWriter();
                    try {
                        PrintWriter printWriter3 = new PrintWriter(stringWriter2);
                        try {
                            e11.printStackTrace(printWriter3);
                            printWriter3.close();
                            throw new IllegalStateException(String.valueOf(stringWriter2.getBuffer()));
                        } catch (Throwable th6) {
                            th = th6;
                            printWriter2 = printWriter3;
                            if (printWriter2 != null) {
                                printWriter2.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                    }
                }
            }
        }
        char[] cArr4 = this.rawSource;
        if (cArr4 != null) {
            if (this.sourceOffset + this.sourceLength <= cArr4.length) {
                return internalCreateASTForKind();
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    private ASTNode internalCreateASTForKind() {
        ASTConverter aSTConverter = new ASTConverter(this.compilerOptions, false, null);
        char[] cArr = this.rawSource;
        aSTConverter.compilationUnitSource = cArr;
        aSTConverter.compilationUnitSourceLength = cArr.length;
        aSTConverter.scanner.setSource(cArr);
        AST newAST = AST.newAST(this.apiLevel);
        newAST.setDefaultNodeFlag(2);
        newAST.setBindingResolver(new BindingResolver());
        if ((this.bits & 4) != 0) {
            newAST.setFlag(2);
        }
        aSTConverter.setAST(newAST);
        CodeSnippetParsingUtil codeSnippetParsingUtil = new CodeSnippetParsingUtil((this.bits & 8) != 0);
        CompilationUnit newCompilationUnit = newAST.newCompilationUnit();
        if (this.sourceLength == -1) {
            this.sourceLength = this.rawSource.length;
        }
        int i10 = this.astKind;
        if (i10 == 1) {
            org.eclipse.jdt.internal.compiler.ast.Expression parseExpression = codeSnippetParsingUtil.parseExpression(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true);
            RecordedParsingInformation recordedParsingInformation = codeSnippetParsingUtil.recordedParsingInformation;
            int[][] iArr = recordedParsingInformation.commentPositions;
            if (iArr != null) {
                aSTConverter.buildCommentsTable(newCompilationUnit, iArr);
            }
            newCompilationUnit.setLineEndTable(recordedParsingInformation.lineEnds);
            if (parseExpression != null) {
                ASTNode convert = aSTConverter.convert(parseExpression);
                rootNodeToCompilationUnit(convert.getAST(), newCompilationUnit, convert, codeSnippetParsingUtil.recordedParsingInformation, null);
                newAST.setDefaultNodeFlag(0);
                newAST.setOriginalModificationCount(newAST.modificationCount());
                return convert;
            }
            IProblem[] iProblemArr = recordedParsingInformation.problems;
            if (iProblemArr != null) {
                newCompilationUnit.setProblems(iProblemArr);
            }
            newAST.setDefaultNodeFlag(0);
            newAST.setOriginalModificationCount(newAST.modificationCount());
            return newCompilationUnit;
        }
        if (i10 != 2) {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            org.eclipse.jdt.internal.compiler.ast.ASTNode[] parseClassBodyDeclarations = codeSnippetParsingUtil.parseClassBodyDeclarations(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true, (this.bits & 4) != 0);
            RecordedParsingInformation recordedParsingInformation2 = codeSnippetParsingUtil.recordedParsingInformation;
            int[][] iArr2 = recordedParsingInformation2.commentPositions;
            if (iArr2 != null) {
                aSTConverter.buildCommentsTable(newCompilationUnit, iArr2);
            }
            newCompilationUnit.setLineEndTable(recordedParsingInformation2.lineEnds);
            if (parseClassBodyDeclarations == null) {
                IProblem[] iProblemArr2 = recordedParsingInformation2.problems;
                if (iProblemArr2 != null) {
                    newCompilationUnit.setProblems(iProblemArr2);
                }
                newAST.setDefaultNodeFlag(0);
                newAST.setOriginalModificationCount(newAST.modificationCount());
                return newCompilationUnit;
            }
            ASTNode convert2 = aSTConverter.convert(parseClassBodyDeclarations);
            int i11 = this.sourceOffset;
            convert2.setSourceRange(i11, this.sourceLength + i11);
            rootNodeToCompilationUnit(convert2.getAST(), newCompilationUnit, convert2, codeSnippetParsingUtil.recordedParsingInformation, null);
            newAST.setDefaultNodeFlag(0);
            newAST.setOriginalModificationCount(newAST.modificationCount());
            return convert2;
        }
        ConstructorDeclaration parseStatements = codeSnippetParsingUtil.parseStatements(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true, (this.bits & 4) != 0);
        RecoveryScannerData recoveryScannerData = parseStatements.compilationResult.recoveryScannerData;
        if (recoveryScannerData != null) {
            Scanner scanner = aSTConverter.scanner;
            RecoveryScanner recoveryScanner = new RecoveryScanner(scanner, recoveryScannerData.removeUnused());
            aSTConverter.scanner = recoveryScanner;
            aSTConverter.docParser.scanner = recoveryScanner;
            recoveryScanner.setSource(scanner.source);
            newCompilationUnit.setStatementsRecoveryData(recoveryScannerData);
        }
        RecordedParsingInformation recordedParsingInformation3 = codeSnippetParsingUtil.recordedParsingInformation;
        int[][] iArr3 = recordedParsingInformation3.commentPositions;
        if (iArr3 != null) {
            aSTConverter.buildCommentsTable(newCompilationUnit, iArr3);
        }
        newCompilationUnit.setLineEndTable(recordedParsingInformation3.lineEnds);
        Block newBlock = newAST.newBlock();
        int i12 = this.sourceOffset;
        newBlock.setSourceRange(i12, this.sourceLength + i12);
        ExplicitConstructorCall explicitConstructorCall = parseStatements.constructorCall;
        if (explicitConstructorCall != null && explicitConstructorCall.accessMode != 1) {
            newBlock.statements().add(aSTConverter.convert(explicitConstructorCall));
        }
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = parseStatements.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i13 = 0; i13 < length; i13++) {
                org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i13];
                if (statement instanceof LocalDeclaration) {
                    aSTConverter.checkAndAddMultipleLocalDeclaration(statementArr, i13, newBlock.statements());
                } else {
                    Statement convert3 = aSTConverter.convert(statement);
                    if (convert3 != null) {
                        newBlock.statements().add(convert3);
                    }
                }
            }
        }
        rootNodeToCompilationUnit(newAST, newCompilationUnit, newBlock, recordedParsingInformation3, recoveryScannerData);
        newAST.setDefaultNodeFlag(0);
        newAST.setOriginalModificationCount(newAST.modificationCount());
        return newBlock;
    }

    public static ASTParser newParser(int i10) {
        return new ASTParser(i10);
    }

    private void propagateErrors(ASTNode aSTNode, CategorizedProblem[] categorizedProblemArr, RecoveryScannerData recoveryScannerData) {
        aSTNode.accept(new ASTSyntaxErrorPropagator(categorizedProblemArr));
        if (recoveryScannerData != null) {
            aSTNode.accept(new ASTRecoveryPropagator(categorizedProblemArr, recoveryScannerData));
        }
    }

    private void rootNodeToCompilationUnit(AST ast, CompilationUnit compilationUnit, ASTNode aSTNode, RecordedParsingInformation recordedParsingInformation, RecoveryScannerData recoveryScannerData) {
        int i10 = recordedParsingInformation.problemsCount;
        int nodeType = aSTNode.getNodeType();
        if (nodeType == 8) {
            Block block = (Block) aSTNode;
            if (i10 != 0) {
                CategorizedProblem[] categorizedProblemArr = recordedParsingInformation.problems;
                propagateErrors(block, categorizedProblemArr, recoveryScannerData);
                compilationUnit.setProblems(categorizedProblemArr);
            }
            TypeDeclaration newTypeDeclaration = ast.newTypeDeclaration();
            Initializer newInitializer = ast.newInitializer();
            newInitializer.setBody(block);
            newTypeDeclaration.bodyDeclarations().add(newInitializer);
            compilationUnit.types().add(newTypeDeclaration);
            return;
        }
        if (nodeType == 55) {
            TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNode;
            if (i10 != 0) {
                CategorizedProblem[] categorizedProblemArr2 = recordedParsingInformation.problems;
                propagateErrors(typeDeclaration, categorizedProblemArr2, recoveryScannerData);
                compilationUnit.setProblems(categorizedProblemArr2);
            }
            compilationUnit.types().add(typeDeclaration);
            return;
        }
        if (aSTNode instanceof Expression) {
            Expression expression = (Expression) aSTNode;
            if (i10 != 0) {
                CategorizedProblem[] categorizedProblemArr3 = recordedParsingInformation.problems;
                propagateErrors(expression, categorizedProblemArr3, recoveryScannerData);
                compilationUnit.setProblems(categorizedProblemArr3);
            }
            ExpressionStatement newExpressionStatement = ast.newExpressionStatement(expression);
            Block newBlock = ast.newBlock();
            newBlock.statements().add(newExpressionStatement);
            Initializer newInitializer2 = ast.newInitializer();
            newInitializer2.setBody(newBlock);
            TypeDeclaration newTypeDeclaration2 = ast.newTypeDeclaration();
            newTypeDeclaration2.bodyDeclarations().add(newInitializer2);
            compilationUnit.types().add(newTypeDeclaration2);
        }
    }

    public ASTNode createAST(IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 1);
        try {
            if (this.rawSource == null && this.typeRoot == null) {
                throw new IllegalStateException("source not specified");
            }
            ASTNode internalCreateAST = internalCreateAST(convert.split(1));
            initializeDefaults();
            return internalCreateAST;
        } catch (Throwable th2) {
            initializeDefaults();
            throw th2;
        }
    }

    public void createASTs(ICompilationUnit[] iCompilationUnitArr, String[] strArr, ASTRequestor aSTRequestor, IProgressMonitor iProgressMonitor) {
        try {
            int i10 = this.bits;
            int i11 = (i10 & 4) != 0 ? 2 : 0;
            if ((i10 & 8) != 0) {
                i11 |= 8;
            }
            int i12 = i11;
            if ((i10 & 1) != 0) {
                IJavaProject iJavaProject = this.project;
                if (iJavaProject != null) {
                    if ((i10 & 16) != 0) {
                        i12 |= 4;
                    }
                    CompilationUnitResolver.resolve(iCompilationUnitArr, strArr, aSTRequestor, this.apiLevel, this.compilerOptions, iJavaProject, this.workingCopyOwner, i12, iProgressMonitor);
                } else {
                    throw new IllegalStateException("project not specified");
                }
            } else {
                CompilationUnitResolver.parse(iCompilationUnitArr, aSTRequestor, this.apiLevel, this.compilerOptions, i12, iProgressMonitor);
            }
            initializeDefaults();
        } catch (Throwable th2) {
            initializeDefaults();
            throw th2;
        }
    }

    public IBinding[] createBindings(IJavaElement[] iJavaElementArr, IProgressMonitor iProgressMonitor) {
        try {
            IJavaProject iJavaProject = this.project;
            if (iJavaProject == null) {
                throw new IllegalStateException("project or classpath not specified");
            }
            int i10 = this.bits;
            int i11 = (i10 & 4) != 0 ? 2 : 0;
            if ((i10 & 16) != 0) {
                i11 |= 4;
            }
            return CompilationUnitResolver.resolve(iJavaElementArr, this.apiLevel, this.compilerOptions, iJavaProject, this.workingCopyOwner, (i10 & 8) != 0 ? i11 | 8 : i11, iProgressMonitor);
        } finally {
            initializeDefaults();
        }
    }

    public void setBindingsRecovery(boolean z10) {
        if (z10) {
            this.bits |= 16;
        } else {
            this.bits &= -17;
        }
    }

    public void setCompilerOptions(Map<String, String> map) {
        Map<String, String> options = map == null ? JavaCore.getOptions() : new HashMap(map);
        options.remove("org.eclipse.jdt.core.compiler.taskTags");
        this.compilerOptions = options;
    }

    public void setEnvironment(String[] strArr, String[] strArr2, String[] strArr3, boolean z10) {
        this.classpaths = strArr;
        this.sourcepaths = strArr2;
        this.sourcepathsEncodings = strArr3;
        if (strArr3 != null && (strArr2 == null || strArr2.length != strArr3.length)) {
            throw new IllegalArgumentException();
        }
        if (z10) {
            this.bits |= 32;
        }
    }

    public void setFocalPosition(int i10) {
        this.bits |= 2;
        this.focalPointPosition = i10;
    }

    public void setIgnoreMethodBodies(boolean z10) {
        if (z10) {
            this.bits |= 8;
        } else {
            this.bits &= -9;
        }
    }

    public void setKind(int i10) {
        if (i10 != 8 && i10 != 4 && i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException();
        }
        this.astKind = i10;
    }

    public void setProject(IJavaProject iJavaProject) {
        this.project = iJavaProject;
        if (iJavaProject != null) {
            Map<String, String> options = iJavaProject.getOptions(true);
            options.remove("org.eclipse.jdt.core.compiler.taskTags");
            this.compilerOptions = options;
        }
    }

    public void setResolveBindings(boolean z10) {
        if (z10) {
            this.bits |= 1;
        } else {
            this.bits &= -2;
        }
    }

    public void setSource(char[] cArr) {
        this.rawSource = cArr;
        this.typeRoot = null;
    }

    public void setSourceRange(int i10, int i11) {
        if (i10 < 0 || i11 < -1) {
            throw new IllegalArgumentException();
        }
        this.sourceOffset = i10;
        this.sourceLength = i11;
    }

    public void setStatementsRecovery(boolean z10) {
        if (z10) {
            this.bits |= 4;
        } else {
            this.bits &= -5;
        }
    }

    public void setUnitName(String str) {
        this.unitName = str;
    }

    public void setWorkingCopyOwner(WorkingCopyOwner workingCopyOwner) {
        if (workingCopyOwner == null) {
            this.workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        } else {
            this.workingCopyOwner = workingCopyOwner;
        }
    }

    public void setSource(ICompilationUnit iCompilationUnit) {
        setSource((ITypeRoot) iCompilationUnit);
    }

    public void setSource(IClassFile iClassFile) {
        setSource((ITypeRoot) iClassFile);
    }

    public void setSource(ITypeRoot iTypeRoot) {
        this.typeRoot = iTypeRoot;
        this.rawSource = null;
        if (iTypeRoot != null) {
            IJavaProject javaProject = iTypeRoot.getJavaProject();
            this.project = javaProject;
            Map<String, String> options = javaProject.getOptions(true);
            options.remove("org.eclipse.jdt.core.compiler.taskTags");
            this.compilerOptions = options;
        }
    }

    public void createASTs(String[] strArr, String[] strArr2, String[] strArr3, FileASTRequestor fileASTRequestor, IProgressMonitor iProgressMonitor) {
        try {
            int i10 = this.bits;
            int i11 = (i10 & 4) != 0 ? 2 : 0;
            if ((i10 & 8) != 0) {
                i11 |= 8;
            }
            int i12 = i11;
            if ((i10 & 1) != 0) {
                if (this.classpaths == null && this.sourcepaths == null && (i10 & 32) == 0) {
                    throw new IllegalStateException("no environment is specified");
                }
                if ((i10 & 16) != 0) {
                    i12 |= 4;
                }
                CompilationUnitResolver.resolve(strArr, strArr2, strArr3, fileASTRequestor, this.apiLevel, this.compilerOptions, getClasspath(), i12, iProgressMonitor);
            } else {
                CompilationUnitResolver.parse(strArr, strArr2, fileASTRequestor, this.apiLevel, this.compilerOptions, i12, iProgressMonitor);
            }
            initializeDefaults();
        } catch (Throwable th2) {
            initializeDefaults();
            throw th2;
        }
    }
}
