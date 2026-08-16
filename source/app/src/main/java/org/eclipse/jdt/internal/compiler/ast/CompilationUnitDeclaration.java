package org.eclipse.jdt.internal.compiler.ast;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.NLSTag;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblem;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.HashSetOfInt;
import org.eclipse.jdt.internal.core.JavaElement;

public class CompilationUnitDeclaration extends ASTNode implements ProblemSeverities, ReferenceContext {
    private static final int STRING_LITERALS_INCREMENT = 10;
    private static final Comparator STRING_LITERAL_COMPARATOR = new Comparator() {
        @Override
        public int compare(Object obj, Object obj2) {
            return ((StringLiteral) obj).sourceStart - ((StringLiteral) obj2).sourceStart;
        }
    };
    public int[][] comments;
    public CompilationResult compilationResult;
    public ImportReference currentPackage;
    public FunctionalExpression[] functionalExpressions;
    public int functionalExpressionsCount;
    public ImportReference[] imports;
    public boolean isPropagatingInnerClassEmulation;
    public Javadoc javadoc;
    public LocalTypeBinding[] localTypes;
    public ModuleDeclaration moduleDeclaration;
    public NLSTag[] nlsTags;
    public ProblemReporter problemReporter;
    public CompilationUnitScope scope;
    private StringLiteral[] stringLiterals;
    private int stringLiteralsPtr;
    private HashSetOfInt stringLiteralsStart;
    Annotation[] suppressWarningAnnotations;
    IrritantSet[] suppressWarningIrritants;
    long[] suppressWarningScopePositions;
    int suppressWarningsCount;
    public TypeDeclaration[] types;
    public boolean[] validIdentityComparisonLines;
    public boolean ignoreFurtherInvestigation = false;
    public boolean ignoreMethodBodies = false;
    public int localTypeCount = 0;

    public CompilationUnitDeclaration(ProblemReporter problemReporter, CompilationResult compilationResult, int i10) {
        this.problemReporter = problemReporter;
        this.compilationResult = compilationResult;
        this.sourceStart = 0;
        this.sourceEnd = i10 - 1;
    }

    private boolean isLambdaExpressionCopyContext(ReferenceContext referenceContext) {
        boolean z10 = referenceContext instanceof LambdaExpression;
        if (z10 && referenceContext != ((LambdaExpression) referenceContext).original()) {
            return true;
        }
        Scope scope = referenceContext instanceof AbstractMethodDeclaration ? ((AbstractMethodDeclaration) referenceContext).scope : referenceContext instanceof TypeDeclaration ? ((TypeDeclaration) referenceContext).scope : z10 ? ((LambdaExpression) referenceContext).scope : null;
        if (scope != null) {
            return isLambdaExpressionCopyContext(scope.parent.referenceContext());
        }
        return false;
    }

