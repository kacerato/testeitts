package org.eclipse.jdt.internal.codeassist;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.TypeNameMatch;
import org.eclipse.jdt.core.search.TypeNameMatchRequestor;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Engine;
import org.eclipse.jdt.internal.codeassist.select.SelectionJavadocParser;
import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnImportReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnPackageVisibilityReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionParser;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.BinaryTypeConverter;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JrtPackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SelectionRequestor;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeFactory;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.TypeNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.HashSetOfCharArrayArray;
import w2.C15883c;

public final class SelectionEngine extends Engine implements ISearchRequestor {
    public static boolean DEBUG = false;
    public static boolean PERF = false;
    private char[][][] acceptedAnnotations;
    int acceptedAnnotationsCount;
    private int[] acceptedAnnotationsModifiers;
    boolean acceptedAnswer;
    private char[][][] acceptedClasses;
    int acceptedClassesCount;
    private int[] acceptedClassesModifiers;
    private char[][][] acceptedEnums;
    int acceptedEnumsCount;
    private int[] acceptedEnumsModifiers;
    private char[][][] acceptedInterfaces;
    int acceptedInterfacesCount;
    private int[] acceptedInterfacesModifiers;
    private int actualSelectionEnd;
    private int actualSelectionStart;
    boolean noProposal;
    WorkingCopyOwner owner;
    SelectionParser parser;
    CategorizedProblem problem;
    ISelectionRequestor requestor;
    private char[] selectedIdentifier;

    public static abstract class InheritDocVisitor {
        public static final Object STOP_BRANCH = new Object() {
            public String toString() {
                return "STOP_BRANCH";
            }
        };
        public static final Object CONTINUE = new Object() {
            public String toString() {
                return "CONTINUE";
            }
        };

        private Object visitInheritDocInterfaces(ArrayList arrayList, ReferenceBinding referenceBinding) throws JavaModelException {
            ArrayList arrayList2 = new ArrayList();
            for (ReferenceBinding referenceBinding2 : referenceBinding.superInterfaces()) {
                if (!arrayList.contains(referenceBinding2)) {
                    arrayList.add(referenceBinding2);
                    Object visit = visit(referenceBinding2);
                    if (visit == STOP_BRANCH) {
                        continue;
                    } else {
                        if (visit != CONTINUE) {
                            return visit;
                        }
                        arrayList2.add(referenceBinding2);
                    }
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Object visitInheritDocInterfaces = visitInheritDocInterfaces(arrayList, (ReferenceBinding) it.next());
                if (visitInheritDocInterfaces != CONTINUE) {
                    return visitInheritDocInterfaces;
                }
            }
            return CONTINUE;
        }

        public abstract Object visit(ReferenceBinding referenceBinding) throws JavaModelException;

        public Object visitInheritDoc(ReferenceBinding referenceBinding) throws JavaModelException {
            Object visit;
            ArrayList arrayList = new ArrayList();
            arrayList.add(referenceBinding);
            Object visitInheritDocInterfaces = visitInheritDocInterfaces(arrayList, referenceBinding);
            if (visitInheritDocInterfaces != CONTINUE) {
                return visitInheritDocInterfaces;
            }
            for (ReferenceBinding superclass = referenceBinding.superclass(); superclass != null && !arrayList.contains(superclass) && (visit = visit(superclass)) != STOP_BRANCH; superclass = superclass.superclass()) {
                Object obj = CONTINUE;
                if (visit != obj) {
                    return visit;
                }
                arrayList.add(superclass);
                Object visitInheritDocInterfaces2 = visitInheritDocInterfaces(arrayList, superclass);
                if (visitInheritDocInterfaces2 != obj) {
                    return visitInheritDocInterfaces2;
                }
            }
            return null;
        }
    }

    public static class SelectionTypeNameMatchRequestorWrapper extends TypeNameMatchRequestorWrapper {
        private boolean importCachesNodeInitialized;
        private ImportReference[] importReferences;
        private char[][][] importsNodeCache;
        private int importsNodeCacheCount;
        private ObjectVector notImportedFound;
        private HashtableOfObject onDemandFound;
        private ImportReference[] onDemandImportsNodeCache;
        private int onDemandImportsNodeCacheCount;

        public class AcceptedType {
            public AccessRestriction access;
            public int modifiers;
            public char[] packageName;
            public String path;
            public char[] simpleTypeName;

            public AcceptedType(int i10, char[] cArr, char[] cArr2, String str, AccessRestriction accessRestriction) {
                this.modifiers = i10;
                this.packageName = cArr;
                this.simpleTypeName = cArr2;
                this.path = str;
                this.access = accessRestriction;
            }
        }

        public SelectionTypeNameMatchRequestorWrapper(TypeNameMatchRequestor typeNameMatchRequestor, IJavaSearchScope iJavaSearchScope, ImportReference[] importReferenceArr) {
            super(typeNameMatchRequestor, iJavaSearchScope);
            this.importCachesNodeInitialized = false;
            this.onDemandFound = new HashtableOfObject();
            this.notImportedFound = new ObjectVector();
            this.importReferences = importReferenceArr;
        }

        public void acceptNotImported() {
            int size = this.notImportedFound.size();
            for (int i10 = 0; i10 < size; i10++) {
                AcceptedType acceptedType = (AcceptedType) this.notImportedFound.elementAt(i10);
                if (this.onDemandFound.get(acceptedType.simpleTypeName) == null) {
                    super.acceptType(acceptedType.modifiers, acceptedType.packageName, acceptedType.simpleTypeName, null, acceptedType.path, acceptedType.access);
                }
            }
        }

        @Override
        public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
            if (cArr3 == null || cArr3.length <= 0) {
                if (!this.importCachesNodeInitialized) {
                    initializeImportNodeCaches();
                }
                char[] concat = CharOperation.concat(cArr, cArr2, '.');
                for (int i11 = 0; i11 < this.importsNodeCacheCount; i11++) {
                    char[][] cArr4 = this.importsNodeCache[i11];
                    if (CharOperation.equals(cArr4[0], cArr2)) {
                        if (CharOperation.equals(cArr4[1], concat)) {
                            super.acceptType(i10, cArr, cArr2, cArr3, str, accessRestriction);
                            return;
                        }
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.onDemandImportsNodeCacheCount; i12++) {
                    if (CharOperation.equals(CharOperation.concatWith(this.onDemandImportsNodeCache[i12].tokens, '.'), cArr)) {
                        this.onDemandFound.put(cArr2, cArr2);
                        super.acceptType(i10, cArr, cArr2, cArr3, str, accessRestriction);
                        return;
                    }
                }
                this.notImportedFound.add(new AcceptedType(i10, cArr, cArr2, str, accessRestriction));
            }
        }

        public void initializeImportNodeCaches() {
            ImportReference[] importReferenceArr = this.importReferences;
            int length = importReferenceArr == null ? 0 : importReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                ImportReference importReference = this.importReferences[i10];
                if ((importReference.bits & 131072) != 0) {
                    if (this.onDemandImportsNodeCache == null) {
                        this.onDemandImportsNodeCache = new ImportReference[length - i10];
                    }
                    ImportReference[] importReferenceArr2 = this.onDemandImportsNodeCache;
                    int i11 = this.onDemandImportsNodeCacheCount;
                    this.onDemandImportsNodeCacheCount = i11 + 1;
                    importReferenceArr2[i11] = importReference;
                } else {
                    if (this.importsNodeCache == null) {
                        this.importsNodeCache = new char[length - i10][];
                    }
                    char[][][] cArr = this.importsNodeCache;
                    int i12 = this.importsNodeCacheCount;
                    this.importsNodeCacheCount = i12 + 1;
                    char[][] cArr2 = importReference.tokens;
                    cArr[i12] = new char[][]{cArr2[cArr2.length - 1], CharOperation.concatWith(cArr2, '.')};
                }
            }
            this.importCachesNodeInitialized = true;
        }
    }

