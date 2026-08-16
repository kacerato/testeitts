package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;
import org.eclipse.jdt.internal.core.util.Util;

public class CompilationUnitStructureRequestor extends ReferenceInfoAdapter implements ISourceElementRequestor {
    protected HashMap children;
    protected HashtableOfObject fieldRefCache;
    protected Stack handleStack;
    protected ImportContainer importContainer;
    protected Stack infoStack;
    protected HashtableOfObject messageRefCache;
    protected Map newElements;
    protected Parser parser;
    protected HashtableOfObject typeRefCache;
    protected ICompilationUnit unit;
    protected CompilationUnitElementInfo unitInfo;
    protected HashtableOfObject unknownRefCache;
    protected ImportContainerInfo importContainerInfo = null;
    protected int referenceCount = 0;
    protected boolean hasSyntaxErrors = false;
    private HashMap<Object, Integer> occurenceCounts = new HashMap<>();
    private HashMap<Object, Integer> localOccurrenceCounts = new HashMap<>(5);

    public CompilationUnitStructureRequestor(ICompilationUnit iCompilationUnit, CompilationUnitElementInfo compilationUnitElementInfo, Map map) {
        this.unit = iCompilationUnit;
        this.unitInfo = compilationUnitElementInfo;
        this.newElements = map;
    }

    private LocalVariable[] acceptMethodParameters(Argument[] argumentArr, JavaElement javaElement, ISourceElementRequestor.MethodInfo methodInfo) {
        if (argumentArr == null) {
            return null;
        }
        LocalVariable[] localVariableArr = new LocalVariable[argumentArr.length];
        Annotation[][] annotationArr = new Annotation[argumentArr.length];
        boolean z10 = false;
        int i10 = 0;
        while (i10 < argumentArr.length) {
            Argument argument = argumentArr[i10];
            AnnotatableInfo annotatableInfo = new AnnotatableInfo();
            annotatableInfo.setSourceRangeStart(argument.declarationSourceStart);
            annotatableInfo.setSourceRangeEnd(argument.declarationSourceStart);
            annotatableInfo.setNameSourceStart(argument.sourceStart);
            annotatableInfo.setNameSourceEnd(argument.sourceEnd);
            LocalVariable localVariable = new LocalVariable(javaElement, new String(argument.name), argument.declarationSourceStart, argument.declarationSourceEnd, argument.sourceStart, argument.sourceEnd, JavaModelManager.getJavaModelManager().intern(Signature.createTypeSignature(methodInfo.parameterTypes[i10], z10)), argument.annotations, argument.modifiers, true);
            localVariableArr[i10] = localVariable;
            this.newElements.put(localVariable, annotatableInfo);
            this.infoStack.push(annotatableInfo);
            this.handleStack.push(localVariableArr[i10]);
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr2 = argument.annotations;
            if (annotationArr2 != null) {
                annotationArr[i10] = new Annotation[annotationArr2.length];
                int i11 = 0;
                while (true) {
                    org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr3 = argument.annotations;
                    if (i11 >= annotationArr3.length) {
                        break;
                    }
                    acceptAnnotation(annotationArr3[i11], annotatableInfo, localVariableArr[i10]);
                    i11++;
                }
            }
            this.infoStack.pop();
            this.handleStack.pop();
            i10++;
            z10 = false;
        }
        return localVariableArr;
    }

    private void addToChildren(Object obj, JavaElement javaElement) {
        ArrayList arrayList = (ArrayList) this.children.get(obj);
        if (arrayList == null) {
            HashMap hashMap = this.children;
            ArrayList arrayList2 = new ArrayList();
            hashMap.put(obj, arrayList2);
            arrayList = arrayList2;
        }
        arrayList.add(javaElement);
    }