    private void reportNLSProblems() {
        NLSTag[] nLSTagArr = this.nlsTags;
        if (nLSTagArr == null && this.stringLiterals == null) {
            return;
        }
        int i10 = this.stringLiteralsPtr;
        int i11 = 0;
        int length = nLSTagArr == null ? 0 : nLSTagArr.length;
        if (i10 == 0) {
            if (length != 0) {
                while (i11 < length) {
                    NLSTag nLSTag = this.nlsTags[i11];
                    if (nLSTag != null) {
                        this.scope.problemReporter().unnecessaryNLSTags(nLSTag.start, nLSTag.end);
                    }
                    i11++;
                }
                return;
            }
            return;
        }
        if (length == 0) {
            StringLiteral[] stringLiteralArr = this.stringLiterals;
            if (stringLiteralArr.length != i10) {
                StringLiteral[] stringLiteralArr2 = new StringLiteral[i10];
                this.stringLiterals = stringLiteralArr2;
                System.arraycopy(stringLiteralArr, 0, stringLiteralArr2, 0, i10);
            }
            Arrays.sort(this.stringLiterals, STRING_LITERAL_COMPARATOR);
            while (i11 < i10) {
                this.scope.problemReporter().nonExternalizedStringLiteral(this.stringLiterals[i11]);
                i11++;
            }
            return;
        }
        StringLiteral[] stringLiteralArr3 = this.stringLiterals;
        if (stringLiteralArr3.length != i10) {
            StringLiteral[] stringLiteralArr4 = new StringLiteral[i10];
            this.stringLiterals = stringLiteralArr4;
            System.arraycopy(stringLiteralArr3, 0, stringLiteralArr4, 0, i10);
        }
        Arrays.sort(this.stringLiterals, STRING_LITERAL_COMPARATOR);
        int i12 = 1;
        int i13 = -1;
        int i14 = 0;
        loop2: while (i11 < i10) {
            StringLiteral stringLiteral = this.stringLiterals[i11];
            int i15 = stringLiteral.lineNumber;
            if (i13 != i15) {
                i12 = 1;
                i13 = i15;
            } else {
                i12++;
            }
            if (i14 >= length) {
                break;
            }
            while (i14 < length) {
                NLSTag[] nLSTagArr2 = this.nlsTags;
                NLSTag nLSTag2 = nLSTagArr2[i14];
                if (nLSTag2 != null) {
                    int i16 = nLSTag2.lineNumber;
                    if (i15 < i16) {
                        this.scope.problemReporter().nonExternalizedStringLiteral(stringLiteral);
                    } else if (i15 != i16) {
                        this.scope.problemReporter().unnecessaryNLSTags(nLSTag2.start, nLSTag2.end);
                    } else if (nLSTag2.index != i12) {
                        int i17 = i14 + 1;
                        while (true) {
                            if (i17 >= length) {
                                this.scope.problemReporter().nonExternalizedStringLiteral(stringLiteral);
                                break;
                            }
                            NLSTag[] nLSTagArr3 = this.nlsTags;
                            NLSTag nLSTag3 = nLSTagArr3[i17];
                            if (nLSTag3 != null) {
                                if (i15 != nLSTag3.lineNumber) {
                                    this.scope.problemReporter().nonExternalizedStringLiteral(stringLiteral);
                                    break;
                                } else if (nLSTag3.index == i12) {
                                    nLSTagArr3[i17] = null;
                                    break;
                                }
                            }
                            i17++;
                        }
                    } else {
                        nLSTagArr2[i14] = null;
                        i14++;
                    }
                    i11++;
                }
                i14++;
            }
            break loop2;
        }
        while (i11 < i10) {
            this.scope.problemReporter().nonExternalizedStringLiteral(this.stringLiterals[i11]);
            i11++;
        }
        if (i14 < length) {
            while (i14 < length) {
                NLSTag nLSTag4 = this.nlsTags[i14];
                if (nLSTag4 != null) {
                    this.scope.problemReporter().unnecessaryNLSTags(nLSTag4.start, nLSTag4.end);
                }
                i14++;
            }
        }
    }

    @Override
    public void abort(int i10, CategorizedProblem categorizedProblem) {
        if (i10 == 8) {
            throw new AbortType(this.compilationResult, categorizedProblem);
        }
        if (i10 == 16) {
            throw new AbortMethod(this.compilationResult, categorizedProblem);
        }
        throw new AbortCompilationUnit(this.compilationResult, categorizedProblem);
    }

