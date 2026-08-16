package org.eclipse.jdt.internal.core.hierarchy;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IGenericType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JarPackageFragment;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.HandleFactory;

public class HierarchyResolver implements ITypeRequestor {
    private static final CompilationUnitDeclaration FakeUnit = new CompilationUnitDeclaration(new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), new CompilerOptions(), new DefaultProblemFactory()), new CompilationResult(CharOperation.NO_CHAR, 0, 0, 0), 0);
    private Parser basicParser;
    private BindingMap<IGenericType> bindingMap = new BindingMap<>();
    HierarchyBuilder builder;
    private ReferenceBinding focusType;
    private boolean hasMissingSuperClass;
    LookupEnvironment lookupEnvironment;
    private CompilerOptions options;
    private boolean superTypesOnly;
    private ReferenceBinding[] typeBindings;
    private int typeIndex;
    private IGenericType[] typeModels;

    public HierarchyResolver(INameEnvironment iNameEnvironment, Map map, HierarchyBuilder hierarchyBuilder, IProblemFactory iProblemFactory) {
        this.options = new CompilerOptions(map);
        LookupEnvironment lookupEnvironment = new LookupEnvironment(this, this.options, new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), this.options, iProblemFactory), iNameEnvironment);
        lookupEnvironment.mayTolerateMissingType = true;
        setEnvironment(lookupEnvironment, hierarchyBuilder);
    }

    private Parser basicParser() {
        if (this.basicParser == null) {
            Parser parser = new Parser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory()), false);
            this.basicParser = parser;
            parser.reportOnlyOneSyntaxError = true;
        }
        return this.basicParser;
    }

    private char[] findAssociatedModuleName(Openable openable) {
        IModuleDescription iModuleDescription;
        PackageFragmentRoot packageFragmentRoot = openable.getPackageFragmentRoot();
        try {
            iModuleDescription = packageFragmentRoot.getKind() == 1 ? packageFragmentRoot.getJavaProject().getModuleDescription() : packageFragmentRoot.getModuleDescription();
        } catch (JavaModelException unused) {
            iModuleDescription = null;
        }
        if (iModuleDescription != null) {
            return iModuleDescription.getElementName().toCharArray();
        }
        return null;
    }

    private IType findSuperClass(IGenericType iGenericType, ReferenceBinding referenceBinding) {
        char[] cArr;
        char c10;
        ReferenceBinding superclass = referenceBinding.superclass();
        if (superclass != null) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) superclass.erasure();
            if (referenceBinding.isHierarchyInconsistent()) {
                if (referenceBinding2.problemId() == 1) {
                    this.hasMissingSuperClass = true;
                    this.builder.hierarchy.missingTypes.add(new String(referenceBinding2.sourceName));
                    return null;
                }
                if (referenceBinding2.f102482id == 1) {
                    if (iGenericType instanceof IBinaryType) {
                        cArr = ((IBinaryType) iGenericType).getSuperclassName();
                        c10 = '/';
                    } else {
                        if (!(iGenericType instanceof ISourceType)) {
                            if (iGenericType instanceof HierarchyType) {
                                cArr = ((HierarchyType) iGenericType).superclassName;
                            }
                            return null;
                        }
                        cArr = ((ISourceType) iGenericType).getSuperclassName();
                        c10 = '.';
                    }
                    if (cArr != null) {
                        int lastIndexOf = CharOperation.lastIndexOf(c10, cArr);
                        if (lastIndexOf != -1) {
                            cArr = CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length);
                        }
                        if (!CharOperation.equals(cArr, TypeConstants.OBJECT)) {
                            this.hasMissingSuperClass = true;
                            this.builder.hierarchy.missingTypes.add(new String(cArr));
                            return null;
                        }
                    }
                }
            }
            IGenericType iGenericType2 = this.bindingMap.get(referenceBinding2);
            if (iGenericType2 != null) {
                return this.builder.getHandle(iGenericType2, referenceBinding2);
            }
        }
        return null;
    }

    private IType[] findSuperInterfaces(IGenericType iGenericType, ReferenceBinding referenceBinding) {
        char[][] cArr;
        char[][] cArr2;
        char c10;
        IType handle;
        int i10 = 1;
        if (iGenericType instanceof IBinaryType) {
            cArr = ((IBinaryType) iGenericType).getInterfaceNames();
            c10 = '/';
        } else if (iGenericType instanceof ISourceType) {
            ISourceType iSourceType = (ISourceType) iGenericType;
            if (!iSourceType.isAnonymous()) {
                cArr = TypeDeclaration.kind(iSourceType.getModifiers()) == 4 ? new char[][]{TypeConstants.CharArray_JAVA_LANG_ANNOTATION_ANNOTATION} : iSourceType.getInterfaceNames();
            } else if (referenceBinding.superInterfaces() == null || referenceBinding.superInterfaces().length <= 0) {
                cArr = iSourceType.getInterfaceNames();
            } else {
                cArr2 = new char[][]{iSourceType.getSuperclassName()};
                cArr = cArr2;
            }
            c10 = '.';
        } else {
            if (!(iGenericType instanceof HierarchyType)) {
                return null;
            }
            HierarchyType hierarchyType = (HierarchyType) iGenericType;
            if (!hierarchyType.isAnonymous()) {
                cArr = hierarchyType.superInterfaceNames;
            } else if (referenceBinding.superInterfaces() == null || referenceBinding.superInterfaces().length <= 0) {
                cArr = hierarchyType.superInterfaceNames;
            } else {
                cArr2 = new char[][]{hierarchyType.superclassName};
                cArr = cArr2;
            }
            c10 = '.';
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        int length = superInterfaces == null ? 0 : superInterfaces.length;
        int length2 = cArr == null ? 0 : cArr.length;
        IType[] iTypeArr = new IType[length2];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < length2) {
            char[] cArr3 = cArr[i11];
            int length3 = cArr3.length;
            int indexOf = CharOperation.indexOf('<', cArr3);
            if (indexOf != -1) {
                length3 = indexOf;
            }
            int lastIndexOf = CharOperation.lastIndexOf(c10, cArr3, 0, length3) + i10;
            int lastIndexOf2 = CharOperation.lastIndexOf('$', cArr3, lastIndexOf);
            if (lastIndexOf2 != -1) {
                lastIndexOf = lastIndexOf2 + 1;
            }
            char[] subarray = CharOperation.subarray(cArr3, lastIndexOf, length3);
            if (i13 < length) {
                ReferenceBinding referenceBinding2 = (ReferenceBinding) superInterfaces[i13].erasure();
                if (CharOperation.equals(subarray, referenceBinding2.sourceName)) {
                    i13++;
                    IGenericType iGenericType2 = this.bindingMap.get(referenceBinding2);
                    if (iGenericType2 != null && (handle = this.builder.getHandle(iGenericType2, referenceBinding2)) != null) {
                        iTypeArr[i12] = handle;
                        i12++;
                        i11++;
                        i10 = 1;
                    }
                }
            }
            this.builder.hierarchy.missingTypes.add(new String(subarray));
            i11++;
            i10 = 1;
        }
        if (i12 == length2) {
            return iTypeArr;
        }
        IType[] iTypeArr2 = new IType[i12];
        System.arraycopy(iTypeArr, 0, iTypeArr2, 0, i12);
        return iTypeArr2;
    }

    private void fixSupertypeBindings() {
        TypeReference typeReference;
        TypeBinding typeBinding;
        for (int i10 = this.typeIndex; i10 >= 0; i10--) {
            ReferenceBinding referenceBinding = this.typeBindings[i10];
            if ((referenceBinding.tagBits & 131072) != 0) {
                if (referenceBinding instanceof SourceTypeBinding) {
                    if (referenceBinding instanceof LocalTypeBinding) {
                        LocalTypeBinding localTypeBinding = (LocalTypeBinding) referenceBinding;
                        QualifiedAllocationExpression qualifiedAllocationExpression = localTypeBinding.scope.referenceContext.allocation;
                        if (qualifiedAllocationExpression != null && (typeReference = qualifiedAllocationExpression.type) != null && (typeBinding = typeReference.resolvedType) != null) {
                            localTypeBinding.setSuperClass((ReferenceBinding) typeBinding);
                        }
                    }
                    SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
                    ClassScope classScope = sourceTypeBinding.scope;
                    if (classScope != null) {
                        TypeDeclaration typeDeclaration = classScope.referenceContext;
                        TypeReference typeReference2 = typeDeclaration == null ? null : typeDeclaration.superclass;
                        TypeBinding typeBinding2 = typeReference2 == null ? null : typeReference2.resolvedType;
                        if (typeBinding2 != null) {
                            typeBinding2 = typeBinding2.closestMatch();
                        }
                        if (typeBinding2 instanceof ReferenceBinding) {
                            ReferenceBinding referenceBinding2 = (ReferenceBinding) typeBinding2;
                            if (!subTypeOfType(referenceBinding2, referenceBinding)) {
                                sourceTypeBinding.setSuperClass(referenceBinding2);
                            }
                        }
                        TypeReference[] typeReferenceArr = typeDeclaration != null ? typeDeclaration.superInterfaces : null;
                        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
                        if (typeReferenceArr != null) {
                            int length = typeReferenceArr.length;
                            if (length > (superInterfaces == null ? 0 : superInterfaces.length)) {
                                ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
                                int i11 = 0;
                                for (TypeReference typeReference3 : typeReferenceArr) {
                                    TypeBinding typeBinding3 = typeReference3.resolvedType;
                                    if (typeBinding3 != null) {
                                        typeBinding3 = typeBinding3.closestMatch();
                                    }
                                    if (typeBinding3 instanceof ReferenceBinding) {
                                        ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding3;
                                        if (!subTypeOfType(referenceBinding3, referenceBinding)) {
                                            referenceBindingArr[i11] = referenceBinding3;
                                            i11++;
                                        }
                                    }
                                }
                                if (i11 < length) {
                                    ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[i11];
                                    System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i11);
                                    referenceBindingArr = referenceBindingArr2;
                                }
                                sourceTypeBinding.setSuperInterfaces(referenceBindingArr);
                            }
                        }
                    }
                } else if (referenceBinding instanceof BinaryTypeBinding) {
                    try {
                        referenceBinding.superclass();
                    } catch (AbortCompilation unused) {
                        ((BinaryTypeBinding) referenceBinding).tagBits &= -33554433;
                        this.builder.hierarchy.missingTypes.add(new String(referenceBinding.superclass().sourceName()));
                        this.hasMissingSuperClass = true;
                    }
                    try {
                        referenceBinding.superInterfaces();
                    } catch (AbortCompilation unused2) {
                        ((BinaryTypeBinding) referenceBinding).tagBits &= -67108865;
                    }
                }
            }
        }
    }

    private void remember(IGenericType iGenericType, ReferenceBinding referenceBinding) {
        if (referenceBinding == null) {
            return;
        }
        int i10 = this.typeIndex + 1;
        this.typeIndex = i10;
        IGenericType[] iGenericTypeArr = this.typeModels;
        if (i10 == iGenericTypeArr.length) {
            IGenericType[] iGenericTypeArr2 = new IGenericType[i10 * 2];
            this.typeModels = iGenericTypeArr2;
            System.arraycopy(iGenericTypeArr, 0, iGenericTypeArr2, 0, i10);
            ReferenceBinding[] referenceBindingArr = this.typeBindings;
            int i11 = this.typeIndex;
            ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[i11 * 2];
            this.typeBindings = referenceBindingArr2;
            System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i11);
        }
        IGenericType[] iGenericTypeArr3 = this.typeModels;
        int i12 = this.typeIndex;
        iGenericTypeArr3[i12] = iGenericType;
        this.typeBindings[i12] = referenceBinding;
        this.bindingMap.put(referenceBinding, iGenericType);
    }

    private void rememberAllTypes(CompilationUnitDeclaration compilationUnitDeclaration, ICompilationUnit iCompilationUnit, boolean z10) {
        LambdaExpression lambdaExpression;
        TypeBinding typeBinding;
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
                rememberWithMemberTypes(typeDeclaration, iCompilationUnit.getType(new String(typeDeclaration.name)));
            }
        }
        if (z10) {
            if (compilationUnitDeclaration.localTypes == null && compilationUnitDeclaration.functionalExpressions == null) {
                return;
            }
            HandleFactory handleFactory = new HandleFactory();
            HashSet hashSet = new HashSet(compilationUnitDeclaration.localTypeCount + compilationUnitDeclaration.functionalExpressionsCount);
            HashMap hashMap = new HashMap(compilationUnitDeclaration.localTypeCount + compilationUnitDeclaration.functionalExpressionsCount);
            if (compilationUnitDeclaration.localTypes != null) {
                for (int i10 = 0; i10 < compilationUnitDeclaration.localTypeCount; i10++) {
                    ClassScope classScope = compilationUnitDeclaration.localTypes[i10].scope;
                    rememberWithMemberTypes(classScope.referenceType(), (IType) handleFactory.createElement(classScope, iCompilationUnit, hashSet, hashMap));
                }
            }
            if (compilationUnitDeclaration.functionalExpressions != null) {
                for (int i11 = 0; i11 < compilationUnitDeclaration.functionalExpressionsCount; i11++) {
                    FunctionalExpression functionalExpression = compilationUnitDeclaration.functionalExpressions[i11];
                    if ((functionalExpression instanceof LambdaExpression) && (typeBinding = (lambdaExpression = (LambdaExpression) functionalExpression).resolvedType) != null && typeBinding.isValidBinding()) {
                        remember((IType) handleFactory.createLambdaTypeElement(lambdaExpression, iCompilationUnit, hashSet, hashMap), lambdaExpression.getTypeBinding());
                    }
                }
            }
        }
    }

    private void rememberWithMemberTypes(TypeDeclaration typeDeclaration, IType iType) {
        remember(iType, typeDeclaration.binding);
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                rememberWithMemberTypes(typeDeclaration2, iType.getType(new String(typeDeclaration2.name)));
            }
        }
    }

    private void reportHierarchy(IType iType, TypeDeclaration typeDeclaration, ReferenceBinding referenceBinding) {
        if (iType != null) {
            if (referenceBinding != null) {
                this.focusType = referenceBinding;
            } else if (typeDeclaration != null) {
                this.focusType = typeDeclaration.binding;
            } else {
                setFocusType(CharOperation.splitOn('.', iType.getFullyQualifiedName().toCharArray()));
            }
        }
        fixSupertypeBindings();
        SubMonitor subMonitor = this.builder.hierarchy.progressMonitor;
        int i10 = this.typeIndex;
        int i11 = -1;
        while (true) {
            if (i10 < 0) {
                if (i11 > -1) {
                    if (!this.hasMissingSuperClass || this.focusType == null) {
                        IGenericType iGenericType = this.typeModels[i11];
                        HierarchyBuilder hierarchyBuilder = this.builder;
                        hierarchyBuilder.connect(iGenericType, hierarchyBuilder.getHandle(iGenericType, this.typeBindings[i11]), null, null);
                        return;
                    }
                    return;
                }
                return;
            }
            if (subMonitor != null && subMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            ReferenceBinding referenceBinding2 = this.typeBindings[i10];
            if (referenceBinding2.f102482id == 1) {
                i11 = i10;
            } else {
                IGenericType iGenericType2 = this.typeModels[i10];
                if (subOrSuperOfFocus(referenceBinding2)) {
                    IType findSuperClass = referenceBinding2.isInterface() ? null : findSuperClass(iGenericType2, referenceBinding2);
                    IType[] findSuperInterfaces = findSuperInterfaces(iGenericType2, referenceBinding2);
                    HierarchyBuilder hierarchyBuilder2 = this.builder;
                    hierarchyBuilder2.connect(iGenericType2, hierarchyBuilder2.getHandle(iGenericType2, referenceBinding2), findSuperClass, findSuperInterfaces);
                }
            }
            i10--;
        }
    }

    private void reset() {
        this.lookupEnvironment.reset();
        this.focusType = null;
        this.superTypesOnly = false;
        this.typeIndex = -1;
        this.typeModels = new IGenericType[5];
        this.typeBindings = new ReferenceBinding[5];
        this.bindingMap.clear();
    }

    private void sanitizeBinaryType(IGenericType iGenericType) {
        if (iGenericType instanceof HierarchyBinaryType) {
            HierarchyBinaryType hierarchyBinaryType = (HierarchyBinaryType) iGenericType;
            if (hierarchyBinaryType.getSuperclassName() == null) {
                hierarchyBinaryType.recordSuperclass(CharOperation.concatWith(TypeConstants.JAVA_LANG_OBJECT, '/'));
            }
        }
    }

    private void setEnvironment(LookupEnvironment lookupEnvironment, HierarchyBuilder hierarchyBuilder) {
        this.lookupEnvironment = lookupEnvironment;
        this.builder = hierarchyBuilder;
        this.typeIndex = -1;
        this.typeModels = new IGenericType[5];
        this.typeBindings = new ReferenceBinding[5];
        this.bindingMap.clear();
    }

    private boolean subTypeOfType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        if (referenceBinding2 != null && referenceBinding != null) {
            if (TypeBinding.equalsEquals(referenceBinding, referenceBinding2)) {
                return true;
            }
            ReferenceBinding superclass = referenceBinding.superclass();
            if (superclass != null) {
                superclass = (ReferenceBinding) superclass.erasure();
            }
            if (subTypeOfType(superclass, referenceBinding2)) {
                return true;
            }
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != null) {
                for (ReferenceBinding referenceBinding3 : superInterfaces) {
                    if (subTypeOfType((ReferenceBinding) referenceBinding3.erasure(), referenceBinding2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        SubMonitor subMonitor = this.builder.hierarchy.progressMonitor;
        if (subMonitor != null && subMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        sanitizeBinaryType(iBinaryType);
        try {
            remember(iBinaryType, this.lookupEnvironment.createBinaryTypeFrom(iBinaryType, packageBinding, accessRestriction));
        } catch (AbortCompilation unused) {
        }
    }

    public void resolve(IGenericType iGenericType) {
        LookupEnvironment lookupEnvironment;
        try {
            if (iGenericType.isBinaryType()) {
                sanitizeBinaryType(iGenericType);
                BinaryTypeBinding cacheBinaryType = this.lookupEnvironment.cacheBinaryType((IBinaryType) iGenericType, false, null);
                remember(iGenericType, cacheBinaryType);
                for (int i10 = this.typeIndex; i10 <= this.typeIndex; i10++) {
                    IGenericType iGenericType2 = this.typeModels[i10];
                    if (iGenericType2 != null && iGenericType2.isBinaryType()) {
                        LookupEnvironment lookupEnvironment2 = this.lookupEnvironment;
                        CompilationUnitDeclaration compilationUnitDeclaration = lookupEnvironment2.unitBeingCompleted;
                        if (compilationUnitDeclaration == null) {
                            try {
                                lookupEnvironment2.unitBeingCompleted = FakeUnit;
                            } catch (AbortCompilation unused) {
                                lookupEnvironment = this.lookupEnvironment;
                            } catch (Throwable th2) {
                                this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                                throw th2;
                            }
                        }
                        ReferenceBinding referenceBinding = this.typeBindings[i10];
                        referenceBinding.superclass();
                        referenceBinding.superInterfaces();
                        lookupEnvironment = this.lookupEnvironment;
                        lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                    }
                }
                this.superTypesOnly = true;
                reportHierarchy(this.builder.getType(), null, cacheBinaryType);
            } else {
                IJavaElement compilationUnit = ((SourceTypeElementInfo) iGenericType).getHandle().getCompilationUnit();
                if (compilationUnit != null) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(compilationUnit.getPath().toString());
                    this.superTypesOnly = true;
                    resolve(new Openable[]{(Openable) compilationUnit}, hashSet, null);
                }
            }
        } catch (AbortCompilation unused2) {
        } catch (Throwable th3) {
            reset();
            throw th3;
        }
        reset();
    }

    public ReferenceBinding setFocusType(char[][] cArr) {
        LookupEnvironment lookupEnvironment;
        int length;
        char[] cArr2;
        int indexOf;
        if (cArr == null || (lookupEnvironment = this.lookupEnvironment) == null) {
            return null;
        }
        ReferenceBinding cachedType = lookupEnvironment.getCachedType(cArr);
        this.focusType = cachedType;
        if (cachedType == null) {
            LookupEnvironment lookupEnvironment2 = this.lookupEnvironment;
            ReferenceBinding askForType = lookupEnvironment2.askForType(cArr, lookupEnvironment2.UnNamedModule);
            this.focusType = askForType;
            if (askForType == null && (indexOf = CharOperation.indexOf('$', (cArr2 = cArr[cArr.length - 1]))) != -1) {
                cArr[length] = CharOperation.subarray(cArr2, 0, indexOf);
                LookupEnvironment lookupEnvironment3 = this.lookupEnvironment;
                ReferenceBinding askForType2 = lookupEnvironment3.askForType(cArr, lookupEnvironment3.UnNamedModule);
                this.focusType = askForType2;
                if (askForType2 != null) {
                    for (char[] cArr3 : CharOperation.splitOn('$', cArr2, indexOf + 1, cArr2.length)) {
                        ReferenceBinding memberType = this.focusType.getMemberType(cArr3);
                        this.focusType = memberType;
                        if (memberType == null) {
                            return null;
                        }
                    }
                }
            }
        }
        return this.focusType;
    }

    public boolean subOrSuperOfFocus(ReferenceBinding referenceBinding) {
        ReferenceBinding referenceBinding2 = this.focusType;
        if (referenceBinding2 == null) {
            return true;
        }
        try {
            if (subTypeOfType(referenceBinding2, referenceBinding)) {
                return true;
            }
            if (this.superTypesOnly) {
                return false;
            }
            return subTypeOfType(referenceBinding, this.focusType);
        } catch (AbortCompilation unused) {
            return false;
        }
    }

    public void worked(IProgressMonitor iProgressMonitor, int i10) {
        if (iProgressMonitor != null) {
            if (iProgressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            iProgressMonitor.worked(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void remember(IType iType, ReferenceBinding referenceBinding) {
        boolean z10;
        TypeReference typeReference;
        char[] cArr;
        char[][] cArr2;
        if (((CompilationUnit) iType.getCompilationUnit()).isOpen()) {
            try {
                remember((IGenericType) ((JavaElement) iType).getElementInfo(), referenceBinding);
                return;
            } catch (JavaModelException unused) {
                return;
            }
        }
        if (referenceBinding == null) {
            return;
        }
        try {
            z10 = iType.isAnonymous();
        } catch (JavaModelException unused2) {
            z10 = false;
        }
        if (referenceBinding instanceof SourceTypeBinding) {
            TypeDeclaration referenceType = ((SourceTypeBinding) referenceBinding).scope.referenceType();
            if ((referenceType.bits & 512) != 0) {
                typeReference = referenceType.allocation.type;
            } else {
                typeReference = referenceType.superclass;
            }
            if (typeReference != null) {
                char[][] typeName = typeReference.getTypeName();
                cArr = typeName == null ? null : typeName[typeName.length - 1];
            } else {
                cArr = null;
            }
            TypeReference[] typeReferenceArr = referenceType.superInterfaces;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                char[][] cArr3 = new char[length];
                for (int i10 = 0; i10 < length; i10++) {
                    cArr3[i10] = typeReferenceArr[i10].getTypeName()[r2.length - 1];
                }
                cArr2 = cArr3;
            } else {
                cArr2 = null;
            }
            remember(new HierarchyType(iType, referenceType.name, referenceType.binding.modifiers, cArr, cArr2, z10), referenceType.binding);
            return;
        }
        remember(new HierarchyType(iType, referenceBinding.sourceName(), referenceBinding.modifiers, referenceBinding.superclass().sourceName(), new char[][]{referenceBinding.superInterfaces()[0].sourceName()}, z10), referenceBinding);
    }

    @Override
    public void accept(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        if (CharOperation.equals(TypeConstants.MODULE_INFO_NAME, iCompilationUnit.getMainTypeName())) {
            CompilationUnitDeclaration dietParse = basicParser().dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 1, 1, this.options.maxProblemsPerUnit));
            this.lookupEnvironment.buildTypeBindings(dietParse, accessRestriction);
            this.lookupEnvironment.completeTypeBindings(dietParse, true);
            return;
        }
        ProblemReporter problemReporter = this.lookupEnvironment.problemReporter;
        StringBuffer stringBuffer = new StringBuffer(Messages.accept_cannot);
        stringBuffer.append(iCompilationUnit.getFileName());
        problemReporter.abortDueToInternalError(stringBuffer.toString());
    }

    public HierarchyResolver(LookupEnvironment lookupEnvironment, HierarchyBuilder hierarchyBuilder) {
        setEnvironment(lookupEnvironment, hierarchyBuilder);
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        SubMonitor subMonitor = this.builder.hierarchy.progressMonitor;
        if (subMonitor != null && subMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        ISourceType iSourceType = iSourceTypeArr[0];
        while (iSourceType.getEnclosingType() != null) {
            iSourceType = iSourceType.getEnclosingType();
        }
        CompilationResult compilationResult = new CompilationResult(iSourceType.getFileName(), 1, 1, this.options.maxProblemsPerUnit);
        ISourceType[] iSourceTypeArr2 = {iSourceType};
        LookupEnvironment lookupEnvironment = this.lookupEnvironment;
        CompilationUnitDeclaration buildCompilationUnit = SourceTypeConverter.buildCompilationUnit(iSourceTypeArr2, (lookupEnvironment.globalOptions.sourceLevel >= ClassFileConstants.JDK1_8 ? 4 : 0) | 8, lookupEnvironment.problemReporter, compilationResult);
        if (buildCompilationUnit != null) {
            try {
                LookupEnvironment lookupEnvironment2 = packageBinding.environment;
                if (lookupEnvironment2 == null) {
                    lookupEnvironment2 = this.lookupEnvironment;
                }
                lookupEnvironment2.buildTypeBindings(buildCompilationUnit, accessRestriction);
                rememberAllTypes(buildCompilationUnit, ((SourceTypeElementInfo) iSourceType).getHandle().getCompilationUnit(), false);
                lookupEnvironment2.completeTypeBindings(buildCompilationUnit, true);
            } catch (AbortCompilation unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x015c A[Catch: all -> 0x0029, AbortCompilation -> 0x002c, ClassCastException -> 0x00e4, TRY_LEAVE, TryCatch #2 {AbortCompilation -> 0x002c, blocks: (B:4:0x000d, B:6:0x001c, B:8:0x0022, B:9:0x0037, B:100:0x005f, B:102:0x0068, B:104:0x0074, B:129:0x0078, B:132:0x00e9, B:139:0x00fb, B:143:0x00f9, B:163:0x00b3, B:165:0x00b9, B:167:0x00cf, B:170:0x00e1, B:106:0x00fe, B:108:0x0104, B:110:0x010a, B:113:0x0121, B:114:0x0123, B:121:0x0126, B:122:0x012a, B:118:0x012b, B:116:0x012e, B:14:0x0132, B:16:0x0138, B:19:0x0156, B:21:0x015c, B:23:0x016c, B:32:0x017b, B:36:0x0183, B:44:0x01a6, B:47:0x01b2, B:49:0x01e0, B:72:0x01b9, B:73:0x0141, B:76:0x014c, B:78:0x020d, B:80:0x0220, B:82:0x022a, B:83:0x0231, B:179:0x002f), top: B:3:0x000d, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e0 A[Catch: all -> 0x0029, AbortCompilation -> 0x002c, ClassCastException -> 0x00e4, TRY_LEAVE, TryCatch #2 {AbortCompilation -> 0x002c, blocks: (B:4:0x000d, B:6:0x001c, B:8:0x0022, B:9:0x0037, B:100:0x005f, B:102:0x0068, B:104:0x0074, B:129:0x0078, B:132:0x00e9, B:139:0x00fb, B:143:0x00f9, B:163:0x00b3, B:165:0x00b9, B:167:0x00cf, B:170:0x00e1, B:106:0x00fe, B:108:0x0104, B:110:0x010a, B:113:0x0121, B:114:0x0123, B:121:0x0126, B:122:0x012a, B:118:0x012b, B:116:0x012e, B:14:0x0132, B:16:0x0138, B:19:0x0156, B:21:0x015c, B:23:0x016c, B:32:0x017b, B:36:0x0183, B:44:0x01a6, B:47:0x01b2, B:49:0x01e0, B:72:0x01b9, B:73:0x0141, B:76:0x014c, B:78:0x020d, B:80:0x0220, B:82:0x022a, B:83:0x0231, B:179:0x002f), top: B:3:0x000d, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b9 A[Catch: all -> 0x0029, AbortCompilation -> 0x002c, ClassCastException -> 0x00e4, TryCatch #2 {AbortCompilation -> 0x002c, blocks: (B:4:0x000d, B:6:0x001c, B:8:0x0022, B:9:0x0037, B:100:0x005f, B:102:0x0068, B:104:0x0074, B:129:0x0078, B:132:0x00e9, B:139:0x00fb, B:143:0x00f9, B:163:0x00b3, B:165:0x00b9, B:167:0x00cf, B:170:0x00e1, B:106:0x00fe, B:108:0x0104, B:110:0x010a, B:113:0x0121, B:114:0x0123, B:121:0x0126, B:122:0x012a, B:118:0x012b, B:116:0x012e, B:14:0x0132, B:16:0x0138, B:19:0x0156, B:21:0x015c, B:23:0x016c, B:32:0x017b, B:36:0x0183, B:44:0x01a6, B:47:0x01b2, B:49:0x01e0, B:72:0x01b9, B:73:0x0141, B:76:0x014c, B:78:0x020d, B:80:0x0220, B:82:0x022a, B:83:0x0231, B:179:0x002f), top: B:3:0x000d, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve(Openable[] openableArr, HashSet hashSet, IProgressMonitor iProgressMonitor) {
        Openable openable;
        ReferenceBinding referenceBinding;
        LookupEnvironment lookupEnvironment;
        SubMonitor subMonitor;
        CompilationUnitDeclaration[] compilationUnitDeclarationArr;
        IType iType;
        CompilationUnitDeclaration compilationUnitDeclaration;
        boolean contains;
        Openable openable2;
        CompilationUnitDeclaration dietParse;
        SourceTypeElementInfo[] sourceTypeElementInfoArr;
        Object[] types;
        int length;
        int i10;
        Openable[] openableArr2 = openableArr;
        HashSet hashSet2 = hashSet;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 3);
        try {
            try {
                try {
                    int length2 = openableArr2.length;
                    CompilationUnitDeclaration[] compilationUnitDeclarationArr2 = new CompilationUnitDeclaration[length2];
                    boolean[] zArr = new boolean[length2];
                    ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[length2];
                    IType type = this.builder.getType();
                    if (type == null) {
                        openable = null;
                    } else if (type.isBinary()) {
                        openable = (Openable) type.getClassFile();
                    } else {
                        openable = (Openable) type.getCompilationUnit();
                    }
                    int i11 = 1;
                    convert.split(1);
                    Parser parser = new Parser(this.lookupEnvironment.problemReporter, true);
                    boolean z10 = this.options.sourceLevel >= ClassFileConstants.JDK1_8;
                    CompilationUnitDeclaration compilationUnitDeclaration2 = null;
                    int i12 = 0;
                    int i13 = 0;
                    ReferenceBinding referenceBinding2 = null;
                    Object[] objArr = openableArr2;
                    while (i13 < length2) {
                        JarPackageFragment jarPackageFragment = objArr[i13];
                        if (jarPackageFragment instanceof ICompilationUnit) {
                            ICompilationUnit iCompilationUnit = (ICompilationUnit) jarPackageFragment;
                            if (hashSet2 != null) {
                                IPath path = iCompilationUnit.getPath();
                                if (!iCompilationUnit.isWorkingCopy()) {
                                    subMonitor = convert;
                                    contains = hashSet2.contains(path.toString());
                                    if (!iCompilationUnit.isOpen()) {
                                        iType = type;
                                        compilationUnitDeclaration = compilationUnitDeclaration2;
                                        CompilationResult compilationResult = new CompilationResult((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit, i13, length2, this.options.maxProblemsPerUnit);
                                        try {
                                            types = iCompilationUnit.getTypes();
                                            length = types.length;
                                        } catch (JavaModelException unused) {
                                            compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                                            openable2 = openable;
                                        }
                                        if (length == 0) {
                                            compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                                        } else {
                                            openable2 = openable;
                                            try {
                                                sourceTypeElementInfoArr = new SourceTypeElementInfo[length];
                                                compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                                                i10 = 0;
                                            } catch (JavaModelException unused2) {
                                                compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                                                sourceTypeElementInfoArr = null;
                                                if (contains) {
                                                }
                                                dietParse = SourceTypeConverter.buildCompilationUnit(sourceTypeElementInfoArr, contains ? (z10 ? 4 : 0) | 8 : 47, this.lookupEnvironment.problemReporter, compilationResult);
                                                if (contains) {
                                                    dietParse.bits |= 16;
                                                }
                                                if (dietParse != null) {
                                                }
                                            }
                                            while (true) {
                                                if (i10 < length) {
                                                    try {
                                                        sourceTypeElementInfoArr[i10] = (SourceTypeElementInfo) ((JavaElement) types[i10]).getElementInfo();
                                                        i10++;
                                                    } catch (JavaModelException unused3) {
                                                    }
                                                }
                                                dietParse = SourceTypeConverter.buildCompilationUnit(sourceTypeElementInfoArr, contains ? (z10 ? 4 : 0) | 8 : 47, this.lookupEnvironment.problemReporter, compilationResult);
                                                if (contains && dietParse != null) {
                                                    dietParse.bits |= 16;
                                                }
                                            }
                                        }
                                    } else {
                                        compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                                        iType = type;
                                        compilationUnitDeclaration = compilationUnitDeclaration2;
                                        openable2 = openable;
                                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit createCompilationUnitFromPath = this.builder.createCompilationUnitFromPath(jarPackageFragment, iCompilationUnit.getResource(), findAssociatedModuleName(jarPackageFragment));
                                        dietParse = parser.dietParse(createCompilationUnitFromPath, new CompilationResult(createCompilationUnitFromPath, i13, length2, this.options.maxProblemsPerUnit));
                                    }
                                    if (dietParse != null) {
                                        zArr[i12] = contains;
                                        iCompilationUnitArr[i12] = iCompilationUnit;
                                        int i14 = i12 + 1;
                                        compilationUnitDeclarationArr[i12] = dietParse;
                                        try {
                                            this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                            openable = openable2;
                                        } catch (AbortCompilation unused4) {
                                            openable = openable2;
                                        }
                                        if (jarPackageFragment.equals(openable)) {
                                            i12 = i14;
                                            compilationUnitDeclaration2 = dietParse;
                                            i13++;
                                            objArr = openableArr;
                                            hashSet2 = hashSet;
                                            type = iType;
                                            convert = subMonitor;
                                            compilationUnitDeclarationArr2 = compilationUnitDeclarationArr;
                                            i11 = 1;
                                        }
                                        i12 = i14;
                                        compilationUnitDeclaration2 = compilationUnitDeclaration;
                                        i13++;
                                        objArr = openableArr;
                                        hashSet2 = hashSet;
                                        type = iType;
                                        convert = subMonitor;
                                        compilationUnitDeclarationArr2 = compilationUnitDeclarationArr;
                                        i11 = 1;
                                    } else {
                                        openable = openable2;
                                    }
                                }
                            }
                            subMonitor = convert;
                            contains = true;
                            if (!iCompilationUnit.isOpen()) {
                            }
                            if (dietParse != null) {
                            }
                        } else {
                            subMonitor = convert;
                            compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
                            iType = type;
                            compilationUnitDeclaration = compilationUnitDeclaration2;
                            ClassFile classFile = (ClassFile) jarPackageFragment;
                            IBinaryType iBinaryType = (IBinaryType) JavaModelManager.getJavaModelManager().getInfo(classFile.getType());
                            if (iBinaryType == null) {
                                if (classFile.getPackageFragmentRoot().isArchive()) {
                                    iBinaryType = this.builder.createInfoFromClassFileInJar(classFile);
                                } else {
                                    iBinaryType = this.builder.createInfoFromClassFile(classFile, classFile.resource());
                                }
                            }
                            if (iBinaryType != null) {
                                try {
                                    sanitizeBinaryType(iBinaryType);
                                    try {
                                        ReferenceBinding cacheBinaryType = this.lookupEnvironment.cacheBinaryType(iBinaryType, false, null);
                                        remember(iBinaryType, cacheBinaryType);
                                        if (jarPackageFragment.equals(openable)) {
                                            referenceBinding2 = cacheBinaryType;
                                        }
                                    } catch (AbortCompilation unused5) {
                                    }
                                } catch (AbortCompilation unused6) {
                                }
                                compilationUnitDeclaration2 = compilationUnitDeclaration;
                                i13++;
                                objArr = openableArr;
                                hashSet2 = hashSet;
                                type = iType;
                                convert = subMonitor;
                                compilationUnitDeclarationArr2 = compilationUnitDeclarationArr;
                                i11 = 1;
                            }
                        }
                        compilationUnitDeclaration2 = compilationUnitDeclaration;
                        i13++;
                        objArr = openableArr;
                        hashSet2 = hashSet;
                        type = iType;
                        convert = subMonitor;
                        compilationUnitDeclarationArr2 = compilationUnitDeclarationArr;
                        i11 = 1;
                    }
                    TypeDeclaration findType = (type == null || referenceBinding2 != null || compilationUnitDeclaration2 == null || ((Member) type).getOuterMostLocalContext() == null) ? null : new ASTNodeFinder(compilationUnitDeclaration2).findType(type);
                    for (int i15 = 0; i15 <= this.typeIndex; i15++) {
                        IGenericType iGenericType = this.typeModels[i15];
                        if (iGenericType != null && iGenericType.isBinaryType()) {
                            LookupEnvironment lookupEnvironment2 = this.lookupEnvironment;
                            CompilationUnitDeclaration compilationUnitDeclaration3 = lookupEnvironment2.unitBeingCompleted;
                            if (compilationUnitDeclaration3 == null) {
                                try {
                                    lookupEnvironment2.unitBeingCompleted = FakeUnit;
                                } catch (AbortCompilation unused7) {
                                    lookupEnvironment = this.lookupEnvironment;
                                } catch (Throwable th2) {
                                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration3;
                                    throw th2;
                                }
                            }
                            ReferenceBinding referenceBinding3 = this.typeBindings[i15];
                            referenceBinding3.superclass();
                            referenceBinding3.superInterfaces();
                            lookupEnvironment = this.lookupEnvironment;
                            lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration3;
                        }
                    }
                    SubMonitor workRemaining = convert.split(i11).setWorkRemaining(i12);
                    for (int i16 = 0; i16 < i12; i16++) {
                        workRemaining.split(i11);
                        CompilationUnitDeclaration compilationUnitDeclaration4 = compilationUnitDeclarationArr2[i16];
                        if (compilationUnitDeclaration4 != null) {
                            try {
                                if (zArr[i16]) {
                                    parser.getMethodBodies(compilationUnitDeclaration4);
                                }
                            } catch (AbortCompilation unused8) {
                                zArr[i16] = false;
                            }
                        }
                    }
                    try {
                        SubMonitor workRemaining2 = convert.split(i11).setWorkRemaining(i12);
                        this.lookupEnvironment.completeTypeBindings(compilationUnitDeclarationArr2, zArr, i12);
                        for (int i17 = 0; i17 < i12; i17++) {
                            workRemaining2.split(i11);
                            CompilationUnitDeclaration compilationUnitDeclaration5 = compilationUnitDeclarationArr2[i17];
                            if (compilationUnitDeclaration5 != null) {
                                boolean z11 = zArr[i17];
                                if (z11) {
                                    compilationUnitDeclaration5.scope.faultInTypes();
                                    compilationUnitDeclaration5.resolve();
                                }
                                rememberAllTypes(compilationUnitDeclaration5, iCompilationUnitArr[i17], z11);
                            }
                        }
                    } catch (AbortCompilation unused9) {
                    }
                    if (referenceBinding2 == null && type != null && type.isBinary()) {
                        referenceBinding = this.lookupEnvironment.getCachedType(CharOperation.splitOn('.', type.getFullyQualifiedName().toCharArray()));
                        if (referenceBinding == null || (referenceBinding.tagBits & TagBits.HasUnresolvedSuperclass) != 0) {
                            reset();
                            return;
                        }
                    } else {
                        referenceBinding = referenceBinding2;
                    }
                    reportHierarchy(type, findType, referenceBinding);
                } catch (AbortCompilation e10) {
                    if (TypeHierarchy.DEBUG) {
                        e10.printStackTrace();
                    }
                }
            } catch (ClassCastException unused10) {
            }
            reset();
        } catch (Throwable th3) {
            reset();
            throw th3;
        }
    }
}
