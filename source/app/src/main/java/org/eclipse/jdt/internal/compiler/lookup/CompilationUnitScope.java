package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Invocation;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.InferenceVariable;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.CompoundNameVector;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfType;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleNameVector;

public class CompilationUnitScope extends Scope {
    private int captureID;
    boolean connectingHierarchy;
    HashtableOfType constantPoolNameUsage;
    public char[][] currentPackageName;
    public LookupEnvironment environment;
    public PackageBinding fPackage;
    public int importPtr;
    public ImportBinding[] imports;
    private ArrayList<Invocation> inferredInvocations;
    private CompoundNameVector qualifiedReferences;
    public CompilationUnitDeclaration referenceContext;
    private ObjectVector referencedSuperTypes;
    private ObjectVector referencedTypes;
    private SimpleNameVector rootReferences;
    private SimpleNameVector simpleNameReferences;
    private boolean skipCachingImports;
    private ImportBinding[] tempImports;
    public SourceTypeBinding[] topLevelTypes;
    public HashtableOfObject typeOrPackageCache;
    Map<InferenceVariable.InferenceVarKey, InferenceVariable> uniqueInferenceVariables;

    public CompilationUnitScope(CompilationUnitDeclaration compilationUnitDeclaration, LookupEnvironment lookupEnvironment) {
        this(compilationUnitDeclaration, lookupEnvironment.globalOptions);
        this.environment = lookupEnvironment;
    }

