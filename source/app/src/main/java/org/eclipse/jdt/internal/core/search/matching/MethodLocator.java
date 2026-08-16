package org.eclipse.jdt.internal.core.search.matching;

import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.MethodDeclarationMatch;
import org.eclipse.jdt.core.search.MethodReferenceMatch;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.BinaryMethod;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;

public class MethodLocator extends PatternLocator {
    public char[][][] allSuperDeclaringTypeNames;
    protected boolean isDeclarationOfReferencedMethodsPattern;
    private MatchLocator matchLocator;
    private HashMap methodDeclarationsWithInvalidParam;
    protected MethodPattern pattern;
    private char[][][] samePkgSuperDeclaringTypeNames;

    public MethodLocator(MethodPattern methodPattern) {
        super(methodPattern);
        this.methodDeclarationsWithInvalidParam = new HashMap();
        this.pattern = methodPattern;
        this.isDeclarationOfReferencedMethodsPattern = methodPattern instanceof DeclarationOfReferencedMethodsPattern;
    }

    private ReferenceBinding getMatchingSuper(ReferenceBinding referenceBinding) {
        ReferenceBinding matchingSuper;
        if (referenceBinding == null) {
            return null;
        }
        ReferenceBinding superclass = referenceBinding.superclass();
        MethodPattern methodPattern = this.pattern;
        if (resolveLevelForType(methodPattern.declaringSimpleName, methodPattern.declaringQualification, superclass) != 0) {
            return superclass;
        }
        if (!referenceBinding.isInterface() && !CharOperation.equals(referenceBinding.compoundName, TypeConstants.JAVA_LANG_OBJECT) && (matchingSuper = getMatchingSuper(superclass)) != null) {
            return matchingSuper;
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces == null) {
            return null;
        }
        for (int i10 = 0; i10 < superInterfaces.length; i10++) {
            MethodPattern methodPattern2 = this.pattern;
            if (resolveLevelForType(methodPattern2.declaringSimpleName, methodPattern2.declaringQualification, superInterfaces[i10]) != 0) {
                return superInterfaces[i10];
            }
            ReferenceBinding matchingSuper2 = getMatchingSuper(superInterfaces[i10]);
            if (matchingSuper2 != null) {
                return matchingSuper2;
            }
        }
        return null;
    }