    public SelectionEngine(SearchableEnvironment searchableEnvironment, ISelectionRequestor iSelectionRequestor, Map map, WorkingCopyOwner workingCopyOwner) {
        super(map);
        this.noProposal = true;
        this.problem = null;
        this.requestor = iSelectionRequestor;
        this.nameEnvironment = searchableEnvironment;
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, new DefaultProblemFactory(Locale.getDefault())) {
            @Override
            public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15) {
                CategorizedProblem createProblem = super.createProblem(cArr, i10, strArr, strArr2, i11, i12, i13, i14, i15);
                if (SelectionEngine.this.problem == null && createProblem.isError() && (createProblem.getID() & 1073741824) == 0) {
                    SelectionEngine.this.problem = createProblem;
                }
                return createProblem;
            }
        };
        this.lookupEnvironment = new LookupEnvironment(this, this.compilerOptions, problemReporter, searchableEnvironment);
        this.parser = new SelectionParser(problemReporter);
        this.owner = workingCopyOwner;
    }

    private void acceptPackageVisibilityStatements(PackageVisibilityStatement[] packageVisibilityStatementArr, Scope scope) {
        if (packageVisibilityStatementArr != null) {
            for (PackageVisibilityStatement packageVisibilityStatement : packageVisibilityStatementArr) {
                ImportReference importReference = packageVisibilityStatement.pkgRef;
                if (importReference instanceof SelectionOnPackageVisibilityReference) {
                    this.noProposal = false;
                    this.requestor.acceptPackage(CharOperation.concatWith(((SelectionOnPackageVisibilityReference) importReference).tokens, '.'));
                }
            }
        }
    }

    private void acceptQualifiedTypes() {
        if (this.acceptedClasses != null) {
            this.acceptedAnswer = true;
            for (int i10 = 0; i10 < this.acceptedClassesCount; i10++) {
                this.noProposal = false;
                ISelectionRequestor iSelectionRequestor = this.requestor;
                char[][] cArr = this.acceptedClasses[i10];
                iSelectionRequestor.acceptType(cArr[0], cArr[1], this.acceptedClassesModifiers[i10], false, null, this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedClasses = null;
            this.acceptedClassesModifiers = null;
            this.acceptedClassesCount = 0;
        }
        if (this.acceptedInterfaces != null) {
            this.acceptedAnswer = true;
            for (int i11 = 0; i11 < this.acceptedInterfacesCount; i11++) {
                this.noProposal = false;
                ISelectionRequestor iSelectionRequestor2 = this.requestor;
                char[][] cArr2 = this.acceptedInterfaces[i11];
                iSelectionRequestor2.acceptType(cArr2[0], cArr2[1], this.acceptedInterfacesModifiers[i11], false, null, this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedInterfaces = null;
            this.acceptedInterfacesModifiers = null;
            this.acceptedInterfacesCount = 0;
        }
        if (this.acceptedAnnotations != null) {
            this.acceptedAnswer = true;
            for (int i12 = 0; i12 < this.acceptedAnnotationsCount; i12++) {
                this.noProposal = false;
                ISelectionRequestor iSelectionRequestor3 = this.requestor;
                char[][] cArr3 = this.acceptedAnnotations[i12];
                iSelectionRequestor3.acceptType(cArr3[0], cArr3[1], this.acceptedAnnotationsModifiers[i12], false, null, this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedAnnotations = null;
            this.acceptedAnnotationsModifiers = null;
            this.acceptedAnnotationsCount = 0;
        }
        if (this.acceptedEnums != null) {
            this.acceptedAnswer = true;
            for (int i13 = 0; i13 < this.acceptedEnumsCount; i13++) {
                this.noProposal = false;
                ISelectionRequestor iSelectionRequestor4 = this.requestor;
                char[][] cArr4 = this.acceptedEnums[i13];
                iSelectionRequestor4.acceptType(cArr4[0], cArr4[1], this.acceptedEnumsModifiers[i13], false, null, this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedEnums = null;
            this.acceptedEnumsModifiers = null;
            this.acceptedEnumsCount = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0109, code lost:
    
        r0 = r21;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:62:0x00de. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0210 A[LOOP:4: B:140:0x0162->B:159:0x0210, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0123 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[LOOP:2: B:56:0x00d0->B:72:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean checkSelection(char[] cArr, int i10, int i11, boolean z10) {
        int i12;
        char[] cArr2;
        Scanner scanner;
        SelectionEngine selectionEngine;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        char c10;
        int i18 = i10;
        int i19 = i11;
        CompilerOptions compilerOptions = this.compilerOptions;
        Scanner scanner2 = r15;
        Scanner scanner3 = new Scanner(false, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, true);
        scanner2.setSource(cArr);
        if (i18 > i19) {
            int length = cArr.length - 1;
            int i20 = i18 - 1;
            int i21 = i18;
            while (i20 > 0) {
                try {
                    char c11 = cArr[i20];
                    if (c11 == '\\' && cArr[i20 + 1] == 'u') {
                        int i22 = i20 + 2;
                        while (true) {
                            c10 = cArr[i22];
                            if (c10 != 'u') {
                                break;
                            }
                            i22++;
                        }
                        int i23 = i22 + 3;
                        if (length < i23) {
                            if (i23 >= cArr.length) {
                                return false;
                            }
                            length = i23;
                        }
                        int i24 = i22 + 1;
                        int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
                        if (hexadecimalValue <= 15 && hexadecimalValue >= 0) {
                            int i25 = i22 + 2;
                            int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr[i24]);
                            if (hexadecimalValue2 <= 15 && hexadecimalValue2 >= 0) {
                                int i26 = i22 + 3;
                                int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr[i25]);
                                if (hexadecimalValue3 <= 15 && hexadecimalValue3 >= 0) {
                                    int i27 = i22 + 4;
                                    int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr[i26]);
                                    if (hexadecimalValue4 <= 15 && hexadecimalValue4 >= 0) {
                                        c11 = (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                                        i17 = i27;
                                    }
                                }
                            }
                        }
                        return false;
                    }
                    i17 = i20 + 1;
                    if (c11 != '\n' && c11 != '\r' && c11 != '\"' && c11 != '\'') {
                        if (c11 != '-') {
                            if (c11 != '/') {
                                if (c11 == ':' && cArr[i17] == ':') {
                                    i14 = i17 - 1;
                                    break;
                                }
                                i20--;
                                i21 = i17;
                            }
                        } else {
                            if (cArr[i17] == '>') {
                                i14 = i17 - 1;
                                break;
                            }
                            i20--;
                            i21 = i17;
                        }
                    }
                    i14 = i17;
                    break;
                } catch (ArrayIndexOutOfBoundsException | InvalidInputException unused) {
                    return false;
                }
            }
            i14 = i21;
            scanner2.resetTo(i14, length, z10);
            while (true) {
                int nextToken = scanner2.getNextToken();
                if (nextToken != 7) {
                    if (nextToken != 22) {
                        if (nextToken != 98) {
                            switch (nextToken) {
                                case 34:
                                case 35:
                                case 36:
                                    break;
                                default:
                                    if (nextToken == 61) {
                                        i13 = -1;
                                        i12 = -1;
                                        cArr2 = null;
                                        break;
                                    }
                            }
                        }
                    }
                    if (scanner2.startPosition <= i18 && i18 <= (i16 = scanner2.currentPosition)) {
                        int i28 = scanner2.eofPosition;
                        if (i16 == i28) {
                            scanner2.eofPosition = scanner2.source.length;
                            do {
                            } while (scanner2.getNextCharAsJavaIdentifierPart());
                            scanner2.eofPosition = i28;
                        }
                        i12 = scanner2.startPosition;
                        i13 = scanner2.currentPosition - 1;
                        cArr2 = scanner2.getCurrentTokenSource();
                    }
                    if (nextToken == 61) {
                    }
                }
                int i29 = scanner2.startPosition;
                if (i29 <= i18 && i18 <= (i15 = scanner2.currentPosition)) {
                    cArr2 = scanner2.getCurrentTokenSource();
                    selectionEngine = this;
                    i13 = i15 - 1;
                    i12 = i29;
                }
                if (nextToken == 61) {
                }
            }
        } else {
            if (i18 == i19 && i18 > 0 && i19 < cArr.length - 1) {
                char c12 = cArr[i18];
                if ((c12 == '>' && cArr[i18 - 1] == '-') || (c12 == ':' && cArr[i18 - 1] == ':')) {
                    i18--;
                } else if ((c12 == '-' && cArr[i19 + 1] == '>') || (c12 == ':' && cArr[i19 + 1] == ':')) {
                    i19++;
                }
            }
            scanner2.resetTo(i18, i19, z10);
            boolean z11 = true;
            i12 = -1;
            cArr2 = null;
            int i30 = -1;
            while (true) {
                try {
                    int nextToken2 = scanner2.getNextToken();
                    if (nextToken2 == 1) {
                        scanner = scanner2;
                        selectionEngine = this;
                    } else if (nextToken2 != 7) {
                        if (nextToken2 != 11) {
                            if (nextToken2 != 22) {
                                if (nextToken2 == 61) {
                                    scanner = scanner2;
                                    selectionEngine = this;
                                    if (z11) {
                                        return false;
                                    }
                                } else {
                                    if (nextToken2 == 98) {
                                        if (i18 < scanner2.startPosition || i19 >= scanner2.currentPosition) {
                                            return false;
                                        }
                                        this.actualSelectionStart = i18;
                                        this.actualSelectionEnd = i19;
                                        this.selectedIdentifier = CharOperation.NO_CHAR;
                                        return true;
                                    }
                                    switch (nextToken2) {
                                        case 34:
                                        case 35:
                                        case 36:
                                            break;
                                        case 37:
                                            if (scanner2.startPosition == scanner2.initialPosition) {
                                                scanner = scanner2;
                                                selectionEngine = this;
                                                break;
                                            } else {
                                                return false;
                                            }
                                        default:
                                            return false;
                                    }
                                }
                            }
                            scanner = scanner2;
                            selectionEngine = this;
                            if (!z11) {
                                return false;
                            }
                            char[] currentTokenSource = scanner.getCurrentTokenSource();
                            int i31 = scanner.startPosition;
                            int i32 = scanner.currentPosition - 1;
                            if (i32 > i19) {
                                currentTokenSource = CharOperation.subarray(currentTokenSource, 0, (i19 - i31) + 1);
                                i32 = i19;
                            }
                            cArr2 = currentTokenSource;
                            i12 = i31;
                            i30 = i32;
                            z11 = false;
                        } else {
                            scanner = scanner2;
                            selectionEngine = this;
                            if (!selectionEngine.checkTypeArgument(scanner)) {
                                return false;
                            }
                        }
                        if (nextToken2 != 61) {
                            i13 = i30;
                        } else {
                            scanner2 = scanner;
                        }
                    } else {
                        scanner = scanner2;
                        selectionEngine = this;
                        if (i18 >= scanner.startPosition && i19 < scanner.currentPosition) {
                            selectionEngine.actualSelectionStart = i18;
                            selectionEngine.actualSelectionEnd = i19;
                            selectionEngine.selectedIdentifier = CharOperation.NO_CHAR;
                            return true;
                        }
                    }
                    if (z11) {
                        return false;
                    }
                    z11 = true;
                    if (nextToken2 != 61) {
                    }
                } catch (InvalidInputException unused2) {
                    return false;
                }
            }
        }
        if (i12 <= 0) {
            return false;
        }
        selectionEngine.actualSelectionStart = i12;
        selectionEngine.actualSelectionEnd = i13;
        selectionEngine.selectedIdentifier = cArr2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean checkTypeArgument(Scanner scanner) {
        int nextToken;
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = 1;
        do {
            try {
                nextToken = scanner.getNextToken();
                if (nextToken == 11) {
                    i10++;
                    stringBuffer.append(scanner.getCurrentTokenSource());
                } else if (nextToken != 32) {
                    if (nextToken != 34 && nextToken != 86) {
                        switch (nextToken) {
                            case 14:
                                i10 -= 2;
                                stringBuffer.append(scanner.getCurrentTokenSource());
                                break;
                            case 15:
                                i10--;
                                stringBuffer.append(scanner.getCurrentTokenSource());
                                break;
                            case 16:
                                i10 -= 3;
                                stringBuffer.append(scanner.getCurrentTokenSource());
                                break;
                            default:
                                stringBuffer.append(scanner.getCurrentTokenSource());
                                break;
                        }
                    } else {
                        stringBuffer.append(C15883c.f126249O);
                        stringBuffer.append(scanner.getCurrentTokenSource());
                        stringBuffer.append(C15883c.f126249O);
                    }
                } else if (i10 == 1) {
                    int length = stringBuffer.length();
                    char[] cArr = new char[length];
                    stringBuffer.getChars(0, length, cArr, 0);
                    try {
                        Signature.createTypeSignature(cArr, true);
                        stringBuffer = new StringBuffer();
                    } catch (IllegalArgumentException unused) {
                        return false;
                    }
                }
            } catch (IllegalArgumentException | InvalidInputException unused2) {
            }
            if (i10 < 0) {
                return false;
            }
            if (i10 != 0) {
            }
            if (i10 == 0) {
                int length2 = stringBuffer.length() - 1;
                char[] cArr2 = new char[length2];
                stringBuffer.getChars(0, length2, cArr2, 0);
                Signature.createTypeSignature(cArr2, true);
                return true;
            }
            return false;
        } while (nextToken != 61);
        if (i10 == 0) {
        }
        return false;
    }

    private void findAllTypes(char[] cArr) {
        try {
            IProgressMonitor iProgressMonitor = new IProgressMonitor() {
                boolean isCanceled = false;

                public void beginTask(String str, int i10) {
                }

                public void done() {
                }

                public void internalWorked(double d10) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean z10) {
                    this.isCanceled = z10;
                }

                public void setTaskName(String str) {
                }

                public void subTask(String str) {
                }

                public void worked(int i10) {
                }
            };
            TypeNameMatchRequestor typeNameMatchRequestor = new TypeNameMatchRequestor() {
                @Override
                public void acceptTypeNameMatch(TypeNameMatch typeNameMatch) {
                    SelectionEngine selectionEngine = SelectionEngine.this;
                    ISelectionRequestor iSelectionRequestor = selectionEngine.requestor;
                    if (iSelectionRequestor instanceof SelectionRequestor) {
                        selectionEngine.noProposal = false;
                        ((SelectionRequestor) iSelectionRequestor).acceptType(typeNameMatch.getType());
                    }
                }
            };
            IJavaSearchScope createWorkspaceScope = BasicSearchEngine.createWorkspaceScope();
            CompilationUnitScope compilationUnitScope = this.unitScope;
            ICompilationUnit[] iCompilationUnitArr = null;
            SelectionTypeNameMatchRequestorWrapper selectionTypeNameMatchRequestorWrapper = new SelectionTypeNameMatchRequestorWrapper(typeNameMatchRequestor, createWorkspaceScope, compilationUnitScope == null ? null : compilationUnitScope.referenceContext.imports);
            if (this.owner != null) {
                iCompilationUnitArr = JavaModelManager.getJavaModelManager().getWorkingCopies(this.owner, true);
            }
            try {
                new BasicSearchEngine(iCompilationUnitArr).searchAllTypeNames(null, 0, cArr, 8, 0, createWorkspaceScope, selectionTypeNameMatchRequestorWrapper, 2, iProgressMonitor);
            } catch (OperationCanceledException unused) {
            }
            selectionTypeNameMatchRequestorWrapper.acceptNotImported();
        } catch (JavaModelException unused2) {
        }
    }

    private Object findMethodWithAttachedDocInHierarchy(final MethodBinding methodBinding) throws JavaModelException {
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        final SelectionRequestor selectionRequestor = (SelectionRequestor) this.requestor;
        return new InheritDocVisitor() {
            @Override
            public Object visit(ReferenceBinding referenceBinding2) throws JavaModelException {
                MethodBinding findOverriddenMethodInType = SelectionEngine.this.findOverriddenMethodInType(referenceBinding2, methodBinding);
                if (findOverriddenMethodInType == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                TypeBinding[] typeBindingArr = findOverriddenMethodInType.parameters;
                String[] strArr = new String[typeBindingArr.length];
                for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
                    strArr[i10] = Signature.createTypeSignature(typeBindingArr[i10].sourceName(), false);
                }
                IMember iMember = (IMember) selectionRequestor.findMethodFromBinding(findOverriddenMethodInType, strArr, findOverriddenMethodInType.declaringClass);
                if (iMember == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                if (iMember.getAttachedJavadoc(null) != null) {
                    return findOverriddenMethodInType;
                }
                IOpenable openable = iMember.getOpenable();
                if (openable == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                IBuffer buffer = openable.getBuffer();
                if (buffer == null) {
                    return InheritDocVisitor.STOP_BRANCH;
                }
                ISourceRange javadocRange = iMember.getJavadocRange();
                return (javadocRange == null || buffer.getText(javadocRange.getOffset(), javadocRange.getLength()) == null) ? InheritDocVisitor.CONTINUE : findOverriddenMethodInType;
            }
        }.visitInheritDoc(referenceBinding);
    }

    private MethodBinding getCorrectMethodBinding(MethodBinding methodBinding) {
        JavadocParser javadocParser = this.parser.javadocParser;
        if (!(javadocParser instanceof SelectionJavadocParser) || !((SelectionJavadocParser) javadocParser).inheritDocTagSelected) {
            return methodBinding;
        }
        try {
            Object findMethodWithAttachedDocInHierarchy = findMethodWithAttachedDocInHierarchy(methodBinding);
            return findMethodWithAttachedDocInHierarchy instanceof MethodBinding ? (MethodBinding) findMethodWithAttachedDocInHierarchy : methodBinding;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    private boolean isLocal(ReferenceBinding referenceBinding) {
        if (referenceBinding instanceof ParameterizedTypeBinding) {
            return isLocal(((ParameterizedTypeBinding) referenceBinding).genericType());
        }
        if (!(referenceBinding instanceof SourceTypeBinding)) {
            return false;
        }
        if (referenceBinding instanceof LocalTypeBinding) {
            return true;
        }
        if (referenceBinding instanceof MemberTypeBinding) {
            return isLocal(((MemberTypeBinding) referenceBinding).enclosingType);
        }
        return false;
    }

    private boolean selectDeclaration(CompilationUnitDeclaration compilationUnitDeclaration) {
        char[] assistIdentifier = getParser().assistIdentifier();
        if (assistIdentifier == null) {
            return false;
        }
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        char[] concatWith = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.tokens, '.');
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (selectDeclaration(typeDeclarationArr[i10], assistIdentifier, concatWith)) {
                return true;
            }
        }
        return false;
    }

    private void selectFrom(Binding binding, CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        selectFrom(binding, compilationUnitDeclaration, null, z10);
    }

    private void selectLocalDeclaration(ASTNode aSTNode) {
        final char[] assistIdentifier = getParser().assistIdentifier();
        if (assistIdentifier == null) {
            return;
        }
        if (aSTNode instanceof AbstractMethodDeclaration) {
            ((AbstractMethodDeclaration) aSTNode).traverse(new ASTVisitor() {
                @Override
                public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
                    if (constructorDeclaration.selector != assistIdentifier) {
                        return true;
                    }
                    if (constructorDeclaration.binding == null) {
                        if (constructorDeclaration.scope == null) {
                            return true;
                        }
                        throw new SelectionNodeFound(new MethodBinding(constructorDeclaration.modifiers, constructorDeclaration.selector, null, null, null, constructorDeclaration.scope.referenceType().binding));
                    }
                    throw new SelectionNodeFound(constructorDeclaration.binding);
                }

                @Override
                public boolean visit(LocalDeclaration localDeclaration, BlockScope blockScope) {
                    TypeReference typeReference = localDeclaration.type;
                    if (!(typeReference instanceof SingleTypeReference) || ((SingleTypeReference) typeReference).token != assistIdentifier) {
                        return true;
                    }
                    if (localDeclaration.binding != null) {
                        throw new SelectionNodeFound(localDeclaration.binding.type);
                    }
                    throw new SelectionNodeFound();
                }

                @Override
                public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
                    if (fieldDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(fieldDeclaration.binding);
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
                    if (methodDeclaration.selector != assistIdentifier) {
                        return true;
                    }
                    if (methodDeclaration.binding == null) {
                        if (methodDeclaration.scope == null) {
                            return true;
                        }
                        throw new SelectionNodeFound(new MethodBinding(methodDeclaration.modifiers, methodDeclaration.selector, null, null, null, methodDeclaration.scope.referenceType().binding));
                    }
                    throw new SelectionNodeFound(methodDeclaration.binding);
                }

                @Override
                public boolean visit(Argument argument, BlockScope blockScope) {
                    TypeReference typeReference = argument.type;
                    if ((typeReference instanceof SingleTypeReference) && ((SingleTypeReference) typeReference).token == assistIdentifier) {
                        throw new SelectionNodeFound(argument.binding.type);
                    }
                    return true;
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(TypeParameter typeParameter, BlockScope blockScope) {
                    if (typeParameter.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeParameter.binding);
                }

                @Override
                public boolean visit(TypeParameter typeParameter, ClassScope classScope) {
                    if (typeParameter.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeParameter.binding);
                }
            }, (ClassScope) null);
        } else {
            ((FieldDeclaration) aSTNode).traverse(new ASTVisitor() {
                @Override
                public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
                    if (constructorDeclaration.selector != assistIdentifier) {
                        return true;
                    }
                    if (constructorDeclaration.binding == null) {
                        if (constructorDeclaration.scope == null) {
                            return true;
                        }
                        throw new SelectionNodeFound(new MethodBinding(constructorDeclaration.modifiers, constructorDeclaration.selector, null, null, null, constructorDeclaration.scope.referenceType().binding));
                    }
                    throw new SelectionNodeFound(constructorDeclaration.binding);
                }

                @Override
                public boolean visit(LocalDeclaration localDeclaration, BlockScope blockScope) {
                    TypeReference typeReference = localDeclaration.type;
                    if (!(typeReference instanceof SingleTypeReference) || ((SingleTypeReference) typeReference).token != assistIdentifier) {
                        return true;
                    }
                    if (localDeclaration.binding != null) {
                        throw new SelectionNodeFound(localDeclaration.binding.type);
                    }
                    throw new SelectionNodeFound();
                }

                @Override
                public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
                    if (fieldDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(fieldDeclaration.binding);
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
                    if (methodDeclaration.selector != assistIdentifier) {
                        return true;
                    }
                    if (methodDeclaration.binding == null) {
                        if (methodDeclaration.scope == null) {
                            return true;
                        }
                        throw new SelectionNodeFound(new MethodBinding(methodDeclaration.modifiers, methodDeclaration.selector, null, null, null, methodDeclaration.scope.referenceType().binding));
                    }
                    throw new SelectionNodeFound(methodDeclaration.binding);
                }

                @Override
                public boolean visit(Argument argument, BlockScope blockScope) {
                    TypeReference typeReference = argument.type;
                    if ((typeReference instanceof SingleTypeReference) && ((SingleTypeReference) typeReference).token == assistIdentifier) {
                        throw new SelectionNodeFound(argument.binding.type);
                    }
                    return true;
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                    if (typeDeclaration.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }

                @Override
                public boolean visit(TypeParameter typeParameter, BlockScope blockScope) {
                    if (typeParameter.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeParameter.binding);
                }

                @Override
                public boolean visit(TypeParameter typeParameter, ClassScope classScope) {
                    if (typeParameter.name != assistIdentifier) {
                        return true;
                    }
                    throw new SelectionNodeFound(typeParameter.binding);
                }
            }, (MethodScope) null);
        }
    }

    private void selectMemberTypeFromImport(CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr, ReferenceBinding referenceBinding, boolean z10) {
        int length = cArr.length;
        for (ReferenceBinding referenceBinding2 : referenceBinding.memberTypes()) {
            if (length <= referenceBinding2.sourceName.length && ((!z10 || referenceBinding2.isStatic()) && CharOperation.equals(cArr, referenceBinding2.sourceName, true))) {
                selectFrom(referenceBinding2, compilationUnitDeclaration, false);
            }
        }
    }

    private void selectStaticFieldFromStaticImport(CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr, ReferenceBinding referenceBinding) {
        int length = cArr.length;
        for (FieldBinding fieldBinding : referenceBinding.availableFields()) {
            if (length <= fieldBinding.name.length && !fieldBinding.isSynthetic() && fieldBinding.isStatic() && CharOperation.equals(cArr, fieldBinding.name, true)) {
                selectFrom(fieldBinding, compilationUnitDeclaration, false);
            }
        }
    }

    private void selectStaticMethodFromStaticImport(CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr, ReferenceBinding referenceBinding) {
        int length = cArr.length;
        for (MethodBinding methodBinding : referenceBinding.availableMethods()) {
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor() && methodBinding.isStatic()) {
                char[] cArr2 = methodBinding.selector;
                if (length <= cArr2.length && CharOperation.equals(cArr, cArr2, true)) {
                    selectFrom(methodBinding, compilationUnitDeclaration, false);
                }
            }
        }
    }

    @Override
    public void acceptConstructor(int i10, char[] cArr, int i11, char[] cArr2, char[][] cArr3, char[][] cArr4, int i12, char[] cArr5, int i13, String str, AccessRestriction accessRestriction) {
    }

    @Override
    public void acceptModule(char[] cArr) {
    }

    @Override
    public void acceptPackage(char[] cArr) {
    }

    @Override
    public void acceptType(char[] cArr, char[] cArr2, char[][] cArr3, int i10, AccessRestriction accessRestriction) {
        char[] concat = cArr3 == null ? cArr2 : CharOperation.concat(CharOperation.concatWith(cArr3, '.'), cArr2, '.');
        if (CharOperation.equals(cArr2, this.selectedIdentifier)) {
            if (!mustQualifyType(cArr, cArr2, (cArr3 == null || cArr3.length == 0) ? null : CharOperation.concatWith(cArr3, '.'), i10)) {
                this.noProposal = false;
                this.requestor.acceptType(cArr, concat, i10, false, null, this.actualSelectionStart, this.actualSelectionEnd);
                this.acceptedAnswer = true;
                return;
            }
            int i11 = i10 & 25088;
            if (i11 == 512) {
                char[][] cArr4 = {cArr, concat};
                if (this.acceptedInterfaces == null) {
                    this.acceptedInterfaces = new char[10][];
                    this.acceptedInterfacesModifiers = new int[10];
                    this.acceptedInterfacesCount = 0;
                }
                char[][][] cArr5 = this.acceptedInterfaces;
                int length = cArr5.length;
                if (length == this.acceptedInterfacesCount) {
                    int i12 = (length + 1) * 2;
                    char[][][] cArr6 = new char[i12][];
                    this.acceptedInterfaces = cArr6;
                    System.arraycopy(cArr5, 0, cArr6, 0, length);
                    int[] iArr = this.acceptedInterfacesModifiers;
                    int[] iArr2 = new int[i12];
                    this.acceptedInterfacesModifiers = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                }
                int[] iArr3 = this.acceptedInterfacesModifiers;
                int i13 = this.acceptedInterfacesCount;
                iArr3[i13] = i10;
                char[][][] cArr7 = this.acceptedInterfaces;
                this.acceptedInterfacesCount = i13 + 1;
                cArr7[i13] = cArr4;
                return;
            }
            if (i11 == 8192 || i11 == 8704) {
                char[][] cArr8 = {cArr, concat};
                if (this.acceptedAnnotations == null) {
                    this.acceptedAnnotations = new char[10][];
                    this.acceptedAnnotationsModifiers = new int[10];
                    this.acceptedAnnotationsCount = 0;
                }
                char[][][] cArr9 = this.acceptedAnnotations;
                int length2 = cArr9.length;
                if (length2 == this.acceptedAnnotationsCount) {
                    int i14 = (length2 + 1) * 2;
                    char[][][] cArr10 = new char[i14][];
                    this.acceptedAnnotations = cArr10;
                    System.arraycopy(cArr9, 0, cArr10, 0, length2);
                    int[] iArr4 = this.acceptedAnnotationsModifiers;
                    int[] iArr5 = new int[i14];
                    this.acceptedAnnotationsModifiers = iArr5;
                    System.arraycopy(iArr4, 0, iArr5, 0, length2);
                }
                int[] iArr6 = this.acceptedAnnotationsModifiers;
                int i15 = this.acceptedAnnotationsCount;
                iArr6[i15] = i10;
                char[][][] cArr11 = this.acceptedAnnotations;
                this.acceptedAnnotationsCount = i15 + 1;
                cArr11[i15] = cArr8;
                return;
            }
            if (i11 != 16384) {
                char[][] cArr12 = {cArr, concat};
                if (this.acceptedClasses == null) {
                    this.acceptedClasses = new char[10][];
                    this.acceptedClassesModifiers = new int[10];
                    this.acceptedClassesCount = 0;
                }
                char[][][] cArr13 = this.acceptedClasses;
                int length3 = cArr13.length;
                if (length3 == this.acceptedClassesCount) {
                    int i16 = (length3 + 1) * 2;
                    char[][][] cArr14 = new char[i16][];
                    this.acceptedClasses = cArr14;
                    System.arraycopy(cArr13, 0, cArr14, 0, length3);
                    int[] iArr7 = this.acceptedClassesModifiers;
                    int[] iArr8 = new int[i16];
                    this.acceptedClassesModifiers = iArr8;
                    System.arraycopy(iArr7, 0, iArr8, 0, length3);
                }
                int[] iArr9 = this.acceptedClassesModifiers;
                int i17 = this.acceptedClassesCount;
                iArr9[i17] = i10;
                char[][][] cArr15 = this.acceptedClasses;
                this.acceptedClassesCount = i17 + 1;
                cArr15[i17] = cArr12;
                return;
            }
            char[][] cArr16 = {cArr, concat};
            if (this.acceptedEnums == null) {
                this.acceptedEnums = new char[10][];
                this.acceptedEnumsModifiers = new int[10];
                this.acceptedEnumsCount = 0;
            }
            char[][][] cArr17 = this.acceptedEnums;
            int length4 = cArr17.length;
            if (length4 == this.acceptedEnumsCount) {
                int i18 = (length4 + 1) * 2;
                char[][][] cArr18 = new char[i18][];
                this.acceptedEnums = cArr18;
                System.arraycopy(cArr17, 0, cArr18, 0, length4);
                int[] iArr10 = this.acceptedEnumsModifiers;
                int[] iArr11 = new int[i18];
                this.acceptedEnumsModifiers = iArr11;
                System.arraycopy(iArr10, 0, iArr11, 0, length4);
            }
            int[] iArr12 = this.acceptedEnumsModifiers;
            int i19 = this.acceptedEnumsCount;
            iArr12[i19] = i10;
            char[][][] cArr19 = this.acceptedEnums;
            this.acceptedEnumsCount = i19 + 1;
            cArr19[i19] = cArr16;
        }
    }

    public MethodBinding findOverriddenMethodInType(ReferenceBinding referenceBinding, MethodBinding methodBinding) throws JavaModelException {
        if (referenceBinding == null) {
            return null;
        }
        MethodBinding[] availableMethods = referenceBinding.availableMethods();
        LookupEnvironment lookupEnvironment = this.lookupEnvironment;
        if (lookupEnvironment != null && availableMethods != null) {
            for (int i10 = 0; i10 < availableMethods.length; i10++) {
                if (lookupEnvironment.methodVerifier().isMethodSubsignature(methodBinding, availableMethods[i10])) {
                    return availableMethods[i10];
                }
            }
        }
        return null;
    }

    @Override
    public AssistParser getParser() {
        return this.parser;
    }

    public void select(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, int i10, int i11) {
        CategorizedProblem categorizedProblem;
        ModuleDeclaration moduleDeclaration;
        CategorizedProblem categorizedProblem2;
        Binding typeOrPackage;
        char[] contents = iCompilationUnit.getContents();
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.print("SELECTION IN ");
            printStream.print(iCompilationUnit.getFileName());
            printStream.print(" FROM ");
            printStream.print(i10);
            printStream.print(" TO ");
            printStream.println(i11);
            printStream.println("SELECTION - Source :");
            printStream.println(contents);
        }
        if (checkSelection(contents, i10, i11, CharOperation.endsWith(iCompilationUnit.getFileName(), TypeConstants.MODULE_INFO_FILE_NAME))) {
            if (DEBUG) {
                PrintStream printStream2 = System.out;
                printStream2.print("SELECTION - Checked : \"");
                int i12 = this.actualSelectionStart;
                printStream2.print(new String(contents, i12, (this.actualSelectionEnd - i12) + 1));
                printStream2.println('\"');
            }
            try {
                try {
                    try {
                        this.acceptedAnswer = false;
                        CompilationUnitDeclaration dietParse = this.parser.dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit), this.actualSelectionStart, this.actualSelectionEnd);
                        if (dietParse != null) {
                            if (DEBUG) {
                                PrintStream printStream3 = System.out;
                                printStream3.println("SELECTION - Diet AST :");
                                printStream3.println(dietParse.toString());
                            }
                            ImportReference importReference = dietParse.currentPackage;
                            if (importReference instanceof SelectionOnPackageReference) {
                                char[][] cArr = ((SelectionOnPackageReference) importReference).tokens;
                                this.noProposal = false;
                                this.requestor.acceptPackage(CharOperation.concatWith(cArr, '.'));
                                reset(true);
                                return;
                            }
                            ImportReference[] importReferenceArr = dietParse.imports;
                            if (importReferenceArr != null) {
                                for (ImportReference importReference2 : importReferenceArr) {
                                    if (importReference2 instanceof SelectionOnImportReference) {
                                        char[][] cArr2 = ((SelectionOnImportReference) importReference2).tokens;
                                        this.noProposal = false;
                                        this.requestor.acceptPackage(CharOperation.concatWith(cArr2, '.'));
                                        this.nameEnvironment.findTypes(CharOperation.concatWith(cArr2, '.'), false, false, 0, this);
                                        this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                        CompilationUnitScope compilationUnitScope = dietParse.scope;
                                        this.unitScope = compilationUnitScope;
                                        if (compilationUnitScope != null) {
                                            int length = cArr2.length - 1;
                                            char[] cArr3 = cArr2[length];
                                            char[][] subarray = CharOperation.subarray(cArr2, 0, length);
                                            if (subarray != null && subarray.length > 0 && (typeOrPackage = this.unitScope.getTypeOrPackage(subarray)) != null && (typeOrPackage instanceof ReferenceBinding)) {
                                                ReferenceBinding referenceBinding = (ReferenceBinding) typeOrPackage;
                                                selectMemberTypeFromImport(dietParse, cArr3, referenceBinding, importReference2.isStatic());
                                                if (importReference2.isStatic()) {
                                                    selectStaticFieldFromStaticImport(dietParse, cArr3, referenceBinding);
                                                    selectStaticMethodFromStaticImport(dietParse, cArr3, referenceBinding);
                                                }
                                            }
                                        }
                                        if (!this.acceptedAnswer) {
                                            acceptQualifiedTypes();
                                            if (!this.acceptedAnswer) {
                                                this.nameEnvironment.findTypes(this.selectedIdentifier, false, false, 0, this);
                                                if (!this.acceptedAnswer) {
                                                    acceptQualifiedTypes();
                                                }
                                            }
                                        }
                                        if (this.noProposal && (categorizedProblem2 = this.problem) != null) {
                                            this.requestor.acceptError(categorizedProblem2);
                                        }
                                        reset(true);
                                        return;
                                    }
                                }
                            }
                            try {
                                if (dietParse.isModuleInfo() && (moduleDeclaration = dietParse.moduleDeclaration) != null) {
                                    this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                    CompilationUnitScope compilationUnitScope2 = dietParse.scope;
                                    this.unitScope = compilationUnitScope2;
                                    if (compilationUnitScope2 != null) {
                                        this.lookupEnvironment.completeTypeBindings(dietParse, true);
                                    }
                                    moduleDeclaration.resolveModuleDirectives(dietParse.scope);
                                    moduleDeclaration.resolvePackageDirectives(dietParse.scope);
                                    moduleDeclaration.resolveTypeDirectives(dietParse.scope);
                                    acceptPackageVisibilityStatements(moduleDeclaration.exports, dietParse.scope);
                                    acceptPackageVisibilityStatements(moduleDeclaration.opens, dietParse.scope);
                                } else if (dietParse.types != null || dietParse.isPackageInfo()) {
                                    if (selectDeclaration(dietParse)) {
                                        reset(true);
                                        return;
                                    }
                                    this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                    CompilationUnitScope compilationUnitScope3 = dietParse.scope;
                                    this.unitScope = compilationUnitScope3;
                                    if (compilationUnitScope3 != null) {
                                        this.lookupEnvironment.completeTypeBindings(dietParse, true);
                                        LookupEnvironment lookupEnvironment = this.lookupEnvironment;
                                        CompilationUnitDeclaration compilationUnitDeclaration = lookupEnvironment.unitBeingCompleted;
                                        lookupEnvironment.unitBeingCompleted = dietParse;
                                        dietParse.scope.faultInTypes();
                                        this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                                        ASTNode parseBlockStatements = dietParse.types != null ? parseBlockStatements(dietParse, i10) : null;
                                        if (DEBUG) {
                                            PrintStream printStream4 = System.out;
                                            printStream4.println("SELECTION - AST :");
                                            printStream4.println(dietParse.toString());
                                        }
                                        dietParse.resolve();
                                        if (parseBlockStatements != null) {
                                            selectLocalDeclaration(parseBlockStatements);
                                        }
                                    }
                                }
                            } catch (SelectionNodeFound e10) {
                                if (e10.binding != null) {
                                    if (DEBUG) {
                                        PrintStream printStream5 = System.out;
                                        printStream5.println("SELECTION - Selection binding:");
                                        printStream5.println(e10.binding.toString());
                                    }
                                    selectFrom(e10.binding, dietParse, iCompilationUnit, e10.isDeclaration);
                                }
                            }
                        }
                        if (!this.acceptedAnswer) {
                            this.nameEnvironment.findTypes(this.selectedIdentifier, false, false, 0, this);
                            if (!this.acceptedAnswer) {
                                acceptQualifiedTypes();
                                if (this.noProposal) {
                                    findAllTypes(this.selectedIdentifier);
                                }
                            }
                        }
                        if (this.noProposal && (categorizedProblem = this.problem) != null) {
                            this.requestor.acceptError(categorizedProblem);
                        }
                    } catch (IndexOutOfBoundsException e11) {
                        if (DEBUG) {
                            PrintStream printStream6 = System.out;
                            printStream6.println("Exception caught by SelectionEngine:");
                            e11.printStackTrace(printStream6);
                        }
                    }
                } catch (AbortCompilation e12) {
                    if (DEBUG) {
                        PrintStream printStream7 = System.out;
                        printStream7.println("Exception caught by SelectionEngine:");
                        e12.printStackTrace(printStream7);
                    }
                }
                reset(true);
            } catch (Throwable th2) {
                reset(true);
                throw th2;
            }
        }
    }

    public void selectType(char[] cArr, IType iType) throws JavaModelException {
        TypeDeclaration typeDeclaration;
        CompilationUnitDeclaration compilationUnitDeclaration;
        ClassFileReader rawReadType;
        CategorizedProblem categorizedProblem;
        int i10;
        try {
            this.acceptedAnswer = false;
            if (CharOperation.indexOf('<', cArr) != -1) {
                cArr = Signature.toCharArray(Signature.getTypeErasure(Signature.createCharArrayTypeSignature(cArr, false)));
            }
            ICompilationUnit compilationUnit = iType.getCompilationUnit();
            if (compilationUnit != null) {
                IType[] types = compilationUnit.getTypes();
                int length = types.length;
                SourceTypeElementInfo[] sourceTypeElementInfoArr = new SourceTypeElementInfo[length];
                for (int i11 = 0; i11 < length; i11++) {
                    sourceTypeElementInfoArr[i11] = (SourceTypeElementInfo) ((SourceType) types[i11]).getElementInfo();
                }
                CompilationResult compilationResult = new CompilationResult((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) compilationUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit);
                if (!iType.isAnonymous() && !iType.isLocal()) {
                    i10 = 15;
                    compilationUnitDeclaration = SourceTypeConverter.buildCompilationUnit(sourceTypeElementInfoArr, i10, this.parser.problemReporter(), compilationResult);
                    if (compilationUnitDeclaration != null || compilationUnitDeclaration.types == null) {
                        typeDeclaration = null;
                    } else {
                        if (DEBUG) {
                            PrintStream printStream = System.out;
                            printStream.println("SELECTION - Diet AST :");
                            printStream.println(compilationUnitDeclaration.toString());
                        }
                        while (iType.isLambda() && iType.getParent() != null) {
                            iType = (IType) iType.getParent().getAncestor(7);
                        }
                        typeDeclaration = new ASTNodeFinder(compilationUnitDeclaration).findType(iType);
                    }
                }
                i10 = 47;
                compilationUnitDeclaration = SourceTypeConverter.buildCompilationUnit(sourceTypeElementInfoArr, i10, this.parser.problemReporter(), compilationResult);
                if (compilationUnitDeclaration != null) {
                }
                typeDeclaration = null;
            } else {
                IOrdinaryClassFile classFile = iType.getClassFile();
                if (classFile instanceof ClassFile) {
                    ClassFile classFile2 = (ClassFile) classFile;
                    if (classFile2.getPackageFragmentRoot() instanceof JrtPackageFragmentRoot) {
                        IBinaryType binaryTypeInfo = classFile2.getBinaryTypeInfo();
                        if (binaryTypeInfo instanceof ClassFileReader) {
                            rawReadType = (ClassFileReader) binaryTypeInfo;
                        }
                        rawReadType = null;
                    } else {
                        try {
                            rawReadType = BinaryTypeFactory.rawReadType(BinaryTypeFactory.createDescriptor(classFile2), false);
                        } catch (ClassFormatException e10) {
                            if (JavaCore.getPlugin().isDebugging()) {
                                e10.printStackTrace(System.err);
                            }
                        }
                    }
                    if (rawReadType == null) {
                        throw classFile2.newNotPresentException();
                    }
                    CompilationResult compilationResult2 = new CompilationResult(rawReadType.getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
                    CompilationUnitDeclaration compilationUnitDeclaration2 = new CompilationUnitDeclaration(this.parser.problemReporter(), compilationResult2, 0);
                    BinaryTypeConverter binaryTypeConverter = new BinaryTypeConverter(this.parser.problemReporter(), compilationResult2, new HashSetOfCharArrayArray());
                    typeDeclaration = binaryTypeConverter.buildTypeDeclaration(iType, compilationUnitDeclaration2);
                    compilationUnitDeclaration2.imports = binaryTypeConverter.buildImports(rawReadType);
                    compilationUnitDeclaration = compilationUnitDeclaration2;
                } else {
                    typeDeclaration = null;
                    compilationUnitDeclaration = null;
                }
            }
            if (typeDeclaration != null) {
                FieldDeclaration fieldDeclaration = new FieldDeclaration();
                int lastIndexOf = CharOperation.lastIndexOf('.', cArr);
                if (lastIndexOf == -1) {
                    this.selectedIdentifier = cArr;
                    fieldDeclaration.type = new SelectionOnSingleTypeReference(cArr, -1L);
                } else {
                    char[][] splitOn = CharOperation.splitOn('.', cArr, 0, lastIndexOf);
                    char[] subarray = CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length);
                    this.selectedIdentifier = subarray;
                    fieldDeclaration.type = new SelectionOnQualifiedTypeReference(splitOn, subarray, new long[splitOn.length + 1]);
                }
                fieldDeclaration.name = "<fakeField>".toCharArray();
                typeDeclaration.fields = new FieldDeclaration[]{fieldDeclaration};
                this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
                CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
                this.unitScope = compilationUnitScope;
                if (compilationUnitScope != null) {
                    try {
                        this.lookupEnvironment.completeTypeBindings(compilationUnitDeclaration, true);
                        compilationUnitDeclaration.scope.faultInTypes();
                        compilationUnitDeclaration.resolve();
                    } catch (SelectionNodeFound e11) {
                        if (e11.binding != null) {
                            if (DEBUG) {
                                PrintStream printStream2 = System.out;
                                printStream2.println("SELECTION - Selection binding :");
                                printStream2.println(e11.binding.toString());
                            }
                            selectFrom(e11.binding, compilationUnitDeclaration, e11.isDeclaration);
                        }
                    }
                }
            }
            if (this.noProposal && (categorizedProblem = this.problem) != null) {
                this.requestor.acceptError(categorizedProblem);
            }
        } catch (AbortCompilation unused) {
        } catch (Throwable th2) {
            reset(true);
            throw th2;
        }
        reset(true);
    }

    private void selectFrom(Binding binding, CompilationUnitDeclaration compilationUnitDeclaration, org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, boolean z10) {
        char[] computeUniqueKey;
        char[] cArr;
        char[] cArr2;
        int i10;
        ReferenceBinding referenceBinding;
        char[] cArr3;
        if (binding instanceof TypeVariableBinding) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) binding;
            Binding binding2 = typeVariableBinding.declaringElement;
            this.noProposal = false;
            if (binding2 instanceof SourceTypeBinding) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) binding2;
                if (isLocal(sourceTypeBinding)) {
                    ISelectionRequestor iSelectionRequestor = this.requestor;
                    if (iSelectionRequestor instanceof SelectionRequestor) {
                        ((SelectionRequestor) iSelectionRequestor).acceptLocalTypeParameter(typeVariableBinding);
                    }
                }
                this.requestor.acceptTypeParameter(sourceTypeBinding.qualifiedPackageName(), sourceTypeBinding.qualifiedSourceName(), typeVariableBinding.sourceName(), false, this.actualSelectionStart, this.actualSelectionEnd);
            } else if (binding2 instanceof MethodBinding) {
                MethodBinding methodBinding = (MethodBinding) binding2;
                if (isLocal(methodBinding.declaringClass)) {
                    ISelectionRequestor iSelectionRequestor2 = this.requestor;
                    if (iSelectionRequestor2 instanceof SelectionRequestor) {
                        ((SelectionRequestor) iSelectionRequestor2).acceptLocalMethodTypeParameter(typeVariableBinding);
                    }
                }
                ISelectionRequestor iSelectionRequestor3 = this.requestor;
                char[] qualifiedPackageName = methodBinding.declaringClass.qualifiedPackageName();
                char[] qualifiedSourceName = methodBinding.declaringClass.qualifiedSourceName();
                if (methodBinding.isConstructor()) {
                    cArr3 = methodBinding.declaringClass.sourceName();
                } else {
                    cArr3 = methodBinding.selector;
                }
                iSelectionRequestor3.acceptMethodTypeParameter(qualifiedPackageName, qualifiedSourceName, cArr3, methodBinding.sourceStart(), methodBinding.sourceEnd(), typeVariableBinding.sourceName(), false, this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedAnswer = true;
            return;
        }
        if (binding instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
            if (referenceBinding2 instanceof ProblemReferenceBinding) {
                TypeBinding closestMatch = referenceBinding2.closestMatch();
                referenceBinding = closestMatch instanceof ReferenceBinding ? (ReferenceBinding) closestMatch : null;
            } else {
                referenceBinding = referenceBinding2;
            }
            if (referenceBinding == null) {
                return;
            }
            if (isLocal(referenceBinding)) {
                ISelectionRequestor iSelectionRequestor4 = this.requestor;
                if (iSelectionRequestor4 instanceof SelectionRequestor) {
                    this.noProposal = false;
                    ((SelectionRequestor) iSelectionRequestor4).acceptLocalType(referenceBinding);
                    this.acceptedAnswer = true;
                    return;
                }
            }
            if (binding instanceof IntersectionTypeBinding18) {
                for (ReferenceBinding referenceBinding3 : ((IntersectionTypeBinding18) binding).intersectingTypes) {
                    selectFrom(referenceBinding3, compilationUnitDeclaration, z10);
                }
            } else {
                this.noProposal = false;
                this.requestor.acceptType(referenceBinding.qualifiedPackageName(), referenceBinding.qualifiedSourceName(), referenceBinding.modifiers, false, referenceBinding.computeUniqueKey(), this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedAnswer = true;
            return;
        }
        if (binding instanceof MethodBinding) {
            MethodBinding correctMethodBinding = getCorrectMethodBinding((MethodBinding) binding);
            this.noProposal = false;
            if ((!(binding instanceof SyntheticMethodBinding) || ((i10 = ((SyntheticMethodBinding) binding).purpose) != 9 && i10 != 10)) && !correctMethodBinding.isSynthetic()) {
                TypeBinding[] typeBindingArr = correctMethodBinding.original().parameters;
                int length = typeBindingArr.length;
                char[][] cArr4 = new char[length];
                char[][] cArr5 = new char[length];
                String[] strArr = new String[length];
                for (int i11 = 0; i11 < length; i11++) {
                    cArr4[i11] = typeBindingArr[i11].qualifiedPackageName();
                    cArr5[i11] = typeBindingArr[i11].qualifiedSourceName();
                    strArr[i11] = new String(Engine.getSignature(typeBindingArr[i11])).replace('/', '.');
                }
                TypeVariableBinding[] typeVariableBindingArr = correctMethodBinding.original().typeVariables;
                int length2 = typeVariableBindingArr == null ? 0 : typeVariableBindingArr.length;
                char[][] cArr6 = new char[length2];
                char[][][] cArr7 = new char[length2][];
                for (int i12 = 0; i12 < length2; i12++) {
                    TypeVariableBinding typeVariableBinding2 = typeVariableBindingArr[i12];
                    cArr6[i12] = typeVariableBinding2.sourceName;
                    TypeBinding typeBinding = typeVariableBinding2.firstBound;
                    if (typeBinding == null) {
                        cArr7[i12] = new char[0];
                    } else if (TypeBinding.equalsEquals(typeBinding, typeVariableBinding2.superclass)) {
                        ReferenceBinding[] referenceBindingArr = typeVariableBinding2.superInterfaces;
                        int length3 = (referenceBindingArr == null ? 0 : referenceBindingArr.length) + 1;
                        char[][] cArr8 = new char[length3];
                        cArr7[i12] = cArr8;
                        cArr8[0] = typeVariableBinding2.superclass.sourceName;
                        for (int i13 = 1; i13 < length3; i13++) {
                            cArr7[i12][i13] = typeVariableBindingArr[i12].superInterfaces[i13 - 1].sourceName;
                        }
                    } else {
                        ReferenceBinding[] referenceBindingArr2 = typeVariableBinding2.superInterfaces;
                        int length4 = referenceBindingArr2 == null ? 0 : referenceBindingArr2.length;
                        cArr7[i12] = new char[length4];
                        for (int i14 = 0; i14 < length4; i14++) {
                            cArr7[i12][i14] = typeVariableBindingArr[i12].superInterfaces[i14].sourceName;
                        }
                    }
                }
                ReferenceBinding referenceBinding4 = correctMethodBinding.declaringClass;
                if (isLocal(referenceBinding4)) {
                    ISelectionRequestor iSelectionRequestor5 = this.requestor;
                    if (iSelectionRequestor5 instanceof SelectionRequestor) {
                        ((SelectionRequestor) iSelectionRequestor5).acceptLocalMethod(correctMethodBinding);
                    }
                }
                ISelectionRequestor iSelectionRequestor6 = this.requestor;
                char[] qualifiedPackageName2 = referenceBinding4.qualifiedPackageName();
                char[] qualifiedSourceName2 = referenceBinding4.qualifiedSourceName();
                String str = referenceBinding4.enclosingType() == null ? null : new String(Engine.getSignature(referenceBinding4.enclosingType()));
                if (correctMethodBinding.isConstructor()) {
                    cArr2 = referenceBinding4.sourceName();
                } else {
                    cArr2 = correctMethodBinding.selector;
                }
                iSelectionRequestor6.acceptMethod(qualifiedPackageName2, qualifiedSourceName2, str, cArr2, cArr4, cArr5, strArr, cArr6, cArr7, correctMethodBinding.isConstructor(), z10, correctMethodBinding.computeUniqueKey(), this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedAnswer = true;
            return;
        }
        if (binding instanceof FieldBinding) {
            FieldBinding fieldBinding = (FieldBinding) binding;
            ReferenceBinding referenceBinding5 = fieldBinding.declaringClass;
            if (referenceBinding5 != null) {
                this.noProposal = false;
                if (isLocal(referenceBinding5)) {
                    ISelectionRequestor iSelectionRequestor7 = this.requestor;
                    if (iSelectionRequestor7 instanceof SelectionRequestor) {
                        ((SelectionRequestor) iSelectionRequestor7).acceptLocalField(fieldBinding);
                        this.acceptedAnswer = true;
                        return;
                    }
                }
                FieldBinding fieldBinding2 = fieldBinding;
                while (fieldBinding2 instanceof ProblemFieldBinding) {
                    ProblemFieldBinding problemFieldBinding = (ProblemFieldBinding) fieldBinding2;
                    fieldBinding2 = problemFieldBinding.problemId() == 2 ? problemFieldBinding.closestMatch : null;
                }
                if (fieldBinding2 != null) {
                    cArr = fieldBinding2.name;
                    computeUniqueKey = fieldBinding2.computeUniqueKey();
                } else {
                    char[] cArr9 = fieldBinding.name;
                    computeUniqueKey = fieldBinding.computeUniqueKey();
                    cArr = cArr9;
                }
                this.requestor.acceptField(referenceBinding5.qualifiedPackageName(), referenceBinding5.qualifiedSourceName(), cArr, false, computeUniqueKey, this.actualSelectionStart, this.actualSelectionEnd);
                this.acceptedAnswer = true;
                return;
            }
            return;
        }
        if (binding instanceof LocalVariableBinding) {
            ISelectionRequestor iSelectionRequestor8 = this.requestor;
            if (iSelectionRequestor8 instanceof SelectionRequestor) {
                ((SelectionRequestor) iSelectionRequestor8).acceptLocalVariable((LocalVariableBinding) binding, iCompilationUnit);
                this.acceptedAnswer = true;
                return;
            } else {
                selectFrom(((LocalVariableBinding) binding).type, compilationUnitDeclaration, false);
                return;
            }
        }
        if (binding instanceof ArrayBinding) {
            selectFrom(((ArrayBinding) binding).leafComponentType, compilationUnitDeclaration, false);
            return;
        }
        if (binding instanceof PackageBinding) {
            this.noProposal = false;
            this.requestor.acceptPackage(((PackageBinding) binding).readableName());
            this.acceptedAnswer = true;
        } else if (binding instanceof BaseTypeBinding) {
            this.acceptedAnswer = true;
        } else if (binding instanceof ModuleBinding) {
            this.noProposal = false;
            ModuleBinding moduleBinding = (ModuleBinding) binding;
            this.requestor.acceptModule(moduleBinding.moduleName, moduleBinding.computeUniqueKey(), this.actualSelectionStart, this.actualSelectionEnd);
            this.acceptedAnswer = true;
        }
    }

    private boolean selectDeclaration(TypeDeclaration typeDeclaration, char[] cArr, char[] cArr2) {
        TypeDeclaration typeDeclaration2 = typeDeclaration;
        if (typeDeclaration2.name == cArr) {
            char[] cArr3 = null;
            for (TypeDeclaration typeDeclaration3 = typeDeclaration2; typeDeclaration3 != null; typeDeclaration3 = typeDeclaration3.enclosingType) {
                cArr3 = CharOperation.concat(typeDeclaration3.name, cArr3, '.');
            }
            SourceTypeBinding sourceTypeBinding = typeDeclaration2.binding;
            this.requestor.acceptType(cArr2, cArr3, typeDeclaration2.modifiers, true, sourceTypeBinding != null ? sourceTypeBinding.computeUniqueKey() : null, this.actualSelectionStart, this.actualSelectionEnd);
            this.noProposal = false;
            return true;
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration2.memberTypes;
        int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (selectDeclaration(typeDeclarationArr[i10], cArr, cArr2)) {
                return true;
            }
        }
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration2.fields;
        int length2 = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        for (int i11 = 0; i11 < length2; i11++) {
            if (fieldDeclarationArr[i11].name == cArr) {
                char[] cArr4 = null;
                while (typeDeclaration2 != null) {
                    cArr4 = CharOperation.concat(typeDeclaration2.name, cArr4, '.');
                    typeDeclaration2 = typeDeclaration2.enclosingType;
                }
                FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
                ISelectionRequestor iSelectionRequestor = this.requestor;
                char[] cArr5 = fieldDeclaration.name;
                FieldBinding fieldBinding = fieldDeclaration.binding;
                iSelectionRequestor.acceptField(cArr2, cArr4, cArr5, true, fieldBinding != null ? fieldBinding.computeUniqueKey() : null, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration2.methods;
        int length3 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        for (int i12 = 0; i12 < length3; i12++) {
            AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i12];
            if (abstractMethodDeclaration.selector == cArr) {
                char[] cArr6 = null;
                while (typeDeclaration2 != null) {
                    cArr6 = CharOperation.concat(typeDeclaration2.name, cArr6, '.');
                    typeDeclaration2 = typeDeclaration2.enclosingType;
                }
                ISelectionRequestor iSelectionRequestor2 = this.requestor;
                char[] cArr7 = abstractMethodDeclaration.selector;
                boolean isConstructor = abstractMethodDeclaration.isConstructor();
                MethodBinding methodBinding = abstractMethodDeclaration.binding;
                iSelectionRequestor2.acceptMethod(cArr2, cArr6, null, cArr7, null, null, null, null, null, isConstructor, true, methodBinding != null ? methodBinding.computeUniqueKey() : null, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
            TypeParameter[] typeParameters = abstractMethodDeclaration.typeParameters();
            int length4 = typeParameters == null ? 0 : typeParameters.length;
            for (int i13 = 0; i13 < length4; i13++) {
                TypeParameter typeParameter = typeParameters[i13];
                if (typeParameter.name == cArr) {
                    while (typeDeclaration2 != null) {
                        r5 = CharOperation.concat(typeDeclaration2.name, r5, '.');
                        typeDeclaration2 = typeDeclaration2.enclosingType;
                    }
                    this.requestor.acceptMethodTypeParameter(cArr2, r5, abstractMethodDeclaration.selector, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd, typeParameter.name, true, this.actualSelectionStart, this.actualSelectionEnd);
                    this.noProposal = false;
                    return true;
                }
            }
        }
        TypeParameter[] typeParameterArr = typeDeclaration2.typeParameters;
        int length5 = typeParameterArr == null ? 0 : typeParameterArr.length;
        for (int i14 = 0; i14 < length5; i14++) {
            TypeParameter typeParameter2 = typeParameterArr[i14];
            if (typeParameter2.name == cArr) {
                char[] cArr8 = null;
                while (typeDeclaration2 != null) {
                    cArr8 = CharOperation.concat(typeDeclaration2.name, cArr8, '.');
                    typeDeclaration2 = typeDeclaration2.enclosingType;
                }
                this.requestor.acceptTypeParameter(cArr2, cArr8, typeParameter2.name, true, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
        }
        return false;
    }
}