    private int checkAndRecordImportBinding(Binding binding, HashtableOfType hashtableOfType, ImportReference importReference, char[][] cArr) {
        ReferenceBinding referenceBinding = null;
        if (binding instanceof MethodBinding) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) getType(cArr, cArr.length);
            if (referenceBinding2.isValidBinding() && (!importReference.isStatic() || referenceBinding2.isStatic())) {
                referenceBinding = referenceBinding2;
            }
        }
        char[] cArr2 = cArr[cArr.length - 1];
        boolean z10 = binding instanceof ReferenceBinding;
        if (z10 || referenceBinding != null) {
            ReferenceBinding referenceBinding3 = referenceBinding == null ? (ReferenceBinding) binding : referenceBinding;
            ReferenceBinding referenceBinding4 = referenceBinding3.problemId() == 3 ? ((ProblemReferenceBinding) referenceBinding3).closestMatch : referenceBinding3;
            if (importReference.isTypeUseDeprecated(referenceBinding4, this)) {
                problemReporter().deprecatedType(referenceBinding4, importReference);
            }
            ReferenceBinding referenceBinding5 = hashtableOfType.get(cArr2);
            if (referenceBinding5 != null) {
                if (TypeBinding.equalsEquals(referenceBinding5, referenceBinding3)) {
                    for (int i10 = 0; i10 < this.importPtr; i10++) {
                        ImportBinding importBinding = this.tempImports[i10];
                        if (importBinding instanceof ImportConflictBinding) {
                            if (TypeBinding.equalsEquals(((ImportConflictBinding) importBinding).conflictingTypeBinding, referenceBinding3) && !importReference.isStatic()) {
                                problemReporter().duplicateImport(importReference);
                                recordImportBinding(new ImportBinding(cArr, false, binding, importReference));
                            }
                        } else if (importBinding.resolvedImport == referenceBinding3 && importReference.isStatic() != importBinding.isStatic()) {
                            recordImportBinding(new ImportBinding(cArr, false, binding, importReference));
                        }
                    }
                    return -1;
                }
                int length = this.topLevelTypes.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (CharOperation.equals(this.topLevelTypes[i11].sourceName, referenceBinding5.sourceName)) {
                        problemReporter().conflictingImport(importReference);
                        return -1;
                    }
                }
                if (importReference.isStatic() && z10 && compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8) {
                    for (int i12 = 0; i12 < this.importPtr; i12++) {
                        ImportBinding importBinding2 = this.tempImports[i12];
                        if (importBinding2.isStatic()) {
                            Binding binding2 = importBinding2.resolvedImport;
                            if ((binding2 instanceof ReferenceBinding) && binding != binding2) {
                                if (CharOperation.equals(cArr2, importBinding2.compoundName[r15.length - 1])) {
                                    importBinding2.resolvedImport = new ProblemReferenceBinding(new char[][]{cArr2}, (ReferenceBinding) importBinding2.resolvedImport, 3);
                                    return -1;
                                }
                            }
                        }
                    }
                }
                problemReporter().duplicateImport(importReference);
                return -1;
            }
            hashtableOfType.put(cArr2, referenceBinding3);
        } else if (binding instanceof FieldBinding) {
            for (int i13 = 0; i13 < this.importPtr; i13++) {
                ImportBinding importBinding3 = this.tempImports[i13];
                if (importBinding3.isStatic()) {
                    Binding binding3 = importBinding3.resolvedImport;
                    if ((binding3 instanceof FieldBinding) && binding != binding3) {
                        if (CharOperation.equals(cArr2, importBinding3.compoundName[r8.length - 1])) {
                            if (compilerOptions().sourceLevel < ClassFileConstants.JDK1_8) {
                                problemReporter().duplicateImport(importReference);
                                return -1;
                            }
                            FieldBinding fieldBinding = (FieldBinding) importBinding3.resolvedImport;
                            importBinding3.resolvedImport = new ProblemFieldBinding(fieldBinding, fieldBinding.declaringClass, cArr2, 3);
                            return -1;
                        }
                    }
                }
            }
        }
        if (referenceBinding == null) {
            recordImportBinding(new ImportBinding(cArr, false, binding, importReference));
        } else {
            recordImportBinding(new ImportConflictBinding(cArr, binding, referenceBinding, importReference));
        }
        return this.importPtr;
    }

    private void checkMoreStaticBindings(char[][] cArr, HashtableOfType hashtableOfType, int i10, ImportReference importReference) {
        Binding findSingleStaticImport = findSingleStaticImport(cArr, i10);
        if (findSingleStaticImport.isValidBinding()) {
            checkAndRecordImportBinding(findSingleStaticImport, hashtableOfType, importReference, cArr);
        } else if (findSingleStaticImport.problemId() == 3) {
            checkAndRecordImportBinding(findSingleStaticImport, hashtableOfType, importReference, cArr);
        }
        if ((i10 & 8) == 0 || findSingleStaticImport.kind() != 8) {
            return;
        }
        checkMoreStaticBindings(cArr, hashtableOfType, i10 & (-9), importReference);
    }

    private Binding findSingleImport(char[][] cArr, int i10, boolean z10) {
        ReferenceBinding findType;
        return cArr.length == 1 ? ((compilerOptions().complianceLevel < ClassFileConstants.JDK1_4 || this.referenceContext.isModuleInfo()) && (findType = findType(cArr[0], this.environment.defaultPackage, this.fPackage)) != null) ? findType : new ProblemReferenceBinding(cArr, null, 1) : z10 ? findSingleStaticImport(cArr, i10) : findImport(cArr, cArr.length);
    }

    private Binding findSingleStaticImport(char[][] cArr, int i10) {
        Binding findImport = findImport(cArr, cArr.length - 1);
        if (!findImport.isValidBinding()) {
            return findImport;
        }
        char[] cArr2 = cArr[cArr.length - 1];
        if (findImport instanceof PackageBinding) {
            Binding typeOrPackage = ((PackageBinding) findImport).getTypeOrPackage(cArr2, module(), false);
            return (typeOrPackage == null || !(typeOrPackage instanceof ReferenceBinding)) ? findImport : new ProblemReferenceBinding(cArr, (ReferenceBinding) typeOrPackage, 14);
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) findImport;
        FieldBinding findField = (i10 & 1) != 0 ? findField(referenceBinding, cArr2, null, true) : null;
        if (findField != null) {
            if (findField.problemId() == 3 && ((ProblemFieldBinding) findField).closestMatch.isStatic()) {
                return findField;
            }
            if (findField.isValidBinding() && findField.isStatic() && findField.canBeSeenBy(referenceBinding, null, this)) {
                return findField;
            }
        }
        MethodBinding findStaticMethod = (i10 & 8) != 0 ? findStaticMethod(referenceBinding, cArr2) : null;
        if (findStaticMethod != null) {
            return findStaticMethod;
        }
        ReferenceBinding findMemberType = findMemberType(cArr2, referenceBinding);
        return (findMemberType == null || !findMemberType.isStatic()) ? (findField == null || findField.isValidBinding() || findField.problemId() == 1) ? new ProblemReferenceBinding(cArr, findMemberType, 1) : findField : (!findMemberType.isValidBinding() || findMemberType.canBeSeenBy(this.fPackage)) ? findMemberType.problemId() == 2 ? new ProblemReferenceBinding(cArr, ((ProblemReferenceBinding) findMemberType).closestMatch, 2) : findMemberType : new ProblemReferenceBinding(cArr, findMemberType, 2);
    }

    private MethodBinding findStaticMethod(ReferenceBinding referenceBinding, char[] cArr) {
        if (!referenceBinding.canBeSeenBy(this)) {
            return null;
        }
        do {
            referenceBinding.initializeForStaticImports();
            MethodBinding[] methods = referenceBinding.getMethods(cArr);
            if (methods != Binding.NO_METHODS) {
                int length = methods.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    MethodBinding methodBinding = methods[length];
                    if (methodBinding.isStatic() && methodBinding.canBeSeenBy(this.fPackage)) {
                        return methodBinding;
                    }
                }
            }
            referenceBinding = referenceBinding.superclass();
        } while (referenceBinding != null);
        return null;
    }

    public static boolean lambda$0(int i10, Integer num) {
        return num.intValue() == i10;
    }

    private void recordImportBinding(ImportBinding importBinding) {
        ImportBinding[] importBindingArr = this.tempImports;
        int length = importBindingArr.length;
        int i10 = this.importPtr;
        if (length == i10) {
            ImportBinding[] importBindingArr2 = new ImportBinding[i10 + 1];
            this.tempImports = importBindingArr2;
            System.arraycopy(importBindingArr, 0, importBindingArr2, 0, i10);
        }
        ImportBinding[] importBindingArr3 = this.tempImports;
        int i11 = this.importPtr;
        this.importPtr = i11 + 1;
        importBindingArr3[i11] = importBinding;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x002e, code lost:
    
        if (r1 != 65540) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ReferenceBinding typeToRecord(TypeBinding typeBinding) {
        if (typeBinding == null) {
            return null;
        }
        while (typeBinding.isArrayType()) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType();
        }
        int kind = typeBinding.kind();
        if (kind != 132) {
            if (kind != 260) {
                if (kind != 516) {
                    if (kind != 1028) {
                        if (kind != 4100) {
                            if (kind != 8196) {
                                if (kind != 32772) {
                                }
                            }
                        }
                    }
                }
            }
            typeBinding = typeBinding.erasure();
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
            if (referenceBinding.isLocalType()) {
                return null;
            }
            return referenceBinding;
        }
        return null;
    }

    public void buildFieldsAndMethods() {
        int length = this.topLevelTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.topLevelTypes[i10].scope.buildFieldsAndMethods();
        }
    }

    public void buildTypeBindings(AccessRestriction accessRestriction) {
        boolean z10;
        Annotation[] annotationArr;
        char[] mainTypeName;
        char[][] packageName;
        this.topLevelTypes = new SourceTypeBinding[0];
        ICompilationUnit iCompilationUnit = this.referenceContext.compilationResult.compilationUnit;
        if (iCompilationUnit != null && (packageName = iCompilationUnit.getPackageName()) != null && !this.referenceContext.isModuleInfo() && !CharOperation.equals(this.currentPackageName, packageName)) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.referenceContext;
            if (compilationUnitDeclaration.currentPackage != null || compilationUnitDeclaration.types != null || compilationUnitDeclaration.imports != null) {
                problemReporter().packageIsNotExpectedPackage(this.referenceContext);
            }
            if (packageName.length == 0) {
                packageName = CharOperation.NO_CHAR_CHAR;
            }
            this.currentPackageName = packageName;
        }
        char[][] cArr = this.currentPackageName;
        if (cArr == CharOperation.NO_CHAR_CHAR) {
            this.fPackage = this.environment.defaultPackage;
            if (this.referenceContext.isModuleInfo()) {
                ModuleDeclaration moduleDeclaration = this.referenceContext.moduleDeclaration;
                if (moduleDeclaration != null) {
                    moduleDeclaration.createScope(this);
                    moduleDeclaration.checkAndSetModifiers();
                }
            } else if (module() != this.environment.UnNamedModule) {
                problemReporter().unnamedPackageInNamedModule(module());
            }
            z10 = false;
        } else {
            PackageBinding createPackage = this.environment.createPackage(cArr);
            this.fPackage = createPackage;
            if (createPackage == null) {
                if (this.referenceContext.currentPackage != null) {
                    problemReporter().packageCollidesWithType(this.referenceContext);
                }
                this.fPackage = this.environment.defaultPackage;
                return;
            }
            if (this.referenceContext.isPackageInfo()) {
                CompilationUnitDeclaration compilationUnitDeclaration2 = this.referenceContext;
                TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration2.types;
                if (typeDeclarationArr == null || typeDeclarationArr.length == 0) {
                    compilationUnitDeclaration2.types = new TypeDeclaration[1];
                    compilationUnitDeclaration2.createPackageInfoType();
                    z10 = true;
                } else {
                    z10 = false;
                }
                CompilationUnitDeclaration compilationUnitDeclaration3 = this.referenceContext;
                ImportReference importReference = compilationUnitDeclaration3.currentPackage;
                if (importReference != null && (annotationArr = importReference.annotations) != null) {
                    compilationUnitDeclaration3.types[0].annotations = annotationArr;
                }
            } else {
                z10 = false;
            }
            recordQualifiedReference(this.currentPackageName);
        }
        TypeDeclaration[] typeDeclarationArr2 = this.referenceContext.types;
        int length = typeDeclarationArr2 == null ? 0 : typeDeclarationArr2.length;
        this.topLevelTypes = new SourceTypeBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            TypeDeclaration typeDeclaration = typeDeclarationArr2[i11];
            LookupEnvironment lookupEnvironment = this.environment;
            if (lookupEnvironment.root.isProcessingAnnotations && lookupEnvironment.isMissingType(typeDeclaration.name)) {
                throw new SourceTypeCollisionException();
            }
            ReferenceBinding type0 = this.fPackage.getType0(typeDeclaration.name);
            if (Binding.isValid(type0) && (this.fPackage instanceof SplitPackageBinding) && !this.environment.module.canAccess(type0.fPackage)) {
                type0 = null;
            }
            recordSimpleReference(typeDeclaration.name);
            if (!Binding.isValid(type0) || (type0 instanceof UnresolvedReferenceBinding)) {
                if ((typeDeclaration.modifiers & 1) != 0 && (mainTypeName = this.referenceContext.getMainTypeName()) != null && !CharOperation.equals(mainTypeName, typeDeclaration.name)) {
                    problemReporter().publicClassMustMatchFileName(this.referenceContext, typeDeclaration);
                }
                SourceTypeBinding buildType = new ClassScope(this, typeDeclaration).buildType(null, this.fPackage, accessRestriction);
                if (z10 && i11 == 0) {
                    buildType.modifiers |= 4096;
                }
                if (buildType != null) {
                    this.topLevelTypes[i10] = buildType;
                    i10++;
                }
            } else {
                if (this.environment.root.isProcessingAnnotations) {
                    throw new SourceTypeCollisionException();
                }
                problemReporter().duplicateTypes(this.referenceContext, typeDeclaration);
            }
        }
        SourceTypeBinding[] sourceTypeBindingArr = this.topLevelTypes;
        if (i10 != sourceTypeBindingArr.length) {
            SourceTypeBinding[] sourceTypeBindingArr2 = new SourceTypeBinding[i10];
            this.topLevelTypes = sourceTypeBindingArr2;
            System.arraycopy(sourceTypeBindingArr, 0, sourceTypeBindingArr2, 0, i10);
        }
    }

    public void checkAndSetImports() {
        int i10;
        int i11;
        TypeDeclaration[] typeDeclarationArr = this.referenceContext.types;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
                PackageBinding packageBinding = this.fPackage;
                if (packageBinding != this.environment.defaultPackage && packageBinding.getPackage(typeDeclaration.name, module()) != null) {
                    problemReporter().typeCollidesWithPackage(this.referenceContext, typeDeclaration);
                }
            }
        }
        ModuleDeclaration moduleDeclaration = this.referenceContext.moduleDeclaration;
        if (moduleDeclaration != null) {
            moduleDeclaration.resolveModuleDirectives(this);
        }
        ImportReference[] importReferenceArr = this.referenceContext.imports;
        if (importReferenceArr == null) {
            this.imports = getDefaultImports();
            return;
        }
        int length = importReferenceArr.length;
        int i12 = length + 1;
        int i13 = 0;
        while (true) {
            if (i13 >= length) {
                i10 = i12;
                break;
            }
            ImportReference importReference = this.referenceContext.imports[i13];
            if ((importReference.bits & 131072) != 0 && CharOperation.equals(TypeConstants.JAVA_LANG, importReference.tokens) && !importReference.isStatic()) {
                i10 = length;
                break;
            }
            i13++;
        }
        ImportBinding[] importBindingArr = new ImportBinding[i10];
        importBindingArr[0] = getDefaultImports()[0];
        int i14 = 1;
        for (int i15 = 0; i15 < length; i15++) {
            ImportReference importReference2 = this.referenceContext.imports[i15];
            char[][] cArr = importReference2.tokens;
            while (true) {
                if (i11 < i14) {
                    ImportBinding importBinding = importBindingArr[i11];
                    i11 = (importBinding.onDemand == ((importReference2.bits & 131072) != 0) && importBinding.isStatic() == importReference2.isStatic() && CharOperation.equals(cArr, importBindingArr[i11].compoundName)) ? 0 : i11 + 1;
                } else if ((importReference2.bits & 131072) == 0) {
                    importBindingArr[i14] = new ImportBinding(cArr, false, null, importReference2);
                    i14++;
                } else if (!CharOperation.equals(cArr, this.currentPackageName)) {
                    Binding findImport = findImport(cArr, cArr.length);
                    if (findImport.isValidBinding() && (!importReference2.isStatic() || !(findImport instanceof PackageBinding))) {
                        importBindingArr[i14] = new ImportBinding(cArr, true, findImport, importReference2);
                        i14++;
                    }
                }
            }
        }
        if (i10 > i14) {
            ImportBinding[] importBindingArr2 = new ImportBinding[i14];
            System.arraycopy(importBindingArr, 0, importBindingArr2, 0, i14);
            importBindingArr = importBindingArr2;
        }
        this.imports = importBindingArr;
    }

    public void checkParameterizedTypes() {
        if (compilerOptions().sourceLevel < ClassFileConstants.JDK1_5) {
            return;
        }
        int length = this.topLevelTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            ClassScope classScope = this.topLevelTypes[i10].scope;
            classScope.checkParameterizedTypeBounds();
            classScope.checkParameterizedSuperTypeCollisions();
        }
    }

    @Override
    public Binding checkRedundantDefaultNullness(final int i10, int i11) {
        Binding localCheckRedundantDefaultNullness = localCheckRedundantDefaultNullness(i10, i11);
        if (localCheckRedundantDefaultNullness != null) {
            return localCheckRedundantDefaultNullness;
        }
        PackageBinding packageBinding = this.fPackage;
        if (packageBinding != null) {
            return packageBinding.findDefaultNullnessTarget(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$0;
                    lambda$0 = CompilationUnitScope.lambda$0(i10, (Integer) obj);
                    return lambda$0;
                }
            });
        }
        return null;
    }

    public void cleanUpInferenceContexts() {
        ArrayList<Invocation> arrayList = this.inferredInvocations;
        if (arrayList == null) {
            return;
        }
        Iterator<Invocation> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().cleanUpInferenceContexts();
        }
        this.inferredInvocations = null;
    }

    public char[] computeConstantPoolName(LocalTypeBinding localTypeBinding) {
        char[] cArr = localTypeBinding.constantPoolName;
        if (cArr != null) {
            return cArr;
        }
        if (this.constantPoolNameUsage == null) {
            this.constantPoolNameUsage = new HashtableOfType();
        }
        SourceTypeBinding enclosingSourceType = localTypeBinding.scope.outerMostClassScope().enclosingSourceType();
        int i10 = 0;
        boolean z10 = compilerOptions().complianceLevel >= ClassFileConstants.JDK1_5;
        while (true) {
            char[] concat = localTypeBinding.isMemberType() ? i10 == 0 ? CharOperation.concat(localTypeBinding.enclosingType().constantPoolName(), localTypeBinding.sourceName, '$') : CharOperation.concat(localTypeBinding.enclosingType().constantPoolName(), '$', String.valueOf(i10).toCharArray(), '$', localTypeBinding.sourceName) : localTypeBinding.isAnonymousType() ? z10 ? CharOperation.concat(localTypeBinding.enclosingType.constantPoolName(), String.valueOf(i10 + 1).toCharArray(), '$') : CharOperation.concat(enclosingSourceType.constantPoolName(), String.valueOf(i10 + 1).toCharArray(), '$') : z10 ? CharOperation.concat(CharOperation.concat(localTypeBinding.enclosingType().constantPoolName(), String.valueOf(i10 + 1).toCharArray(), '$'), localTypeBinding.sourceName) : CharOperation.concat(enclosingSourceType.constantPoolName(), '$', String.valueOf(i10 + 1).toCharArray(), '$', localTypeBinding.sourceName);
            if (this.constantPoolNameUsage.get(concat) == null) {
                this.constantPoolNameUsage.put(concat, localTypeBinding);
                return concat;
            }
            i10++;
        }
    }

    public void connectTypeHierarchy() {
        int length = this.topLevelTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.topLevelTypes[i10].scope.connectTypeHierarchy();
        }
    }

    public void faultInImports() {
        ImportBinding[] importBindingArr;
        HashtableOfType hashtableOfType;
        PackageBinding packageBinding;
        if (this.tempImports != null) {
            return;
        }
        boolean z10 = this.environment.suppressImportErrors;
        if (this.typeOrPackageCache == null || this.skipCachingImports) {
            ImportReference[] importReferenceArr = this.referenceContext.imports;
            if (importReferenceArr == null) {
                this.typeOrPackageCache = new HashtableOfObject(1);
                return;
            }
            int length = importReferenceArr.length;
            int i10 = 0;
            while (true) {
                importBindingArr = null;
                if (i10 >= length) {
                    hashtableOfType = null;
                    break;
                }
                if ((this.referenceContext.imports[i10].bits & 131072) == 0) {
                    HashtableOfType hashtableOfType2 = new HashtableOfType(this.topLevelTypes.length + length);
                    int length2 = this.topLevelTypes.length;
                    int i11 = 0;
                    while (i11 < length2) {
                        SourceTypeBinding sourceTypeBinding = this.topLevelTypes[i11];
                        hashtableOfType2.put(sourceTypeBinding.sourceName, sourceTypeBinding);
                        i11++;
                        importBindingArr = null;
                    }
                    hashtableOfType = hashtableOfType2;
                } else {
                    i10++;
                }
            }
            int i12 = length + 1;
            int i13 = 0;
            while (true) {
                if (i13 >= length) {
                    break;
                }
                ImportReference importReference = this.referenceContext.imports[i13];
                if ((importReference.bits & 131072) != 0 && CharOperation.equals(TypeConstants.JAVA_LANG, importReference.tokens) && !importReference.isStatic()) {
                    i12 = length;
                    break;
                } else {
                    i13++;
                    importBindingArr = null;
                }
            }
            ImportBinding[] importBindingArr2 = new ImportBinding[i12];
            this.tempImports = importBindingArr2;
            importBindingArr2[0] = getDefaultImports()[0];
            this.importPtr = 1;
            boolean z11 = compilerOptions().enableJdtDebugCompileMode;
            int i14 = 0;
            boolean z12 = false;
            while (i14 < length) {
                ImportReference importReference2 = this.referenceContext.imports[i14];
                char[][] cArr = importReference2.tokens;
                int i15 = 0;
                while (true) {
                    if (i15 < this.importPtr) {
                        ImportBinding importBinding = this.tempImports[i15];
                        if (importBinding.onDemand == ((importReference2.bits & 131072) != 0) && importBinding.isStatic() == importReference2.isStatic() && CharOperation.equals(cArr, importBinding.compoundName)) {
                            problemReporter().unusedImport(importReference2);
                            break;
                        }
                        i15++;
                    } else if ((importReference2.bits & 131072) != 0) {
                        Binding findImport = findImport(cArr, cArr.length);
                        if (findImport.isValidBinding()) {
                            boolean z13 = findImport instanceof PackageBinding;
                            if (z13) {
                                PackageBinding visibleFor = ((PackageBinding) findImport).getVisibleFor(module(), false);
                                if ((visibleFor instanceof SplitPackageBinding) && !z11) {
                                    problemReporter().conflictingPackagesFromModules((SplitPackageBinding) visibleFor, module(), importReference2.sourceStart, importReference2.sourceEnd);
                                }
                            }
                            if (importReference2.isStatic() && z13) {
                                problemReporter().cannotImportPackage(importReference2);
                            } else {
                                recordImportBinding(new ImportBinding(cArr, true, findImport, importReference2));
                            }
                        } else {
                            problemReporter().importProblem(importReference2, findImport);
                        }
                    } else {
                        Binding findSingleImport = findSingleImport(cArr, 13, importReference2.isStatic());
                        if ((findSingleImport instanceof SplitPackageBinding) && !z11) {
                            SplitPackageBinding splitPackageBinding = (SplitPackageBinding) findSingleImport;
                            problemReporter().conflictingPackagesFromModules(splitPackageBinding, module(), importReference2.sourceStart, (int) (importReference2.sourcePositions[splitPackageBinding.compoundName.length - 1] & Sg.b.f23266s));
                        } else if (!findSingleImport.isValidBinding() && findSingleImport.problemId() != 3) {
                            if (!z10) {
                                problemReporter().importProblem(importReference2, findSingleImport);
                            }
                            z12 = true;
                        } else if (findSingleImport instanceof PackageBinding) {
                            problemReporter().cannotImportPackage(importReference2);
                        } else {
                            if (this.environment.useModuleSystem && (findSingleImport instanceof ReferenceBinding) && (packageBinding = ((ReferenceBinding) findSingleImport).fPackage) != null) {
                                if (packageBinding.isValidBinding()) {
                                    PackageBinding packageBinding2 = (PackageBinding) findImport(packageBinding.compoundName, false, true);
                                    if (packageBinding2 != null) {
                                        packageBinding2 = packageBinding2.getVisibleFor(module(), true);
                                    }
                                    if ((packageBinding2 instanceof SplitPackageBinding) && !z11) {
                                        SplitPackageBinding splitPackageBinding2 = (SplitPackageBinding) packageBinding2;
                                        problemReporter().conflictingPackagesFromModules(splitPackageBinding2, module(), importReference2.sourceStart, (int) importReference2.sourcePositions[splitPackageBinding2.compoundName.length - 1]);
                                    }
                                } else {
                                    problemReporter().importProblem(importReference2, packageBinding);
                                }
                            }
                            if (checkAndRecordImportBinding(findSingleImport, hashtableOfType, importReference2, cArr) != -1 && importReference2.isStatic()) {
                                if (findSingleImport.kind() == 1) {
                                    checkMoreStaticBindings(cArr, hashtableOfType, 12, importReference2);
                                } else if (findSingleImport.kind() == 8) {
                                    checkMoreStaticBindings(cArr, hashtableOfType, 4, importReference2);
                                }
                            }
                        }
                    }
                }
                i14++;
                importBindingArr = null;
            }
            ImportBinding[] importBindingArr3 = this.tempImports;
            int length3 = importBindingArr3.length;
            int i16 = this.importPtr;
            if (length3 > i16) {
                ImportBinding[] importBindingArr4 = new ImportBinding[i16];
                this.tempImports = importBindingArr4;
                System.arraycopy(importBindingArr3, 0, importBindingArr4, 0, i16);
            }
            ImportBinding[] importBindingArr5 = this.tempImports;
            this.imports = importBindingArr5;
            this.tempImports = importBindingArr;
            int length4 = importBindingArr5.length;
            this.typeOrPackageCache = new HashtableOfObject(length4);
            for (int i17 = 0; i17 < length4; i17++) {
                ImportBinding importBinding2 = this.imports[i17];
                if ((!importBinding2.onDemand && (importBinding2.resolvedImport instanceof ReferenceBinding)) || (importBinding2 instanceof ImportConflictBinding)) {
                    HashtableOfObject hashtableOfObject = this.typeOrPackageCache;
                    char[][] cArr2 = importBinding2.compoundName;
                    hashtableOfObject.put(cArr2[cArr2.length - 1], importBinding2);
                }
            }
            this.skipCachingImports = this.environment.suppressImportErrors && z12;
        }
    }

    public void faultInTypes() {
        faultInImports();
        CompilationUnitDeclaration compilationUnitDeclaration = this.referenceContext;
        ModuleDeclaration moduleDeclaration = compilationUnitDeclaration.moduleDeclaration;
        if (moduleDeclaration != null) {
            moduleDeclaration.resolvePackageDirectives(this);
            this.referenceContext.moduleDeclaration.resolveTypeDirectives(this);
        } else {
            ImportReference importReference = compilationUnitDeclaration.currentPackage;
            if (importReference != null) {
                importReference.checkPackageConflict(this);
            }
        }
        int length = this.topLevelTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.topLevelTypes[i10].faultInTypesForFieldsAndMethods();
        }
    }

    public Binding findImport(char[][] cArr, boolean z10, boolean z11) {
        if (z11) {
            return findImport(cArr, cArr.length);
        }
        return findSingleImport(cArr, 13, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r3 == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ImportBinding[] getDefaultImports() {
        Binding binding;
        LookupEnvironment lookupEnvironment = this.environment;
        ImportBinding[] importBindingArr = lookupEnvironment.root.defaultImports;
        if (importBindingArr != null) {
            return importBindingArr;
        }
        PackageBinding topLevelPackage = lookupEnvironment.getTopLevelPackage(TypeConstants.JAVA);
        Binding binding2 = topLevelPackage;
        if (topLevelPackage != null) {
            binding2 = topLevelPackage.getTypeOrPackage(TypeConstants.JAVA_LANG[1], module(), false);
        }
        if (binding2 != null) {
            boolean isValidBinding = binding2.isValidBinding();
            binding = binding2;
        }
        ProblemReporter problemReporter = problemReporter();
        char[][] cArr = TypeConstants.JAVA_LANG_OBJECT;
        problemReporter.isClassPathCorrect(cArr, this.referenceContext, this.environment.missingClassFileLocation);
        binding = this.environment.createMissingType(null, cArr).fPackage;
        LookupEnvironment lookupEnvironment2 = this.environment.root;
        ImportBinding[] importBindingArr2 = {new ImportBinding(TypeConstants.JAVA_LANG, true, binding, null)};
        lookupEnvironment2.defaultImports = importBindingArr2;
        return importBindingArr2;
    }

    public final Binding getImport(char[][] cArr, boolean z10, boolean z11) {
        return z10 ? findImport(cArr, cArr.length) : findSingleImport(cArr, 13, z11);
    }

    @Override
    public boolean hasDefaultNullnessFor(int i10, int i11) {
        int localNonNullByDefaultValue = localNonNullByDefaultValue(i11);
        if (localNonNullByDefaultValue != 0) {
            return (i10 & localNonNullByDefaultValue) != 0;
        }
        PackageBinding packageBinding = this.fPackage;
        return (packageBinding == null || (i10 & packageBinding.getDefaultNullness()) == 0) ? false : true;
    }

    @Override
    public ModuleBinding module() {
        if (!this.referenceContext.isModuleInfo()) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.referenceContext;
            if (compilationUnitDeclaration.types == null && compilationUnitDeclaration.currentPackage == null && compilationUnitDeclaration.imports == null) {
                LookupEnvironment lookupEnvironment = this.environment.UnNamedModule.environment;
                this.environment = lookupEnvironment;
                return lookupEnvironment.UnNamedModule;
            }
        }
        return super.module();
    }

    public int nextCaptureID() {
        int i10 = this.captureID;
        this.captureID = i10 + 1;
        return i10;
    }

    @Override
    public ProblemReporter problemReporter() {
        CompilationUnitDeclaration compilationUnitDeclaration = this.referenceContext;
        ProblemReporter problemReporter = compilationUnitDeclaration.problemReporter;
        problemReporter.referenceContext = compilationUnitDeclaration;
        return problemReporter;
    }

    public void recordQualifiedReference(char[][] cArr) {
        if (this.qualifiedReferences == null) {
            return;
        }
        int length = cArr.length;
        if (length <= 1) {
            if (length == 1) {
                recordRootReference(cArr[0]);
                recordSimpleReference(cArr[0]);
                return;
            }
            return;
        }
        recordRootReference(cArr[0]);
        while (!this.qualifiedReferences.contains(cArr)) {
            this.qualifiedReferences.add(cArr);
            if (length == 2) {
                recordSimpleReference(cArr[0]);
                recordSimpleReference(cArr[1]);
                return;
            } else {
                length--;
                recordSimpleReference(cArr[length]);
                char[][] cArr2 = new char[length];
                System.arraycopy(cArr, 0, cArr2, 0, length);
                cArr = cArr2;
            }
        }
    }

    public void recordReference(char[][] cArr, char[] cArr2) {
        recordQualifiedReference(cArr);
        if (cArr.length == 0) {
            recordRootReference(cArr2);
        }
        recordSimpleReference(cArr2);
    }

    public void recordRootReference(char[] cArr) {
        SimpleNameVector simpleNameVector = this.rootReferences;
        if (simpleNameVector == null || simpleNameVector.contains(cArr)) {
            return;
        }
        this.rootReferences.add(cArr);
    }

    public void recordSimpleReference(char[] cArr) {
        SimpleNameVector simpleNameVector = this.simpleNameReferences;
        if (simpleNameVector == null || simpleNameVector.contains(cArr)) {
            return;
        }
        this.simpleNameReferences.add(cArr);
    }

    public void recordSuperTypeReference(TypeBinding typeBinding) {
        ReferenceBinding typeToRecord;
        if (this.referencedSuperTypes == null || (typeToRecord = typeToRecord(typeBinding)) == null || this.referencedSuperTypes.containsIdentical(typeToRecord)) {
            return;
        }
        this.referencedSuperTypes.add(typeToRecord);
    }

    public void recordTypeConversion(TypeBinding typeBinding, TypeBinding typeBinding2) {
        recordSuperTypeReference(typeBinding2);
    }

    public void recordTypeReference(TypeBinding typeBinding) {
        ReferenceBinding typeToRecord;
        if (this.referencedTypes == null || (typeToRecord = typeToRecord(typeBinding)) == null || this.referencedTypes.containsIdentical(typeToRecord)) {
            return;
        }
        this.referencedTypes.add(typeToRecord);
    }

    public void recordTypeReferences(TypeBinding[] typeBindingArr) {
        if (this.referencedTypes == null || typeBindingArr == null || typeBindingArr.length == 0) {
            return;
        }
        for (TypeBinding typeBinding : typeBindingArr) {
            ReferenceBinding typeToRecord = typeToRecord(typeBinding);
            if (typeToRecord != null && !this.referencedTypes.containsIdentical(typeToRecord)) {
                this.referencedTypes.add(typeToRecord);
            }
        }
    }

    public void registerInferredInvocation(Invocation invocation) {
        if (this.inferredInvocations == null) {
            this.inferredInvocations = new ArrayList<>();
        }
        this.inferredInvocations.add(invocation);
    }

    public Binding resolveSingleImport(ImportBinding importBinding, int i10) {
        if (importBinding.resolvedImport == null) {
            Binding findSingleImport = findSingleImport(importBinding.compoundName, i10, importBinding.isStatic());
            importBinding.resolvedImport = findSingleImport;
            if (!findSingleImport.isValidBinding() || (importBinding.resolvedImport instanceof PackageBinding)) {
                if (importBinding.resolvedImport.problemId() == 3) {
                    return importBinding.resolvedImport;
                }
                ImportBinding[] importBindingArr = this.imports;
                if (importBindingArr == null) {
                    return null;
                }
                ImportBinding[] importBindingArr2 = new ImportBinding[importBindingArr.length - 1];
                int length = importBindingArr.length;
                int i11 = 0;
                for (int i12 = 0; i12 < length; i12++) {
                    ImportBinding importBinding2 = this.imports[i12];
                    if (importBinding2 != importBinding) {
                        importBindingArr2[i11] = importBinding2;
                        i11++;
                    }
                }
                this.imports = importBindingArr2;
                return null;
            }
        }
        return importBinding.resolvedImport;
    }

    public void storeDependencyInfo() {
        ReferenceBinding enclosingType;
        int i10 = 0;
        while (true) {
            ObjectVector objectVector = this.referencedSuperTypes;
            if (i10 >= objectVector.size) {
                break;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) objectVector.elementAt(i10);
            if (!this.referencedTypes.containsIdentical(referenceBinding)) {
                this.referencedTypes.add(referenceBinding);
            }
            if (!referenceBinding.isLocalType() && (enclosingType = referenceBinding.enclosingType()) != null) {
                recordSuperTypeReference(enclosingType);
            }
            ReferenceBinding superclass = referenceBinding.superclass();
            if (superclass != null) {
                recordSuperTypeReference(superclass);
            }
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != null) {
                for (ReferenceBinding referenceBinding2 : superInterfaces) {
                    recordSuperTypeReference(referenceBinding2);
                }
            }
            i10++;
        }
        int i11 = this.referencedTypes.size;
        for (int i12 = 0; i12 < i11; i12++) {
            ReferenceBinding referenceBinding3 = (ReferenceBinding) this.referencedTypes.elementAt(i12);
            if (!referenceBinding3.isLocalType()) {
                recordQualifiedReference(referenceBinding3.isMemberType() ? CharOperation.splitOn('.', referenceBinding3.readableName()) : referenceBinding3.compoundName);
            }
        }
        int i13 = this.qualifiedReferences.size;
        char[][][] cArr = new char[i13][];
        for (int i14 = 0; i14 < i13; i14++) {
            cArr[i14] = this.qualifiedReferences.elementAt(i14);
        }
        this.referenceContext.compilationResult.qualifiedReferences = cArr;
        int i15 = this.simpleNameReferences.size;
        char[][] cArr2 = new char[i15];
        for (int i16 = 0; i16 < i15; i16++) {
            cArr2[i16] = this.simpleNameReferences.elementAt(i16);
        }
        this.referenceContext.compilationResult.simpleNameReferences = cArr2;
        int i17 = this.rootReferences.size;
        char[][] cArr3 = new char[i17];
        for (int i18 = 0; i18 < i17; i18++) {
            cArr3[i18] = this.rootReferences.elementAt(i18);
        }
        this.referenceContext.compilationResult.rootReferences = cArr3;
    }

    public String toString() {
        return "--- CompilationUnit Scope : " + new String(this.referenceContext.getFileName());
    }

    public void verifyMethods(MethodVerifier methodVerifier) {
        int length = this.topLevelTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.topLevelTypes[i10].verifyMethods(methodVerifier);
        }
    }

    public CompilationUnitScope(CompilationUnitDeclaration compilationUnitDeclaration, CompilerOptions compilerOptions) {
        super(4, null);
        this.captureID = 1;
        this.uniqueInferenceVariables = new HashMap();
        this.referenceContext = compilationUnitDeclaration;
        compilationUnitDeclaration.scope = this;
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        this.currentPackageName = importReference == null ? CharOperation.NO_CHAR_CHAR : importReference.tokens;
        if (compilerOptions.produceReferenceInfo) {
            this.qualifiedReferences = new CompoundNameVector();
            this.simpleNameReferences = new SimpleNameVector();
            this.rootReferences = new SimpleNameVector();
            this.referencedTypes = new ObjectVector();
            this.referencedSuperTypes = new ObjectVector();
            return;
        }
        this.qualifiedReferences = null;
        this.simpleNameReferences = null;
        this.rootReferences = null;
        this.referencedTypes = null;
        this.referencedSuperTypes = null;
    }

    private Binding findImport(char[][] cArr, int i10) {
        int i11;
        ReferenceBinding referenceBinding;
        recordQualifiedReference(cArr);
        ModuleBinding module = module();
        PackageBinding topLevelPackage = this.environment.getTopLevelPackage(cArr[0]);
        if (topLevelPackage != null) {
            int i12 = 1;
            while (i12 < i10) {
                i11 = i12 + 1;
                Binding typeOrPackage = topLevelPackage.getTypeOrPackage(cArr[i12], module, i11 < i10);
                if ((typeOrPackage instanceof ReferenceBinding) && typeOrPackage.problemId() == 30) {
                    return this.environment.convertToRawType((TypeBinding) typeOrPackage, false);
                }
                if (typeOrPackage != null) {
                    if (!typeOrPackage.isValidBinding()) {
                        if (typeOrPackage.problemId() == 3 && (topLevelPackage instanceof SplitPackageBinding)) {
                            return topLevelPackage;
                        }
                        topLevelPackage = null;
                    } else if (!(typeOrPackage instanceof PackageBinding)) {
                        PackageBinding visibleFor = topLevelPackage.getVisibleFor(module, false);
                        if (visibleFor instanceof SplitPackageBinding) {
                            return visibleFor;
                        }
                    } else {
                        topLevelPackage = (PackageBinding) typeOrPackage;
                        i12 = i11;
                    }
                }
                topLevelPackage = typeOrPackage;
            }
            return (!topLevelPackage.isValidBinding() || module.canAccess(topLevelPackage)) ? topLevelPackage : new ProblemPackageBinding(cArr, 30, this.environment);
        }
        i11 = 1;
        if (topLevelPackage != null) {
            referenceBinding = topLevelPackage;
        } else {
            if (compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
                return problemType(cArr, i11, null);
            }
            char[] cArr2 = cArr[0];
            PackageBinding packageBinding = this.environment.defaultPackage;
            referenceBinding = findType(cArr2, packageBinding, packageBinding);
            if (referenceBinding == null || !referenceBinding.isValidBinding()) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, 1);
            }
            i11 = 1;
        }
        while (i11 < i10) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) this.environment.convertToRawType(referenceBinding, false);
            if (!referenceBinding2.canBeSeenBy(this.fPackage)) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), referenceBinding2, 2);
            }
            int i13 = i11 + 1;
            referenceBinding = referenceBinding2.getMemberType(cArr[i11]);
            if (referenceBinding == null) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), null, 1);
            }
            i11 = i13;
        }
        return !referenceBinding.canBeSeenBy(this.fPackage) ? new ProblemReferenceBinding(cArr, referenceBinding, 2) : referenceBinding;
    }

    public void recordReference(ReferenceBinding referenceBinding, char[] cArr) {
        ReferenceBinding typeToRecord = typeToRecord(referenceBinding);
        if (typeToRecord != null) {
            recordReference(typeToRecord.compoundName, cArr);
        }
    }
}