    private MethodBinding getMethodBinding(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr) {
        for (MethodBinding methodBinding : referenceBinding.getMethods(cArr)) {
            TypeBinding[] typeBindingArr2 = methodBinding.parameters;
            if (typeBindingArr.length == typeBindingArr2.length) {
                int length = typeBindingArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (TypeBinding.notEquals(typeBindingArr2[i10].erasure(), typeBindingArr[i10].erasure())) {
                        break;
                    }
                }
                return methodBinding;
            }
        }
        return null;
    }

    private boolean isTypeInSuperDeclaringTypeNames(char[][] cArr) {
        char[][][] cArr2 = this.allSuperDeclaringTypeNames;
        if (cArr2 == null) {
            return false;
        }
        int length = cArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(this.allSuperDeclaringTypeNames[i10], cArr)) {
                return true;
            }
        }
        return false;
    }

    private boolean matchOverriddenMethod(ReferenceBinding referenceBinding, MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (referenceBinding == null || this.pattern.selector == null) {
            return false;
        }
        if (!referenceBinding.isInterface() && !CharOperation.equals(referenceBinding.compoundName, TypeConstants.JAVA_LANG_OBJECT)) {
            ReferenceBinding superclass = referenceBinding.superclass();
            if (superclass.isParameterizedType()) {
                MethodBinding[] methods = superclass.getMethods(this.pattern.selector);
                int length = methods.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (methods[i10].areParametersEqual(methodBinding)) {
                        if (methodBinding2 == null) {
                            if (methodParametersEqualsPattern(methods[i10].original())) {
                                return true;
                            }
                        } else if (methods[i10].original().areParametersEqual(methodBinding2)) {
                            return true;
                        }
                    }
                }
            }
            if (matchOverriddenMethod(superclass, methodBinding, methodBinding2)) {
                return true;
            }
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces == null) {
            return false;
        }
        int length2 = superInterfaces.length;
        for (int i11 = 0; i11 < length2; i11++) {
            if (superInterfaces[i11].isParameterizedType()) {
                MethodBinding[] methods2 = superInterfaces[i11].getMethods(this.pattern.selector);
                int length3 = methods2.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    if (methods2[i12].areParametersEqual(methodBinding)) {
                        if (methodBinding2 == null) {
                            if (methodParametersEqualsPattern(methods2[i12].original())) {
                                return true;
                            }
                        } else if (methods2[i12].original().areParametersEqual(methodBinding2)) {
                            return true;
                        }
                    }
                }
            }
            if (matchOverriddenMethod(superInterfaces[i11], methodBinding, methodBinding2)) {
                return true;
            }
        }
        return false;
    }

    private boolean methodParametersEqualsPattern(MethodBinding methodBinding) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        if (length != this.pattern.parameterSimpleNames.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            MethodPattern methodPattern = this.pattern;
            if (!CharOperation.match(PatternLocator.qualifiedPattern(methodPattern.parameterSimpleNames[i10], methodPattern.parameterQualifications[i10]), typeBindingArr[i10].readableName(), this.isCaseSensitive)) {
                return false;
            }
        }
        return true;
    }

    private boolean resolveLevelAsSuperInvocation(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, char[][][] cArr, boolean z10) {
        ReferenceBinding[] superInterfaces;
        char[][] cArr2 = referenceBinding.compoundName;
        int length = cArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (!CharOperation.equals(cArr[i10], cArr2)) {
                i10++;
            } else {
                if (z10) {
                    return true;
                }
                for (MethodBinding methodBinding : referenceBinding.getMethods(this.pattern.selector)) {
                    TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                    if (typeBindingArr.length == typeBindingArr2.length) {
                        int length2 = typeBindingArr2.length;
                        for (int i11 = 0; i11 < length2; i11++) {
                            if (TypeBinding.notEquals(typeBindingArr2[i11].erasure(), typeBindingArr[i11].erasure())) {
                                break;
                            }
                        }
                        return true;
                    }
                }
            }
        }
        if (!referenceBinding.isInterface() || (superInterfaces = referenceBinding.superInterfaces()) == null) {
            return false;
        }
        for (ReferenceBinding referenceBinding2 : superInterfaces) {
            if (resolveLevelAsSuperInvocation(referenceBinding2, typeBindingArr, cArr, false)) {
                return true;
            }
        }
        return false;
    }

    public ReferenceBinding checkMethodRef(MethodBinding methodBinding, ReferenceExpression referenceExpression) {
        if (methodBinding.isStatic() || methodBinding.isPrivate() || !referenceExpression.isMethodReference()) {
            return null;
        }
        if (methodBinding.isDefault()) {
            MethodPattern methodPattern = this.pattern;
            if (methodPattern.focus != null && !CharOperation.equals(methodPattern.declaringPackageName, methodBinding.declaringClass.qualifiedPackageName())) {
                return null;
            }
        }
        Expression expression = referenceExpression.lhs;
        if (!(expression instanceof NameReference)) {
            return null;
        }
        TypeBinding typeBinding = ((NameReference) expression).resolvedType;
        if (typeBinding instanceof ReferenceBinding) {
            return (ReferenceBinding) typeBinding;
        }
        return null;
    }

    @Override
    public void clear() {
        this.methodDeclarationsWithInvalidParam = new HashMap();
    }

    @Override
    public int fineGrain() {
        return this.pattern.fineGrain;
    }

    @Override
    public void initializePolymorphicSearch(MatchLocator matchLocator) {
        long currentTimeMillis = BasicSearchEngine.VERBOSE ? System.currentTimeMillis() : 0L;
        try {
            MethodPattern methodPattern = this.pattern;
            SuperTypeNamesCollector superTypeNamesCollector = new SuperTypeNamesCollector(methodPattern, methodPattern.declaringSimpleName, methodPattern.declaringQualification, matchLocator, methodPattern.declaringType, matchLocator.progressMonitor);
            this.allSuperDeclaringTypeNames = superTypeNamesCollector.collect();
            this.samePkgSuperDeclaringTypeNames = superTypeNamesCollector.getSamePackageSuperTypeNames();
            this.matchLocator = matchLocator;
        } catch (JavaModelException unused) {
        }
        if (BasicSearchEngine.VERBOSE) {
            System.out.println("Time to initialize polymorphic search: " + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    public boolean isVirtualInvoke(MethodBinding methodBinding, MessageSend messageSend) {
        if (methodBinding.isStatic() || methodBinding.isPrivate() || messageSend.isSuperAccess()) {
            return false;
        }
        if (!methodBinding.isDefault()) {
            return true;
        }
        MethodPattern methodPattern = this.pattern;
        return methodPattern.focus == null || CharOperation.equals(methodPattern.declaringPackageName, methodBinding.declaringClass.qualifiedPackageName());
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        int i10 = 0;
        if (this.pattern.findReferences && (aSTNode instanceof ImportReference)) {
            ImportReference importReference = (ImportReference) aSTNode;
            int length = importReference.tokens.length - 1;
            if (importReference.isStatic() && (importReference.bits & 131072) == 0 && matchesName(this.pattern.selector, importReference.tokens[length])) {
                char[][] cArr = new char[length];
                System.arraycopy(importReference.tokens, 0, cArr, 0, length);
                MethodPattern methodPattern = this.pattern;
                if (matchesName(CharOperation.concat(methodPattern.declaringQualification, methodPattern.declaringSimpleName, '.'), CharOperation.concatWith(cArr, '.'))) {
                    i10 = this.pattern.mustResolve ? 2 : 3;
                }
            }
        }
        return matchingNodeSet.addMatch(aSTNode, i10);
    }

    @Override
    public int matchContainer() {
        return this.pattern.findReferences ? 15 : 2;
    }

    @Override
    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        if (importReference.isStatic() && (binding instanceof MethodBinding)) {
            super.matchLevelAndReportImportRef(importReference, binding, matchLocator);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int matchMethod(MethodBinding methodBinding, boolean z10) {
        int i10;
        int i11;
        boolean z11;
        if (!matchesName(this.pattern.selector, methodBinding.selector)) {
            return 0;
        }
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.declaringSimpleName != null || 3 <= (i10 = resolveLevelForType(methodPattern.returnSimpleName, methodPattern.returnQualification, methodBinding.returnType))) {
            i10 = 3;
        } else if (i10 == 0) {
            return 0;
        }
        char[][] cArr = this.pattern.parameterSimpleNames;
        int length = cArr == null ? -1 : cArr.length;
        if (length > -1) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (typeBindingArr == null) {
                return 1;
            }
            if (length != typeBindingArr.length) {
                return 0;
            }
            if (!methodBinding.isValidBinding() && ((ProblemMethodBinding) methodBinding).problemId() == 3) {
                return 1;
            }
            MethodPattern methodPattern2 = this.pattern;
            boolean z12 = methodPattern2 != null && (methodPattern2.focus instanceof BinaryMethod);
            MethodBinding methodBinding2 = null;
            boolean z13 = false;
            boolean z14 = false;
            for (int i12 = 0; i12 < length; i12++) {
                TypeBinding typeBinding = methodBinding.parameters[i12];
                if (!typeBinding.isMemberType()) {
                    MethodPattern methodPattern3 = this.pattern;
                    char[] cArr2 = methodPattern3.parameterQualifications[i12];
                    if (cArr2 == null) {
                        i11 = resolveLevelForType(methodPattern3.parameterSimpleNames[i12], cArr2, typeBinding);
                        z11 = false;
                        if (i10 > i11) {
                            if (i11 == 0) {
                                if (!z10) {
                                    if (!typeBinding.isTypeVariable()) {
                                        return 0;
                                    }
                                    z13 = true;
                                } else if (!z11) {
                                }
                            }
                            i10 = i11;
                        }
                    }
                }
                if (!z14) {
                    methodBinding2 = this.matchLocator.getMethodBinding(this.pattern);
                    z14 = true;
                }
                if (methodBinding2 != null) {
                    TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
                    if (typeBindingArr2.length >= length) {
                        i11 = (!z12 ? typeBinding.isEquivalentTo(typeBindingArr2[i12]) : typeBinding.erasure().isEquivalentTo(typeBindingArr2[i12].erasure())) ? 0 : 3;
                        z11 = true;
                        if (i10 > i11) {
                        }
                    }
                }
                i11 = 0;
                z11 = false;
                if (i10 > i11) {
                }
            }
            if (z13) {
                if (!methodBinding.isStatic() && !methodBinding.isPrivate()) {
                    if (!z14) {
                        methodBinding2 = this.matchLocator.getMethodBinding(this.pattern);
                    }
                    if (methodBinding2 != null && matchOverriddenMethod(methodBinding2.declaringClass, methodBinding2, methodBinding)) {
                        return 3;
                    }
                }
                return 0;
            }
        }
        return i10;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, null, null, binding, i10, matchLocator);
    }

    @Override
    public SearchMatch newDeclarationMatch(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, int i11, MatchLocator matchLocator) {
        if (binding != null) {
            MethodBinding methodBinding = (MethodBinding) binding;
            if (this.methodDeclarationsWithInvalidParam.containsKey(aSTNode)) {
                Boolean bool = (Boolean) this.methodDeclarationsWithInvalidParam.get(aSTNode);
                if (bool != null) {
                    if (bool.booleanValue()) {
                        return super.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator);
                    }
                    return null;
                }
                if (matchOverriddenMethod(methodBinding.declaringClass, methodBinding, null)) {
                    this.methodDeclarationsWithInvalidParam.put(aSTNode, Boolean.TRUE);
                    return super.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator);
                }
                if (!isTypeInSuperDeclaringTypeNames(methodBinding.declaringClass.compoundName)) {
                    this.methodDeclarationsWithInvalidParam.put(aSTNode, Boolean.FALSE);
                    return null;
                }
                MethodBinding methodBinding2 = matchLocator.getMethodBinding(this.pattern);
                if (methodBinding2 == null || matchOverriddenMethod(methodBinding2.declaringClass, methodBinding2, methodBinding)) {
                    this.methodDeclarationsWithInvalidParam.put(aSTNode, Boolean.TRUE);
                    return super.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator);
                }
                this.methodDeclarationsWithInvalidParam.put(aSTNode, Boolean.FALSE);
                return null;
            }
        }
        return super.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator);
    }

    @Override
    public int referenceType() {
        return 9;
    }

    public void reportDeclaration(MethodBinding methodBinding, MatchLocator matchLocator, SimpleSet simpleSet) throws CoreException {
        AbstractMethodDeclaration declarationOf;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        IType lookupType = matchLocator.lookupType(referenceBinding);
        if (lookupType == null) {
            return;
        }
        if (lookupType.isBinary()) {
            TypeBinding[] typeBindingArr = methodBinding.original().parameters;
            int length = typeBindingArr.length;
            char[][] cArr = new char[length];
            for (int i10 = 0; i10 < length; i10++) {
                char[] qualifiedSourceName = typeBindingArr[i10].qualifiedSourceName();
                int dimensions = typeBindingArr[i10].dimensions();
                for (int i11 = 0; i11 < dimensions; i11++) {
                    qualifiedSourceName = CharOperation.concat(qualifiedSourceName, new char[]{'[', JavaElement.JEM_TYPE_PARAMETER});
                }
                cArr[i10] = qualifiedSourceName;
            }
            IMethod createBinaryMethodHandle = matchLocator.createBinaryMethodHandle(lookupType, methodBinding.selector, cArr);
            if (createBinaryMethodHandle == null || simpleSet.addIfNotIncluded(createBinaryMethodHandle) == null) {
                return;
            }
            IProject resource = lookupType.getResource();
            if (resource == null) {
                resource = lookupType.getJavaProject().getProject();
            }
            matchLocator.reportBinaryMemberDeclaration(resource, createBinaryMethodHandle, methodBinding, matchLocator.getBinaryInfo((ClassFile) lookupType.getClassFile(), resource), 0);
            return;
        }
        IResource resource2 = lookupType.getResource();
        if (referenceBinding instanceof ParameterizedTypeBinding) {
            referenceBinding = ((ParameterizedTypeBinding) referenceBinding).genericType();
        }
        ClassScope classScope = ((SourceTypeBinding) referenceBinding).scope;
        if (classScope == null || (declarationOf = classScope.referenceContext.declarationOf(methodBinding.original())) == null) {
            return;
        }
        String str = new String(methodBinding.selector);
        Argument[] argumentArr = declarationOf.arguments;
        int length2 = argumentArr == null ? 0 : argumentArr.length;
        String[] strArr = new String[length2];
        for (int i12 = 0; i12 < length2; i12++) {
            strArr[i12] = Signature.createTypeSignature(CharOperation.concatWith(argumentArr[i12].type.getParameterizedTypeName(), '.'), false);
        }
        IMethod method = lookupType.getMethod(str, strArr);
        if (method == null || simpleSet.addIfNotIncluded(method) == null) {
            return;
        }
        int i13 = declarationOf.sourceStart;
        MethodDeclarationMatch methodDeclarationMatch = new MethodDeclarationMatch(method, 0, i13, (declarationOf.sourceEnd - i13) + 1, matchLocator.getParticipant(), resource2);
        this.match = methodDeclarationMatch;
        matchLocator.report(methodDeclarationMatch);
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.findReferences) {
            if (aSTNode instanceof MessageSend) {
                return resolveLevel((MessageSend) aSTNode);
            }
            if (aSTNode instanceof SingleMemberAnnotation) {
                return resolveLevel(((SingleMemberAnnotation) aSTNode).memberValuePairs()[0].binding);
            }
            if (aSTNode instanceof MemberValuePair) {
                return resolveLevel(((MemberValuePair) aSTNode).binding);
            }
            if (aSTNode instanceof ReferenceExpression) {
                return resolveLevel((ReferenceExpression) aSTNode);
            }
        }
        if (methodPattern.findDeclarations) {
            if (aSTNode instanceof MethodDeclaration) {
                return resolveLevel(((MethodDeclaration) aSTNode).binding);
            }
            if (aSTNode instanceof LambdaExpression) {
                return resolveLevel(((LambdaExpression) aSTNode).descriptor);
            }
        }
        return 0;
    }

    public int resolveLevelAsSubtype(char[] cArr, char[] cArr2, ReferenceBinding referenceBinding, char[] cArr3, TypeBinding[] typeBindingArr, char[] cArr4, boolean z10) {
        int resolveLevelAsSubtype;
        MethodBinding methodBinding;
        if (referenceBinding == null) {
            return 1;
        }
        int resolveLevelForType = resolveLevelForType(cArr, cArr2, referenceBinding);
        if (resolveLevelForType != 0) {
            if (z10 && !CharOperation.equals(cArr4, referenceBinding.qualifiedPackageName())) {
                return 0;
            }
            MethodBinding methodBinding2 = typeBindingArr == null ? null : getMethodBinding(referenceBinding, cArr3, typeBindingArr);
            return (((methodBinding2 == null || methodBinding2.isAbstract()) && referenceBinding.isAbstract()) || referenceBinding.isInterface()) ? resolveLevelForType : resolveLevelForType | 2048;
        }
        if (!referenceBinding.isInterface() && !CharOperation.equals(referenceBinding.compoundName, TypeConstants.JAVA_LANG_OBJECT) && (resolveLevelAsSubtype = resolveLevelAsSubtype(cArr, cArr2, referenceBinding.superclass(), cArr3, typeBindingArr, cArr4, z10)) != 0) {
            if (typeBindingArr != null && (methodBinding = getMethodBinding(referenceBinding, cArr3, typeBindingArr)) != null) {
                if ((resolveLevelAsSubtype & 2048) != 0) {
                    return 0;
                }
                if (!methodBinding.isAbstract() && !referenceBinding.isInterface()) {
                    resolveLevelAsSubtype |= 2048;
                }
            }
            return resolveLevelAsSubtype | 1024;
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces == null) {
            return 1;
        }
        for (ReferenceBinding referenceBinding2 : superInterfaces) {
            int resolveLevelAsSubtype2 = resolveLevelAsSubtype(cArr, cArr2, referenceBinding2, cArr3, null, cArr4, z10);
            if (resolveLevelAsSubtype2 != 0) {
                if (!referenceBinding.isAbstract() && !referenceBinding.isInterface()) {
                    resolveLevelAsSubtype2 |= 2048;
                }
                return resolveLevelAsSubtype2 | 1024;
            }
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        int i11;
        ASTNode aSTNode2 = aSTNode;
        boolean z10 = aSTNode2 instanceof MessageSend;
        MethodBinding methodBinding = z10 ? ((MessageSend) aSTNode2).binding : binding instanceof MethodBinding ? (MethodBinding) binding : null;
        if (this.isDeclarationOfReferencedMethodsPattern) {
            if (methodBinding != null && i10 == 0) {
                DeclarationOfReferencedMethodsPattern declarationOfReferencedMethodsPattern = (DeclarationOfReferencedMethodsPattern) this.pattern;
                IJavaElement iJavaElement3 = iJavaElement;
                while (iJavaElement3 != null && !declarationOfReferencedMethodsPattern.enclosingElement.equals(iJavaElement3)) {
                    iJavaElement3 = iJavaElement3.getParent();
                }
                if (iJavaElement3 != null) {
                    reportDeclaration(methodBinding, matchLocator, declarationOfReferencedMethodsPattern.knownMethods);
                    return;
                }
                return;
            }
            return;
        }
        MethodReferenceMatch newMethodReferenceMatch = matchLocator.newMethodReferenceMatch(iJavaElement, binding, i10, -1, -1, false, false, aSTNode);
        newMethodReferenceMatch.setLocalElement(iJavaElement2);
        this.match = newMethodReferenceMatch;
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.findReferences && z10) {
            IJavaElement iJavaElement4 = methodPattern.focus;
            if (iJavaElement4 == null || iJavaElement4.getElementType() != 9 || methodBinding == null || methodBinding.declaringClass == null || !Flags.isPrivate(((IMethod) iJavaElement4).getFlags()) || CharOperation.equals(methodBinding.declaringClass.sourceName, iJavaElement4.getParent().getElementName().toCharArray())) {
                MessageSend messageSend = (MessageSend) aSTNode2;
                matchReportReference(messageSend, matchLocator, i10, messageSend.binding);
                return;
            }
            return;
        }
        if (aSTNode2 instanceof SingleMemberAnnotation) {
            MemberValuePair memberValuePair = ((SingleMemberAnnotation) aSTNode2).memberValuePairs()[0];
            this.match.setImplicit(true);
            aSTNode2 = memberValuePair;
        }
        if (aSTNode2 instanceof ReferenceExpression) {
            i11 = ((ReferenceExpression) aSTNode2).nameSourceStart;
        } else {
            i11 = aSTNode2.sourceStart;
        }
        int i12 = (aSTNode2.sourceEnd - i11) + 1;
        this.match.setOffset(i11);
        this.match.setLength(i12);
        matchLocator.report(this.match);
    }

    @Override
    public int match(LambdaExpression lambdaExpression, MatchingNodeSet matchingNodeSet) {
        MethodPattern methodPattern = this.pattern;
        if (!methodPattern.findDeclarations) {
            return 0;
        }
        char[][] cArr = methodPattern.parameterSimpleNames;
        if (cArr != null && cArr.length != lambdaExpression.arguments().length) {
            return 0;
        }
        matchingNodeSet.mustResolve = true;
        return matchingNodeSet.addMatch(lambdaExpression, 2);
    }

    @Override
    public int match(MethodDeclaration methodDeclaration, MatchingNodeSet matchingNodeSet) {
        TypeParameter[] typeParameterArr;
        MethodPattern methodPattern = this.pattern;
        if (!methodPattern.findDeclarations || !matchesName(methodPattern.selector, methodDeclaration.selector)) {
            return 0;
        }
        MethodPattern methodPattern2 = this.pattern;
        boolean z10 = methodPattern2.mustResolve;
        char[][] cArr = methodPattern2.parameterSimpleNames;
        if (cArr != null) {
            int length = cArr.length;
            Argument[] argumentArr = methodDeclaration.arguments;
            int length2 = argumentArr == null ? 0 : argumentArr.length;
            if (length != length2) {
                return 0;
            }
            for (int i10 = 0; i10 < length2; i10++) {
                if (argumentArr != null && !matchesTypeReference(this.pattern.parameterSimpleNames[i10], argumentArr[i10].type)) {
                    if (!this.mayBeGeneric) {
                        return 0;
                    }
                    if (!this.pattern.mustResolve) {
                        z10 = true;
                        matchingNodeSet.mustResolve = true;
                    }
                    this.methodDeclarationsWithInvalidParam.put(methodDeclaration, null);
                }
            }
        }
        if (!this.pattern.hasMethodArguments() || ((typeParameterArr = methodDeclaration.typeParameters) != null && typeParameterArr.length == this.pattern.methodArguments.length)) {
            return matchingNodeSet.addMatch(methodDeclaration, z10 ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        int resolveLevelForType;
        char[] cArr;
        ReferenceBinding referenceBinding;
        PackageBinding packageBinding;
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof MethodBinding)) {
            return 0;
        }
        MethodBinding methodBinding = (MethodBinding) binding;
        boolean z10 = this.pattern.findDeclarations && this.mayBeGeneric;
        int matchMethod = matchMethod(methodBinding, z10);
        if (matchMethod == 0) {
            if (methodBinding != methodBinding.original()) {
                matchMethod = matchMethod(methodBinding.original(), z10);
            }
            if (matchMethod == 0) {
                return 0;
            }
            methodBinding = methodBinding.original();
        }
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.declaringSimpleName == null && methodPattern.declaringQualification == null) {
            return matchMethod;
        }
        boolean z11 = (methodBinding.isStatic() || methodBinding.isPrivate()) ? false : true;
        if (z11 && (cArr = this.pattern.declaringQualification) != null && (referenceBinding = methodBinding.declaringClass) != null && (packageBinding = referenceBinding.fPackage) != null) {
            z11 = CharOperation.compareWith(cArr, packageBinding.shortReadableName()) == 0;
        }
        if (z11) {
            MethodPattern methodPattern2 = this.pattern;
            char[] cArr2 = methodPattern2.declaringSimpleName;
            char[] cArr3 = methodPattern2.declaringQualification;
            ReferenceBinding referenceBinding2 = methodBinding.declaringClass;
            resolveLevelForType = resolveLevelAsSubtype(cArr2, cArr3, referenceBinding2, methodBinding.selector, null, referenceBinding2.qualifiedPackageName(), methodBinding.isDefault());
        } else {
            MethodPattern methodPattern3 = this.pattern;
            resolveLevelForType = resolveLevelForType(methodPattern3.declaringSimpleName, methodPattern3.declaringQualification, methodBinding.declaringClass);
        }
        return (matchMethod & 15) > (resolveLevelForType & 15) ? resolveLevelForType : matchMethod;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00fd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportReference(MessageSend messageSend, MatchLocator matchLocator, int i10, MethodBinding methodBinding) throws CoreException {
        boolean z10;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding;
            this.match.setRaw(parameterizedGenericMethodBinding.isRaw);
            TypeBinding[] typeBindingArr = parameterizedGenericMethodBinding.typeArguments;
            MethodPattern methodPattern = this.pattern;
            updateMatch(typeBindingArr, matchLocator, methodPattern.methodArguments, methodPattern.hasMethodParameters());
            if (!methodBinding.declaringClass.isParameterizedType() && !methodBinding.declaringClass.isRawType()) {
                if (this.pattern.hasTypeArguments()) {
                    this.match.setRule(16);
                }
            } else {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) methodBinding.declaringClass;
                if ((this.pattern.hasTypeArguments() || !this.pattern.hasMethodArguments()) && !parameterizedTypeBinding.isParameterizedWithOwnVariables()) {
                    updateMatch(parameterizedTypeBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
                }
            }
            if (this.match.getRule() != 0 && messageSend.resolvedType == null) {
                this.match.setRule(16);
            }
        } else if (methodBinding instanceof ParameterizedMethodBinding) {
            if (!methodBinding.declaringClass.isParameterizedType() && !methodBinding.declaringClass.isRawType()) {
                if (this.pattern.hasTypeArguments()) {
                    this.match.setRule(16);
                }
            } else {
                ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) methodBinding.declaringClass;
                if (!parameterizedTypeBinding2.isParameterizedWithOwnVariables()) {
                    if ((i10 & 3072) != 0) {
                        ReferenceBinding matchingSuper = getMatchingSuper((ReferenceBinding) messageSend.actualReceiverType);
                        if (matchingSuper instanceof ParameterizedTypeBinding) {
                            parameterizedTypeBinding2 = (ParameterizedTypeBinding) matchingSuper;
                        }
                    }
                    ParameterizedTypeBinding parameterizedTypeBinding3 = parameterizedTypeBinding2;
                    if ((i10 & 512) == 0) {
                        updateMatch(parameterizedTypeBinding3, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
                    }
                }
            }
            if (this.match.getRule() != 0 && messageSend.resolvedType == null) {
                this.match.setRule(16);
            }
        } else {
            if (this.pattern.hasMethodArguments()) {
                this.match.setRule(16);
            }
            z10 = false;
            if (this.match.getRule() != 0) {
                return;
            }
            if ((this.isErasureMatch && this.match.isErasure()) || ((this.isEquivalentMatch && this.match.isEquivalent()) || this.match.isExact())) {
                int i11 = (int) (messageSend.nameSourcePosition >>> 32);
                this.match.setOffset(i11);
                this.match.setLength((messageSend.sourceEnd - i11) + 1);
                if (z10 && this.pattern.hasMethodArguments()) {
                    matchLocator.reportAccurateParameterizedMethodReference(this.match, messageSend, messageSend.typeArguments);
                    return;
                } else {
                    matchLocator.report(this.match);
                    return;
                }
            }
            return;
        }
        z10 = true;
        if (this.match.getRule() != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0098 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resolveLevel(MessageSend messageSend) {
        MethodBinding methodBinding = messageSend.binding;
        int i10 = 1;
        if (methodBinding == null) {
            return 1;
        }
        if (messageSend.resolvedType == null) {
            Expression[] expressionArr = messageSend.arguments;
            int length = expressionArr == null ? 0 : expressionArr.length;
            char[][] cArr = this.pattern.parameterSimpleNames;
            return (cArr == null || length == cArr.length) ? 1 : 0;
        }
        int matchMethod = matchMethod(methodBinding, false);
        if (matchMethod == 0) {
            if (methodBinding != methodBinding.original()) {
                matchMethod = matchMethod(methodBinding.original(), false);
            }
            if (matchMethod == 0) {
                return 0;
            }
            methodBinding = methodBinding.original();
        }
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.declaringSimpleName == null && methodPattern.declaringQualification == null) {
            return matchMethod;
        }
        if (isVirtualInvoke(methodBinding, messageSend)) {
            TypeBinding typeBinding = messageSend.actualReceiverType;
            if (typeBinding instanceof ReferenceBinding) {
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                MethodPattern methodPattern2 = this.pattern;
                int resolveLevelAsSubtype = resolveLevelAsSubtype(methodPattern2.declaringSimpleName, methodPattern2.declaringQualification, referenceBinding, methodBinding.selector, methodBinding.parameters, referenceBinding.qualifiedPackageName(), methodBinding.isDefault());
                if (resolveLevelAsSubtype == 0) {
                    if (methodBinding.declaringClass != null && this.allSuperDeclaringTypeNames != null) {
                        char[][][] cArr2 = (methodBinding.isDefault() && this.pattern.focus == null) ? this.samePkgSuperDeclaringTypeNames : this.allSuperDeclaringTypeNames;
                        if (cArr2 != null && resolveLevelAsSuperInvocation(referenceBinding, methodBinding.parameters, cArr2, true)) {
                            i10 = matchMethod | 512;
                        }
                    }
                    if ((i10 & (-16)) != 0) {
                        return i10;
                    }
                    return (matchMethod & 15) > (i10 & 15) ? i10 : matchMethod;
                }
                i10 = resolveLevelAsSubtype;
                if ((i10 & (-16)) != 0) {
                }
                if ((matchMethod & 15) > (i10 & 15)) {
                }
            }
        }
        MethodPattern methodPattern3 = this.pattern;
        i10 = resolveLevelForType(methodPattern3.declaringSimpleName, methodPattern3.declaringQualification, methodBinding.declaringClass);
        if ((matchMethod & 15) > (i10 & 15)) {
        }
    }

    @Override
    public int match(MemberValuePair memberValuePair, MatchingNodeSet matchingNodeSet) {
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.findReferences && matchesName(methodPattern.selector, memberValuePair.name)) {
            return matchingNodeSet.addMatch(memberValuePair, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int match(MessageSend messageSend, MatchingNodeSet matchingNodeSet) {
        MethodPattern methodPattern = this.pattern;
        if (!methodPattern.findReferences || !matchesName(methodPattern.selector, messageSend.selector)) {
            return 0;
        }
        MethodPattern methodPattern2 = this.pattern;
        char[][] cArr = methodPattern2.parameterSimpleNames;
        if (cArr != null && (!methodPattern2.varargs || (messageSend.bits & 32768) != 0)) {
            int length = cArr.length;
            Expression[] expressionArr = messageSend.arguments;
            if (length != (expressionArr == null ? 0 : expressionArr.length)) {
                return 0;
            }
        }
        return matchingNodeSet.addMatch(messageSend, methodPattern2.mustResolve ? 2 : 3);
    }

    @Override
    public int match(ReferenceExpression referenceExpression, MatchingNodeSet matchingNodeSet) {
        MethodPattern methodPattern = this.pattern;
        if (!methodPattern.findReferences || !matchesName(methodPattern.selector, referenceExpression.selector)) {
            return 0;
        }
        char[] cArr = referenceExpression.selector;
        if (cArr != null && Arrays.equals(cArr, ConstantPool.Init)) {
            return 0;
        }
        matchingNodeSet.mustResolve = true;
        return matchingNodeSet.addMatch(referenceExpression, this.pattern.mustResolve ? 2 : 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0082 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resolveLevel(ReferenceExpression referenceExpression) {
        MethodBinding methodBinding = referenceExpression.getMethodBinding();
        int i10 = 1;
        if (methodBinding == null || !methodBinding.isValidBinding()) {
            return 1;
        }
        int matchMethod = matchMethod(methodBinding, false);
        if (matchMethod == 0) {
            if (methodBinding != methodBinding.original()) {
                matchMethod = matchMethod(methodBinding.original(), false);
            }
            if (matchMethod == 0) {
                return 0;
            }
            methodBinding = methodBinding.original();
        }
        MethodPattern methodPattern = this.pattern;
        if (methodPattern.declaringSimpleName == null && methodPattern.declaringQualification == null) {
            return matchMethod;
        }
        ReferenceBinding checkMethodRef = checkMethodRef(methodBinding, referenceExpression);
        if (checkMethodRef != null) {
            MethodPattern methodPattern2 = this.pattern;
            int resolveLevelAsSubtype = resolveLevelAsSubtype(methodPattern2.declaringSimpleName, methodPattern2.declaringQualification, checkMethodRef, methodBinding.selector, methodBinding.parameters, checkMethodRef.qualifiedPackageName(), methodBinding.isDefault());
            if (resolveLevelAsSubtype == 0) {
                if (methodBinding.declaringClass != null && this.allSuperDeclaringTypeNames != null) {
                    char[][][] cArr = (methodBinding.isDefault() && this.pattern.focus == null) ? this.samePkgSuperDeclaringTypeNames : this.allSuperDeclaringTypeNames;
                    if (cArr != null && resolveLevelAsSuperInvocation(checkMethodRef, methodBinding.parameters, cArr, true)) {
                        i10 = matchMethod | 512;
                    }
                }
                if ((i10 & (-16)) != 0) {
                    return i10;
                }
            }
            i10 = resolveLevelAsSubtype;
            if ((i10 & (-16)) != 0) {
            }
        } else {
            MethodPattern methodPattern3 = this.pattern;
            i10 = resolveLevelForType(methodPattern3.declaringSimpleName, methodPattern3.declaringQualification, methodBinding.declaringClass);
        }
        return (matchMethod & 15) > (i10 & 15) ? i10 : matchMethod;
    }

    @Override
    public int match(Annotation annotation, MatchingNodeSet matchingNodeSet) {
        MemberValuePair[] memberValuePairs;
        if (!this.pattern.findReferences || (memberValuePairs = annotation.memberValuePairs()) == null || memberValuePairs.length == 0) {
            return 0;
        }
        int length = memberValuePairs.length;
        for (int i10 = 0; i10 < length; i10++) {
            MemberValuePair memberValuePair = annotation.memberValuePairs()[i10];
            if (matchesName(this.pattern.selector, memberValuePair.name)) {
                if (!(annotation instanceof SingleMemberAnnotation)) {
                    annotation = memberValuePair;
                }
                return matchingNodeSet.addMatch(annotation, this.pattern.mustResolve ? 2 : 3);
            }
        }
        return 0;
    }
}