    public static String[] convertTypeNamesToSigs(char[][] cArr) {
        int length;
        if (cArr != null && (length = cArr.length) != 0) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            String[] strArr = new String[length];
            for (int i10 = 0; i10 < length; i10++) {
                strArr[i10] = javaModelManager.intern(Signature.createTypeSignature(cArr[i10], false));
            }
            return strArr;
        }
        return CharOperation.NO_STRINGS;
    }

    private SourceMethodElementInfo createMethodInfo(ISourceElementRequestor.MethodInfo methodInfo, SourceMethod sourceMethod) {
        SourceMethodElementInfo sourceMethodWithChildrenInfo;
        SourceMethodElementInfo sourceMethodInfo;
        Argument[] argumentArr;
        IJavaElement[] children = getChildren(methodInfo);
        if (methodInfo.isConstructor) {
            if (children.length == 0) {
                sourceMethodInfo = new SourceConstructorInfo();
            } else {
                sourceMethodWithChildrenInfo = new SourceConstructorWithChildrenInfo(children);
                sourceMethodInfo = sourceMethodWithChildrenInfo;
            }
        } else if (methodInfo.isAnnotation) {
            sourceMethodInfo = new SourceAnnotationMethodInfo();
        } else if (children.length == 0) {
            sourceMethodInfo = new SourceMethodInfo();
        } else {
            sourceMethodWithChildrenInfo = new SourceMethodWithChildrenInfo(children);
            sourceMethodInfo = sourceMethodWithChildrenInfo;
        }
        sourceMethodInfo.setSourceRangeStart(methodInfo.declarationStart);
        int i10 = methodInfo.modifiers;
        sourceMethodInfo.setNameSourceStart(methodInfo.nameSourceStart);
        sourceMethodInfo.setNameSourceEnd(methodInfo.nameSourceEnd);
        sourceMethodInfo.setFlags(i10);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        char[][] cArr = methodInfo.parameterNames;
        int length = cArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            cArr[i11] = javaModelManager.intern(cArr[i11]);
        }
        sourceMethodInfo.setArgumentNames(cArr);
        char[] cArr2 = methodInfo.returnType;
        if (cArr2 == null) {
            cArr2 = new char[]{'v', 'o', 'i', 'd'};
        }
        sourceMethodInfo.setReturnType(javaModelManager.intern(cArr2));
        char[][] cArr3 = methodInfo.exceptionTypes;
        sourceMethodInfo.setExceptionTypeNames(cArr3);
        int length2 = cArr3.length;
        for (int i12 = 0; i12 < length2; i12++) {
            cArr3[i12] = javaModelManager.intern(cArr3[i12]);
        }
        this.newElements.put(sourceMethod, sourceMethodInfo);
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = methodInfo.typeParameters;
        if (typeParameterInfoArr != null) {
            int length3 = typeParameterInfoArr.length;
            for (int i13 = 0; i13 < length3; i13++) {
                acceptTypeParameter(methodInfo.typeParameters[i13], sourceMethodInfo);
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = methodInfo.annotations;
        if (annotationArr != null) {
            int length4 = annotationArr.length;
            this.unitInfo.annotationNumber += length4;
            for (int i14 = 0; i14 < length4; i14++) {
                acceptAnnotation(methodInfo.annotations[i14], sourceMethodInfo, sourceMethod);
            }
        }
        AbstractMethodDeclaration abstractMethodDeclaration = methodInfo.node;
        if (abstractMethodDeclaration != null && (argumentArr = abstractMethodDeclaration.arguments) != null) {
            sourceMethodInfo.arguments = acceptMethodParameters(argumentArr, sourceMethod, methodInfo);
        }
        if (methodInfo.typeAnnotated) {
            this.unitInfo.annotationNumber = CompilationUnitElementInfo.ANNOTATION_THRESHOLD_FOR_DIET_PARSE;
        }
        return sourceMethodInfo;
    }

    private ModuleDescriptionInfo createModuleInfo(ISourceElementRequestor.ModuleInfo moduleInfo, SourceModule sourceModule) {
        ModuleDescriptionInfo createModule = ModuleDescriptionInfo.createModule(moduleInfo.node);
        createModule.setHandle(sourceModule);
        createModule.setSourceRangeStart(moduleInfo.declarationStart);
        createModule.setFlags(moduleInfo.modifiers);
        createModule.setNameSourceStart(moduleInfo.nameSourceStart);
        createModule.setNameSourceEnd(moduleInfo.nameSourceEnd);
        createModule.addCategories(sourceModule, moduleInfo.categories);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = moduleInfo.annotations;
        if (annotationArr != null) {
            int length = annotationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                acceptAnnotation(moduleInfo.annotations[i10], createModule, sourceModule);
            }
        }
        this.newElements.put(sourceModule, createModule);
        return createModule;
    }

    private SourceTypeElementInfo createTypeInfo(ISourceElementRequestor.TypeInfo typeInfo, SourceType sourceType) {
        SourceTypeElementInfo sourceTypeElementInfo = typeInfo.anonymousMember ? new SourceTypeElementInfo() {
            @Override
            public boolean isAnonymousMember() {
                return true;
            }
        } : new SourceTypeElementInfo();
        sourceTypeElementInfo.setHandle(sourceType);
        sourceTypeElementInfo.setSourceRangeStart(typeInfo.declarationStart);
        sourceTypeElementInfo.setFlags(typeInfo.modifiers);
        sourceTypeElementInfo.setNameSourceStart(typeInfo.nameSourceStart);
        sourceTypeElementInfo.setNameSourceEnd(typeInfo.nameSourceEnd);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        char[] cArr = typeInfo.superclass;
        sourceTypeElementInfo.setSuperclassName(cArr == null ? null : javaModelManager.intern(cArr));
        char[][] cArr2 = typeInfo.superinterfaces;
        int length = cArr2 == null ? 0 : cArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = javaModelManager.intern(cArr2[i10]);
        }
        sourceTypeElementInfo.setSuperInterfaceNames(cArr2);
        sourceTypeElementInfo.addCategories(sourceType, typeInfo.categories);
        this.newElements.put(sourceType, sourceTypeElementInfo);
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = typeInfo.typeParameters;
        if (typeParameterInfoArr != null) {
            int length2 = typeParameterInfoArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                acceptTypeParameter(typeInfo.typeParameters[i11], sourceTypeElementInfo);
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = typeInfo.annotations;
        if (annotationArr != null) {
            int length3 = annotationArr.length;
            this.unitInfo.annotationNumber += length3;
            for (int i12 = 0; i12 < length3; i12++) {
                acceptAnnotation(typeInfo.annotations[i12], sourceTypeElementInfo, sourceType);
            }
        }
        HashMap hashMap = typeInfo.childrenCategories;
        if (hashMap != null) {
            for (Map.Entry entry : hashMap.entrySet()) {
                sourceTypeElementInfo.addCategories((IJavaElement) entry.getKey(), (char[][]) entry.getValue());
            }
        }
        if (typeInfo.typeAnnotated) {
            this.unitInfo.annotationNumber = CompilationUnitElementInfo.ANNOTATION_THRESHOLD_FOR_DIET_PARSE;
        }
        return sourceTypeElementInfo;
    }

    private IJavaElement[] getChildren(Object obj) {
        ArrayList arrayList = (ArrayList) this.children.get(obj);
        return arrayList != null ? (IJavaElement[]) arrayList.toArray(new IJavaElement[arrayList.size()]) : JavaElement.NO_ELEMENTS;
    }

    public IAnnotation acceptAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, AnnotatableInfo annotatableInfo, JavaElement javaElement) {
        Annotation createAnnotation = createAnnotation(javaElement, new String(CharOperation.concatWith(annotation.type.getTypeName(), '.')));
        resolveDuplicates(createAnnotation);
        AnnotationInfo annotationInfo = new AnnotationInfo();
        this.newElements.put(createAnnotation, annotationInfo);
        this.handleStack.push(createAnnotation);
        annotationInfo.setSourceRangeStart(annotation.sourceStart());
        annotationInfo.nameStart = annotation.type.sourceStart();
        annotationInfo.nameEnd = annotation.type.sourceEnd();
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
        if (memberValuePairs.length == 0) {
            annotationInfo.members = Annotation.NO_MEMBER_VALUE_PAIRS;
        } else {
            annotationInfo.members = getMemberValuePairs(memberValuePairs);
        }
        if (annotatableInfo != null) {
            IAnnotation[] iAnnotationArr = annotatableInfo.annotations;
            int length = iAnnotationArr.length;
            IAnnotation[] iAnnotationArr2 = new IAnnotation[length + 1];
            System.arraycopy(iAnnotationArr, 0, iAnnotationArr2, 0, length);
            iAnnotationArr2[length] = createAnnotation;
            annotatableInfo.annotations = iAnnotationArr2;
        }
        annotationInfo.setSourceRangeEnd(annotation.declarationSourceEnd);
        this.handleStack.pop();
        return createAnnotation;
    }

    @Override
    public void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14) {
        IJavaElement iJavaElement = (JavaElement) this.handleStack.peek();
        if (iJavaElement.getElementType() != 5) {
            Assert.isTrue(false);
        }
        ICompilationUnit iCompilationUnit = (ICompilationUnit) iJavaElement;
        if (this.importContainer == null) {
            this.importContainer = createImportContainer(iCompilationUnit);
            this.importContainerInfo = new ImportContainerInfo();
            addToChildren(this.infoStack.peek(), this.importContainer);
            this.newElements.put(this.importContainer, this.importContainerInfo);
        }
        ImportDeclaration createImportDeclaration = createImportDeclaration(this.importContainer, JavaModelManager.getJavaModelManager().intern(new String(CharOperation.concatWith(cArr, '.'))), z10);
        resolveDuplicates(createImportDeclaration);
        ImportDeclarationElementInfo importDeclarationElementInfo = new ImportDeclarationElementInfo();
        importDeclarationElementInfo.setSourceRangeStart(i10);
        importDeclarationElementInfo.setSourceRangeEnd(i11);
        importDeclarationElementInfo.setNameSourceStart(i12);
        importDeclarationElementInfo.setNameSourceEnd(i13);
        importDeclarationElementInfo.setFlags(i14);
        addToChildren(this.importContainerInfo, createImportDeclaration);
        this.newElements.put(createImportDeclaration, importDeclarationElementInfo);
    }

    @Override
    public void acceptLineSeparatorPositions(int[] iArr) {
    }

    @Override
    public void acceptPackage(ImportReference importReference) {
        PackageDeclaration packageDeclaration;
        Object peek = this.infoStack.peek();
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        if (javaElement.getElementType() == 5) {
            packageDeclaration = createPackageDeclaration(javaElement, new String(CharOperation.concatWith(importReference.getImportName(), '.')));
        } else {
            Assert.isTrue(false);
            packageDeclaration = null;
        }
        resolveDuplicates(packageDeclaration);
        AnnotatableInfo annotatableInfo = new AnnotatableInfo();
        annotatableInfo.setSourceRangeStart(importReference.declarationSourceStart);
        annotatableInfo.setSourceRangeEnd(importReference.declarationSourceEnd);
        annotatableInfo.setNameSourceStart(importReference.sourceStart);
        annotatableInfo.setNameSourceEnd(importReference.sourceEnd);
        addToChildren(peek, packageDeclaration);
        this.newElements.put(packageDeclaration, annotatableInfo);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = importReference.annotations;
        if (annotationArr != null) {
            int length = annotationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                acceptAnnotation(importReference.annotations[i10], annotatableInfo, packageDeclaration);
            }
        }
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
        if ((categorizedProblem.getID() & 1073741824) != 0) {
            this.hasSyntaxErrors = true;
        }
    }

    public void acceptTypeParameter(ISourceElementRequestor.TypeParameterInfo typeParameterInfo, JavaElementInfo javaElementInfo) {
        TypeParameter createTypeParameter = createTypeParameter((JavaElement) this.handleStack.peek(), new String(typeParameterInfo.name));
        resolveDuplicates(createTypeParameter);
        TypeParameterElementInfo typeParameterElementInfo = new TypeParameterElementInfo();
        typeParameterElementInfo.setSourceRangeStart(typeParameterInfo.declarationStart);
        typeParameterElementInfo.nameStart = typeParameterInfo.nameSourceStart;
        typeParameterElementInfo.nameEnd = typeParameterInfo.nameSourceEnd;
        typeParameterElementInfo.bounds = typeParameterInfo.bounds;
        if (javaElementInfo instanceof SourceTypeElementInfo) {
            SourceTypeElementInfo sourceTypeElementInfo = (SourceTypeElementInfo) javaElementInfo;
            ITypeParameter[] iTypeParameterArr = sourceTypeElementInfo.typeParameters;
            int length = iTypeParameterArr.length;
            ITypeParameter[] iTypeParameterArr2 = new ITypeParameter[length + 1];
            System.arraycopy(iTypeParameterArr, 0, iTypeParameterArr2, 0, length);
            iTypeParameterArr2[length] = createTypeParameter;
            sourceTypeElementInfo.typeParameters = iTypeParameterArr2;
        } else {
            SourceMethodElementInfo sourceMethodElementInfo = (SourceMethodElementInfo) javaElementInfo;
            ITypeParameter[] iTypeParameterArr3 = sourceMethodElementInfo.typeParameters;
            int length2 = iTypeParameterArr3.length;
            ITypeParameter[] iTypeParameterArr4 = new ITypeParameter[length2 + 1];
            System.arraycopy(iTypeParameterArr3, 0, iTypeParameterArr4, 0, length2);
            iTypeParameterArr4[length2] = createTypeParameter;
            sourceMethodElementInfo.typeParameters = iTypeParameterArr4;
        }
        this.newElements.put(createTypeParameter, typeParameterElementInfo);
        typeParameterElementInfo.setSourceRangeEnd(typeParameterInfo.declarationEnd);
        if (typeParameterInfo.typeAnnotated) {
            this.unitInfo.annotationNumber = CompilationUnitElementInfo.ANNOTATION_THRESHOLD_FOR_DIET_PARSE;
        }
    }

    public Annotation createAnnotation(JavaElement javaElement, String str) {
        return new Annotation(javaElement, str);
    }

    public SourceField createField(JavaElement javaElement, ISourceElementRequestor.FieldInfo fieldInfo) {
        return new SourceField(javaElement, JavaModelManager.getJavaModelManager().intern(new String(fieldInfo.name)));
    }

    public ImportContainer createImportContainer(ICompilationUnit iCompilationUnit) {
        return (ImportContainer) iCompilationUnit.getImportContainer();
    }

    public ImportDeclaration createImportDeclaration(ImportContainer importContainer, String str, boolean z10) {
        return new ImportDeclaration(importContainer, str, z10);
    }

    public Initializer createInitializer(JavaElement javaElement) {
        return new Initializer(javaElement, 1);
    }

    public SourceMethod createMethodHandle(JavaElement javaElement, ISourceElementRequestor.MethodInfo methodInfo) {
        return new SourceMethod(javaElement, JavaModelManager.getJavaModelManager().intern(new String(methodInfo.name)), convertTypeNamesToSigs(methodInfo.parameterTypes));
    }

    public SourceModule createModuleHandle(JavaElement javaElement, ISourceElementRequestor.ModuleInfo moduleInfo) {
        return new SourceModule(javaElement, new String(moduleInfo.moduleName));
    }

    public PackageDeclaration createPackageDeclaration(JavaElement javaElement, String str) {
        return new PackageDeclaration((CompilationUnit) javaElement, str);
    }

    public SourceType createTypeHandle(JavaElement javaElement, ISourceElementRequestor.TypeInfo typeInfo) {
        return new SourceType(javaElement, new String(typeInfo.name));
    }

    public TypeParameter createTypeParameter(JavaElement javaElement, String str) {
        return new TypeParameter(javaElement, str);
    }

    @Override
    public void enterCompilationUnit() {
        this.infoStack = new Stack();
        this.children = new HashMap();
        this.handleStack = new Stack();
        this.infoStack.push(this.unitInfo);
        this.handleStack.push(this.unit);
    }

    @Override
    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        enterMethod(methodInfo);
    }

    @Override
    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        SourceField sourceField;
        ISourceElementRequestor.TypeInfo typeInfo = (ISourceElementRequestor.TypeInfo) this.infoStack.peek();
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        if (javaElement.getElementType() == 7) {
            sourceField = createField(javaElement, fieldInfo);
        } else {
            Assert.isTrue(false);
            sourceField = null;
        }
        resolveDuplicates(sourceField);
        addToChildren(typeInfo, sourceField);
        typeInfo.childrenCategories.put(sourceField, fieldInfo.categories);
        this.infoStack.push(fieldInfo);
        this.handleStack.push(sourceField);
    }

    @Override
    public void enterInitializer(int i10, int i11) {
        Initializer initializer;
        Object peek = this.infoStack.peek();
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        if (javaElement.getElementType() == 7) {
            initializer = createInitializer(javaElement);
        } else {
            Assert.isTrue(false);
            initializer = null;
        }
        resolveDuplicates(initializer);
        addToChildren(peek, initializer);
        this.infoStack.push(new int[]{i10, i11});
        this.handleStack.push(initializer);
    }

    @Override
    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        SourceMethod sourceMethod;
        ISourceElementRequestor.TypeInfo typeInfo = (ISourceElementRequestor.TypeInfo) this.infoStack.peek();
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        if (methodInfo.parameterTypes == null) {
            methodInfo.parameterTypes = CharOperation.NO_CHAR_CHAR;
        }
        if (methodInfo.parameterNames == null) {
            methodInfo.parameterNames = CharOperation.NO_CHAR_CHAR;
        }
        if (methodInfo.exceptionTypes == null) {
            methodInfo.exceptionTypes = CharOperation.NO_CHAR_CHAR;
        }
        if (javaElement.getElementType() == 7) {
            sourceMethod = createMethodHandle(javaElement, methodInfo);
        } else {
            Assert.isTrue(false);
            sourceMethod = null;
        }
        resolveDuplicates(sourceMethod);
        this.infoStack.push(methodInfo);
        this.handleStack.push(sourceMethod);
        addToChildren(typeInfo, sourceMethod);
        typeInfo.childrenCategories.put(sourceMethod, methodInfo.categories);
    }

    @Override
    public void enterModule(ISourceElementRequestor.ModuleInfo moduleInfo) {
        Object peek = this.infoStack.peek();
        SourceModule createModuleHandle = createModuleHandle((JavaElement) this.handleStack.peek(), moduleInfo);
        this.infoStack.push(moduleInfo);
        this.handleStack.push(createModuleHandle);
        addToChildren(peek, createModuleHandle);
    }

    @Override
    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        Object peek = this.infoStack.peek();
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        SourceType createTypeHandle = createTypeHandle(javaElement, typeInfo);
        resolveDuplicates(createTypeHandle);
        this.infoStack.push(typeInfo);
        this.handleStack.push(createTypeHandle);
        if (javaElement.getElementType() == 7) {
            ((ISourceElementRequestor.TypeInfo) peek).childrenCategories.put(createTypeHandle, typeInfo.categories);
        }
        addToChildren(peek, createTypeHandle);
    }

    @Override
    public void exitCompilationUnit(int i10) {
        ImportContainerInfo importContainerInfo = this.importContainerInfo;
        if (importContainerInfo != null) {
            importContainerInfo.children = getChildren(importContainerInfo);
        }
        CompilationUnitElementInfo compilationUnitElementInfo = this.unitInfo;
        compilationUnitElementInfo.children = getChildren(compilationUnitElementInfo);
        this.unitInfo.setSourceLength(i10 + 1);
        this.unitInfo.setIsStructureKnown(!this.hasSyntaxErrors);
    }

    @Override
    public void exitConstructor(int i10) {
        exitMethod(i10, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x008e, code lost:
    
        if (org.eclipse.jdt.core.Flags.isInterface(((org.eclipse.jdt.internal.compiler.ISourceElementRequestor.TypeInfo) r10).modifiers) != false) goto L20;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void exitField(int i10, int i11, int i12) {
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        ISourceElementRequestor.FieldInfo fieldInfo = (ISourceElementRequestor.FieldInfo) this.infoStack.peek();
        IJavaElement[] children = getChildren(fieldInfo);
        SourceFieldElementInfo sourceFieldElementInfo = children.length == 0 ? new SourceFieldElementInfo() : new SourceFieldWithChildrenInfo(children);
        sourceFieldElementInfo.setNameSourceStart(fieldInfo.nameSourceStart);
        sourceFieldElementInfo.setNameSourceEnd(fieldInfo.nameSourceEnd);
        sourceFieldElementInfo.setSourceRangeStart(fieldInfo.declarationStart);
        sourceFieldElementInfo.setFlags(fieldInfo.modifiers);
        sourceFieldElementInfo.setTypeName(JavaModelManager.getJavaModelManager().intern(fieldInfo.type));
        this.newElements.put(javaElement, sourceFieldElementInfo);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = fieldInfo.annotations;
        if (annotationArr != null) {
            int length = annotationArr.length;
            this.unitInfo.annotationNumber += length;
            for (int i13 = 0; i13 < length; i13++) {
                acceptAnnotation(fieldInfo.annotations[i13], sourceFieldElementInfo, javaElement);
            }
        }
        sourceFieldElementInfo.setSourceRangeEnd(i12);
        this.handleStack.pop();
        this.infoStack.pop();
        if (i10 != -1) {
            if (!Flags.isFinal(sourceFieldElementInfo.flags)) {
                Object peek = this.infoStack.peek();
                if (peek instanceof ISourceElementRequestor.TypeInfo) {
                }
            }
            int i14 = i11 - i10;
            if (i14 > 0) {
                char[] cArr = new char[i14];
                System.arraycopy(this.parser.scanner.source, i10, cArr, 0, i14);
                sourceFieldElementInfo.initializationSource = cArr;
            }
        }
        if (fieldInfo.typeAnnotated) {
            this.unitInfo.annotationNumber = CompilationUnitElementInfo.ANNOTATION_THRESHOLD_FOR_DIET_PARSE;
        }
    }

    @Override
    public void exitInitializer(int i10) {
        JavaElement javaElement = (JavaElement) this.handleStack.peek();
        int[] iArr = (int[]) this.infoStack.peek();
        IJavaElement[] children = getChildren(iArr);
        InitializerElementInfo initializerElementInfo = children.length == 0 ? new InitializerElementInfo() : new InitializerWithChildrenInfo(children);
        initializerElementInfo.setSourceRangeStart(iArr[0]);
        initializerElementInfo.setFlags(iArr[1]);
        initializerElementInfo.setSourceRangeEnd(i10);
        this.newElements.put(javaElement, initializerElementInfo);
        this.handleStack.pop();
        this.infoStack.pop();
    }

    @Override
    public void exitMethod(int i10, Expression expression) {
        SourceMethodElementInfo createMethodInfo = createMethodInfo((ISourceElementRequestor.MethodInfo) this.infoStack.peek(), (SourceMethod) this.handleStack.peek());
        createMethodInfo.setSourceRangeEnd(i10);
        if (createMethodInfo.isAnnotationMethod() && expression != null) {
            SourceAnnotationMethodInfo sourceAnnotationMethodInfo = (SourceAnnotationMethodInfo) createMethodInfo;
            sourceAnnotationMethodInfo.defaultValueStart = expression.sourceStart;
            sourceAnnotationMethodInfo.defaultValueEnd = expression.sourceEnd;
            MemberValuePair memberValuePair = new MemberValuePair(((JavaElement) this.handleStack.peek()).getElementName());
            memberValuePair.value = getMemberValue(memberValuePair, expression);
            sourceAnnotationMethodInfo.defaultValue = memberValuePair;
        }
        this.handleStack.pop();
        this.infoStack.pop();
    }

    @Override
    public void exitModule(int i10) {
        ISourceElementRequestor.ModuleInfo moduleInfo = (ISourceElementRequestor.ModuleInfo) this.infoStack.peek();
        SourceModule sourceModule = (SourceModule) this.handleStack.peek();
        JavaProject javaProject = (JavaProject) sourceModule.getAncestor(2);
        if (javaProject != null) {
            try {
                ModuleDescriptionInfo createModuleInfo = createModuleInfo(moduleInfo, sourceModule);
                createModuleInfo.setSourceRangeEnd(i10);
                createModuleInfo.children = getChildren(createModuleInfo);
                this.unitInfo.setModule(sourceModule);
                javaProject.setModuleDescription(sourceModule);
            } catch (JavaModelException unused) {
            }
        }
        this.handleStack.pop();
        this.infoStack.pop();
    }

    @Override
    public void exitType(int i10) {
        ISourceElementRequestor.TypeInfo typeInfo = (ISourceElementRequestor.TypeInfo) this.infoStack.peek();
        SourceTypeElementInfo createTypeInfo = createTypeInfo(typeInfo, (SourceType) this.handleStack.peek());
        createTypeInfo.setSourceRangeEnd(i10);
        createTypeInfo.children = getChildren(typeInfo);
        this.handleStack.pop();
        this.infoStack.pop();
    }

    public Object getMemberValue(MemberValuePair memberValuePair, Expression expression) {
        if (expression instanceof NullLiteral) {
            return null;
        }
        if (expression instanceof Literal) {
            ((Literal) expression).computeConstant();
            return Util.getAnnotationMemberValue(memberValuePair, expression.constant);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            IAnnotation acceptAnnotation = acceptAnnotation((org.eclipse.jdt.internal.compiler.ast.Annotation) expression, null, (JavaElement) this.handleStack.peek());
            memberValuePair.valueKind = 10;
            return acceptAnnotation;
        }
        if (expression instanceof ClassLiteralAccess) {
            char[] concatWith = CharOperation.concatWith(((ClassLiteralAccess) expression).type.getTypeName(), '.');
            memberValuePair.valueKind = 11;
            return new String(concatWith);
        }
        if (expression instanceof QualifiedNameReference) {
            char[] concatWith2 = CharOperation.concatWith(((QualifiedNameReference) expression).tokens, '.');
            memberValuePair.valueKind = 12;
            return new String(concatWith2);
        }
        if (expression instanceof SingleNameReference) {
            char[] cArr = ((SingleNameReference) expression).token;
            if (cArr == RecoveryScanner.FAKE_IDENTIFIER) {
                memberValuePair.valueKind = 14;
                return null;
            }
            memberValuePair.valueKind = 13;
            return new String(cArr);
        }
        if (!(expression instanceof ArrayInitializer)) {
            if (!(expression instanceof UnaryExpression)) {
                memberValuePair.valueKind = 14;
                return null;
            }
            UnaryExpression unaryExpression = (UnaryExpression) expression;
            if (((unaryExpression.bits & ASTNode.OperatorMASK) >> 6) == 13) {
                Expression expression2 = unaryExpression.expression;
                if (expression2 instanceof Literal) {
                    Literal literal = (Literal) expression2;
                    literal.computeConstant();
                    return Util.getNegativeAnnotationMemberValue(memberValuePair, literal.constant);
                }
            }
            memberValuePair.valueKind = 14;
            return null;
        }
        memberValuePair.valueKind = -1;
        Expression[] expressionArr = ((ArrayInitializer) expression).expressions;
        int length = expressionArr == null ? 0 : expressionArr.length;
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = memberValuePair.valueKind;
            Object memberValue = getMemberValue(memberValuePair, expressionArr[i10]);
            if (i11 != -1 && memberValuePair.valueKind != i11) {
                memberValuePair.valueKind = 14;
            }
            objArr[i10] = memberValue;
        }
        if (memberValuePair.valueKind == -1) {
            memberValuePair.valueKind = 14;
        }
        return objArr;
    }

    public IMemberValuePair getMemberValuePair(org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair) {
        MemberValuePair memberValuePair2 = new MemberValuePair(new String(memberValuePair.name));
        memberValuePair2.value = getMemberValue(memberValuePair2, memberValuePair.value);
        return memberValuePair2;
    }

    public IMemberValuePair[] getMemberValuePairs(org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairArr) {
        int length = memberValuePairArr.length;
        IMemberValuePair[] iMemberValuePairArr = new IMemberValuePair[length];
        for (int i10 = 0; i10 < length; i10++) {
            iMemberValuePairArr[i10] = getMemberValuePair(memberValuePairArr[i10]);
        }
        return iMemberValuePairArr;
    }

    public void resolveDuplicates(SourceRefElement sourceRefElement) {
        Integer num = this.occurenceCounts.get(sourceRefElement);
        if (num == null) {
            this.occurenceCounts.put(sourceRefElement, 1);
        } else {
            this.occurenceCounts.put(sourceRefElement, Integer.valueOf(num.intValue() + 1));
            sourceRefElement.occurrenceCount = num.intValue() + 1;
        }
        if (sourceRefElement instanceof SourceType) {
            SourceType sourceType = (SourceType) sourceRefElement;
            if (sourceType.isAnonymous()) {
                IJavaElement ancestor = sourceRefElement.getParent().getAncestor(7);
                Integer num2 = this.localOccurrenceCounts.get(ancestor);
                if (num2 == null) {
                    this.localOccurrenceCounts.put(ancestor, 1);
                } else {
                    this.localOccurrenceCounts.put(ancestor, Integer.valueOf(num2.intValue() + 1));
                    sourceType.localOccurrenceCount = num2.intValue() + 1;
                }
            }
        }
    }
}
