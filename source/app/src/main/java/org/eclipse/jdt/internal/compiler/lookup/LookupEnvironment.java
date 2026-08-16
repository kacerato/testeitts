package org.eclipse.jdt.internal.compiler.lookup;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ClassFilePool;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.INameEnvironmentExtension;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfModule;
import org.eclipse.jdt.internal.compiler.util.HashtableOfPackage;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class LookupEnvironment implements ProblemReasons, TypeConstants {
    static final boolean $assertionsDisabled = false;
    static final int BUILD_FIELDS_AND_METHODS = 4;
    static final int BUILD_TYPE_HIERARCHY = 1;
    static final int CHECK_AND_SET_IMPORTS = 2;
    static final int CONNECT_TYPE_HIERARCHY = 3;
    static final ModuleBinding TheNotFoundModule;
    static final ProblemPackageBinding TheNotFoundPackage;
    static final ProblemReferenceBinding TheNotFoundType;
    public ModuleBinding JavaBaseModule;
    public ModuleBinding UnNamedModule;
    private Map accessRestrictions;
    Map<String, Integer> allNullAnnotations;
    public ClassFilePool classFilePool;
    InferenceContext18 currentInferenceContext;
    ImportBinding[] defaultImports;
    public PackageBinding defaultPackage;
    final List<MethodBinding> deferredEnumMethods;
    public CompilerOptions globalOptions;
    public boolean isProcessingAnnotations;
    public HashtableOfModule knownModules;
    HashtableOfPackage knownPackages;
    private int lastCompletedUnitIndex;
    private int lastUnitIndex;
    public boolean mayTolerateMissingType;
    public Object missingClassFileLocation;
    private ArrayList missingTypes;
    public ModuleBinding module;
    public INameEnvironment nameEnvironment;
    AnnotationBinding nonNullAnnotation;
    PackageBinding nonnullAnnotationPackage;
    PackageBinding nonnullByDefaultAnnotationPackage;
    AnnotationBinding nullableAnnotation;
    PackageBinding nullableAnnotationPackage;
    public ProblemReporter problemReporter;
    public IQualifiedTypeResolutionListener[] resolutionListeners;
    public final LookupEnvironment root;
    private int stepCompleted;
    public boolean suppressImportErrors;
    public ITypeRequestor typeRequestor;
    TypeSystem typeSystem;
    Set<SourceTypeBinding> typesBeingConnected;
    private SimpleLookupTable uniqueGetClassMethodBinding;
    private SimpleLookupTable uniqueParameterizedGenericMethodBindings;
    private SimpleLookupTable uniquePolymorphicMethodBindings;
    public CompilationUnitDeclaration unitBeingCompleted;
    private CompilationUnitDeclaration[] units;
    boolean useModuleSystem;
    private MethodVerifier verifier;

    static {
        char[] cArr = CharOperation.NO_CHAR;
        TheNotFoundPackage = new ProblemPackageBinding(cArr, 1, (LookupEnvironment) null);
        TheNotFoundType = new ProblemReferenceBinding(CharOperation.NO_CHAR_CHAR, null, 1);
        TheNotFoundModule = new ModuleBinding(cArr);
    }

    public LookupEnvironment(ITypeRequestor iTypeRequestor, CompilerOptions compilerOptions, ProblemReporter problemReporter, INameEnvironment iNameEnvironment) {
        this.lastCompletedUnitIndex = -1;
        this.lastUnitIndex = -1;
        this.unitBeingCompleted = null;
        this.missingClassFileLocation = null;
        this.units = new CompilationUnitDeclaration[4];
        this.isProcessingAnnotations = false;
        this.mayTolerateMissingType = false;
        this.allNullAnnotations = null;
        this.root = this;
        ModuleBinding.UnNamedModule unNamedModule = new ModuleBinding.UnNamedModule(this);
        this.UnNamedModule = unNamedModule;
        this.module = unNamedModule;
        this.typeRequestor = iTypeRequestor;
        this.globalOptions = compilerOptions;
        this.problemReporter = problemReporter;
        this.defaultPackage = new PackageBinding(this);
        this.defaultImports = null;
        this.nameEnvironment = iNameEnvironment;
        this.knownPackages = new HashtableOfPackage();
        this.uniqueParameterizedGenericMethodBindings = new SimpleLookupTable(3);
        this.uniquePolymorphicMethodBindings = new SimpleLookupTable(3);
        this.missingTypes = null;
        this.accessRestrictions = new HashMap(3);
        this.classFilePool = ClassFilePool.newInstance();
        this.typesBeingConnected = new HashSet();
        this.deferredEnumMethods = new ArrayList();
        CompilerOptions compilerOptions2 = this.globalOptions;
        this.typeSystem = (compilerOptions2.sourceLevel < ClassFileConstants.JDK1_8 || !compilerOptions2.storeAnnotations) ? new TypeSystem(this) : new AnnotatableTypeSystem(this);
        this.knownModules = new HashtableOfModule();
        this.useModuleSystem = (iNameEnvironment instanceof IModuleAwareNameEnvironment) && compilerOptions.complianceLevel >= ClassFileConstants.JDK9;
        this.resolutionListeners = new IQualifiedTypeResolutionListener[0];
    }

    private TypeBinding annotateType(TypeBinding typeBinding, ITypeAnnotationWalker iTypeAnnotationWalker, char[][][] cArr) {
        if (iTypeAnnotationWalker == ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
            return typeBinding;
        }
        int depth = typeBinding.depth() + 1;
        if (depth > 1) {
            if (typeBinding.isUnresolvedType()) {
                typeBinding = ((UnresolvedReferenceBinding) typeBinding).resolve(this, true);
            }
            depth = countNonStaticNestingLevels(typeBinding) + 1;
        }
        AnnotationBinding[][] annotationBindingArr = null;
        int i10 = 0;
        while (i10 < depth) {
            AnnotationBinding[] createAnnotations = BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker.getAnnotationsAtCursor(typeBinding.f102482id, i10 == depth + (-1)), this, cArr);
            if (createAnnotations != null && createAnnotations.length > 0) {
                if (annotationBindingArr == null) {
                    annotationBindingArr = new AnnotationBinding[depth];
                }
                annotationBindingArr[i10] = createAnnotations;
            }
            iTypeAnnotationWalker = iTypeAnnotationWalker.toNextNestedType();
            i10++;
        }
        return annotationBindingArr != null ? createAnnotatedType(typeBinding, annotationBindingArr) : typeBinding;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0041 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NameEnvironmentAnswer[] askForTypeFromModules(ModuleBinding moduleBinding, ModuleBinding[] moduleBindingArr, Function<ModuleBinding, NameEnvironmentAnswer> function) {
        NameEnvironmentAnswer[] nameEnvironmentAnswerArr;
        boolean z10;
        if (moduleBinding != null && moduleBinding.nameForLookup().length == 0) {
            NameEnvironmentAnswer apply = function.apply(moduleBinding);
            if (apply != null) {
                apply.moduleBinding = this.root.getModuleFromAnswer(apply);
            }
            return new NameEnvironmentAnswer[]{apply};
        }
        if (moduleBinding != null) {
            int length = moduleBindingArr.length;
            nameEnvironmentAnswerArr = new NameEnvironmentAnswer[length + 1];
            NameEnvironmentAnswer apply2 = function.apply(moduleBinding);
            if (apply2 != null) {
                apply2.moduleBinding = moduleBinding;
                nameEnvironmentAnswerArr[length] = apply2;
                z10 = true;
                for (int i10 = 0; i10 < moduleBindingArr.length; i10++) {
                    NameEnvironmentAnswer apply3 = function.apply(moduleBindingArr[i10]);
                    if (apply3 != null) {
                        if (apply3.moduleBinding == null) {
                            char[] moduleName = apply3.moduleName();
                            if (CharOperation.equals(moduleName, moduleBindingArr[i10].moduleName)) {
                                apply3.moduleBinding = moduleBindingArr[i10];
                            } else {
                                apply3.moduleBinding = getModule(moduleName);
                            }
                        }
                        nameEnvironmentAnswerArr[i10] = apply3;
                        z10 = true;
                    }
                }
                if (z10) {
                    return null;
                }
                return nameEnvironmentAnswerArr;
            }
        } else {
            nameEnvironmentAnswerArr = new NameEnvironmentAnswer[moduleBindingArr.length];
        }
        z10 = false;
        while (i10 < moduleBindingArr.length) {
        }
        if (z10) {
        }
    }

    private ReferenceBinding combine(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, ModuleBinding moduleBinding) {
        return referenceBinding == null ? referenceBinding2 : referenceBinding2 == null ? referenceBinding : !moduleBinding.canAccess(referenceBinding.fPackage) ? referenceBinding2 : (moduleBinding.canAccess(referenceBinding2.fPackage) && referenceBinding != referenceBinding2) ? new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 3) : referenceBinding;
    }

    private PackageBinding computePackageFrom(char[][] cArr, boolean z10) {
        if (cArr.length == 1) {
            return this.defaultPackage;
        }
        PackageBinding package0 = getPackage0(cArr[0]);
        PackageBinding packageBinding = null;
        if (package0 == null || package0 == TheNotFoundPackage) {
            if (this.useModuleSystem) {
                if (this.module.isUnnamed()) {
                    char[][] uniqueModulesDeclaringPackage = ((IModuleAwareNameEnvironment) this.nameEnvironment).getUniqueModulesDeclaringPackage(null, cArr[0], ModuleBinding.ANY);
                    if (uniqueModulesDeclaringPackage != null) {
                        for (char[] cArr2 : uniqueModulesDeclaringPackage) {
                            ModuleBinding module = this.root.getModule(cArr2);
                            if (module != null) {
                                package0 = SplitPackageBinding.combine(module.getTopLevelPackage(cArr[0]), package0, this.module);
                            }
                        }
                    }
                } else {
                    package0 = this.module.getTopLevelPackage(cArr[0]);
                }
            }
            if (package0 == null || package0 == TheNotFoundPackage) {
                package0 = new PackageBinding(cArr[0], this, this.module);
            }
            if (z10) {
                package0.tagBits |= 128;
            }
            this.knownPackages.put(cArr[0], package0);
        }
        int length = cArr.length - 1;
        int i10 = 1;
        while (i10 < length) {
            PackageBinding package02 = package0.getPackage0(cArr[i10]);
            if (package02 == null || package02 == TheNotFoundPackage) {
                if (this.useModuleSystem) {
                    if (this.module.isUnnamed()) {
                        char[][] modulesDeclaringPackage = ((IModuleAwareNameEnvironment) this.nameEnvironment).getModulesDeclaringPackage(package0.compoundName, cArr[i10], ModuleBinding.ANY);
                        if (modulesDeclaringPackage != null) {
                            for (char[] cArr3 : modulesDeclaringPackage) {
                                ModuleBinding module2 = this.root.getModule(cArr3);
                                if (module2 != null) {
                                    package02 = SplitPackageBinding.combine(module2.getPackage(package0.compoundName, cArr[i10]), package02, this.module);
                                }
                            }
                        }
                    } else {
                        package02 = this.module.getVisiblePackage(package0, cArr[i10], true);
                    }
                }
                if (package02 == null || package02 == TheNotFoundPackage) {
                    package02 = new PackageBinding(CharOperation.subarray(cArr, 0, i10 + 1), package0, this, this.module);
                }
                if (z10) {
                    package02.tagBits |= 128;
                }
                package0 = package0.addPackage(package02, this.module);
            } else {
                package0 = package02;
            }
            i10++;
            packageBinding = null;
        }
        if (package0 instanceof SplitPackageBinding) {
            Iterator<PackageBinding> it = ((SplitPackageBinding) package0).incarnations.iterator();
            PackageBinding packageBinding2 = packageBinding;
            while (true) {
                if (!it.hasNext()) {
                    packageBinding = packageBinding2;
                    break;
                }
                PackageBinding next = it.next();
                if (next.hasCompilationUnit(false)) {
                    if (packageBinding2 != null) {
                        break;
                    }
                    packageBinding2 = next;
                }
            }
            if (packageBinding != null) {
                return packageBinding;
            }
        }
        return package0;
    }

    private int countNonStaticNestingLevels(TypeBinding typeBinding) {
        if (typeBinding.isUnresolvedType()) {
            throw new IllegalStateException();
        }
        int i10 = -1;
        while (typeBinding != null) {
            i10++;
            if (typeBinding.isStatic()) {
                break;
            }
            typeBinding = typeBinding.enclosingType();
        }
        return i10;
    }

    public static NameEnvironmentAnswer fromSplitPackageOrOracle(IModuleAwareNameEnvironment iModuleAwareNameEnvironment, ModuleBinding moduleBinding, PackageBinding packageBinding, char[] cArr) {
        ReferenceBinding type0ForModule;
        if ((packageBinding instanceof SplitPackageBinding) && (type0ForModule = ((SplitPackageBinding) packageBinding).getType0ForModule(moduleBinding, cArr)) != null && type0ForModule.isValidBinding()) {
            if (type0ForModule instanceof UnresolvedReferenceBinding) {
                type0ForModule = ((UnresolvedReferenceBinding) type0ForModule).resolve(moduleBinding.environment, false);
            }
            if (type0ForModule.isValidBinding()) {
                return new NameEnvironmentAnswer(type0ForModule, moduleBinding);
            }
        }
        return iModuleAwareNameEnvironment.findType(cArr, packageBinding.compoundName, moduleBinding.nameForLookup());
    }

    private ModuleBinding getModuleFromAnswer(NameEnvironmentAnswer nameEnvironmentAnswer) {
        char[] moduleName = nameEnvironmentAnswer.moduleName();
        if (moduleName == null) {
            return null;
        }
        if (!this.useModuleSystem || moduleName == ModuleBinding.UNNAMED) {
            return this.UnNamedModule;
        }
        ModuleBinding moduleBinding = this.knownModules.get(moduleName);
        if (moduleBinding != null) {
            return moduleBinding;
        }
        INameEnvironment iNameEnvironment = this.nameEnvironment;
        if (!(iNameEnvironment instanceof IModuleAwareNameEnvironment)) {
            return moduleBinding;
        }
        IModule module = ((IModuleAwareNameEnvironment) iNameEnvironment).getModule(moduleName);
        try {
            this.typeRequestor.accept(module, this);
            return this.knownModules.get(moduleName);
        } catch (NullPointerException e10) {
            PrintStream printStream = System.err;
            StringBuilder sb2 = new StringBuilder("Bug 529367: moduleName: ");
            sb2.append(new String(moduleName));
            sb2.append("iModule null");
            sb2.append(module == null ? "true" : "false");
            printStream.println(sb2.toString());
            throw e10;
        }
    }

    private TypeBinding[] getTypeArgumentsFromSignature(SignatureWrapper signatureWrapper, TypeVariableBinding[] typeVariableBindingArr, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, char[][][] cArr, ITypeAnnotationWalker iTypeAnnotationWalker) {
        ArrayList arrayList = new ArrayList(2);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            arrayList.add(getTypeFromVariantTypeSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, referenceBinding2, i10, cArr, iTypeAnnotationWalker.toTypeArgument(i10)));
            char[] cArr2 = signatureWrapper.signature;
            int i12 = signatureWrapper.start;
            if (cArr2[i12] == '>') {
                signatureWrapper.start = i12 + 1;
                TypeBinding[] typeBindingArr = new TypeBinding[arrayList.size()];
                arrayList.toArray(typeBindingArr);
                return typeBindingArr;
            }
            i10 = i11;
        }
    }

    private ReferenceBinding getTypeFromCompoundName(char[][] cArr, boolean z10, boolean z11) {
        ReferenceBinding cachedType = getCachedType(cArr);
        if (cachedType == null) {
            PackageBinding computePackageFrom = computePackageFrom(cArr, false);
            if (this.useModuleSystem) {
                cachedType = computePackageFrom.getType0(cArr[cArr.length - 1]);
            }
            if (cachedType == null) {
                cachedType = new UnresolvedReferenceBinding(cArr, computePackageFrom);
                if (z11) {
                    cachedType.tagBits |= 128;
                }
                computePackageFrom.addType(cachedType);
            }
        }
        if (cachedType != TheNotFoundType) {
            return !z10 ? (ReferenceBinding) convertUnresolvedBinaryToRawType(cachedType) : cachedType;
        }
        if (!z11) {
            this.problemReporter.isClassPathCorrect(cArr, this.root.unitBeingCompleted, this.missingClassFileLocation);
        }
        return createMissingType(null, cArr);
    }

    private TypeBinding getTypeFromTypeVariable(TypeVariableBinding typeVariableBinding, int i10, AnnotationBinding[][] annotationBindingArr, ITypeAnnotationWalker iTypeAnnotationWalker, char[][][] cArr) {
        AnnotationBinding[] createAnnotations = BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker.getAnnotationsAtCursor(-1, false), this, cArr);
        if (createAnnotations != null && createAnnotations != Binding.NO_ANNOTATIONS) {
            typeVariableBinding = (TypeVariableBinding) createAnnotatedType(typeVariableBinding, new AnnotationBinding[][]{createAnnotations});
        }
        return i10 == 0 ? typeVariableBinding : this.typeSystem.getArrayType(typeVariableBinding, i10, AnnotatableTypeSystem.flattenedAnnotations(annotationBindingArr));
    }

    private void initializeUsesNullTypeAnnotation() {
        CompilerOptions compilerOptions = this.globalOptions;
        compilerOptions.useNullTypeAnnotations = Boolean.FALSE;
        if (!compilerOptions.isAnnotationBasedNullAnalysisEnabled || compilerOptions.originalSourceLevel < ClassFileConstants.JDK1_8) {
            return;
        }
        boolean z10 = this.mayTolerateMissingType;
        this.mayTolerateMissingType = true;
        try {
            AnnotationBinding annotationBinding = this.nullableAnnotation;
            ReferenceBinding annotationType = annotationBinding != null ? annotationBinding.getAnnotationType() : getType(getNullableAnnotationName(), this.UnNamedModule);
            AnnotationBinding annotationBinding2 = this.nonNullAnnotation;
            ReferenceBinding annotationType2 = annotationBinding2 != null ? annotationBinding2.getAnnotationType() : getType(getNonNullAnnotationName(), this.UnNamedModule);
            this.mayTolerateMissingType = z10;
            if ((annotationType == null && annotationType2 == null) || annotationType == null || annotationType2 == null) {
                return;
            }
            long annotationTagBits = annotationType.getAnnotationTagBits() & 9007199254740992L;
            if (annotationTagBits == (annotationType2.getAnnotationTagBits() & 9007199254740992L) && annotationTagBits != 0) {
                this.globalOptions.useNullTypeAnnotations = Boolean.TRUE;
            }
        } catch (Throwable th2) {
            this.mayTolerateMissingType = z10;
            throw th2;
        }
    }

    public static NameEnvironmentAnswer lambda$0(IModuleAwareNameEnvironment iModuleAwareNameEnvironment, char[][] cArr, ModuleBinding moduleBinding) {
        return iModuleAwareNameEnvironment.findType(cArr, moduleBinding.nameForLookup());
    }

    public void addResolutionListener(IQualifiedTypeResolutionListener iQualifiedTypeResolutionListener) {
        synchronized (this.root) {
            try {
                int length = this.root.resolutionListeners.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (this.root.resolutionListeners[i10].equals(iQualifiedTypeResolutionListener)) {
                        return;
                    }
                }
                LookupEnvironment lookupEnvironment = this.root;
                IQualifiedTypeResolutionListener[] iQualifiedTypeResolutionListenerArr = lookupEnvironment.resolutionListeners;
                IQualifiedTypeResolutionListener[] iQualifiedTypeResolutionListenerArr2 = new IQualifiedTypeResolutionListener[length + 1];
                lookupEnvironment.resolutionListeners = iQualifiedTypeResolutionListenerArr2;
                System.arraycopy(iQualifiedTypeResolutionListenerArr, 0, iQualifiedTypeResolutionListenerArr2, 0, length);
                this.root.resolutionListeners[length] = iQualifiedTypeResolutionListener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public ReferenceBinding askForType(final char[][] cArr, ModuleBinding moduleBinding) {
        NameEnvironmentAnswer[] nameEnvironmentAnswerArr;
        ReferenceBinding referenceBinding = null;
        if (this.useModuleSystem) {
            final IModuleAwareNameEnvironment iModuleAwareNameEnvironment = (IModuleAwareNameEnvironment) this.nameEnvironment;
            nameEnvironmentAnswerArr = askForTypeFromModules(moduleBinding, moduleBinding.getAllRequiredModules(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    NameEnvironmentAnswer lambda$0;
                    lambda$0 = LookupEnvironment.lambda$0(IModuleAwareNameEnvironment.this, cArr, (ModuleBinding) obj);
                    return lambda$0;
                }
            });
        } else {
            NameEnvironmentAnswer findType = this.nameEnvironment.findType(cArr);
            if (findType != null) {
                findType.moduleBinding = this.module;
                nameEnvironmentAnswerArr = new NameEnvironmentAnswer[]{findType};
            } else {
                nameEnvironmentAnswerArr = null;
            }
        }
        if (nameEnvironmentAnswerArr == null) {
            return null;
        }
        for (NameEnvironmentAnswer nameEnvironmentAnswer : nameEnvironmentAnswerArr) {
            if (nameEnvironmentAnswer != null) {
                ModuleBinding moduleBinding2 = nameEnvironmentAnswer.moduleBinding;
                if (moduleBinding2 == null) {
                    moduleBinding2 = this.UnNamedModule;
                }
                if (nameEnvironmentAnswer.isBinaryType()) {
                    PackageBinding computePackageFrom = moduleBinding2.environment.computePackageFrom(cArr, false);
                    this.typeRequestor.accept(nameEnvironmentAnswer.getBinaryType(), computePackageFrom, nameEnvironmentAnswer.getAccessRestriction());
                    ReferenceBinding type0 = computePackageFrom.getType0(cArr[cArr.length - 1]);
                    if (type0 instanceof BinaryTypeBinding) {
                        ((BinaryTypeBinding) type0).module = moduleBinding2;
                        if (computePackageFrom.enclosingModule == null) {
                            computePackageFrom.enclosingModule = moduleBinding2;
                        }
                    }
                } else if (nameEnvironmentAnswer.isCompilationUnit()) {
                    this.typeRequestor.accept(nameEnvironmentAnswer.getCompilationUnit(), nameEnvironmentAnswer.getAccessRestriction());
                } else if (nameEnvironmentAnswer.isSourceType()) {
                    PackageBinding computePackageFrom2 = moduleBinding2.environment.computePackageFrom(cArr, false);
                    this.typeRequestor.accept(nameEnvironmentAnswer.getSourceTypes(), computePackageFrom2, nameEnvironmentAnswer.getAccessRestriction());
                    ReferenceBinding type02 = computePackageFrom2.getType0(cArr[cArr.length - 1]);
                    if (type02 instanceof SourceTypeBinding) {
                        ((SourceTypeBinding) type02).module = moduleBinding2;
                        if (computePackageFrom2.enclosingModule == null) {
                            computePackageFrom2.enclosingModule = moduleBinding2;
                        }
                    }
                }
                referenceBinding = combine(referenceBinding, moduleBinding2.environment.getCachedType(cArr), moduleBinding);
            }
        }
        return referenceBinding;
    }

    public void buildTypeBindings(CompilationUnitDeclaration compilationUnitDeclaration, AccessRestriction accessRestriction) {
        CompilationUnitScope compilationUnitScope;
        ModuleDeclaration moduleDeclaration = compilationUnitDeclaration.moduleDeclaration;
        if (moduleDeclaration != null) {
            char[] cArr = moduleDeclaration.moduleName;
            compilationUnitScope = new CompilationUnitScope(compilationUnitDeclaration, this.globalOptions);
            compilationUnitDeclaration.moduleDeclaration.setBinding(new SourceModuleBinding(cArr, compilationUnitScope, this.root));
        } else {
            ModuleBinding module = compilationUnitDeclaration.module(this);
            compilationUnitScope = new CompilationUnitScope(compilationUnitDeclaration, module != null ? module.environment : this);
        }
        compilationUnitScope.buildTypeBindings(accessRestriction);
        LookupEnvironment lookupEnvironment = this.root;
        CompilationUnitDeclaration[] compilationUnitDeclarationArr = lookupEnvironment.units;
        int length = compilationUnitDeclarationArr.length;
        int i10 = lookupEnvironment.lastUnitIndex + 1;
        lookupEnvironment.lastUnitIndex = i10;
        if (i10 >= length) {
            CompilationUnitDeclaration[] compilationUnitDeclarationArr2 = new CompilationUnitDeclaration[length * 2];
            lookupEnvironment.units = compilationUnitDeclarationArr2;
            System.arraycopy(compilationUnitDeclarationArr, 0, compilationUnitDeclarationArr2, 0, length);
        }
        lookupEnvironment.units[lookupEnvironment.lastUnitIndex] = compilationUnitDeclaration;
    }

    public BinaryTypeBinding cacheBinaryType(IBinaryType iBinaryType, AccessRestriction accessRestriction) {
        return cacheBinaryType(iBinaryType, true, accessRestriction);
    }

    public boolean canTypeBeAccessed(SourceTypeBinding sourceTypeBinding, Scope scope) {
        return scope.module().canAccess(sourceTypeBinding.fPackage);
    }

    public void completeTypeBindings() {
        LookupEnvironment lookupEnvironment = this.root;
        if (this != lookupEnvironment) {
            lookupEnvironment.completeTypeBindings();
            return;
        }
        this.stepCompleted = 1;
        for (int i10 = this.lastCompletedUnitIndex + 1; i10 <= this.lastUnitIndex; i10++) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.units[i10];
            this.unitBeingCompleted = compilationUnitDeclaration;
            compilationUnitDeclaration.scope.checkAndSetImports();
        }
        this.stepCompleted = 2;
        for (int i11 = this.lastCompletedUnitIndex + 1; i11 <= this.lastUnitIndex; i11++) {
            CompilationUnitDeclaration compilationUnitDeclaration2 = this.units[i11];
            this.unitBeingCompleted = compilationUnitDeclaration2;
            compilationUnitDeclaration2.scope.connectTypeHierarchy();
        }
        this.stepCompleted = 3;
        int i12 = this.lastCompletedUnitIndex + 1;
        while (true) {
            int i13 = this.lastUnitIndex;
            if (i12 > i13) {
                this.stepCompleted = 4;
                this.lastCompletedUnitIndex = i13;
                this.unitBeingCompleted = null;
                return;
            } else {
                CompilationUnitDeclaration compilationUnitDeclaration3 = this.units[i12];
                this.unitBeingCompleted = compilationUnitDeclaration3;
                CompilationUnitScope compilationUnitScope = compilationUnitDeclaration3.scope;
                compilationUnitScope.checkParameterizedTypes();
                compilationUnitScope.buildFieldsAndMethods();
                this.units[i12] = null;
                i12++;
            }
        }
    }

    public TypeBinding computeBoxingType(TypeBinding typeBinding) {
        int i10 = typeBinding.f102482id;
        if (i10 == 2) {
            char[][] cArr = TypeConstants.JAVA_LANG_CHARACTER;
            ReferenceBinding type = getType(cArr, javaBaseModule());
            return type != null ? type : new ProblemReferenceBinding(cArr, null, 1);
        }
        if (i10 == 3) {
            char[][] cArr2 = TypeConstants.JAVA_LANG_BYTE;
            ReferenceBinding type2 = getType(cArr2, javaBaseModule());
            return type2 != null ? type2 : new ProblemReferenceBinding(cArr2, null, 1);
        }
        if (i10 == 4) {
            char[][] cArr3 = TypeConstants.JAVA_LANG_SHORT;
            ReferenceBinding type3 = getType(cArr3, javaBaseModule());
            return type3 != null ? type3 : new ProblemReferenceBinding(cArr3, null, 1);
        }
        if (i10 == 5) {
            char[][] cArr4 = TypeConstants.JAVA_LANG_BOOLEAN;
            ReferenceBinding type4 = getType(cArr4, javaBaseModule());
            return type4 != null ? type4 : new ProblemReferenceBinding(cArr4, null, 1);
        }
        switch (i10) {
            case 7:
                char[][] cArr5 = TypeConstants.JAVA_LANG_LONG;
                ReferenceBinding type5 = getType(cArr5, javaBaseModule());
                return type5 != null ? type5 : new ProblemReferenceBinding(cArr5, null, 1);
            case 8:
                char[][] cArr6 = TypeConstants.JAVA_LANG_DOUBLE;
                ReferenceBinding type6 = getType(cArr6, javaBaseModule());
                return type6 != null ? type6 : new ProblemReferenceBinding(cArr6, null, 1);
            case 9:
                char[][] cArr7 = TypeConstants.JAVA_LANG_FLOAT;
                ReferenceBinding type7 = getType(cArr7, javaBaseModule());
                return type7 != null ? type7 : new ProblemReferenceBinding(cArr7, null, 1);
            case 10:
                char[][] cArr8 = TypeConstants.JAVA_LANG_INTEGER;
                ReferenceBinding type8 = getType(cArr8, javaBaseModule());
                return type8 != null ? type8 : new ProblemReferenceBinding(cArr8, null, 1);
            default:
                switch (i10) {
                    case 26:
                        return TypeBinding.BYTE;
                    case 27:
                        return TypeBinding.SHORT;
                    case 28:
                        return TypeBinding.CHAR;
                    case 29:
                        return TypeBinding.INT;
                    case 30:
                        return TypeBinding.LONG;
                    case 31:
                        return TypeBinding.FLOAT;
                    case 32:
                        return TypeBinding.DOUBLE;
                    case 33:
                        return TypeBinding.BOOLEAN;
                    default:
                        int kind = typeBinding.kind();
                        if (kind == 516 || kind == 4100 || kind == 8196 || kind == 32772) {
                            switch (typeBinding.erasure().f102482id) {
                                case 26:
                                    return TypeBinding.BYTE;
                                case 27:
                                    return TypeBinding.SHORT;
                                case 28:
                                    return TypeBinding.CHAR;
                                case 29:
                                    return TypeBinding.INT;
                                case 30:
                                    return TypeBinding.LONG;
                                case 31:
                                    return TypeBinding.FLOAT;
                                case 32:
                                    return TypeBinding.DOUBLE;
                                case 33:
                                    return TypeBinding.BOOLEAN;
                            }
                        }
                        if (kind == 65540) {
                            return ((PolyTypeBinding) typeBinding).computeBoxingType();
                        }
                        return typeBinding;
                }
        }
    }

    public boolean containsNullTypeAnnotation(IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr.length == 0) {
            return false;
        }
        for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
            char[] typeName = iBinaryAnnotation.getTypeName();
            if (typeName != null && typeName.length >= 3 && typeName[0] == 'L' && getNullAnnotationBit(CharOperation.splitOn('/', typeName, 1, typeName.length - 1)) != 0) {
                return true;
            }
        }
        return false;
    }

    public ReferenceBinding convertToParameterizedType(ReferenceBinding referenceBinding) {
        ReferenceBinding referenceBinding2;
        boolean z10;
        if (referenceBinding == null) {
            return referenceBinding;
        }
        boolean isGenericType = referenceBinding.isGenericType();
        if (!isGenericType && !referenceBinding.hasEnclosingInstanceContext()) {
            return referenceBinding;
        }
        ReferenceBinding enclosingType = referenceBinding.enclosingType();
        if (enclosingType == null || !referenceBinding.hasEnclosingInstanceContext()) {
            referenceBinding2 = enclosingType;
            z10 = isGenericType;
        } else {
            referenceBinding2 = convertToParameterizedType(enclosingType);
            z10 = TypeBinding.notEquals(enclosingType, referenceBinding2) | isGenericType;
        }
        if (z10) {
            return createParameterizedType(referenceBinding, isGenericType ? referenceBinding.typeVariables() : null, referenceBinding2);
        }
        return referenceBinding;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding convertToRawType(TypeBinding typeBinding, boolean z10) {
        int dimensions;
        TypeBinding leafComponentType;
        ReferenceBinding convertToParameterizedType;
        TypeBinding createParameterizedType;
        int kind = typeBinding.kind();
        boolean z11 = true;
        if (kind == 68) {
            dimensions = typeBinding.dimensions();
            leafComponentType = typeBinding.leafComponentType();
        } else {
            if (kind == 132 || kind == 516 || kind == 1028 || kind == 4100 || kind == 8196 || typeBinding.f102482id == 1) {
                return typeBinding;
            }
            leafComponentType = typeBinding;
            dimensions = 0;
        }
        int kind2 = leafComponentType.kind();
        if (kind2 != 132) {
            boolean isGenericType = kind2 != 260 ? kind2 == 2052 : ((ParameterizedTypeBinding) leafComponentType).genericType().isGenericType();
            boolean z12 = z10 & (!leafComponentType.isStatic());
            ReferenceBinding enclosingType = leafComponentType.enclosingType();
            if (enclosingType == null) {
                if (isGenericType) {
                    createParameterizedType = createRawType((ReferenceBinding) leafComponentType.erasure(), null);
                    if (TypeBinding.notEquals(leafComponentType, createParameterizedType)) {
                        return dimensions > 0 ? createArrayType(createParameterizedType, dimensions) : createParameterizedType;
                    }
                }
                createParameterizedType = leafComponentType;
                if (TypeBinding.notEquals(leafComponentType, createParameterizedType)) {
                }
            } else {
                if (((ReferenceBinding) leafComponentType).hasEnclosingInstanceContext()) {
                    if (enclosingType.kind() == 1028) {
                        convertToParameterizedType = enclosingType;
                    } else if (!z12 || isGenericType) {
                        convertToParameterizedType = isGenericType ? (ReferenceBinding) convertToRawType(enclosingType, false) : convertToParameterizedType(enclosingType);
                    } else {
                        convertToParameterizedType = (ReferenceBinding) convertToRawType(enclosingType, z12);
                        z11 = TypeBinding.notEquals(enclosingType, convertToParameterizedType);
                    }
                    if (z11) {
                        if (TypeBinding.notEquals(enclosingType, convertToParameterizedType)) {
                            createParameterizedType = createParameterizedType((ReferenceBinding) leafComponentType.erasure(), null, convertToParameterizedType);
                        }
                        createParameterizedType = leafComponentType;
                    } else {
                        createParameterizedType = createRawType((ReferenceBinding) leafComponentType.erasure(), convertToParameterizedType);
                    }
                    if (TypeBinding.notEquals(leafComponentType, createParameterizedType)) {
                    }
                } else {
                    convertToParameterizedType = (ReferenceBinding) enclosingType.original();
                }
                z11 = isGenericType;
                if (z11) {
                }
                if (TypeBinding.notEquals(leafComponentType, createParameterizedType)) {
                }
            }
        }
        return typeBinding;
    }

    public ReferenceBinding[] convertToRawTypes(ReferenceBinding[] referenceBindingArr, boolean z10, boolean z11) {
        if (referenceBindingArr == null) {
            return null;
        }
        int length = referenceBindingArr.length;
        ReferenceBinding[] referenceBindingArr2 = referenceBindingArr;
        for (int i10 = 0; i10 < length; i10++) {
            ReferenceBinding referenceBinding = referenceBindingArr[i10];
            ReferenceBinding referenceBinding2 = (ReferenceBinding) convertToRawType(z10 ? referenceBinding.erasure() : referenceBinding, z11);
            if (TypeBinding.notEquals(referenceBinding2, referenceBinding)) {
                if (referenceBindingArr2 == referenceBindingArr) {
                    referenceBindingArr2 = new ReferenceBinding[length];
                    System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i10);
                }
                referenceBindingArr2[i10] = referenceBinding2;
            } else if (referenceBindingArr2 != referenceBindingArr) {
                referenceBindingArr2[i10] = referenceBinding;
            }
        }
        return referenceBindingArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding convertUnresolvedBinaryToRawType(TypeBinding typeBinding) {
        int dimensions;
        TypeBinding leafComponentType;
        TypeBinding createRawType;
        int kind = typeBinding.kind();
        boolean z10 = false;
        if (kind == 68) {
            dimensions = typeBinding.dimensions();
            leafComponentType = typeBinding.leafComponentType();
        } else {
            if (kind == 132 || kind == 516 || kind == 1028 || kind == 4100 || kind == 8196 || typeBinding.f102482id == 1) {
                return typeBinding;
            }
            leafComponentType = typeBinding;
            dimensions = 0;
        }
        int kind2 = leafComponentType.kind();
        if (kind2 != 132) {
            if (kind2 == 260) {
                z10 = ((ParameterizedTypeBinding) leafComponentType).genericType().isGenericType();
            } else if (kind2 == 2052) {
                z10 = true;
            }
            ReferenceBinding enclosingType = leafComponentType.enclosingType();
            if (enclosingType == null) {
                if (z10) {
                    createRawType = createRawType((ReferenceBinding) leafComponentType.erasure(), null);
                    if (TypeBinding.notEquals(leafComponentType, createRawType)) {
                        return dimensions > 0 ? createArrayType(createRawType, dimensions) : createRawType;
                    }
                }
                createRawType = leafComponentType;
                if (TypeBinding.notEquals(leafComponentType, createRawType)) {
                }
            } else {
                if (!z10 && leafComponentType.isStatic()) {
                    return leafComponentType;
                }
                ReferenceBinding referenceBinding = (ReferenceBinding) convertUnresolvedBinaryToRawType(enclosingType);
                if (TypeBinding.notEquals(referenceBinding, enclosingType) ? true : z10) {
                    createRawType = createRawType((ReferenceBinding) leafComponentType.erasure(), referenceBinding);
                    if (TypeBinding.notEquals(leafComponentType, createRawType)) {
                    }
                }
                createRawType = leafComponentType;
                if (TypeBinding.notEquals(leafComponentType, createRawType)) {
                }
            }
        }
        return typeBinding;
    }

    public TypeBinding createAnnotatedType(TypeBinding typeBinding, AnnotationBinding[][] annotationBindingArr) {
        return this.typeSystem.getAnnotatedType(typeBinding, annotationBindingArr);
    }

    public AnnotationBinding createAnnotation(ReferenceBinding referenceBinding, ElementValuePair[] elementValuePairArr) {
        if (elementValuePairArr.length == 0) {
            return this.typeSystem.getAnnotationType(referenceBinding, true);
        }
        AnnotationBinding.setMethodBindings(referenceBinding, elementValuePairArr);
        return new AnnotationBinding(referenceBinding, elementValuePairArr);
    }

    public ArrayBinding createArrayType(TypeBinding typeBinding, int i10) {
        return this.typeSystem.getArrayType(typeBinding, i10);
    }

    public BinaryTypeBinding createBinaryTypeFrom(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        return createBinaryTypeFrom(iBinaryType, packageBinding, true, accessRestriction);
    }

    public CaptureBinding createCapturedWildcard(WildcardBinding wildcardBinding, ReferenceBinding referenceBinding, int i10, int i11, ASTNode aSTNode, int i12) {
        return this.typeSystem.getCapturedWildcard(wildcardBinding, referenceBinding, i10, i11, aSTNode, i12);
    }

    public ParameterizedMethodBinding createGetClassMethod(TypeBinding typeBinding, MethodBinding methodBinding, Scope scope) {
        ParameterizedMethodBinding parameterizedMethodBinding;
        SimpleLookupTable simpleLookupTable = this.uniqueGetClassMethodBinding;
        if (simpleLookupTable == null) {
            this.uniqueGetClassMethodBinding = new SimpleLookupTable(3);
            parameterizedMethodBinding = null;
        } else {
            parameterizedMethodBinding = (ParameterizedMethodBinding) simpleLookupTable.get(typeBinding);
        }
        if (parameterizedMethodBinding != null) {
            return parameterizedMethodBinding;
        }
        ParameterizedMethodBinding instantiateGetClass = ParameterizedMethodBinding.instantiateGetClass(typeBinding, methodBinding, scope);
        this.uniqueGetClassMethodBinding.put(typeBinding, instantiateGetClass);
        return instantiateGetClass;
    }

    public TypeBinding createIntersectionType18(ReferenceBinding[] referenceBindingArr) {
        if (!referenceBindingArr[0].isClass()) {
            Arrays.sort(referenceBindingArr, new Comparator<TypeBinding>() {
                @Override
                public int compare(TypeBinding typeBinding, TypeBinding typeBinding2) {
                    if (typeBinding.isClass()) {
                        return -1;
                    }
                    if (typeBinding2.isClass()) {
                        return 1;
                    }
                    return CharOperation.compareTo(typeBinding.readableName(), typeBinding2.readableName());
                }
            });
        }
        return this.typeSystem.getIntersectionType18(referenceBindingArr);
    }

    public ReferenceBinding createMemberType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return this.typeSystem.getMemberType(referenceBinding, referenceBinding2);
    }

    public MissingTypeBinding createMissingType(PackageBinding packageBinding, char[][] cArr) {
        if (packageBinding == null && (packageBinding = computePackageFrom(cArr, true)) == TheNotFoundPackage) {
            packageBinding = this.defaultPackage;
        }
        MissingTypeBinding missingTypeBinding = new MissingTypeBinding(packageBinding, cArr, this);
        if (missingTypeBinding.f102482id != 1) {
            char[][] cArr2 = TypeConstants.JAVA_LANG_OBJECT;
            ReferenceBinding type = getType(cArr2, javaBaseModule());
            if (type == null) {
                type = createMissingType(null, cArr2);
            }
            missingTypeBinding.setMissingSuperclass(type);
        }
        packageBinding.addType(missingTypeBinding);
        if (this.missingTypes == null) {
            this.missingTypes = new ArrayList(3);
        }
        this.missingTypes.add(missingTypeBinding);
        return missingTypeBinding;
    }

    public PackageBinding createPackage(char[][] cArr) {
        PackageBinding incarnation;
        PackageBinding package0 = getPackage0(cArr[0]);
        if (package0 == null || package0 == TheNotFoundPackage) {
            package0 = new PackageBinding(cArr[0], this, this.module);
            this.knownPackages.put(cArr[0], package0);
            ModuleBinding moduleBinding = this.module;
            if (moduleBinding != null) {
                package0 = moduleBinding.addPackage(package0, true);
                this.knownPackages.put(cArr[0], package0);
            }
        }
        int length = cArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            ReferenceBinding type0 = package0.getType0(cArr[i10]);
            if (type0 != null && type0 != TheNotFoundType && !(type0 instanceof UnresolvedReferenceBinding)) {
                return null;
            }
            PackageBinding package02 = package0.getPackage0(cArr[i10]);
            if (package02 == null || package02 == TheNotFoundPackage) {
                INameEnvironment iNameEnvironment = this.nameEnvironment;
                if (iNameEnvironment instanceof INameEnvironmentExtension) {
                    if (((INameEnvironmentExtension) iNameEnvironment).findType(cArr[i10], package0.compoundName, false, this.module.nameForLookup()) != null) {
                        return null;
                    }
                } else if (iNameEnvironment.findType(cArr[i10], package0.compoundName) != null) {
                    return null;
                }
                if ((package0 instanceof SplitPackageBinding) && (incarnation = ((SplitPackageBinding) package0).getIncarnation(this.module)) != null) {
                    package02 = incarnation.getPackage0(cArr[i10]);
                }
                if (package02 == null) {
                    package0 = package0.addPackage(new PackageBinding(CharOperation.subarray(cArr, 0, i10 + 1), package0, this, this.module), this.module);
                }
            }
            package0 = package02;
        }
        return package0 instanceof SplitPackageBinding ? ((SplitPackageBinding) package0).getIncarnation(this.module) : package0;
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding methodBinding, RawTypeBinding rawTypeBinding) {
        boolean z10;
        int i10;
        ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArr = (ParameterizedGenericMethodBinding[]) this.uniqueParameterizedGenericMethodBindings.get(methodBinding);
        if (parameterizedGenericMethodBindingArr != null) {
            int length = parameterizedGenericMethodBindingArr.length;
            i10 = 0;
            while (i10 < length) {
                ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = parameterizedGenericMethodBindingArr[i10];
                if (parameterizedGenericMethodBinding == null) {
                    break;
                }
                if (parameterizedGenericMethodBinding.isRaw) {
                    if (parameterizedGenericMethodBinding.declaringClass == (rawTypeBinding == null ? methodBinding.declaringClass : rawTypeBinding)) {
                        return parameterizedGenericMethodBinding;
                    }
                }
                i10++;
            }
            z10 = true;
        } else {
            parameterizedGenericMethodBindingArr = new ParameterizedGenericMethodBinding[5];
            this.uniqueParameterizedGenericMethodBindings.put(methodBinding, parameterizedGenericMethodBindingArr);
            z10 = false;
            i10 = 0;
        }
        int length2 = parameterizedGenericMethodBindingArr.length;
        if (z10 && i10 == length2) {
            ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArr2 = new ParameterizedGenericMethodBinding[length2 * 2];
            System.arraycopy(parameterizedGenericMethodBindingArr, 0, parameterizedGenericMethodBindingArr2, 0, length2);
            this.uniqueParameterizedGenericMethodBindings.put(methodBinding, parameterizedGenericMethodBindingArr2);
            parameterizedGenericMethodBindingArr = parameterizedGenericMethodBindingArr2;
        }
        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding2 = new ParameterizedGenericMethodBinding(methodBinding, rawTypeBinding, this);
        parameterizedGenericMethodBindingArr[i10] = parameterizedGenericMethodBinding2;
        return parameterizedGenericMethodBinding2;
    }

    public ParameterizedTypeBinding createParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2) {
        AnnotationBinding[] annotationBindingArr = referenceBinding.typeAnnotations;
        if (annotationBindingArr != Binding.NO_ANNOTATIONS) {
            return this.typeSystem.getParameterizedType((ReferenceBinding) referenceBinding.unannotated(), typeBindingArr, referenceBinding2, annotationBindingArr);
        }
        return this.typeSystem.getParameterizedType(referenceBinding, typeBindingArr, referenceBinding2);
    }

    public PolymorphicMethodBinding createPolymorphicMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, Scope scope) {
        boolean z10;
        int i10;
        String str = new String(methodBinding.selector);
        PolymorphicMethodBinding[] polymorphicMethodBindingArr = (PolymorphicMethodBinding[]) this.uniquePolymorphicMethodBindings.get(str);
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        for (int i11 = 0; i11 < length; i11++) {
            TypeBinding typeBinding = typeBindingArr[i11];
            if (typeBinding.f102482id == 12) {
                typeBindingArr2[i11] = getType(TypeConstants.JAVA_LANG_VOID, javaBaseModule());
            } else if (typeBinding.isPolyType()) {
                PolyTypeBinding polyTypeBinding = (PolyTypeBinding) typeBinding;
                if (scope instanceof BlockScope) {
                    Expression expression = polyTypeBinding.expression;
                    if (expression.resolvedType == null) {
                        expression.setExpectedType(scope.getJavaLangObject());
                        typeBindingArr2[i11] = polyTypeBinding.expression.resolveType((BlockScope) scope);
                    }
                }
                typeBindingArr2[i11] = polyTypeBinding.expression.resolvedType;
            } else {
                typeBindingArr2[i11] = typeBinding.erasure();
            }
        }
        if (polymorphicMethodBindingArr != null) {
            int length2 = polymorphicMethodBindingArr.length;
            i10 = 0;
            while (i10 < length2) {
                PolymorphicMethodBinding polymorphicMethodBinding = polymorphicMethodBindingArr[i10];
                if (polymorphicMethodBinding == null) {
                    break;
                }
                if (polymorphicMethodBinding.matches(typeBindingArr2, methodBinding.returnType)) {
                    return polymorphicMethodBinding;
                }
                i10++;
            }
            z10 = true;
        } else {
            polymorphicMethodBindingArr = new PolymorphicMethodBinding[5];
            this.uniquePolymorphicMethodBindings.put(str, polymorphicMethodBindingArr);
            z10 = false;
            i10 = 0;
        }
        int length3 = polymorphicMethodBindingArr.length;
        if (z10 && i10 == length3) {
            PolymorphicMethodBinding[] polymorphicMethodBindingArr2 = new PolymorphicMethodBinding[length3 * 2];
            System.arraycopy(polymorphicMethodBindingArr, 0, polymorphicMethodBindingArr2, 0, length3);
            this.uniquePolymorphicMethodBindings.put(str, polymorphicMethodBindingArr2);
            polymorphicMethodBindingArr = polymorphicMethodBindingArr2;
        }
        PolymorphicMethodBinding polymorphicMethodBinding2 = new PolymorphicMethodBinding(methodBinding, typeBindingArr2);
        polymorphicMethodBindingArr[i10] = polymorphicMethodBinding2;
        return polymorphicMethodBinding2;
    }

    public RawTypeBinding createRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        AnnotationBinding[] annotationBindingArr = referenceBinding.typeAnnotations;
        if (annotationBindingArr != Binding.NO_ANNOTATIONS) {
            return this.typeSystem.getRawType((ReferenceBinding) referenceBinding.unannotated(), referenceBinding2, annotationBindingArr);
        }
        return this.typeSystem.getRawType(referenceBinding, referenceBinding2);
    }

    public AnnotationBinding createUnresolvedAnnotation(ReferenceBinding referenceBinding, ElementValuePair[] elementValuePairArr) {
        return elementValuePairArr.length != 0 ? new UnresolvedAnnotationBinding(referenceBinding, elementValuePairArr, this) : this.typeSystem.getAnnotationType(referenceBinding, false);
    }

    public WildcardBinding createWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11) {
        AnnotationBinding[] annotationBindingArr;
        if (referenceBinding != null && (annotationBindingArr = referenceBinding.typeAnnotations) != Binding.NO_ANNOTATIONS) {
            return this.typeSystem.getWildcard((ReferenceBinding) referenceBinding.unannotated(), i10, typeBinding, typeBindingArr, i11, annotationBindingArr);
        }
        return this.typeSystem.getWildcard(referenceBinding, i10, typeBinding, typeBindingArr, i11);
    }

    public AnnotationBinding[] filterNullTypeAnnotations(AnnotationBinding[] annotationBindingArr) {
        if (annotationBindingArr.length == 0) {
            return annotationBindingArr;
        }
        AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[annotationBindingArr.length];
        int i10 = 0;
        for (AnnotationBinding annotationBinding : annotationBindingArr) {
            if (annotationBinding == null) {
                i10++;
            } else if (!annotationBinding.type.hasNullBit(96)) {
                annotationBindingArr2[i10] = annotationBinding;
                i10++;
            }
        }
        if (i10 == 0) {
            return Binding.NO_ANNOTATIONS;
        }
        if (i10 == annotationBindingArr.length) {
            return annotationBindingArr;
        }
        AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[i10];
        System.arraycopy(annotationBindingArr2, 0, annotationBindingArr3, 0, i10);
        return annotationBindingArr3;
    }

    public AccessRestriction getAccessRestriction(TypeBinding typeBinding) {
        return (AccessRestriction) this.accessRestrictions.get(typeBinding);
    }

    public TypeBinding[] getAnnotatedTypes(TypeBinding typeBinding) {
        return this.typeSystem.getAnnotatedTypes(typeBinding);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ReferenceBinding getCachedType(char[][] cArr) {
        ModuleBinding[] moduleBindingArr;
        ReferenceBinding cachedType0 = getCachedType0(cArr);
        if (cachedType0 == null && this.useModuleSystem) {
            if (!this.module.isUnnamed()) {
                ModuleBinding moduleBinding = this.module;
                if (!moduleBinding.isAuto) {
                    moduleBindingArr = moduleBinding.getAllRequiredModules();
                    for (ModuleBinding moduleBinding2 : moduleBindingArr) {
                        if (moduleBinding2 != null && (cachedType0 = moduleBinding2.environment.getCachedType0(cArr)) != null && cachedType0.isValidBinding()) {
                            break;
                        }
                    }
                }
            }
            moduleBindingArr = this.root.knownModules.valueTable;
            while (r3 < r2) {
            }
        }
        return cachedType0;
    }

    public ReferenceBinding getCachedType0(char[][] cArr) {
        int i10;
        if (cArr.length == 1) {
            return this.defaultPackage.getType0(cArr[0]);
        }
        PackageBinding package0 = getPackage0(cArr[0]);
        if (package0 != null && package0 != TheNotFoundPackage) {
            int length = cArr.length - 1;
            for (1; i10 < length; i10 + 1) {
                package0 = package0.getPackage0Any(cArr[i10]);
                i10 = (package0 == null || package0 == TheNotFoundPackage) ? 1 : i10 + 1;
            }
            return package0.getType0(cArr[cArr.length - 1]);
        }
        return null;
    }

    public ModuleBinding getModule(char[] cArr) {
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            return lookupEnvironment.getModule(cArr);
        }
        if (cArr == null || cArr == ModuleBinding.UNNAMED || CharOperation.equals(cArr, ModuleBinding.ALL_UNNAMED)) {
            return this.UnNamedModule;
        }
        ModuleBinding moduleBinding = this.knownModules.get(cArr);
        if (moduleBinding != null) {
            return moduleBinding;
        }
        if (!this.useModuleSystem) {
            return this.UnNamedModule;
        }
        IModule module = ((IModuleAwareNameEnvironment) this.nameEnvironment).getModule(cArr);
        if (module == null) {
            return moduleBinding;
        }
        this.typeRequestor.accept(module, this);
        return this.root.knownModules.get(cArr);
    }

    public AnnotationBinding getNonNullAnnotation() {
        AnnotationBinding annotationBinding = this.nonNullAnnotation;
        if (annotationBinding != null) {
            return annotationBinding;
        }
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            AnnotationBinding nonNullAnnotation = lookupEnvironment.getNonNullAnnotation();
            this.nonNullAnnotation = nonNullAnnotation;
            return nonNullAnnotation;
        }
        AnnotationBinding annotationType = this.typeSystem.getAnnotationType(getResolvedType(this.globalOptions.nonNullAnnotationName, null), true);
        this.nonNullAnnotation = annotationType;
        return annotationType;
    }

    public char[][] getNonNullAnnotationName() {
        return this.globalOptions.nonNullAnnotationName;
    }

    public char[][] getNonNullByDefaultAnnotationName() {
        return this.globalOptions.nonNullByDefaultAnnotationName;
    }

    public int getNullAnnotationBit(char[][] cArr) {
        if (this.allNullAnnotations == null) {
            HashMap hashMap = new HashMap();
            this.allNullAnnotations = hashMap;
            hashMap.put(CharOperation.toString(this.globalOptions.nonNullAnnotationName), 32);
            this.allNullAnnotations.put(CharOperation.toString(this.globalOptions.nullableAnnotationName), 64);
            this.allNullAnnotations.put(CharOperation.toString(this.globalOptions.nonNullByDefaultAnnotationName), 128);
            for (String str : this.globalOptions.nullableAnnotationSecondaryNames) {
                this.allNullAnnotations.put(str, 64);
            }
            for (String str2 : this.globalOptions.nonNullAnnotationSecondaryNames) {
                this.allNullAnnotations.put(str2, 32);
            }
            for (String str3 : this.globalOptions.nonNullByDefaultAnnotationSecondaryNames) {
                this.allNullAnnotations.put(str3, 128);
            }
        }
        Integer num = this.allNullAnnotations.get(CharOperation.toString(cArr));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public AnnotationBinding getNullableAnnotation() {
        AnnotationBinding annotationBinding = this.nullableAnnotation;
        if (annotationBinding != null) {
            return annotationBinding;
        }
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            AnnotationBinding nullableAnnotation = lookupEnvironment.getNullableAnnotation();
            this.nullableAnnotation = nullableAnnotation;
            return nullableAnnotation;
        }
        AnnotationBinding annotationType = this.typeSystem.getAnnotationType(getResolvedType(this.globalOptions.nullableAnnotationName, null), true);
        this.nullableAnnotation = annotationType;
        return annotationType;
    }

    public char[][] getNullableAnnotationName() {
        return this.globalOptions.nullableAnnotationName;
    }

    public PackageBinding getPackage0(char[] cArr) {
        return this.knownPackages.get(cArr);
    }

    public ReferenceBinding getResolvedJavaBaseType(char[][] cArr, Scope scope) {
        return getResolvedType(cArr, javaBaseModule(), scope);
    }

    public ReferenceBinding getResolvedType(char[][] cArr, Scope scope) {
        return getResolvedType(cArr, scope == null ? this.UnNamedModule : scope.module(), scope);
    }

    public PackageBinding getTopLevelPackage(char[] cArr) {
        PackageBinding package0 = getPackage0(cArr);
        if (package0 != null) {
            if (package0 == TheNotFoundPackage) {
                return null;
            }
            return package0;
        }
        if (this.useModuleSystem) {
            ModuleBinding moduleBinding = this.module;
            if (moduleBinding != null) {
                package0 = moduleBinding.getTopLevelPackage(cArr);
            }
        } else if (this.nameEnvironment.isPackage(null, cArr)) {
            HashtableOfPackage hashtableOfPackage = this.knownPackages;
            PackageBinding packageBinding = new PackageBinding(cArr, this, this.module);
            hashtableOfPackage.put(cArr, packageBinding);
            package0 = packageBinding;
        }
        if (package0 == null) {
            this.knownPackages.put(cArr, TheNotFoundPackage);
            return null;
        }
        if (package0 == TheNotFoundPackage) {
            return null;
        }
        return package0;
    }

    public ReferenceBinding getType(char[][] cArr) {
        return getType(cArr, this.UnNamedModule);
    }

    public ReferenceBinding getTypeFromConstantPoolName(char[] cArr, int i10, int i11, boolean z10, char[][][] cArr2, ITypeAnnotationWalker iTypeAnnotationWalker) {
        if (i11 == -1) {
            i11 = cArr.length;
        }
        char[][] splitOn = CharOperation.splitOn('/', cArr, i10, i11);
        boolean z11 = false;
        if (cArr2 != null) {
            int length = cArr2.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    break;
                }
                if (CharOperation.equals(splitOn, cArr2[i12])) {
                    z11 = true;
                    break;
                }
                i12++;
            }
        }
        ReferenceBinding typeFromCompoundName = getTypeFromCompoundName(splitOn, z10, z11);
        return iTypeAnnotationWalker != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER ? (ReferenceBinding) annotateType(typeFromCompoundName, iTypeAnnotationWalker, cArr2) : typeFromCompoundName;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding getTypeFromSignature(char[] cArr, int i10, int i11, boolean z10, TypeBinding typeBinding, char[][][] cArr2, ITypeAnnotationWalker iTypeAnnotationWalker) {
        ITypeAnnotationWalker iTypeAnnotationWalker2;
        AnnotationBinding[][] annotationBindingArr;
        int i12;
        int i13 = i10;
        int i14 = 0;
        while (cArr[i13] == '[') {
            i13++;
            i14++;
        }
        TypeBinding typeBinding2 = null;
        if (i14 > 0) {
            iTypeAnnotationWalker2 = iTypeAnnotationWalker;
            if (iTypeAnnotationWalker2 != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
                annotationBindingArr = null;
                for (int i15 = 0; i15 < i14; i15++) {
                    AnnotationBinding[] createAnnotations = BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker2.getAnnotationsAtCursor(0, true), this, cArr2);
                    if (createAnnotations != Binding.NO_ANNOTATIONS) {
                        if (annotationBindingArr == null) {
                            annotationBindingArr = new AnnotationBinding[i14];
                        }
                        annotationBindingArr[i15] = createAnnotations;
                    }
                    iTypeAnnotationWalker2 = iTypeAnnotationWalker2.toNextArrayDimension();
                }
                i12 = i11;
                if (i12 == -1) {
                    i12 = cArr.length - 1;
                }
                if (i13 != i12) {
                    char c10 = cArr[i13];
                    if (c10 == 'F') {
                        typeBinding2 = TypeBinding.FLOAT;
                    } else if (c10 == 'S') {
                        typeBinding2 = TypeBinding.SHORT;
                    } else if (c10 == 'V') {
                        typeBinding2 = TypeBinding.VOID;
                    } else if (c10 == 'Z') {
                        typeBinding2 = TypeBinding.BOOLEAN;
                    } else if (c10 == 'I') {
                        typeBinding2 = TypeBinding.INT;
                    } else if (c10 != 'J') {
                        switch (c10) {
                            case 'B':
                                typeBinding2 = TypeBinding.BYTE;
                                break;
                            case 'C':
                                typeBinding2 = TypeBinding.CHAR;
                                break;
                            case 'D':
                                typeBinding2 = TypeBinding.DOUBLE;
                                break;
                            default:
                                this.problemReporter.corruptedSignature(typeBinding, cArr, i13);
                                break;
                        }
                    } else {
                        typeBinding2 = TypeBinding.LONG;
                    }
                } else {
                    typeBinding2 = getTypeFromConstantPoolName(cArr, i13 + 1, i12, z10, cArr2);
                }
                if (z10) {
                    if (iTypeAnnotationWalker2 != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
                        typeBinding2 = annotateType(typeBinding2, iTypeAnnotationWalker2, cArr2);
                    }
                    return i14 != 0 ? this.typeSystem.getArrayType(typeBinding2, i14, AnnotatableTypeSystem.flattenedAnnotations(annotationBindingArr)) : typeBinding2;
                }
                if (i14 == 0) {
                    return typeBinding2;
                }
                throw new IllegalStateException();
            }
        } else {
            iTypeAnnotationWalker2 = iTypeAnnotationWalker;
        }
        annotationBindingArr = null;
        i12 = i11;
        if (i12 == -1) {
        }
        if (i13 != i12) {
        }
        if (z10) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c1  */
    /* JADX WARN: Type inference failed for: r0v29, types: [org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding] */
    /* JADX WARN: Type inference failed for: r0v6, types: [org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding, org.eclipse.jdt.internal.compiler.lookup.TypeBinding] */
    /* JADX WARN: Type inference failed for: r6v7, types: [org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding getTypeFromTypeSignature(SignatureWrapper signatureWrapper, TypeVariableBinding[] typeVariableBindingArr, ReferenceBinding referenceBinding, char[][][] cArr, ITypeAnnotationWalker iTypeAnnotationWalker) {
        ITypeAnnotationWalker iTypeAnnotationWalker2;
        ITypeAnnotationWalker iTypeAnnotationWalker3;
        AnnotationBinding[][] annotationBindingArr;
        char[] cArr2;
        int i10;
        ITypeAnnotationWalker iTypeAnnotationWalker4;
        int i11;
        ParameterizedTypeBinding parameterizedTypeBinding;
        ParameterizedTypeBinding parameterizedTypeBinding2;
        TypeBinding[] typeBindingArr;
        ParameterizedTypeBinding parameterizedTypeBinding3;
        int i12 = 0;
        while (true) {
            char[] cArr3 = signatureWrapper.signature;
            int i13 = signatureWrapper.start;
            if (cArr3[i13] != '[') {
                break;
            }
            signatureWrapper.start = i13 + 1;
            i12++;
        }
        if (i12 > 0) {
            iTypeAnnotationWalker2 = iTypeAnnotationWalker;
            if (iTypeAnnotationWalker2 != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
                AnnotationBinding[][] annotationBindingArr2 = null;
                for (int i14 = 0; i14 < i12; i14++) {
                    AnnotationBinding[] createAnnotations = BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker2.getAnnotationsAtCursor(0, true), this, cArr);
                    if (createAnnotations != Binding.NO_ANNOTATIONS) {
                        if (annotationBindingArr2 == null) {
                            annotationBindingArr2 = new AnnotationBinding[i12];
                        }
                        annotationBindingArr2[i14] = createAnnotations;
                    }
                    iTypeAnnotationWalker2 = iTypeAnnotationWalker2.toNextArrayDimension();
                }
                annotationBindingArr = annotationBindingArr2;
                iTypeAnnotationWalker3 = iTypeAnnotationWalker2;
                cArr2 = signatureWrapper.signature;
                i10 = signatureWrapper.start;
                if (cArr2[i10] != 'T') {
                    int i15 = i10 + 1;
                    int computeEnd = signatureWrapper.computeEnd();
                    int length = typeVariableBindingArr.length;
                    do {
                        length--;
                        if (length < 0) {
                            ReferenceBinding referenceBinding2 = referenceBinding;
                            do {
                                TypeVariableBinding[] typeVariables = referenceBinding2 instanceof BinaryTypeBinding ? ((BinaryTypeBinding) referenceBinding2).typeVariables : referenceBinding2.typeVariables();
                                int length2 = typeVariables.length;
                                do {
                                    length2--;
                                    if (length2 < 0) {
                                        referenceBinding2 = referenceBinding2.enclosingType();
                                    }
                                } while (!CharOperation.equals(typeVariables[length2].sourceName, signatureWrapper.signature, i15, computeEnd));
                                return getTypeFromTypeVariable(typeVariables[length2], i12, annotationBindingArr, iTypeAnnotationWalker3, cArr);
                            } while (referenceBinding2 != null);
                            this.problemReporter.undefinedTypeVariableSignature(CharOperation.subarray(signatureWrapper.signature, i15, computeEnd), referenceBinding);
                            return null;
                        }
                    } while (!CharOperation.equals(typeVariableBindingArr[length].sourceName, signatureWrapper.signature, i15, computeEnd));
                    return getTypeFromTypeVariable(typeVariableBindingArr[length], i12, annotationBindingArr, iTypeAnnotationWalker3, cArr);
                }
                int computeEnd2 = signatureWrapper.computeEnd();
                boolean z10 = signatureWrapper.end == signatureWrapper.bracket;
                ITypeAnnotationWalker iTypeAnnotationWalker5 = iTypeAnnotationWalker3;
                TypeBinding typeFromSignature = getTypeFromSignature(cArr2, i10, computeEnd2, z10, referenceBinding, cArr, iTypeAnnotationWalker3);
                if (!z10) {
                    return i12 == 0 ? typeFromSignature : createArrayType(typeFromSignature, i12, AnnotatableTypeSystem.flattenedAnnotations(annotationBindingArr));
                }
                ?? r02 = (ReferenceBinding) typeFromSignature;
                ITypeAnnotationWalker iTypeAnnotationWalker6 = ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
                ParameterizedTypeBinding parameterizedTypeBinding4 = r02;
                if (iTypeAnnotationWalker5 != iTypeAnnotationWalker6) {
                    boolean z11 = r02 instanceof UnresolvedReferenceBinding;
                    parameterizedTypeBinding4 = r02;
                    if (z11) {
                        int depth = r02.depth();
                        parameterizedTypeBinding4 = r02;
                        if (depth > 0) {
                            parameterizedTypeBinding4 = (ReferenceBinding) BinaryTypeBinding.resolveType(r02, this, false);
                        }
                    }
                }
                ParameterizedTypeBinding parameterizedTypeBinding5 = parameterizedTypeBinding4;
                ReferenceBinding enclosingType = parameterizedTypeBinding5.enclosingType();
                if (iTypeAnnotationWalker5 == iTypeAnnotationWalker6 || parameterizedTypeBinding5.depth() <= 0) {
                    iTypeAnnotationWalker4 = iTypeAnnotationWalker5;
                } else {
                    int countNonStaticNestingLevels = countNonStaticNestingLevels(parameterizedTypeBinding5);
                    ITypeAnnotationWalker iTypeAnnotationWalker7 = iTypeAnnotationWalker5;
                    for (int i16 = 0; i16 < countNonStaticNestingLevels; i16++) {
                        iTypeAnnotationWalker7 = iTypeAnnotationWalker7.toNextNestedType();
                    }
                    iTypeAnnotationWalker4 = iTypeAnnotationWalker7;
                }
                ParameterizedTypeBinding createParameterizedType = createParameterizedType(parameterizedTypeBinding5, getTypeArgumentsFromSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, parameterizedTypeBinding5, cArr, iTypeAnnotationWalker4), enclosingType);
                ParameterizedTypeBinding parameterizedTypeBinding6 = parameterizedTypeBinding5;
                ParameterizedTypeBinding parameterizedTypeBinding7 = createParameterizedType;
                while (true) {
                    char[] cArr4 = signatureWrapper.signature;
                    i11 = signatureWrapper.start;
                    if (cArr4[i11] != '.') {
                        break;
                    }
                    int i17 = i11 + 1;
                    signatureWrapper.start = i17;
                    char[] nextWord = signatureWrapper.nextWord();
                    ?? r62 = (ReferenceBinding) BinaryTypeBinding.resolveType(parameterizedTypeBinding6, this, false);
                    ReferenceBinding memberType = r62.getMemberType(nextWord);
                    if (memberType == null) {
                        this.problemReporter.corruptedSignature(parameterizedTypeBinding7, signatureWrapper.signature, i17);
                    }
                    iTypeAnnotationWalker4 = memberType.isStatic() ? iTypeAnnotationWalker5 : iTypeAnnotationWalker4.toNextNestedType();
                    char[] cArr5 = signatureWrapper.signature;
                    int i18 = signatureWrapper.start;
                    if (cArr5[i18] == '<') {
                        signatureWrapper.start = i18 + 1;
                        parameterizedTypeBinding = memberType;
                        parameterizedTypeBinding2 = r62;
                        typeBindingArr = getTypeArgumentsFromSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, memberType, cArr, iTypeAnnotationWalker4);
                    } else {
                        parameterizedTypeBinding = memberType;
                        parameterizedTypeBinding2 = r62;
                        typeBindingArr = null;
                    }
                    if (typeBindingArr != null || (!parameterizedTypeBinding.isStatic() && parameterizedTypeBinding7.isParameterizedType())) {
                        if (parameterizedTypeBinding.isStatic()) {
                            parameterizedTypeBinding3 = parameterizedTypeBinding;
                            parameterizedTypeBinding7 = parameterizedTypeBinding2;
                        } else {
                            parameterizedTypeBinding3 = parameterizedTypeBinding;
                        }
                        parameterizedTypeBinding7 = createParameterizedType(parameterizedTypeBinding3, typeBindingArr, parameterizedTypeBinding7);
                    } else {
                        parameterizedTypeBinding3 = parameterizedTypeBinding;
                        parameterizedTypeBinding7 = parameterizedTypeBinding3;
                    }
                    parameterizedTypeBinding6 = parameterizedTypeBinding3;
                }
                signatureWrapper.start = i11 + 1;
                TypeBinding annotateType = annotateType(parameterizedTypeBinding7, iTypeAnnotationWalker5, cArr);
                return i12 == 0 ? annotateType : createArrayType(annotateType, i12, AnnotatableTypeSystem.flattenedAnnotations(annotationBindingArr));
            }
        } else {
            iTypeAnnotationWalker2 = iTypeAnnotationWalker;
        }
        iTypeAnnotationWalker3 = iTypeAnnotationWalker2;
        annotationBindingArr = null;
        cArr2 = signatureWrapper.signature;
        i10 = signatureWrapper.start;
        if (cArr2[i10] != 'T') {
        }
    }

    public TypeBinding getTypeFromVariantTypeSignature(SignatureWrapper signatureWrapper, TypeVariableBinding[] typeVariableBindingArr, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, int i10, char[][][] cArr, ITypeAnnotationWalker iTypeAnnotationWalker) {
        char[] cArr2 = signatureWrapper.signature;
        int i11 = signatureWrapper.start;
        char c10 = cArr2[i11];
        if (c10 == '*') {
            signatureWrapper.start = i11 + 1;
            return this.typeSystem.getWildcard(referenceBinding2, i10, null, null, 0, BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker.getAnnotationsAtCursor(-1, false), this, cArr));
        }
        if (c10 == '+') {
            signatureWrapper.start = i11 + 1;
            return this.typeSystem.getWildcard(referenceBinding2, i10, getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, cArr, iTypeAnnotationWalker.toWildcardBound()), null, 1, BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker.getAnnotationsAtCursor(-1, false), this, cArr));
        }
        if (c10 != '-') {
            return getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, cArr, iTypeAnnotationWalker);
        }
        signatureWrapper.start = i11 + 1;
        return this.typeSystem.getWildcard(referenceBinding2, i10, getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr, referenceBinding, cArr, iTypeAnnotationWalker.toWildcardBound()), null, 2, BinaryTypeBinding.createAnnotations(iTypeAnnotationWalker.getAnnotationsAtCursor(-1, false), this, cArr));
    }

    public TypeBinding getUnannotatedType(TypeBinding typeBinding) {
        return this.typeSystem.getUnannotatedType(typeBinding);
    }

    public boolean isMissingType(char[] cArr) {
        ArrayList arrayList = this.missingTypes;
        int size = arrayList == null ? 0 : arrayList.size();
        do {
            size--;
            if (size < 0) {
                return false;
            }
        } while (!CharOperation.equals(((MissingTypeBinding) this.missingTypes.get(size)).sourceName, cArr));
        return true;
    }

    public boolean isNullnessAnnotationPackage(PackageBinding packageBinding) {
        return this.nonnullAnnotationPackage == packageBinding || this.nullableAnnotationPackage == packageBinding || this.nonnullByDefaultAnnotationPackage == packageBinding;
    }

    public ModuleBinding javaBaseModule() {
        ModuleBinding moduleBinding = this.JavaBaseModule;
        if (moduleBinding != null) {
            return moduleBinding;
        }
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            ModuleBinding javaBaseModule = lookupEnvironment.javaBaseModule();
            this.JavaBaseModule = javaBaseModule;
            return javaBaseModule;
        }
        ModuleBinding module = this.useModuleSystem ? getModule(TypeConstants.JAVA_BASE) : null;
        if (module == null) {
            module = this.UnNamedModule;
        }
        this.JavaBaseModule = module;
        return module;
    }

    public ReferenceBinding maybeCreateParameterizedType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return (referenceBinding2 == null || (!referenceBinding2.isParameterizedType() && !referenceBinding2.isRawType()) || referenceBinding.isStatic()) ? referenceBinding : createParameterizedType(referenceBinding, null, referenceBinding2);
    }

    public MethodVerifier methodVerifier() {
        if (this.verifier == null) {
            this.verifier = newMethodVerifier();
        }
        return this.verifier;
    }

    public MethodVerifier newMethodVerifier() {
        return new MethodVerifier15(this);
    }

    public AnnotationBinding[] nullAnnotationsFromTagBits(long j10) {
        if (j10 == 72057594037927936L) {
            return new AnnotationBinding[]{getNonNullAnnotation()};
        }
        if (j10 == 36028797018963968L) {
            return new AnnotationBinding[]{getNullableAnnotation()};
        }
        return null;
    }

    public boolean qualifiedNameMatchesSignature(char[][] cArr, char[] cArr2) {
        int i10 = 1;
        for (int i11 = 0; i11 < cArr.length; i11++) {
            char[] cArr3 = cArr[i11];
            int i12 = 0;
            while (i12 < cArr3.length) {
                int i13 = i10 + 1;
                if (cArr3[i12] != cArr2[i10]) {
                    return false;
                }
                i12++;
                i10 = i13;
            }
            char c10 = cArr2[i10];
            if (c10 == ';' && i11 == cArr.length - 1) {
                return true;
            }
            i10++;
            if (c10 != '/') {
                return false;
            }
        }
        return false;
    }

    public void releaseClassFiles(ClassFile[] classFileArr) {
        for (ClassFile classFile : classFileArr) {
            this.classFilePool.release(classFile);
        }
    }

    public void reset() {
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            lookupEnvironment.reset();
            return;
        }
        this.stepCompleted = 0;
        this.knownModules = new HashtableOfModule();
        ModuleBinding.UnNamedModule unNamedModule = new ModuleBinding.UnNamedModule(this);
        this.UnNamedModule = unNamedModule;
        this.module = unNamedModule;
        this.JavaBaseModule = null;
        this.defaultPackage = new PackageBinding(this);
        this.defaultImports = null;
        this.knownPackages = new HashtableOfPackage();
        this.accessRestrictions = new HashMap(3);
        this.verifier = null;
        this.uniqueParameterizedGenericMethodBindings = new SimpleLookupTable(3);
        this.uniquePolymorphicMethodBindings = new SimpleLookupTable(3);
        this.uniqueGetClassMethodBinding = null;
        this.missingTypes = null;
        this.typesBeingConnected = new HashSet();
        int length = this.units.length;
        while (true) {
            length--;
            if (length < 0) {
                this.lastUnitIndex = -1;
                this.lastCompletedUnitIndex = -1;
                this.unitBeingCompleted = null;
                this.classFilePool.reset();
                this.typeSystem.reset();
                return;
            }
            this.units[length] = null;
        }
    }

    public void setAccessRestriction(ReferenceBinding referenceBinding, AccessRestriction accessRestriction) {
        if (accessRestriction == null) {
            return;
        }
        referenceBinding.modifiers |= 262144;
        this.accessRestrictions.put(referenceBinding, accessRestriction);
    }

    public void updateCaches(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding) {
        this.typeSystem.updateCaches(unresolvedReferenceBinding, referenceBinding);
    }

    public MethodBinding updatePolymorphicMethodReturnType(PolymorphicMethodBinding polymorphicMethodBinding, TypeBinding typeBinding) {
        boolean z10;
        int i10;
        String str = new String(polymorphicMethodBinding.selector);
        PolymorphicMethodBinding[] polymorphicMethodBindingArr = (PolymorphicMethodBinding[]) this.uniquePolymorphicMethodBindings.get(str);
        TypeBinding[] typeBindingArr = polymorphicMethodBinding.parameters;
        if (polymorphicMethodBindingArr != null) {
            int length = polymorphicMethodBindingArr.length;
            i10 = 0;
            while (i10 < length) {
                PolymorphicMethodBinding polymorphicMethodBinding2 = polymorphicMethodBindingArr[i10];
                if (polymorphicMethodBinding2 == null) {
                    break;
                }
                if (polymorphicMethodBinding2.matches(typeBindingArr, typeBinding)) {
                    return polymorphicMethodBinding2;
                }
                i10++;
            }
            z10 = true;
        } else {
            polymorphicMethodBindingArr = new PolymorphicMethodBinding[5];
            this.uniquePolymorphicMethodBindings.put(str, polymorphicMethodBindingArr);
            z10 = false;
            i10 = 0;
        }
        int length2 = polymorphicMethodBindingArr.length;
        if (z10 && i10 == length2) {
            PolymorphicMethodBinding[] polymorphicMethodBindingArr2 = new PolymorphicMethodBinding[length2 * 2];
            System.arraycopy(polymorphicMethodBindingArr, 0, polymorphicMethodBindingArr2, 0, length2);
            this.uniquePolymorphicMethodBindings.put(str, polymorphicMethodBindingArr2);
            polymorphicMethodBindingArr = polymorphicMethodBindingArr2;
        }
        PolymorphicMethodBinding polymorphicMethodBinding3 = new PolymorphicMethodBinding(polymorphicMethodBinding.original(), typeBinding, typeBindingArr);
        polymorphicMethodBindingArr[i10] = polymorphicMethodBinding3;
        return polymorphicMethodBinding3;
    }

    public boolean usesAnnotatedTypeSystem() {
        return this.typeSystem.isAnnotatedTypeSystem();
    }

    public boolean usesNullTypeAnnotations() {
        LookupEnvironment lookupEnvironment = this.root;
        if (lookupEnvironment != this) {
            return lookupEnvironment.usesNullTypeAnnotations();
        }
        Boolean bool = this.globalOptions.useNullTypeAnnotations;
        if (bool != null) {
            return bool.booleanValue();
        }
        initializeUsesNullTypeAnnotation();
        for (MethodBinding methodBinding : this.deferredEnumMethods) {
            int i10 = CharOperation.equals(methodBinding.selector, TypeConstants.VALUEOF) ? 10 : CharOperation.equals(methodBinding.selector, TypeConstants.VALUES) ? 9 : 0;
            if (i10 != 0) {
                SyntheticMethodBinding.markNonNull(methodBinding, i10, this);
            }
        }
        this.deferredEnumMethods.clear();
        return this.globalOptions.useNullTypeAnnotations.booleanValue();
    }

    public BinaryTypeBinding cacheBinaryType(IBinaryType iBinaryType, boolean z10, AccessRestriction accessRestriction) {
        char[][] splitOn = CharOperation.splitOn('/', iBinaryType.getName());
        ReferenceBinding cachedType = getCachedType(splitOn);
        if (cachedType == null || (cachedType instanceof UnresolvedReferenceBinding)) {
            return createBinaryTypeFrom(iBinaryType, computePackageFrom(splitOn, false), z10, accessRestriction);
        }
        return null;
    }

    public TypeBinding createAnnotatedType(TypeBinding typeBinding, AnnotationBinding[] annotationBindingArr) {
        long j10;
        int length = annotationBindingArr == null ? 0 : annotationBindingArr.length;
        if (typeBinding == null || length == 0) {
            return typeBinding;
        }
        AnnotationBinding[] typeAnnotations = typeBinding.getTypeAnnotations();
        int length2 = typeAnnotations == null ? 0 : typeAnnotations.length;
        if (length2 > 0) {
            AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[length + length2];
            System.arraycopy(annotationBindingArr, 0, annotationBindingArr2, 0, length);
            System.arraycopy(typeAnnotations, 0, annotationBindingArr2, length, length2);
            annotationBindingArr = annotationBindingArr2;
        }
        if (this.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[annotationBindingArr.length];
            int i10 = 0;
            long j11 = 0;
            for (int i11 = 0; i11 < annotationBindingArr.length; i11++) {
                AnnotationBinding annotationBinding = annotationBindingArr[i11];
                if (annotationBinding == null) {
                    annotationBindingArr3[i10] = null;
                    i10++;
                    j11 = 0;
                } else {
                    if (annotationBinding.type.hasNullBit(32)) {
                        j10 = 72057594037927936L;
                    } else {
                        j10 = annotationBindingArr[i11].type.hasNullBit(64) ? 36028797018963968L : 0L;
                    }
                    if ((j11 & j10) == 0) {
                        j11 |= j10;
                        annotationBindingArr3[i10] = annotationBindingArr[i11];
                        i10++;
                    }
                }
            }
            if (i10 < annotationBindingArr.length) {
                annotationBindingArr = new AnnotationBinding[i10];
                System.arraycopy(annotationBindingArr3, 0, annotationBindingArr, 0, i10);
            }
        }
        return this.typeSystem.getAnnotatedType(typeBinding, new AnnotationBinding[][]{annotationBindingArr});
    }

    public ArrayBinding createArrayType(TypeBinding typeBinding, int i10, AnnotationBinding[] annotationBindingArr) {
        return this.typeSystem.getArrayType(typeBinding, i10, annotationBindingArr);
    }

    public BinaryTypeBinding createBinaryTypeFrom(IBinaryType iBinaryType, PackageBinding packageBinding, boolean z10, AccessRestriction accessRestriction) {
        LookupEnvironment lookupEnvironment = packageBinding.environment;
        if (this != lookupEnvironment) {
            return lookupEnvironment.createBinaryTypeFrom(iBinaryType, packageBinding, z10, accessRestriction);
        }
        BinaryTypeBinding binaryTypeBinding = new BinaryTypeBinding(packageBinding, iBinaryType, this);
        ReferenceBinding type0 = packageBinding.getType0(binaryTypeBinding.compoundName[r1.length - 1]);
        if (type0 != null && !type0.isUnresolvedType()) {
            if (type0.isBinaryBinding()) {
                return (BinaryTypeBinding) type0;
            }
            return null;
        }
        packageBinding.addType(binaryTypeBinding);
        setAccessRestriction(binaryTypeBinding, accessRestriction);
        binaryTypeBinding.cachePartsFrom(iBinaryType, z10);
        return binaryTypeBinding;
    }

    public ReferenceBinding getResolvedType(char[][] cArr, ModuleBinding moduleBinding, Scope scope) {
        if (this.module != moduleBinding) {
            return moduleBinding.environment.getResolvedType(cArr, moduleBinding, scope);
        }
        ReferenceBinding type = getType(cArr, moduleBinding);
        if (type != null) {
            return type;
        }
        this.problemReporter.isClassPathCorrect(cArr, scope == null ? this.root.unitBeingCompleted : scope.referenceCompilationUnit(), this.missingClassFileLocation);
        return createMissingType(null, cArr);
    }

    public ReferenceBinding getType(char[][] cArr, ModuleBinding moduleBinding) {
        ReferenceBinding askForType;
        if (cArr.length == 1) {
            askForType = this.defaultPackage.getType0(cArr[0]);
            if (askForType == null) {
                PackageBinding package0 = getPackage0(cArr[0]);
                if (package0 != null && package0 != TheNotFoundPackage) {
                    return null;
                }
                askForType = askForType(this.defaultPackage, cArr[0], moduleBinding);
            }
        } else {
            PackageBinding package02 = getPackage0(cArr[0]);
            if (package02 == TheNotFoundPackage) {
                return null;
            }
            if (package02 != null) {
                int length = cArr.length - 1;
                for (int i10 = 1; i10 < length; i10++) {
                    package02 = package02.getPackage0(cArr[i10]);
                    if (package02 == null) {
                        break;
                    }
                    if (package02 == TheNotFoundPackage) {
                        return null;
                    }
                }
            }
            if (package02 == null) {
                askForType = askForType(cArr, moduleBinding);
            } else {
                ReferenceBinding type0 = package02.getType0(cArr[cArr.length - 1]);
                askForType = type0 == null ? askForType(package02, cArr[cArr.length - 1], moduleBinding) : type0;
            }
        }
        if (askForType == null || askForType == TheNotFoundType) {
            return null;
        }
        return (ReferenceBinding) BinaryTypeBinding.resolveType(askForType, this, false);
    }

    public ParameterizedTypeBinding createParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        return this.typeSystem.getParameterizedType(referenceBinding, typeBindingArr, referenceBinding2, annotationBindingArr);
    }

    public RawTypeBinding createRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        return this.typeSystem.getRawType(referenceBinding, referenceBinding2, annotationBindingArr);
    }

    public WildcardBinding createWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11, AnnotationBinding[] annotationBindingArr) {
        return this.typeSystem.getWildcard(referenceBinding, i10, typeBinding, typeBindingArr, i11, annotationBindingArr);
    }

    public boolean containsNullTypeAnnotation(AnnotationBinding[] annotationBindingArr) {
        if (annotationBindingArr.length == 0) {
            return false;
        }
        for (AnnotationBinding annotationBinding : annotationBindingArr) {
            if (annotationBinding.type.hasNullBit(96)) {
                return true;
            }
        }
        return false;
    }

    public ReferenceBinding getTypeFromConstantPoolName(char[] cArr, int i10, int i11, boolean z10, char[][][] cArr2) {
        return getTypeFromConstantPoolName(cArr, i10, i11, z10, cArr2, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER);
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        return createParameterizedGenericMethod(methodBinding, typeBindingArr, null);
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, TypeBinding typeBinding) {
        return createParameterizedGenericMethod(methodBinding, typeBindingArr, false, false, typeBinding);
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10, boolean z11, TypeBinding typeBinding) {
        boolean z12;
        int i10;
        ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArr;
        int i11;
        ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArr2 = (ParameterizedGenericMethodBinding[]) this.uniqueParameterizedGenericMethodBindings.get(methodBinding);
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        if (parameterizedGenericMethodBindingArr2 != null) {
            int length2 = parameterizedGenericMethodBindingArr2.length;
            i10 = 0;
            while (i10 < length2) {
                ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = parameterizedGenericMethodBindingArr2[i10];
                if (parameterizedGenericMethodBinding == null) {
                    break;
                }
                if (!parameterizedGenericMethodBinding.isRaw && parameterizedGenericMethodBinding.targetType == typeBinding && parameterizedGenericMethodBinding.inferredWithUncheckedConversion == z10) {
                    TypeBinding[] typeBindingArr2 = parameterizedGenericMethodBinding.typeArguments;
                    int length3 = typeBindingArr2 == null ? 0 : typeBindingArr2.length;
                    if (length != length3) {
                        continue;
                    } else {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length3) {
                                if (z10) {
                                    if (!parameterizedGenericMethodBinding.returnType.isParameterizedType() && !parameterizedGenericMethodBinding.returnType.isTypeVariable()) {
                                        for (ReferenceBinding referenceBinding : parameterizedGenericMethodBinding.thrownExceptions) {
                                            i11 = (referenceBinding.isParameterizedType() || referenceBinding.isTypeVariable()) ? 0 : i11 + 1;
                                        }
                                    }
                                }
                                return parameterizedGenericMethodBinding;
                            }
                            if (typeBindingArr[i12] != typeBindingArr2[i12]) {
                                break;
                            }
                            i12++;
                        }
                    }
                }
                i10++;
            }
            z12 = true;
        } else {
            parameterizedGenericMethodBindingArr2 = new ParameterizedGenericMethodBinding[5];
            this.uniqueParameterizedGenericMethodBindings.put(methodBinding, parameterizedGenericMethodBindingArr2);
            z12 = false;
            i10 = 0;
        }
        int length4 = parameterizedGenericMethodBindingArr2.length;
        if (z12 && i10 == length4) {
            ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArr3 = new ParameterizedGenericMethodBinding[length4 * 2];
            System.arraycopy(parameterizedGenericMethodBindingArr2, 0, parameterizedGenericMethodBindingArr3, 0, length4);
            this.uniqueParameterizedGenericMethodBindings.put(methodBinding, parameterizedGenericMethodBindingArr3);
            parameterizedGenericMethodBindingArr = parameterizedGenericMethodBindingArr3;
        } else {
            parameterizedGenericMethodBindingArr = parameterizedGenericMethodBindingArr2;
        }
        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding2 = new ParameterizedGenericMethodBinding(methodBinding, typeBindingArr, this, z10, z11, typeBinding);
        parameterizedGenericMethodBindingArr[i10] = parameterizedGenericMethodBinding2;
        return parameterizedGenericMethodBinding2;
    }

    public void completeTypeBindings(CompilationUnitDeclaration compilationUnitDeclaration) {
        LookupEnvironment lookupEnvironment = this.root;
        if (this != lookupEnvironment) {
            lookupEnvironment.completeTypeBindings(compilationUnitDeclaration);
            return;
        }
        int i10 = this.stepCompleted;
        if (i10 == 4) {
            completeTypeBindings();
            return;
        }
        CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
        if (compilationUnitScope == null) {
            return;
        }
        if (i10 >= 2) {
            this.unitBeingCompleted = compilationUnitDeclaration;
            compilationUnitScope.checkAndSetImports();
        }
        if (this.stepCompleted >= 3) {
            this.unitBeingCompleted = compilationUnitDeclaration;
            compilationUnitDeclaration.scope.connectTypeHierarchy();
        }
        this.unitBeingCompleted = null;
    }

    public void completeTypeBindings(CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
        if (compilationUnitScope == null) {
            return;
        }
        LookupEnvironment lookupEnvironment = this.root;
        CompilationUnitDeclaration compilationUnitDeclaration2 = lookupEnvironment.unitBeingCompleted;
        lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
        compilationUnitScope.checkAndSetImports();
        compilationUnitDeclaration.scope.connectTypeHierarchy();
        compilationUnitDeclaration.scope.checkParameterizedTypes();
        if (z10) {
            compilationUnitDeclaration.scope.buildFieldsAndMethods();
        }
        lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ReferenceBinding askForType(final PackageBinding packageBinding, final char[] cArr, ModuleBinding moduleBinding) {
        NameEnvironmentAnswer[] nameEnvironmentAnswerArr;
        PackageBinding packageBinding2;
        if (packageBinding == null) {
            packageBinding = this.defaultPackage;
        }
        if (this.useModuleSystem) {
            final IModuleAwareNameEnvironment iModuleAwareNameEnvironment = (IModuleAwareNameEnvironment) this.nameEnvironment;
            nameEnvironmentAnswerArr = askForTypeFromModules(null, packageBinding.getDeclaringModules(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    NameEnvironmentAnswer fromSplitPackageOrOracle;
                    fromSplitPackageOrOracle = LookupEnvironment.fromSplitPackageOrOracle(IModuleAwareNameEnvironment.this, (ModuleBinding) obj, packageBinding, cArr);
                    return fromSplitPackageOrOracle;
                }
            });
        } else {
            NameEnvironmentAnswer findType = this.nameEnvironment.findType(cArr, packageBinding.compoundName);
            if (findType != null) {
                findType.moduleBinding = this.module;
                nameEnvironmentAnswerArr = new NameEnvironmentAnswer[]{findType};
            } else {
                nameEnvironmentAnswerArr = null;
            }
        }
        if (nameEnvironmentAnswerArr == null) {
            return null;
        }
        ReferenceBinding referenceBinding = null;
        for (NameEnvironmentAnswer nameEnvironmentAnswer : nameEnvironmentAnswerArr) {
            if (nameEnvironmentAnswer != null) {
                if (referenceBinding != null && referenceBinding.problemId() == 3) {
                    return referenceBinding;
                }
                ModuleBinding moduleBinding2 = nameEnvironmentAnswer.moduleBinding;
                if (moduleBinding2 == null) {
                    moduleBinding2 = this.UnNamedModule;
                }
                if (moduleBinding2 != null) {
                    if (!packageBinding.isDeclaredIn(moduleBinding2)) {
                        continue;
                    } else if (packageBinding instanceof SplitPackageBinding) {
                        packageBinding2 = ((SplitPackageBinding) packageBinding).getIncarnation(moduleBinding2);
                        if (!nameEnvironmentAnswer.isResolvedBinding()) {
                            referenceBinding = combine(referenceBinding, nameEnvironmentAnswer.getResolvedBinding(), moduleBinding);
                        } else {
                            if (nameEnvironmentAnswer.isBinaryType()) {
                                this.typeRequestor.accept(nameEnvironmentAnswer.getBinaryType(), packageBinding2, nameEnvironmentAnswer.getAccessRestriction());
                                ReferenceBinding type0 = packageBinding2.getType0(cArr);
                                if (type0 instanceof BinaryTypeBinding) {
                                    ((BinaryTypeBinding) type0).module = moduleBinding2;
                                }
                            } else if (nameEnvironmentAnswer.isCompilationUnit()) {
                                try {
                                    this.typeRequestor.accept(nameEnvironmentAnswer.getCompilationUnit(), nameEnvironmentAnswer.getAccessRestriction());
                                } catch (AbortCompilation e10) {
                                    if (CharOperation.equals(cArr, TypeConstants.PACKAGE_INFO_NAME)) {
                                        return null;
                                    }
                                    throw e10;
                                }
                            } else if (nameEnvironmentAnswer.isSourceType()) {
                                this.typeRequestor.accept(nameEnvironmentAnswer.getSourceTypes(), packageBinding2, nameEnvironmentAnswer.getAccessRestriction());
                                ReferenceBinding type02 = packageBinding2.getType0(cArr);
                                boolean z10 = type02 instanceof SourceTypeBinding;
                                if (z10) {
                                    ((SourceTypeBinding) type02).module = moduleBinding2;
                                }
                                String externalAnnotationPath = nameEnvironmentAnswer.getExternalAnnotationPath();
                                if (externalAnnotationPath != null && this.globalOptions.isAnnotationBasedNullAnalysisEnabled && z10) {
                                    ExternalAnnotationSuperimposer.apply((SourceTypeBinding) type02, externalAnnotationPath);
                                }
                                referenceBinding = combine(referenceBinding, type02, moduleBinding);
                            }
                            referenceBinding = combine(referenceBinding, packageBinding2.getType0(cArr), moduleBinding);
                        }
                    }
                }
                packageBinding2 = packageBinding;
                if (!nameEnvironmentAnswer.isResolvedBinding()) {
                }
            }
        }
        return referenceBinding;
    }

    public LookupEnvironment(LookupEnvironment lookupEnvironment, ModuleBinding moduleBinding) {
        this.lastCompletedUnitIndex = -1;
        this.lastUnitIndex = -1;
        this.unitBeingCompleted = null;
        this.missingClassFileLocation = null;
        this.units = new CompilationUnitDeclaration[4];
        this.isProcessingAnnotations = false;
        this.mayTolerateMissingType = false;
        this.allNullAnnotations = null;
        this.root = lookupEnvironment;
        this.UnNamedModule = lookupEnvironment.UnNamedModule;
        this.module = moduleBinding;
        this.typeRequestor = lookupEnvironment.typeRequestor;
        this.globalOptions = lookupEnvironment.globalOptions;
        this.problemReporter = lookupEnvironment.problemReporter;
        this.defaultPackage = new PackageBinding(this);
        this.defaultImports = null;
        this.nameEnvironment = lookupEnvironment.nameEnvironment;
        this.knownPackages = new HashtableOfPackage();
        this.uniqueParameterizedGenericMethodBindings = new SimpleLookupTable(3);
        this.uniquePolymorphicMethodBindings = new SimpleLookupTable(3);
        this.missingTypes = null;
        this.accessRestrictions = new HashMap(3);
        this.classFilePool = lookupEnvironment.classFilePool;
        this.typesBeingConnected = lookupEnvironment.typesBeingConnected;
        this.deferredEnumMethods = lookupEnvironment.deferredEnumMethods;
        this.typeSystem = lookupEnvironment.typeSystem;
        this.useModuleSystem = lookupEnvironment.useModuleSystem;
    }

    public void completeTypeBindings(CompilationUnitDeclaration[] compilationUnitDeclarationArr, boolean[] zArr, int i10) {
        LookupEnvironment lookupEnvironment = this.root;
        for (int i11 = 0; i11 < i10; i11++) {
            CompilationUnitDeclaration compilationUnitDeclaration = compilationUnitDeclarationArr[i11];
            CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
            if (compilationUnitScope != null) {
                lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                compilationUnitScope.checkAndSetImports();
            }
        }
        for (int i12 = 0; i12 < i10; i12++) {
            CompilationUnitDeclaration compilationUnitDeclaration2 = compilationUnitDeclarationArr[i12];
            CompilationUnitScope compilationUnitScope2 = compilationUnitDeclaration2.scope;
            if (compilationUnitScope2 != null) {
                lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration2;
                compilationUnitScope2.connectTypeHierarchy();
            }
        }
        for (int i13 = 0; i13 < i10; i13++) {
            CompilationUnitDeclaration compilationUnitDeclaration3 = compilationUnitDeclarationArr[i13];
            CompilationUnitScope compilationUnitScope3 = compilationUnitDeclaration3.scope;
            if (compilationUnitScope3 != null) {
                lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration3;
                compilationUnitScope3.checkParameterizedTypes();
                if (zArr[i13]) {
                    compilationUnitDeclaration3.scope.buildFieldsAndMethods();
                }
            }
        }
        lookupEnvironment.unitBeingCompleted = null;
    }
}
