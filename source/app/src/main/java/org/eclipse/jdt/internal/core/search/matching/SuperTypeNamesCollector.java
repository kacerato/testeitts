package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;
import org.eclipse.jdt.internal.core.search.PathCollector;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.Util;

public class SuperTypeNamesCollector {
    MatchLocator locator;
    SearchPattern pattern;
    IProgressMonitor progressMonitor;
    char[][][] result;
    int resultIndex;
    int samePackageIndex;
    char[][][] samePackageSuperTypeName;
    IType type;
    char[] typeQualification;
    char[] typeSimpleName;

    public class TypeDeclarationVisitor extends ASTVisitor {
        public TypeDeclarationVisitor() {
        }

        @Override
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            return false;
        }

        @Override
        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
            return false;
        }

        @Override
        public boolean visit(Initializer initializer, MethodScope methodScope) {
            return false;
        }

        @Override
        public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            return false;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
            if (!SuperTypeNamesCollector.this.matches(sourceTypeBinding)) {
                return true;
            }
            SuperTypeNamesCollector.this.collectSuperTypeNames(sourceTypeBinding, sourceTypeBinding.compoundName);
            return true;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
            SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
            if (!SuperTypeNamesCollector.this.matches(sourceTypeBinding)) {
                return true;
            }
            SuperTypeNamesCollector.this.collectSuperTypeNames(sourceTypeBinding, sourceTypeBinding.compoundName);
            return true;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
            if (!SuperTypeNamesCollector.this.matches(sourceTypeBinding)) {
                return true;
            }
            SuperTypeNamesCollector.this.collectSuperTypeNames(sourceTypeBinding, sourceTypeBinding.compoundName);
            return true;
        }
    }

    public SuperTypeNamesCollector(SearchPattern searchPattern, char[] cArr, char[] cArr2, MatchLocator matchLocator, IType iType, IProgressMonitor iProgressMonitor) {
        this.pattern = searchPattern;
        this.typeSimpleName = cArr;
        this.typeQualification = cArr2;
        this.locator = matchLocator;
        this.type = iType;
        this.progressMonitor = iProgressMonitor;
    }

    private boolean addIfSamePackage(char[][] cArr, char[][] cArr2) {
        if (cArr.length != cArr2.length) {
            return false;
        }
        int length = this.samePackageSuperTypeName.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(this.samePackageSuperTypeName[i10], cArr)) {
                return false;
            }
        }
        int length2 = cArr.length - 1;
        for (int i11 = 0; i11 < length2; i11++) {
            if (!CharOperation.equals(cArr[i11], cArr2[i11])) {
                return false;
            }
        }
        if (length == this.samePackageIndex) {
            char[][][] cArr3 = this.samePackageSuperTypeName;
            char[][][] cArr4 = new char[length * 2][];
            this.samePackageSuperTypeName = cArr4;
            System.arraycopy(cArr3, 0, cArr4, 0, length);
        }
        char[][][] cArr5 = this.samePackageSuperTypeName;
        int i12 = this.samePackageIndex;
        this.samePackageIndex = i12 + 1;
        cArr5[i12] = cArr;
        return true;
    }

    public void addToResult(char[][] cArr) {
        int length = this.result.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(this.result[i10], cArr)) {
                return;
            }
        }
        if (length == this.resultIndex) {
            char[][][] cArr2 = this.result;
            char[][][] cArr3 = new char[length * 2][];
            this.result = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, length);
        }
        char[][][] cArr4 = this.result;
        int i11 = this.resultIndex;
        this.resultIndex = i11 + 1;
        cArr4[i11] = cArr;
    }

    public CompilationUnitDeclaration buildBindings(ICompilationUnit iCompilationUnit, boolean z10) throws JavaModelException {
        org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
        CompilationResult compilationResult = new CompilationResult(iCompilationUnit2, 1, 1, 0);
        CompilationUnitDeclaration dietParse = z10 ? this.locator.basicParser().dietParse(iCompilationUnit2, compilationResult) : this.locator.basicParser().parse(iCompilationUnit2, compilationResult);
        if (dietParse != null) {
            this.locator.lookupEnvironment.buildTypeBindings(dietParse, null);
            this.locator.lookupEnvironment.completeTypeBindings(dietParse, !z10);
            if (!z10) {
                CompilationUnitScope compilationUnitScope = dietParse.scope;
                if (compilationUnitScope != null) {
                    compilationUnitScope.faultInTypes();
                }
                dietParse.resolve();
            }
        }
        return dietParse;
    }

    public char[][][] collect() throws JavaModelException {
        TypeDeclaration findType;
        SourceTypeBinding sourceTypeBinding;
        IType iType = this.type;
        boolean z10 = true;
        if (iType != null) {
            this.result = new char[1][];
            this.resultIndex = 0;
            this.locator.initialize((JavaProject) iType.getJavaProject(), 0);
            try {
                if (this.type.isBinary()) {
                    BinaryTypeBinding cacheBinaryType = this.locator.cacheBinaryType(this.type, null);
                    if (cacheBinaryType != null) {
                        collectSuperTypeNames(cacheBinaryType, null);
                    }
                } else {
                    ICompilationUnit compilationUnit = this.type.getCompilationUnit();
                    if (((SourceType) this.type).getOuterMostLocalContext() != null) {
                        z10 = false;
                    }
                    CompilationUnitDeclaration buildBindings = buildBindings(compilationUnit, z10);
                    if (buildBindings != null && (findType = new ASTNodeFinder(buildBindings).findType(this.type)) != null && (sourceTypeBinding = findType.binding) != null) {
                        collectSuperTypeNames(sourceTypeBinding, null);
                    }
                }
                char[][][] cArr = this.result;
                int length = cArr.length;
                int i10 = this.resultIndex;
                if (length > i10) {
                    char[][][] cArr2 = new char[i10][];
                    this.result = cArr2;
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                }
                return this.result;
            } catch (AbortCompilation unused) {
                return null;
            }
        }
        String[] pathsOfDeclaringType = getPathsOfDeclaringType();
        if (pathsOfDeclaringType == null) {
            return null;
        }
        Util.sort(pathsOfDeclaringType);
        this.result = new char[1][];
        this.samePackageSuperTypeName = new char[1][];
        this.resultIndex = 0;
        JavaProject javaProject = null;
        for (String str : pathsOfDeclaringType) {
            try {
                MatchLocator matchLocator = this.locator;
                IJavaElement createOpenable = matchLocator.handleFactory.createOpenable(str, matchLocator.scope);
                if (createOpenable != null) {
                    IJavaProject javaProject2 = createOpenable.getJavaProject();
                    if (!javaProject2.equals(javaProject)) {
                        JavaProject javaProject3 = (JavaProject) javaProject2;
                        try {
                            this.locator.initialize(javaProject3, 0);
                            javaProject = javaProject3;
                        } catch (JavaModelException | AbortCompilation unused2) {
                            javaProject = javaProject3;
                        }
                    }
                    if (createOpenable instanceof ICompilationUnit) {
                        CompilationUnitDeclaration buildBindings2 = buildBindings((ICompilationUnit) createOpenable, true);
                        if (buildBindings2 != null) {
                            buildBindings2.traverse(new TypeDeclarationVisitor(), buildBindings2.scope);
                        }
                    } else if (createOpenable instanceof IOrdinaryClassFile) {
                        BinaryTypeBinding cacheBinaryType2 = this.locator.cacheBinaryType(((IOrdinaryClassFile) createOpenable).getType(), null);
                        if (matches(cacheBinaryType2)) {
                            collectSuperTypeNames(cacheBinaryType2, cacheBinaryType2.compoundName);
                        }
                    }
                }
            } catch (JavaModelException | AbortCompilation unused3) {
            }
        }
        char[][][] cArr3 = this.result;
        int length2 = cArr3.length;
        int i11 = this.resultIndex;
        if (length2 > i11) {
            char[][][] cArr4 = new char[i11][];
            this.result = cArr4;
            System.arraycopy(cArr3, 0, cArr4, 0, i11);
        }
        return this.result;
    }

    public void collectSuperTypeNames(ReferenceBinding referenceBinding, char[][] cArr) {
        ReferenceBinding superclass = referenceBinding.superclass();
        if (cArr != null && superclass != null && !addIfSamePackage(superclass.compoundName, cArr)) {
            cArr = null;
        }
        if (superclass != null) {
            addToResult(superclass.compoundName);
            collectSuperTypeNames(superclass, cArr);
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces != null) {
            for (ReferenceBinding referenceBinding2 : superInterfaces) {
                addToResult(referenceBinding2.compoundName);
                collectSuperTypeNames(referenceBinding2, cArr);
            }
        }
    }

    public String[] getPathsOfDeclaringType() {
        if (this.typeQualification == null && this.typeSimpleName == null) {
            return null;
        }
        final PathCollector pathCollector = new PathCollector();
        IJavaSearchScope createWorkspaceScope = SearchEngine.createWorkspaceScope();
        IndexManager indexManager = JavaModelManager.getIndexManager();
        char[] cArr = this.typeSimpleName;
        indexManager.performConcurrentJob(new PatternSearchJob(new TypeDeclarationPattern(cArr == null ? this.typeQualification : null, null, cArr, (char) 0, this.pattern.getMatchRule()), new JavaSearchParticipant(), createWorkspaceScope, new IndexQueryRequestor() {
            @Override
            public boolean acceptIndexMatch(String str, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                if (((TypeDeclarationPattern) searchPattern).enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                    return true;
                }
                pathCollector.acceptIndexMatch(str, searchPattern, searchParticipant, accessRuleSet);
                return true;
            }
        }), 3, SubMonitor.convert(this.progressMonitor, 100).split(100));
        return pathCollector.getPaths();
    }

    public char[][][] getSamePackageSuperTypeNames() {
        return this.samePackageSuperTypeName;
    }

    public boolean matches(char[][] cArr) {
        int length = cArr.length;
        if (length == 0) {
            return false;
        }
        int i10 = length - 1;
        char[] cArr2 = cArr[i10];
        char[] cArr3 = this.typeSimpleName;
        if (cArr3 != null && !this.pattern.matchesName(cArr2, cArr3)) {
            if (!CharOperation.endsWith(cArr2, this.typeSimpleName)) {
                return false;
            }
            char[][] cArr4 = new char[length + 1];
            System.arraycopy(cArr, 0, cArr4, 0, i10);
            int indexOf = CharOperation.indexOf('$', cArr2);
            if (indexOf == -1) {
                return false;
            }
            cArr4[i10] = CharOperation.subarray(cArr2, 0, indexOf);
            cArr4[length] = CharOperation.subarray(cArr2, indexOf + 1, cArr2.length);
            return matches(cArr4);
        }
        char[][] cArr5 = new char[i10];
        System.arraycopy(cArr, 0, cArr5, 0, i10);
        return this.pattern.matchesName(this.typeQualification, CharOperation.concatWith(cArr5, '.'));
    }

    public boolean matches(ReferenceBinding referenceBinding) {
        char[][] cArr;
        return (referenceBinding == null || (cArr = referenceBinding.compoundName) == null || !matches(cArr)) ? false : true;
    }
}
