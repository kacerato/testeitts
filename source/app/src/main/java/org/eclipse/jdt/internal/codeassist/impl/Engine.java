package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportConflictBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;

public abstract class Engine implements ITypeRequestor {
    public CompilerOptions compilerOptions;
    public boolean discouragedReferenceIsError;
    public boolean forbiddenReferenceIsError;
    public char[][][] importsCache;
    public LookupEnvironment lookupEnvironment;
    public SearchableEnvironment nameEnvironment;
    public ImportBinding[] onDemandImportsCache;
    public AssistOptions options;
    protected CompilationUnitScope unitScope;
    public boolean importCachesInitialized = false;
    public int importCacheCount = 0;
    public int onDemandImportCacheCount = 0;
    public char[] currentPackageName = null;

    public Engine(Map<String, String> map) {
        this.options = new AssistOptions(map);
        CompilerOptions compilerOptions = new CompilerOptions(map);
        this.compilerOptions = compilerOptions;
        this.forbiddenReferenceIsError = (compilerOptions.getSeverity(536870944) & 1) != 0;
        this.discouragedReferenceIsError = (this.compilerOptions.getSeverity(CompilerOptions.DiscouragedReference) & 1) != 0;
    }

    public static char[] getSignature(MethodBinding methodBinding) {
        int i10 = methodBinding.modifiers;
        methodBinding.modifiers = 1073741824 | i10;
        char[] genericSignature = methodBinding.genericSignature();
        if (genericSignature == null) {
            genericSignature = methodBinding.signature();
        }
        methodBinding.modifiers = i10;
        return genericSignature != null ? CharOperation.replaceOnCopy(genericSignature, '/', '.') : genericSignature;
    }

    public static char[] getTypeSignature(TypeBinding typeBinding) {
        char[] signature = typeBinding.signature();
        return signature != null ? CharOperation.replaceOnCopy(signature, '/', '.') : signature;
    }