    public void analyseCode() {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            TypeDeclaration[] typeDeclarationArr = this.types;
            if (typeDeclarationArr != null) {
                int length = typeDeclarationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.types[i10].analyseCode(this.scope);
                }
            }
            ModuleDeclaration moduleDeclaration = this.moduleDeclaration;
            if (moduleDeclaration != null) {
                moduleDeclaration.analyseCode(this.scope);
            }
            propagateInnerEmulationForAllLocalTypes();
        } catch (AbortCompilationUnit unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void checkUnusedImports() {
        ImportBinding[] importBindingArr = this.scope.imports;
        if (importBindingArr != null) {
            int length = importBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                CompilationUnitScope compilationUnitScope = this.scope;
                ImportReference importReference = compilationUnitScope.imports[i10].reference;
                if (importReference != null && (importReference.bits & 2) == 0) {
                    compilationUnitScope.problemReporter().unusedImport(importReference);
                }
            }
        }
    }

    public void cleanUp() {
        TypeDeclaration[] typeDeclarationArr = this.types;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                cleanUp(this.types[i10]);
            }
            int i11 = this.localTypeCount;
            for (int i12 = 0; i12 < i11; i12++) {
                LocalTypeBinding localTypeBinding = this.localTypes[i12];
                localTypeBinding.scope = null;
                localTypeBinding.enclosingCase = null;
            }
        }
        int i13 = this.functionalExpressionsCount;
        if (i13 > 0) {
            for (int i14 = 0; i14 < i13; i14++) {
                this.functionalExpressions[i14].cleanUp();
            }
        }
        CompilationResult compilationResult = this.compilationResult;
        compilationResult.recoveryScannerData = null;
        for (ClassFile classFile : compilationResult.getClassFiles()) {
            classFile.referenceBinding = null;
            classFile.innerClassesBindings = null;
            classFile.bootstrapMethods = null;
            classFile.missingTypes = null;
            classFile.visitedTypes = null;
        }
        this.suppressWarningAnnotations = null;
        CompilationUnitScope compilationUnitScope = this.scope;
        if (compilationUnitScope != null) {
            compilationUnitScope.cleanUpInferenceContexts();
        }
    }

    @Override
    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public void createPackageInfoType() {
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationResult);
        typeDeclaration.name = TypeConstants.PACKAGE_INFO_NAME;
        typeDeclaration.modifiers = 512;
        typeDeclaration.javadoc = this.javadoc;
        this.types[0] = typeDeclaration;
    }

    public TypeDeclaration declarationOfType(char[][] cArr) {
        int i10 = 0;
        while (true) {
            TypeDeclaration[] typeDeclarationArr = this.types;
            if (i10 >= typeDeclarationArr.length) {
                return null;
            }
            TypeDeclaration declarationOfType = typeDeclarationArr[i10].declarationOfType(cArr);
            if (declarationOfType != null) {
                return declarationOfType;
            }
            i10++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x01cc, code lost:
    
        if (r4.suppressOptionalErrors == false) goto L123;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void finalizeProblems() {
        int severity;
        int i10;
        int i11;
        boolean z10;
        IrritantSet warningTokenToIrritants;
        IrritantSet irritantSet;
        int i12;
        int i13;
        boolean z11;
        int i14;
        IrritantSet warningTokenToIrritants2;
        IrritantSet irritantSet2;
        int i15;
        IrritantSet[] irritantSetArr;
        int i16;
        CompilationResult compilationResult = this.compilationResult;
        int i17 = compilationResult.problemCount;
        CategorizedProblem[] categorizedProblemArr = compilationResult.problems;
        int i18 = this.suppressWarningsCount;
        if (i18 == 0) {
            return;
        }
        IrritantSet[] irritantSetArr2 = new IrritantSet[i18];
        CompilerOptions compilerOptions = this.scope.compilerOptions();
        int i19 = 0;
        int i20 = 0;
        boolean z12 = false;
        while (true) {
            if (i19 >= i17) {
                break;
            }
            CategorizedProblem categorizedProblem = categorizedProblemArr[i19];
            int irritant = ProblemReporter.getIrritant(categorizedProblem.getID());
            if (categorizedProblem.isError()) {
                if (irritant == 0) {
                    i15 = i17;
                    irritantSetArr = irritantSetArr2;
                    i16 = i19;
                    z12 = true;
                    i19 = i16 + 1;
                    irritantSetArr2 = irritantSetArr;
                    i17 = i15;
                }
            }
            int sourceStart = categorizedProblem.getSourceStart();
            int sourceEnd = categorizedProblem.getSourceEnd();
            int i21 = this.suppressWarningsCount;
            int i22 = 0;
            while (i22 < i21) {
                i15 = i17;
                irritantSetArr = irritantSetArr2;
                long j10 = this.suppressWarningScopePositions[i22];
                i16 = i19;
                int i23 = i20;
                int i24 = (int) (j10 >>> 32);
                int i25 = (int) j10;
                if (sourceStart >= i24 && sourceEnd <= i25) {
                    if (this.suppressWarningIrritants[i22].isSet(irritant)) {
                        i20 = i23 + 1;
                        categorizedProblemArr[i16] = null;
                        this.compilationResult.removeProblem(categorizedProblem);
                        IrritantSet irritantSet3 = irritantSetArr[i22];
                        if (irritantSet3 == null) {
                            irritantSetArr[i22] = new IrritantSet(irritant);
                        } else {
                            irritantSet3.set(irritant);
                        }
                        i19 = i16 + 1;
                        irritantSetArr2 = irritantSetArr;
                        i17 = i15;
                    } else if (categorizedProblem instanceof DefaultProblem) {
                        ((DefaultProblem) categorizedProblem).reportError();
                    }
                }
                i22++;
                i19 = i16;
                irritantSetArr2 = irritantSetArr;
                i17 = i15;
                i20 = i23;
            }
            i15 = i17;
            irritantSetArr = irritantSetArr2;
            i16 = i19;
            i19 = i16 + 1;
            irritantSetArr2 = irritantSetArr;
            i17 = i15;
        }
        if (i20 > 0) {
            int i26 = 0;
            for (int i27 = 0; i27 < i17; i27++) {
                CategorizedProblem categorizedProblem2 = categorizedProblemArr[i27];
                if (categorizedProblem2 != null) {
                    if (i27 > i26) {
                        categorizedProblemArr[i26] = categorizedProblem2;
                        i26++;
                    } else {
                        i26++;
                    }
                }
            }
        }
        if (z12 || (severity = compilerOptions.getSeverity(CompilerOptions.UnusedWarningToken)) == 256) {
            return;
        }
        boolean z13 = (severity & 1) == 0;
        int i28 = this.suppressWarningsCount;
        int i29 = 0;
        while (i29 < i28) {
            Annotation annotation = this.suppressWarningAnnotations[i29];
            if (annotation != null) {
                IrritantSet irritantSet4 = this.suppressWarningIrritants[i29];
                if ((!z13 || !irritantSet4.areAllSet()) && irritantSet4 != irritantSetArr2[i29]) {
                    MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
                    int length = memberValuePairs.length;
                    int i30 = 0;
                    while (true) {
                        if (i30 >= length) {
                            break;
                        }
                        MemberValuePair memberValuePair = memberValuePairs[i30];
                        if (CharOperation.equals(memberValuePair.name, TypeConstants.VALUE)) {
                            Expression expression = memberValuePair.value;
                            if (expression instanceof ArrayInitializer) {
                                Expression[] expressionArr = ((ArrayInitializer) expression).expressions;
                                if (expressionArr != null) {
                                    int length2 = expressionArr.length;
                                    int i31 = 0;
                                    while (i31 < length2) {
                                        Constant constant = expressionArr[i31].constant;
                                        if (constant == Constant.NotAConstant || constant.typeID() != 11 || (warningTokenToIrritants2 = CompilerOptions.warningTokenToIrritants(constant.stringValue())) == null || warningTokenToIrritants2.areAllSet() || ((irritantSet2 = irritantSetArr2[i29]) != null && irritantSet2.isAnySet(warningTokenToIrritants2))) {
                                            i12 = i28;
                                            i13 = i29;
                                            z11 = z13;
                                            i14 = length2;
                                        } else {
                                            if (z13) {
                                                int i32 = expression.sourceStart;
                                                int i33 = expression.sourceEnd;
                                                int i34 = i29 - 1;
                                                while (i34 >= 0) {
                                                    z10 = z13;
                                                    int i35 = length2;
                                                    long j11 = this.suppressWarningScopePositions[i34];
                                                    i10 = i28;
                                                    i11 = i29;
                                                    int i36 = (int) j11;
                                                    if (i32 >= ((int) (j11 >>> 32)) && i33 <= i36 && this.suppressWarningIrritants[i34].areAllSet()) {
                                                        break;
                                                    }
                                                    i34--;
                                                    i28 = i10;
                                                    z13 = z10;
                                                    length2 = i35;
                                                    i29 = i11;
                                                }
                                            }
                                            i12 = i28;
                                            i13 = i29;
                                            z11 = z13;
                                            i14 = length2;
                                            int ignoredIrritant = compilerOptions.getIgnoredIrritant(warningTokenToIrritants2);
                                            if (ignoredIrritant > 0) {
                                                this.scope.problemReporter().problemNotAnalysed(expressionArr[i31], CompilerOptions.optionKeyFromIrritant(ignoredIrritant));
                                            } else {
                                                this.scope.problemReporter().unusedWarningToken(expressionArr[i31]);
                                            }
                                        }
                                        i31++;
                                        i28 = i12;
                                        z13 = z11;
                                        length2 = i14;
                                        i29 = i13;
                                    }
                                }
                            } else {
                                i10 = i28;
                                i11 = i29;
                                z10 = z13;
                                Constant constant2 = expression.constant;
                                if (constant2 != Constant.NotAConstant && constant2.typeID() == 11 && (warningTokenToIrritants = CompilerOptions.warningTokenToIrritants(constant2.stringValue())) != null && !warningTokenToIrritants.areAllSet() && ((irritantSet = irritantSetArr2[i11]) == null || !irritantSet.isAnySet(warningTokenToIrritants))) {
                                    if (z10) {
                                        int i37 = expression.sourceStart;
                                        int i38 = expression.sourceEnd;
                                        for (int i39 = i11 - 1; i39 >= 0; i39--) {
                                            long j12 = this.suppressWarningScopePositions[i39];
                                            int i40 = (int) (j12 >>> 32);
                                            int i41 = (int) j12;
                                            if (i37 >= i40 && i38 <= i41 && this.suppressWarningIrritants[i39].areAllSet()) {
                                                break;
                                            }
                                        }
                                    }
                                    int ignoredIrritant2 = compilerOptions.getIgnoredIrritant(warningTokenToIrritants);
                                    if (ignoredIrritant2 > 0) {
                                        this.scope.problemReporter().problemNotAnalysed(expression, CompilerOptions.optionKeyFromIrritant(ignoredIrritant2));
                                    } else {
                                        this.scope.problemReporter().unusedWarningToken(expression);
                                    }
                                }
                            }
                        } else {
                            i30++;
                        }
                    }
                    i29 = i11 + 1;
                    i28 = i10;
                    z13 = z10;
                }
            }
            i10 = i28;
            i11 = i29;
            z10 = z13;
            i29 = i11 + 1;
            i28 = i10;
            z13 = z10;
        }
    }

    public void generateCode() {
        int i10 = 0;
        if (this.ignoreFurtherInvestigation) {
            TypeDeclaration[] typeDeclarationArr = this.types;
            if (typeDeclarationArr != null) {
                int length = typeDeclarationArr.length;
                while (i10 < length) {
                    TypeDeclaration typeDeclaration = this.types[i10];
                    typeDeclaration.ignoreFurtherInvestigation = true;
                    typeDeclaration.generateCode(this.scope);
                    i10++;
                }
                return;
            }
            return;
        }
        try {
            TypeDeclaration[] typeDeclarationArr2 = this.types;
            if (typeDeclarationArr2 != null) {
                int length2 = typeDeclarationArr2.length;
                while (i10 < length2) {
                    this.types[i10].generateCode(this.scope);
                    i10++;
                }
            }
            ModuleDeclaration moduleDeclaration = this.moduleDeclaration;
            if (moduleDeclaration != null) {
                moduleDeclaration.generateCode();
            }
        } catch (AbortCompilationUnit unused) {
        }
    }

    @Override
    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        return this;
    }

    public char[] getFileName() {
        return this.compilationResult.getFileName();
    }

    public char[] getMainTypeName() {
        CompilationResult compilationResult = this.compilationResult;
        ICompilationUnit iCompilationUnit = compilationResult.compilationUnit;
        if (iCompilationUnit != null) {
            return iCompilationUnit.getMainTypeName();
        }
        char[] fileName = compilationResult.getFileName();
        int lastIndexOf = CharOperation.lastIndexOf('/', fileName) + 1;
        if (lastIndexOf == 0 || lastIndexOf < CharOperation.lastIndexOf(JavaElement.JEM_ESCAPE, fileName)) {
            lastIndexOf = CharOperation.lastIndexOf(JavaElement.JEM_ESCAPE, fileName) + 1;
        }
        int lastIndexOf2 = CharOperation.lastIndexOf('.', fileName);
        if (lastIndexOf2 == -1) {
            lastIndexOf2 = fileName.length;
        }
        return CharOperation.subarray(fileName, lastIndexOf, lastIndexOf2);
    }

    @Override
    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public boolean hasFunctionalTypes() {
        return this.compilationResult.hasFunctionalTypes;
    }

    public boolean isEmpty() {
        return this.currentPackage == null && this.imports == null && this.types == null;
    }

    public boolean isModuleInfo() {
        return CharOperation.equals(getMainTypeName(), TypeConstants.MODULE_INFO_NAME);
    }

    public boolean isPackageInfo() {
        return CharOperation.equals(getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME);
    }

    public boolean isSuppressed(CategorizedProblem categorizedProblem) {
        int irritant;
        if (this.suppressWarningsCount == 0 || (irritant = ProblemReporter.getIrritant(categorizedProblem.getID())) == 0) {
            return false;
        }
        int sourceStart = categorizedProblem.getSourceStart();
        int sourceEnd = categorizedProblem.getSourceEnd();
        int i10 = this.suppressWarningsCount;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = this.suppressWarningScopePositions[i11];
            int i12 = (int) (j10 >>> 32);
            int i13 = (int) j10;
            if (sourceStart >= i12 && sourceEnd <= i13 && this.suppressWarningIrritants[i11].isSet(irritant)) {
                return true;
            }
        }
        return false;
    }

    public ModuleBinding module(LookupEnvironment lookupEnvironment) {
        ICompilationUnit iCompilationUnit;
        SourceModuleBinding sourceModuleBinding;
        ModuleDeclaration moduleDeclaration = this.moduleDeclaration;
        if (moduleDeclaration != null && (sourceModuleBinding = moduleDeclaration.binding) != null) {
            return sourceModuleBinding;
        }
        CompilationResult compilationResult = this.compilationResult;
        return (compilationResult == null || (iCompilationUnit = compilationResult.compilationUnit) == null) ? lookupEnvironment.module : iCompilationUnit.module(lookupEnvironment);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        int i11 = 0;
        if (this.currentPackage != null) {
            ASTNode.printIndent(i10, stringBuffer).append("package ");
            this.currentPackage.print(0, stringBuffer, false).append(";\n");
        }
        if (this.imports != null) {
            for (int i12 = 0; i12 < this.imports.length; i12++) {
                ASTNode.printIndent(i10, stringBuffer).append("import ");
                ImportReference importReference = this.imports[i12];
                if (importReference.isStatic()) {
                    stringBuffer.append("static ");
                }
                importReference.print(0, stringBuffer).append(";\n");
            }
        }
        ModuleDeclaration moduleDeclaration = this.moduleDeclaration;
        if (moduleDeclaration != null) {
            moduleDeclaration.print(i10, stringBuffer).append("\n");
        } else if (this.types != null) {
            while (true) {
                TypeDeclaration[] typeDeclarationArr = this.types;
                if (i11 >= typeDeclarationArr.length) {
                    break;
                }
                typeDeclarationArr[i11].print(i10, stringBuffer).append("\n");
                i11++;
            }
        }
        return stringBuffer;
    }

    public void propagateInnerEmulationForAllLocalTypes() {
        this.isPropagatingInnerClassEmulation = true;
        int i10 = this.localTypeCount;
        for (int i11 = 0; i11 < i10; i11++) {
            LocalTypeBinding localTypeBinding = this.localTypes[i11];
            if ((localTypeBinding.scope.referenceType().bits & Integer.MIN_VALUE) != 0) {
                localTypeBinding.updateInnerEmulationDependents();
            }
        }
    }

    public void record(LocalTypeBinding localTypeBinding) {
        int i10 = this.localTypeCount;
        if (i10 == 0) {
            this.localTypes = new LocalTypeBinding[5];
        } else {
            LocalTypeBinding[] localTypeBindingArr = this.localTypes;
            if (i10 == localTypeBindingArr.length) {
                LocalTypeBinding[] localTypeBindingArr2 = new LocalTypeBinding[i10 * 2];
                this.localTypes = localTypeBindingArr2;
                System.arraycopy(localTypeBindingArr, 0, localTypeBindingArr2, 0, i10);
            }
        }
        LocalTypeBinding[] localTypeBindingArr3 = this.localTypes;
        int i11 = this.localTypeCount;
        this.localTypeCount = i11 + 1;
        localTypeBindingArr3[i11] = localTypeBinding;
    }

    public void recordStringLiteral(StringLiteral stringLiteral, boolean z10) {
        HashSetOfInt hashSetOfInt = this.stringLiteralsStart;
        if (hashSetOfInt != null) {
            if (hashSetOfInt.contains(stringLiteral.sourceStart)) {
                return;
            } else {
                this.stringLiteralsStart.add(stringLiteral.sourceStart);
            }
        } else if (z10) {
            this.stringLiteralsStart = new HashSetOfInt(this.stringLiteralsPtr + 10);
            for (int i10 = 0; i10 < this.stringLiteralsPtr; i10++) {
                this.stringLiteralsStart.add(this.stringLiterals[i10].sourceStart);
            }
            if (this.stringLiteralsStart.contains(stringLiteral.sourceStart)) {
                return;
            } else {
                this.stringLiteralsStart.add(stringLiteral.sourceStart);
            }
        }
        StringLiteral[] stringLiteralArr = this.stringLiterals;
        if (stringLiteralArr == null) {
            this.stringLiterals = new StringLiteral[10];
            this.stringLiteralsPtr = 0;
        } else {
            int length = stringLiteralArr.length;
            if (this.stringLiteralsPtr == length) {
                StringLiteral[] stringLiteralArr2 = new StringLiteral[length + 10];
                this.stringLiterals = stringLiteralArr2;
                System.arraycopy(stringLiteralArr, 0, stringLiteralArr2, 0, length);
            }
        }
        StringLiteral[] stringLiteralArr3 = this.stringLiterals;
        int i11 = this.stringLiteralsPtr;
        this.stringLiteralsPtr = i11 + 1;
        stringLiteralArr3[i11] = stringLiteral;
    }

    public void recordSuppressWarnings(IrritantSet irritantSet, Annotation annotation, int i10, int i11, ReferenceContext referenceContext) {
        if (isLambdaExpressionCopyContext(referenceContext)) {
            return;
        }
        IrritantSet[] irritantSetArr = this.suppressWarningIrritants;
        if (irritantSetArr == null) {
            this.suppressWarningIrritants = new IrritantSet[3];
            this.suppressWarningAnnotations = new Annotation[3];
            this.suppressWarningScopePositions = new long[3];
        } else {
            int length = irritantSetArr.length;
            int i12 = this.suppressWarningsCount;
            if (length == i12) {
                IrritantSet[] irritantSetArr2 = new IrritantSet[i12 * 2];
                this.suppressWarningIrritants = irritantSetArr2;
                System.arraycopy(irritantSetArr, 0, irritantSetArr2, 0, i12);
                Annotation[] annotationArr = this.suppressWarningAnnotations;
                int i13 = this.suppressWarningsCount;
                Annotation[] annotationArr2 = new Annotation[i13 * 2];
                this.suppressWarningAnnotations = annotationArr2;
                System.arraycopy(annotationArr, 0, annotationArr2, 0, i13);
                long[] jArr = this.suppressWarningScopePositions;
                int i14 = this.suppressWarningsCount;
                long[] jArr2 = new long[i14 * 2];
                this.suppressWarningScopePositions = jArr2;
                System.arraycopy(jArr, 0, jArr2, 0, i14);
            }
        }
        long j10 = (i10 << 32) + i11;
        int i15 = this.suppressWarningsCount;
        for (int i16 = 0; i16 < i15; i16++) {
            if (this.suppressWarningAnnotations[i16] == annotation && this.suppressWarningScopePositions[i16] == j10 && this.suppressWarningIrritants[i16].hasSameIrritants(irritantSet)) {
                return;
            }
        }
        IrritantSet[] irritantSetArr3 = this.suppressWarningIrritants;
        int i17 = this.suppressWarningsCount;
        irritantSetArr3[i17] = irritantSet;
        this.suppressWarningAnnotations[i17] = annotation;
        long[] jArr3 = this.suppressWarningScopePositions;
        this.suppressWarningsCount = i17 + 1;
        jArr3[i17] = j10;
    }

    public void resolve() {
        int i10;
        MethodScope methodScope;
        boolean isPackageInfo = isPackageInfo();
        TypeDeclaration[] typeDeclarationArr = this.types;
        if (typeDeclarationArr == null || !isPackageInfo) {
            Javadoc javadoc = this.javadoc;
            if (javadoc != null) {
                javadoc.resolve(this.scope);
            }
            i10 = 0;
        } else {
            TypeDeclaration typeDeclaration = typeDeclarationArr[0];
            if (typeDeclaration.javadoc == null) {
                int i11 = typeDeclaration.declarationSourceStart;
                typeDeclaration.javadoc = new Javadoc(i11, i11);
            }
            typeDeclaration.resolve(this.scope);
            Javadoc javadoc2 = this.javadoc;
            if (javadoc2 != null && (methodScope = typeDeclaration.staticInitializerScope) != null) {
                javadoc2.resolve(methodScope);
            }
            i10 = 1;
        }
        ImportReference importReference = this.currentPackage;
        if (importReference != null && importReference.annotations != null && !isPackageInfo) {
            this.scope.problemReporter().invalidFileNameForPackageAnnotations(this.currentPackage.annotations[0]);
        }
        try {
            TypeDeclaration[] typeDeclarationArr2 = this.types;
            if (typeDeclarationArr2 != null) {
                int length = typeDeclarationArr2.length;
                while (i10 < length) {
                    this.types[i10].resolve(this.scope);
                    i10++;
                }
            }
            if (!this.compilationResult.hasMandatoryErrors()) {
                checkUnusedImports();
            }
            reportNLSProblems();
        } catch (AbortCompilationUnit unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    @Override
    public void tagAsHavingIgnoredMandatoryErrors(int i10) {
    }

    public void traverse(ASTVisitor aSTVisitor, CompilationUnitScope compilationUnitScope) {
        traverse(aSTVisitor, compilationUnitScope, true);
    }

    public void traverse(ASTVisitor aSTVisitor, CompilationUnitScope compilationUnitScope, boolean z10) {
        ModuleDeclaration moduleDeclaration;
        Annotation[] annotationArr;
        if (z10 && this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if (aSTVisitor.visit(this, this.scope)) {
                if (this.types != null && isPackageInfo()) {
                    MethodScope methodScope = this.types[0].staticInitializerScope;
                    Javadoc javadoc = this.javadoc;
                    if (javadoc != null && methodScope != null) {
                        javadoc.traverse(aSTVisitor, methodScope);
                    }
                    ImportReference importReference = this.currentPackage;
                    if (importReference != null && methodScope != null && (annotationArr = importReference.annotations) != null) {
                        for (Annotation annotation : annotationArr) {
                            annotation.traverse(aSTVisitor, methodScope);
                        }
                    }
                }
                ImportReference importReference2 = this.currentPackage;
                if (importReference2 != null) {
                    importReference2.traverse(aSTVisitor, this.scope);
                }
                ImportReference[] importReferenceArr = this.imports;
                if (importReferenceArr != null) {
                    int length = importReferenceArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        this.imports[i10].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeDeclaration[] typeDeclarationArr = this.types;
                if (typeDeclarationArr != null) {
                    int length2 = typeDeclarationArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.types[i11].traverse(aSTVisitor, this.scope);
                    }
                }
                if (isModuleInfo() && (moduleDeclaration = this.moduleDeclaration) != null) {
                    moduleDeclaration.traverse(aSTVisitor, this.scope);
                }
            }
            aSTVisitor.endVisit(this, this.scope);
        } catch (AbortCompilationUnit unused) {
        }
    }

    public int record(FunctionalExpression functionalExpression) {
        int i10 = this.functionalExpressionsCount;
        if (i10 == 0) {
            this.functionalExpressions = new FunctionalExpression[5];
        } else {
            FunctionalExpression[] functionalExpressionArr = this.functionalExpressions;
            if (i10 == functionalExpressionArr.length) {
                FunctionalExpression[] functionalExpressionArr2 = new FunctionalExpression[i10 * 2];
                this.functionalExpressions = functionalExpressionArr2;
                System.arraycopy(functionalExpressionArr, 0, functionalExpressionArr2, 0, i10);
            }
        }
        FunctionalExpression[] functionalExpressionArr3 = this.functionalExpressions;
        int i11 = this.functionalExpressionsCount;
        this.functionalExpressionsCount = i11 + 1;
        functionalExpressionArr3[i11] = functionalExpression;
        return functionalExpression.enclosingScope.classScope().referenceContext.record(functionalExpression);
    }

    private void cleanUp(TypeDeclaration typeDeclaration) {
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                cleanUp(typeDeclaration.memberTypes[i10]);
            }
        }
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        if (sourceTypeBinding != null && sourceTypeBinding.isAnnotationType()) {
            this.compilationResult.hasAnnotations = true;
        }
        SourceTypeBinding sourceTypeBinding2 = typeDeclaration.binding;
        if (sourceTypeBinding2 != null) {
            sourceTypeBinding2.scope = null;
        }
    }
}