    @Override
    public void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.lookupEnvironment.createBinaryTypeFrom(iBinaryType, packageBinding, accessRestriction);
    }

    public abstract AssistParser getParser();

    public void initializeImportCaches() {
        if (this.currentPackageName == null) {
            initializePackageCache();
        }
        ImportBinding[] importBindingArr = this.unitScope.imports;
        int length = importBindingArr == null ? 0 : importBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            ImportBinding importBinding = importBindingArr[i10];
            if (importBinding.onDemand) {
                if (this.onDemandImportsCache == null) {
                    this.onDemandImportsCache = new ImportBinding[length - i10];
                }
                ImportBinding[] importBindingArr2 = this.onDemandImportsCache;
                int i11 = this.onDemandImportCacheCount;
                this.onDemandImportCacheCount = i11 + 1;
                importBindingArr2[i11] = importBinding;
            } else if (!(importBinding.resolvedImport instanceof MethodBinding) || (importBinding instanceof ImportConflictBinding)) {
                if (this.importsCache == null) {
                    this.importsCache = new char[length - i10][];
                }
                char[][][] cArr = this.importsCache;
                int i12 = this.importCacheCount;
                this.importCacheCount = i12 + 1;
                char[][] cArr2 = importBinding.compoundName;
                cArr[i12] = new char[][]{cArr2[cArr2.length - 1], CharOperation.concatWith(cArr2, '.')};
            }
        }
        this.importCachesInitialized = true;
    }

    public void initializePackageCache() {
        ImportReference importReference;
        CompilationUnitScope compilationUnitScope = this.unitScope;
        PackageBinding packageBinding = compilationUnitScope.fPackage;
        if (packageBinding != null) {
            this.currentPackageName = CharOperation.concatWith(packageBinding.compoundName, '.');
            return;
        }
        CompilationUnitDeclaration compilationUnitDeclaration = compilationUnitScope.referenceContext;
        if (compilationUnitDeclaration == null || (importReference = compilationUnitDeclaration.currentPackage) == null) {
            this.currentPackageName = CharOperation.NO_CHAR;
        } else {
            this.currentPackageName = CharOperation.concatWith(importReference.tokens, '.');
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0053, code lost:
    
        if ((r15 & 8) != 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x005c, code lost:
    
        if (r14.length != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x006c, code lost:
    
        if ((r15 & 8) == 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mustQualifyType(char[] cArr, char[] cArr2, char[] cArr3, int i10) {
        boolean z10;
        if (this.unitScope == null) {
            return true;
        }
        if (!this.importCachesInitialized) {
            initializeImportCaches();
        }
        for (int i11 = 0; i11 < this.importCacheCount; i11++) {
            if (CharOperation.equals(cArr2, this.importsCache[i11][0])) {
                return !CharOperation.equals((cArr3 == null || cArr3.length == 0) ? CharOperation.concat(cArr, cArr2, '.') : CharOperation.concat(CharOperation.concat(cArr, cArr3, '.'), cArr2, '.'), r3[1]);
            }
        }
        if ((cArr3 == null || cArr3.length == 0) && CharOperation.equals(this.currentPackageName, cArr)) {
            return false;
        }
        char[] cArr4 = null;
        for (int i12 = 0; i12 < this.onDemandImportCacheCount; i12++) {
            ImportBinding importBinding = this.onDemandImportsCache[i12];
            Binding binding = importBinding.resolvedImport;
            char[] concatWith = CharOperation.concatWith(importBinding.compoundName, '.');
            if (binding instanceof ReferenceBinding) {
                if (cArr3 != null && cArr3.length != 0) {
                    if (cArr4 == null) {
                        cArr4 = CharOperation.concat(cArr, cArr3, '.');
                    }
                    if (CharOperation.equals(cArr4, concatWith)) {
                        if (importBinding.isStatic()) {
                        }
                        z10 = true;
                    }
                }
                z10 = false;
            } else {
                if (cArr3 != null) {
                }
                if (CharOperation.equals(cArr, concatWith)) {
                    if (importBinding.isStatic()) {
                    }
                    z10 = true;
                }
                z10 = false;
            }
            if (z10) {
                for (int i13 = 0; i13 < this.onDemandImportCacheCount; i13++) {
                    if (i12 != i13) {
                        ImportBinding importBinding2 = this.onDemandImportsCache[i13];
                        Binding binding2 = importBinding2.resolvedImport;
                        if (!(binding2 instanceof ReferenceBinding)) {
                            if (this.nameEnvironment.nameLookup.findType(String.valueOf(cArr2), String.valueOf(CharOperation.concatWith(importBinding2.compoundName, '.')), false, 30, false) != null) {
                                return true;
                            }
                        } else if (((ReferenceBinding) binding2).getMemberType(cArr2) != null) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public ASTNode parseBlockStatements(CompilationUnitDeclaration compilationUnitDeclaration, int i10) {
        int length = compilationUnitDeclaration.types.length;
        for (int i11 = 0; i11 < length; i11++) {
            TypeDeclaration typeDeclaration = compilationUnitDeclaration.types[i11];
            if (typeDeclaration.declarationSourceStart < i10 && typeDeclaration.declarationSourceEnd >= i10) {
                getParser().scanner.setSource(compilationUnitDeclaration.compilationResult);
                return parseBlockStatements(typeDeclaration, compilationUnitDeclaration, i10);
            }
        }
        return null;
    }

    public void reset(boolean z10) {
        if (z10) {
            this.lookupEnvironment.reset();
        }
    }

    @Override
    public void accept(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        CompilationResult compilationResult = new CompilationResult(iCompilationUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit);
        AssistParser parser = getParser();
        Object becomeSimpleParser = parser.becomeSimpleParser();
        CompilationUnitDeclaration dietParse = parser.dietParse(iCompilationUnit, compilationResult);
        parser.restoreAssistParser(becomeSimpleParser);
        this.lookupEnvironment.buildTypeBindings(dietParse, accessRestriction);
        this.lookupEnvironment.completeTypeBindings(dietParse, true);
    }

    public static char[] getSignature(TypeBinding typeBinding) {
        char[] genericTypeSignature = typeBinding.genericTypeSignature();
        return genericTypeSignature != null ? CharOperation.replaceOnCopy(genericTypeSignature, '/', '.') : genericTypeSignature;
    }

    private ASTNode parseBlockStatements(TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration, int i10) {
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                if (typeDeclaration2.bodyStart <= i10 && typeDeclaration2.declarationSourceEnd >= i10) {
                    return parseBlockStatements(typeDeclaration2, compilationUnitDeclaration, i10);
                }
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (abstractMethodDeclaration.bodyStart <= i10 + 1 && !abstractMethodDeclaration.isDefaultConstructor() && abstractMethodDeclaration.declarationSourceEnd >= i10) {
                    getParser().parseBlockStatements(abstractMethodDeclaration, compilationUnitDeclaration);
                    return abstractMethodDeclaration;
                }
            }
        }
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        if (fieldDeclarationArr == null) {
            return null;
        }
        for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
            if (fieldDeclaration.sourceStart <= i10 && fieldDeclaration.declarationSourceEnd >= i10) {
                if (fieldDeclaration instanceof Initializer) {
                    getParser().parseBlockStatements((Initializer) fieldDeclaration, typeDeclaration, compilationUnitDeclaration);
                }
                return fieldDeclaration;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        CompilationResult compilationResult;
        SourceTypeElementInfo sourceTypeElementInfo;
        if (iSourceTypeArr[0].getEnclosingType() != null) {
            try {
                Object[] objArr = iSourceTypeArr[0];
                if (objArr instanceof SourceType) {
                    sourceTypeElementInfo = (SourceTypeElementInfo) ((SourceType) objArr).getElementInfo();
                } else {
                    sourceTypeElementInfo = (SourceTypeElementInfo) objArr;
                }
                Object[] types = sourceTypeElementInfo.getHandle().getCompilationUnit().getTypes();
                iSourceTypeArr = new ISourceType[types.length];
                iSourceTypeArr[0] = sourceTypeElementInfo;
                int length = types.length;
                for (int i10 = 0; i10 < length; i10++) {
                    iSourceTypeArr[i10] = (ISourceType) ((JavaElement) types[i10]).getElementInfo();
                }
                compilationResult = new CompilationResult(((ISourceType) ((JavaElement) types[0]).getElementInfo()).getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
            } catch (JavaModelException unused) {
                compilationResult = null;
            }
        } else {
            compilationResult = new CompilationResult(iSourceTypeArr[0].getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
        }
        LookupEnvironment lookupEnvironment = packageBinding.environment;
        if (lookupEnvironment == null) {
            lookupEnvironment = this.lookupEnvironment;
        }
        CompilationUnitDeclaration buildCompilationUnit = SourceTypeConverter.buildCompilationUnit(iSourceTypeArr, 15, lookupEnvironment.problemReporter, compilationResult);
        if (buildCompilationUnit != null) {
            lookupEnvironment.buildTypeBindings(buildCompilationUnit, accessRestriction);
            lookupEnvironment.completeTypeBindings(buildCompilationUnit, true);
        }
    }
}
