package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class Javadoc extends ASTNode {
    public TypeReference[] exceptionReferences;
    public JavadocSingleNameReference[] invalidParameters;
    public JavadocSingleNameReference[] paramReferences;
    public JavadocSingleTypeReference[] paramTypeParameters;
    public JavadocReturnStatement returnStatement;
    public Expression[] seeReferences;
    public long[] inheritedPositions = null;
    public long valuePositions = -1;

    public Javadoc(int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.bits |= 65536;
    }

    private void resolveParamTags(MethodScope methodScope, boolean z10, boolean z11) {
        AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        int length = javadocSingleNameReferenceArr == null ? 0 : javadocSingleNameReferenceArr.length;
        if (referenceMethod == null) {
            for (int i10 = 0; i10 < length; i10++) {
                JavadocSingleNameReference javadocSingleNameReference = this.paramReferences[i10];
                methodScope.problemReporter().javadocUnexpectedTag(javadocSingleNameReference.tagSourceStart, javadocSingleNameReference.tagSourceEnd);
            }
            return;
        }
        Argument[] argumentArr = referenceMethod.arguments;
        int length2 = argumentArr == null ? 0 : argumentArr.length;
        if (length == 0) {
            if (z10) {
                for (int i11 = 0; i11 < length2; i11++) {
                    Argument argument = referenceMethod.arguments[i11];
                    methodScope.problemReporter().javadocMissingParamTag(argument.name, argument.sourceStart, argument.sourceEnd, referenceMethod.binding.modifiers);
                }
                return;
            }
            return;
        }
        LocalVariableBinding[] localVariableBindingArr = new LocalVariableBinding[length];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            JavadocSingleNameReference javadocSingleNameReference2 = this.paramReferences[i13];
            javadocSingleNameReference2.resolve(methodScope, true, z11);
            Binding binding = javadocSingleNameReference2.binding;
            if (binding != null && binding.isValidBinding()) {
                boolean z12 = false;
                for (int i14 = 0; i14 < i12 && !z12; i14++) {
                    if (localVariableBindingArr[i14] == javadocSingleNameReference2.binding) {
                        methodScope.problemReporter().javadocDuplicatedParamTag(javadocSingleNameReference2.token, javadocSingleNameReference2.sourceStart, javadocSingleNameReference2.sourceEnd, referenceMethod.binding.modifiers);
                        z12 = true;
                    }
                }
                if (!z12) {
                    localVariableBindingArr[i12] = (LocalVariableBinding) javadocSingleNameReference2.binding;
                    i12++;
                }
            }
        }
        if (z10) {
            for (int i15 = 0; i15 < length2; i15++) {
                Argument argument2 = referenceMethod.arguments[i15];
                boolean z13 = false;
                for (int i16 = 0; i16 < i12 && !z13; i16++) {
                    if (argument2.binding == localVariableBindingArr[i16]) {
                        z13 = true;
                    }
                }
                if (!z13) {
                    methodScope.problemReporter().javadocMissingParamTag(argument2.name, argument2.sourceStart, argument2.sourceEnd, referenceMethod.binding.modifiers);
                }
            }
        }
    }

    private void resolveReference(Expression expression, Scope scope) {
        TypeBinding typeBinding;
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        FieldBinding fieldBinding;
        FieldBinding fieldBinding2;
        int i10 = scope.referenceContext().compilationResult().problemCount;
        int i11 = scope.kind;
        if (i11 == 2) {
            expression.resolveType((MethodScope) scope);
        } else if (i11 == 3) {
            expression.resolveType((ClassScope) scope);
        }
        boolean z10 = scope.referenceContext().compilationResult().problemCount > i10;
        boolean z11 = scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5;
        if (expression instanceof JavadocFieldReference) {
            JavadocFieldReference javadocFieldReference = (JavadocFieldReference) expression;
            if (javadocFieldReference.methodBinding != null) {
                if (javadocFieldReference.tagValue == 10) {
                    scope.problemReporter().javadocInvalidValueReference(javadocFieldReference.sourceStart, javadocFieldReference.sourceEnd, scope.getDeclarationModifiers());
                } else if (javadocFieldReference.actualReceiverType != null) {
                    if (scope.enclosingSourceType().isCompatibleWith(javadocFieldReference.actualReceiverType)) {
                        javadocFieldReference.bits |= 16384;
                    }
                    ReferenceBinding referenceBinding = (ReferenceBinding) javadocFieldReference.actualReceiverType;
                    if (CharOperation.equals(referenceBinding.sourceName(), javadocFieldReference.token)) {
                        javadocFieldReference.methodBinding = scope.getConstructor(referenceBinding, Binding.NO_TYPES, javadocFieldReference);
                    } else {
                        javadocFieldReference.methodBinding = scope.findMethod(referenceBinding, javadocFieldReference.token, Binding.NO_TYPES, javadocFieldReference, false);
                    }
                }
            } else if (z11 && (fieldBinding = javadocFieldReference.binding) != null && fieldBinding.isValidBinding() && javadocFieldReference.tagValue == 10 && !javadocFieldReference.binding.isStatic()) {
                scope.problemReporter().javadocInvalidValueReference(javadocFieldReference.sourceStart, javadocFieldReference.sourceEnd, scope.getDeclarationModifiers());
            }
            if (z10 || (fieldBinding2 = javadocFieldReference.binding) == null || !fieldBinding2.isValidBinding()) {
                return;
            }
            TypeBinding typeBinding2 = javadocFieldReference.actualReceiverType;
            if (typeBinding2 instanceof ReferenceBinding) {
                verifyTypeReference(javadocFieldReference, javadocFieldReference.receiver, scope, z11, (ReferenceBinding) typeBinding2, javadocFieldReference.binding.modifiers);
                return;
            }
            return;
        }
        if (!z10 && ((expression instanceof JavadocSingleTypeReference) || (expression instanceof JavadocQualifiedTypeReference))) {
            TypeBinding typeBinding3 = expression.resolvedType;
            if (typeBinding3 instanceof ReferenceBinding) {
                ReferenceBinding referenceBinding2 = (ReferenceBinding) typeBinding3;
                verifyTypeReference(expression, expression, scope, z11, referenceBinding2, referenceBinding2.modifiers);
            }
        }
        if (expression instanceof JavadocMessageSend) {
            JavadocMessageSend javadocMessageSend = (JavadocMessageSend) expression;
            if (z11 && javadocMessageSend.tagValue == 10) {
                scope.problemReporter().javadocInvalidValueReference(javadocMessageSend.sourceStart, javadocMessageSend.sourceEnd, scope.getDeclarationModifiers());
            }
            if (z10 || (methodBinding2 = javadocMessageSend.binding) == null || !methodBinding2.isValidBinding()) {
                return;
            }
            TypeBinding typeBinding4 = javadocMessageSend.actualReceiverType;
            if (typeBinding4 instanceof ReferenceBinding) {
                verifyTypeReference(javadocMessageSend, javadocMessageSend.receiver, scope, z11, (ReferenceBinding) typeBinding4, javadocMessageSend.binding.modifiers);
                return;
            }
            return;
        }
        if (!(expression instanceof JavadocAllocationExpression)) {
            if ((expression instanceof JavadocSingleTypeReference) && (typeBinding = expression.resolvedType) != null && typeBinding.isTypeVariable()) {
                scope.problemReporter().javadocInvalidReference(expression.sourceStart, expression.sourceEnd);
                return;
            }
            return;
        }
        JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) expression;
        if (z11 && javadocAllocationExpression.tagValue == 10) {
            scope.problemReporter().javadocInvalidValueReference(javadocAllocationExpression.sourceStart, javadocAllocationExpression.sourceEnd, scope.getDeclarationModifiers());
        }
        if (z10 || (methodBinding = javadocAllocationExpression.binding) == null || !methodBinding.isValidBinding()) {
            return;
        }
        TypeBinding typeBinding5 = javadocAllocationExpression.resolvedType;
        if (typeBinding5 instanceof ReferenceBinding) {
            verifyTypeReference(javadocAllocationExpression, javadocAllocationExpression.type, scope, z11, (ReferenceBinding) typeBinding5, javadocAllocationExpression.binding.modifiers);
        }
    }

    private void resolveThrowsTags(MethodScope methodScope, boolean z10) {
        AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
        TypeReference[] typeReferenceArr = this.exceptionReferences;
        int i10 = 0;
        int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        if (referenceMethod == null) {
            while (i10 < length) {
                TypeReference typeReference = this.exceptionReferences[i10];
                int i11 = typeReference.sourceStart;
                int i12 = typeReference.sourceEnd;
                if (typeReference instanceof JavadocQualifiedTypeReference) {
                    JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) typeReference;
                    i11 = javadocQualifiedTypeReference.tagSourceStart;
                    i12 = javadocQualifiedTypeReference.tagSourceEnd;
                } else if (typeReference instanceof JavadocSingleTypeReference) {
                    JavadocSingleTypeReference javadocSingleTypeReference = (JavadocSingleTypeReference) typeReference;
                    i11 = javadocSingleTypeReference.tagSourceStart;
                    i12 = javadocSingleTypeReference.tagSourceEnd;
                }
                methodScope.problemReporter().javadocUnexpectedTag(i11, i12);
                i10++;
            }
            return;
        }
        MethodBinding methodBinding = referenceMethod.binding;
        int length2 = methodBinding == null ? 0 : methodBinding.thrownExceptions.length;
        TypeReference[] typeReferenceArr2 = referenceMethod.thrownExceptions;
        int length3 = typeReferenceArr2 == null ? 0 : typeReferenceArr2.length;
        if (length == 0) {
            if (z10) {
                while (i10 < length2) {
                    ReferenceBinding referenceBinding = referenceMethod.binding.thrownExceptions[i10];
                    if (referenceBinding != null && referenceBinding.isValidBinding()) {
                        int i13 = i10;
                        while (i13 < length3 && TypeBinding.notEquals(referenceBinding, referenceMethod.thrownExceptions[i13].resolvedType)) {
                            i13++;
                        }
                        if (i13 < length3) {
                            methodScope.problemReporter().javadocMissingThrowsTag(referenceMethod.thrownExceptions[i13], referenceMethod.binding.modifiers);
                        }
                    }
                    i10++;
                }
                return;
            }
            return;
        }
        TypeReference[] typeReferenceArr3 = new TypeReference[length];
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            TypeReference typeReference2 = this.exceptionReferences[i15];
            typeReference2.resolve(methodScope);
            TypeBinding typeBinding = typeReference2.resolvedType;
            if (typeBinding != null && typeBinding.isValidBinding() && typeBinding.isClass()) {
                typeReferenceArr3[i14] = typeReference2;
                i14++;
            }
        }
        for (int i16 = 0; i16 < length2; i16++) {
            ReferenceBinding referenceBinding2 = referenceMethod.binding.thrownExceptions[i16];
            if (referenceBinding2 != null) {
                referenceBinding2 = (ReferenceBinding) referenceBinding2.erasure();
            }
            boolean z11 = false;
            for (int i17 = 0; i17 < i14 && !z11; i17++) {
                TypeReference typeReference3 = typeReferenceArr3[i17];
                if (typeReference3 != null && TypeBinding.equalsEquals(referenceBinding2, typeReference3.resolvedType)) {
                    typeReferenceArr3[i17] = null;
                    z11 = true;
                }
            }
            if (!z11 && z10 && referenceBinding2 != null && referenceBinding2.isValidBinding()) {
                int i18 = i16;
                while (i18 < length3 && TypeBinding.notEquals(referenceBinding2, referenceMethod.thrownExceptions[i18].resolvedType)) {
                    i18++;
                }
                if (i18 < length3) {
                    methodScope.problemReporter().javadocMissingThrowsTag(referenceMethod.thrownExceptions[i18], referenceMethod.binding.modifiers);
                }
            }
        }
        for (int i19 = 0; i19 < i14; i19++) {
            TypeReference typeReference4 = typeReferenceArr3[i19];
            if (typeReference4 != null) {
                boolean z12 = false;
                for (int i20 = 0; i20 < length3 && !z12; i20++) {
                    TypeBinding typeBinding2 = referenceMethod.thrownExceptions[i20].resolvedType;
                    if (typeBinding2 != null) {
                        z12 = typeReference4.resolvedType.isCompatibleWith(typeBinding2);
                    }
                }
                if (!z12 && !typeReference4.resolvedType.isUncheckedException(false)) {
                    methodScope.problemReporter().javadocInvalidThrowsClassName(typeReference4, referenceMethod.binding.modifiers);
                }
            }
        }
    }

    private void resolveTypeParameterTags(Scope scope, boolean z10) {
        TypeParameter[] typeParameters;
        TypeVariableBinding[] typeVariableBindingArr;
        int i10;
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
        int i11 = 0;
        int length = javadocSingleTypeReferenceArr == null ? 0 : javadocSingleTypeReferenceArr.length;
        int i12 = scope.kind;
        if (i12 == 2) {
            AbstractMethodDeclaration referenceMethod = ((MethodScope) scope).referenceMethod();
            if (referenceMethod == null) {
                while (i11 < length) {
                    JavadocSingleTypeReference javadocSingleTypeReference = this.paramTypeParameters[i11];
                    scope.problemReporter().javadocUnexpectedTag(javadocSingleTypeReference.tagSourceStart, javadocSingleTypeReference.tagSourceEnd);
                    i11++;
                }
                return;
            }
            typeParameters = referenceMethod.typeParameters();
            MethodBinding methodBinding = referenceMethod.binding;
            typeVariableBindingArr = methodBinding.typeVariables;
            i10 = methodBinding.modifiers;
        } else if (i12 != 3) {
            i10 = -1;
            typeParameters = null;
            typeVariableBindingArr = null;
        } else {
            TypeDeclaration typeDeclaration = ((ClassScope) scope).referenceContext;
            typeParameters = typeDeclaration.typeParameters;
            SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
            typeVariableBindingArr = sourceTypeBinding.typeVariables;
            i10 = sourceTypeBinding.modifiers;
        }
        if (typeVariableBindingArr == null || typeVariableBindingArr.length == 0) {
            for (int i13 = 0; i13 < length; i13++) {
                JavadocSingleTypeReference javadocSingleTypeReference2 = this.paramTypeParameters[i13];
                scope.problemReporter().javadocUnexpectedTag(javadocSingleTypeReference2.tagSourceStart, javadocSingleTypeReference2.tagSourceEnd);
            }
            return;
        }
        if (typeParameters != null) {
            boolean z11 = z10 && scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5;
            int length2 = typeParameters.length;
            if (length == 0) {
                if (z11) {
                    while (i11 < length2) {
                        ProblemReporter problemReporter = scope.problemReporter();
                        TypeParameter typeParameter = typeParameters[i11];
                        problemReporter.javadocMissingParamTag(typeParameter.name, typeParameter.sourceStart, typeParameter.sourceEnd, i10);
                        i11++;
                    }
                    return;
                }
                return;
            }
            if (typeVariableBindingArr.length == length2) {
                TypeVariableBinding[] typeVariableBindingArr2 = new TypeVariableBinding[length];
                int i14 = 0;
                while (i14 < length) {
                    JavadocSingleTypeReference javadocSingleTypeReference3 = this.paramTypeParameters[i14];
                    TypeBinding internalResolveType = javadocSingleTypeReference3.internalResolveType(scope, i11);
                    if (internalResolveType != null && internalResolveType.isValidBinding()) {
                        if (internalResolveType.isTypeVariable()) {
                            if (scope.compilerOptions().reportUnusedParameterIncludeDocCommentReference) {
                                ((TypeVariableBinding) internalResolveType).modifiers |= 134217728;
                            }
                            int i15 = i11;
                            int i16 = i15;
                            while (i15 < i14 && i16 == 0) {
                                if (TypeBinding.equalsEquals(typeVariableBindingArr2[i15], javadocSingleTypeReference3.resolvedType)) {
                                    scope.problemReporter().javadocDuplicatedParamTag(javadocSingleTypeReference3.token, javadocSingleTypeReference3.sourceStart, javadocSingleTypeReference3.sourceEnd, i10);
                                    i16 = 1;
                                }
                                i15++;
                            }
                            if (i16 == 0) {
                                typeVariableBindingArr2[i14] = (TypeVariableBinding) javadocSingleTypeReference3.resolvedType;
                            }
                        } else {
                            scope.problemReporter().javadocUndeclaredParamTagName(javadocSingleTypeReference3.token, javadocSingleTypeReference3.sourceStart, javadocSingleTypeReference3.sourceEnd, i10);
                        }
                    }
                    i14++;
                    i11 = 0;
                }
                for (int i17 = i11; i17 < length2; i17++) {
                    TypeParameter typeParameter2 = typeParameters[i17];
                    int i18 = i11;
                    int i19 = i18;
                    while (i18 < length && i19 == 0) {
                        if (TypeBinding.equalsEquals(typeParameter2.binding, typeVariableBindingArr2[i18])) {
                            typeVariableBindingArr2[i18] = null;
                            i19 = 1;
                        }
                        i18++;
                    }
                    if (i19 == 0 && z11) {
                        scope.problemReporter().javadocMissingParamTag(typeParameter2.name, typeParameter2.sourceStart, typeParameter2.sourceEnd, i10);
                    }
                }
                while (i11 < length) {
                    if (typeVariableBindingArr2[i11] != null) {
                        JavadocSingleTypeReference javadocSingleTypeReference4 = this.paramTypeParameters[i11];
                        scope.problemReporter().javadocUndeclaredParamTagName(javadocSingleTypeReference4.token, javadocSingleTypeReference4.sourceStart, javadocSingleTypeReference4.sourceEnd, i10);
                    }
                    i11++;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0122 A[LOOP:2: B:40:0x0122->B:44:0x0133, LOOP_START, PHI: r7
  0x0122: PHI (r7v1 int) = (r7v0 int), (r7v2 int) binds: [B:39:0x0120, B:44:0x0133] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void verifyTypeReference(Expression expression, Expression expression2, Scope scope, boolean z10, ReferenceBinding referenceBinding, int i10) {
        int declarationModifiers;
        char[][] typeName;
        int length;
        if (referenceBinding.isValidBinding()) {
            if (!canBeSeen(scope.problemReporter().options.reportInvalidJavadocTagsVisibility, i10)) {
                scope.problemReporter().javadocHiddenReference(expression2.sourceStart, expression.sourceEnd, scope, i10);
                return;
            }
            if (expression != expression2 && !canBeSeen(scope.problemReporter().options.reportInvalidJavadocTagsVisibility, referenceBinding.modifiers)) {
                scope.problemReporter().javadocHiddenReference(expression2.sourceStart, expression2.sourceEnd, scope, referenceBinding.modifiers);
                return;
            }
            if (referenceBinding.isMemberType()) {
                int length2 = referenceBinding.fPackage.compoundName.length;
                int depth = referenceBinding.depth();
                int i11 = depth + length2;
                int i12 = i11 + 1;
                char[][] cArr = new char[i12];
                cArr[i11] = referenceBinding.sourceName;
                ReferenceBinding referenceBinding2 = referenceBinding;
                int i13 = i11;
                while (referenceBinding2.enclosingType() != null) {
                    referenceBinding2 = referenceBinding2.enclosingType();
                    i13--;
                    cArr[i13] = referenceBinding2.sourceName;
                }
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        break;
                    }
                    i13--;
                    cArr[i13] = referenceBinding2.fPackage.compoundName[length2];
                }
                ClassScope classScope = scope.classScope();
                if (classScope.parent.kind != 4 || !CharOperation.equals(referenceBinding2.sourceName, classScope.referenceContext.name)) {
                    classScope = classScope.outerMostClassScope();
                    if ((expression2 instanceof JavadocSingleTypeReference) && ((!z10 && depth == 1) || TypeBinding.notEquals(referenceBinding2, classScope.referenceContext.binding))) {
                        if (!z10) {
                            scope.problemReporter().javadocInvalidMemberTypeQualification(expression2.sourceStart, expression2.sourceEnd, scope.getDeclarationModifiers());
                            return;
                        }
                        ImportBinding[] importBindingArr = classScope.compilationUnitScope().imports;
                        int length3 = importBindingArr == null ? 0 : importBindingArr.length;
                        for (int i14 = 0; i14 < length3; i14++) {
                            ImportBinding importBinding = importBindingArr[i14];
                            int length4 = importBinding.compoundName.length;
                            if ((importBinding.onDemand && length4 == i11) || length4 == i12) {
                                do {
                                    length4--;
                                    if (length4 >= 0 && CharOperation.equals(importBindingArr[i14].compoundName[length4], cArr[length4])) {
                                    }
                                } while (length4 != 0);
                                ImportReference importReference = importBindingArr[i14].reference;
                                if (importReference != null) {
                                    importReference.bits |= 2;
                                }
                            }
                        }
                        declarationModifiers = scope.getDeclarationModifiers();
                        scope.problemReporter().javadocInvalidMemberTypeQualification(expression2.sourceStart, expression2.sourceEnd, declarationModifiers);
                        if ((expression2 instanceof JavadocQualifiedTypeReference) && !scope.isDefinedInSameUnit(referenceBinding)) {
                            typeName = ((JavadocQualifiedTypeReference) expression2).getTypeName();
                            length = (classScope.getCurrentPackage() == referenceBinding.getPackage() || typeName.length >= i12) ? 0 : referenceBinding.fPackage.compoundName.length;
                            if (typeName.length == i12 - length) {
                                for (int i15 = 0; i15 < typeName.length; i15++) {
                                    if (CharOperation.equals(typeName[i15], cArr[i15 + length])) {
                                    }
                                }
                            }
                            if (declarationModifiers == -1) {
                                declarationModifiers = scope.getDeclarationModifiers();
                            }
                            scope.problemReporter().javadocInvalidMemberTypeQualification(expression2.sourceStart, expression2.sourceEnd, declarationModifiers);
                            return;
                        }
                    }
                }
                declarationModifiers = -1;
                if (expression2 instanceof JavadocQualifiedTypeReference) {
                    typeName = ((JavadocQualifiedTypeReference) expression2).getTypeName();
                    if (classScope.getCurrentPackage() == referenceBinding.getPackage()) {
                    }
                    if (typeName.length == i12 - length) {
                    }
                    if (declarationModifiers == -1) {
                    }
                    scope.problemReporter().javadocInvalidMemberTypeQualification(expression2.sourceStart, expression2.sourceEnd, declarationModifiers);
                    return;
                }
            }
            if (scope.referenceCompilationUnit().isPackageInfo() && (expression2 instanceof JavadocSingleTypeReference) && referenceBinding.fPackage.compoundName.length > 0) {
                scope.problemReporter().javadocInvalidReference(expression2.sourceStart, expression2.sourceEnd);
            }
        }
    }

    public boolean canBeSeen(int i10, int i11) {
        if (i11 < 0) {
            return true;
        }
        int i12 = i11 & 7;
        return i12 != 0 ? i12 != 2 ? (i12 == 4 && i10 == 1) ? false : true : i10 == 2 : i10 == 0 || i10 == 2;
    }

    public ASTNode getNodeStartingAt(int i10) {
        JavadocMessageSend javadocMessageSend;
        MethodBinding methodBinding;
        Expression[] expressionArr;
        Expression[] expressionArr2;
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        if (javadocSingleNameReferenceArr != null) {
            int length = javadocSingleNameReferenceArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                JavadocSingleNameReference javadocSingleNameReference = this.paramReferences[i11];
                if (javadocSingleNameReference.sourceStart == i10) {
                    return javadocSingleNameReference;
                }
            }
        }
        JavadocSingleNameReference[] javadocSingleNameReferenceArr2 = this.invalidParameters;
        if (javadocSingleNameReferenceArr2 != null) {
            int length2 = javadocSingleNameReferenceArr2.length;
            for (int i12 = 0; i12 < length2; i12++) {
                JavadocSingleNameReference javadocSingleNameReference2 = this.invalidParameters[i12];
                if (javadocSingleNameReference2.sourceStart == i10) {
                    return javadocSingleNameReference2;
                }
            }
        }
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
        if (javadocSingleTypeReferenceArr != null) {
            int length3 = javadocSingleTypeReferenceArr.length;
            for (int i13 = 0; i13 < length3; i13++) {
                JavadocSingleTypeReference javadocSingleTypeReference = this.paramTypeParameters[i13];
                if (javadocSingleTypeReference.sourceStart == i10) {
                    return javadocSingleTypeReference;
                }
            }
        }
        TypeReference[] typeReferenceArr = this.exceptionReferences;
        if (typeReferenceArr != null) {
            int length4 = typeReferenceArr.length;
            for (int i14 = 0; i14 < length4; i14++) {
                TypeReference typeReference = this.exceptionReferences[i14];
                if (typeReference.sourceStart == i10) {
                    return typeReference;
                }
            }
        }
        Expression[] expressionArr3 = this.seeReferences;
        if (expressionArr3 == null) {
            return null;
        }
        int length5 = expressionArr3.length;
        for (int i15 = 0; i15 < length5; i15++) {
            Expression expression = this.seeReferences[i15];
            if (expression.sourceStart == i10) {
                return expression;
            }
            if (expression instanceof JavadocAllocationExpression) {
                JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) expression;
                MethodBinding methodBinding2 = javadocAllocationExpression.binding;
                if (methodBinding2 != null && methodBinding2.isValidBinding() && (expressionArr2 = javadocAllocationExpression.arguments) != null) {
                    int length6 = expressionArr2.length;
                    for (int i16 = 0; i16 < length6; i16++) {
                        Expression expression2 = javadocAllocationExpression.arguments[i16];
                        if (expression2.sourceStart == i10) {
                            return expression2;
                        }
                    }
                }
            } else if ((expression instanceof JavadocMessageSend) && (methodBinding = (javadocMessageSend = (JavadocMessageSend) expression).binding) != null && methodBinding.isValidBinding() && (expressionArr = javadocMessageSend.arguments) != null) {
                int length7 = expressionArr.length;
                for (int i17 = 0; i17 < length7; i17++) {
                    Expression expression3 = javadocMessageSend.arguments[i17];
                    if (expression3.sourceStart == i10) {
                        return expression3;
                    }
                }
            }
        }
        return null;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("/**\n");
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        if (javadocSingleNameReferenceArr != null) {
            int length = javadocSingleNameReferenceArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                ASTNode.printIndent(i10 + 1, stringBuffer).append(" * @param ");
                this.paramReferences[i11].print(i10, stringBuffer).append('\n');
            }
        }
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
        if (javadocSingleTypeReferenceArr != null) {
            int length2 = javadocSingleTypeReferenceArr.length;
            for (int i12 = 0; i12 < length2; i12++) {
                ASTNode.printIndent(i10 + 1, stringBuffer).append(" * @param <");
                this.paramTypeParameters[i12].print(i10, stringBuffer).append(">\n");
            }
        }
        if (this.returnStatement != null) {
            ASTNode.printIndent(i10 + 1, stringBuffer).append(" * @");
            this.returnStatement.print(i10, stringBuffer).append('\n');
        }
        TypeReference[] typeReferenceArr = this.exceptionReferences;
        if (typeReferenceArr != null) {
            int length3 = typeReferenceArr.length;
            for (int i13 = 0; i13 < length3; i13++) {
                ASTNode.printIndent(i10 + 1, stringBuffer).append(" * @throws ");
                this.exceptionReferences[i13].print(i10, stringBuffer).append('\n');
            }
        }
        Expression[] expressionArr = this.seeReferences;
        if (expressionArr != null) {
            int length4 = expressionArr.length;
            for (int i14 = 0; i14 < length4; i14++) {
                ASTNode.printIndent(i10 + 1, stringBuffer).append(" * @see ");
                this.seeReferences[i14].print(i10, stringBuffer).append('\n');
            }
        }
        ASTNode.printIndent(i10, stringBuffer).append(" */\n");
        return stringBuffer;
    }

    public void resolve(CompilationUnitScope compilationUnitScope) {
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
            if (javadocSingleNameReferenceArr != null) {
                int length = javadocSingleNameReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.paramReferences[i10].traverse(aSTVisitor, blockScope);
                }
            }
            JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
            if (javadocSingleTypeReferenceArr != null) {
                int length2 = javadocSingleTypeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.paramTypeParameters[i11].traverse(aSTVisitor, blockScope);
                }
            }
            JavadocReturnStatement javadocReturnStatement = this.returnStatement;
            if (javadocReturnStatement != null) {
                javadocReturnStatement.traverse(aSTVisitor, blockScope);
            }
            TypeReference[] typeReferenceArr = this.exceptionReferences;
            if (typeReferenceArr != null) {
                int length3 = typeReferenceArr.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    this.exceptionReferences[i12].traverse(aSTVisitor, blockScope);
                }
            }
            Expression[] expressionArr = this.seeReferences;
            if (expressionArr != null) {
                int length4 = expressionArr.length;
                for (int i13 = 0; i13 < length4; i13++) {
                    this.seeReferences[i13].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void resolve(ClassScope classScope) {
        int i10;
        int i11;
        int i12 = this.bits;
        if ((65536 & i12) == 0) {
            return;
        }
        this.bits = i12 & (-65537);
        long[] jArr = this.inheritedPositions;
        if (jArr != null) {
            int length = jArr.length;
            for (int i13 = 0; i13 < length; i13++) {
                long j10 = this.inheritedPositions[i13];
                classScope.problemReporter().javadocUnexpectedTag((int) (j10 >>> 32), (int) j10);
            }
        }
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        int length2 = javadocSingleNameReferenceArr == null ? 0 : javadocSingleNameReferenceArr.length;
        for (int i14 = 0; i14 < length2; i14++) {
            JavadocSingleNameReference javadocSingleNameReference = this.paramReferences[i14];
            classScope.problemReporter().javadocUnexpectedTag(javadocSingleNameReference.tagSourceStart, javadocSingleNameReference.tagSourceEnd);
        }
        resolveTypeParameterTags(classScope, true);
        if (this.returnStatement != null) {
            ProblemReporter problemReporter = classScope.problemReporter();
            JavadocReturnStatement javadocReturnStatement = this.returnStatement;
            problemReporter.javadocUnexpectedTag(javadocReturnStatement.sourceStart, javadocReturnStatement.sourceEnd);
        }
        TypeReference[] typeReferenceArr = this.exceptionReferences;
        int length3 = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        for (int i15 = 0; i15 < length3; i15++) {
            TypeReference typeReference = this.exceptionReferences[i15];
            if (typeReference instanceof JavadocSingleTypeReference) {
                JavadocSingleTypeReference javadocSingleTypeReference = (JavadocSingleTypeReference) typeReference;
                i10 = javadocSingleTypeReference.tagSourceStart;
                i11 = javadocSingleTypeReference.tagSourceEnd;
            } else if (typeReference instanceof JavadocQualifiedTypeReference) {
                JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) typeReference;
                i10 = javadocQualifiedTypeReference.tagSourceStart;
                i11 = javadocQualifiedTypeReference.tagSourceEnd;
            } else {
                i10 = typeReference.sourceStart;
                i11 = typeReference.sourceEnd;
            }
            classScope.problemReporter().javadocUnexpectedTag(i10, i11);
        }
        Expression[] expressionArr = this.seeReferences;
        int length4 = expressionArr == null ? 0 : expressionArr.length;
        for (int i16 = 0; i16 < length4; i16++) {
            resolveReference(this.seeReferences[i16], classScope);
        }
        if (classScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_5 && this.valuePositions != -1) {
            ProblemReporter problemReporter2 = classScope.problemReporter();
            long j11 = this.valuePositions;
            problemReporter2.javadocUnexpectedTag((int) (j11 >>> 32), (int) j11);
        }
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
            if (javadocSingleNameReferenceArr != null) {
                int length = javadocSingleNameReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.paramReferences[i10].traverse(aSTVisitor, classScope);
                }
            }
            JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
            if (javadocSingleTypeReferenceArr != null) {
                int length2 = javadocSingleTypeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.paramTypeParameters[i11].traverse(aSTVisitor, classScope);
                }
            }
            JavadocReturnStatement javadocReturnStatement = this.returnStatement;
            if (javadocReturnStatement != null) {
                javadocReturnStatement.traverse(aSTVisitor, classScope);
            }
            TypeReference[] typeReferenceArr = this.exceptionReferences;
            if (typeReferenceArr != null) {
                int length3 = typeReferenceArr.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    this.exceptionReferences[i12].traverse(aSTVisitor, classScope);
                }
            }
            Expression[] expressionArr = this.seeReferences;
            if (expressionArr != null) {
                int length4 = expressionArr.length;
                for (int i13 = 0; i13 < length4; i13++) {
                    this.seeReferences[i13].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }

    public void resolve(MethodScope methodScope) {
        long[] jArr;
        ReferenceBinding referenceBinding;
        Annotation[] annotationArr;
        JavadocAllocationExpression javadocAllocationExpression;
        MethodBinding methodBinding;
        JavadocMessageSend javadocMessageSend;
        MethodBinding methodBinding2;
        MethodBinding methodBinding3;
        int i10 = this.bits;
        if ((65536 & i10) == 0) {
            return;
        }
        this.bits = i10 & (-65537);
        AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
        boolean z10 = (referenceMethod == null || (methodBinding3 = referenceMethod.binding) == null || methodBinding3.isStatic() || (referenceMethod.binding.modifiers & 805306368) == 0) ? false : true;
        Expression[] expressionArr = this.seeReferences;
        int length = expressionArr == null ? 0 : expressionArr.length;
        boolean z11 = false;
        for (int i11 = 0; i11 < length; i11++) {
            resolveReference(this.seeReferences[i11], methodScope);
            if (referenceMethod != null && !z11) {
                if (referenceMethod.isConstructor()) {
                    Expression expression = this.seeReferences[i11];
                    if ((expression instanceof JavadocAllocationExpression) && (methodBinding = (javadocAllocationExpression = (JavadocAllocationExpression) expression).binding) != null && methodBinding.isValidBinding()) {
                        ReferenceBinding referenceBinding2 = (ReferenceBinding) referenceMethod.binding.declaringClass.findSuperTypeOriginatingFrom((ReferenceBinding) javadocAllocationExpression.resolvedType.original());
                        if (referenceBinding2 != null && TypeBinding.notEquals(referenceBinding2.original(), referenceMethod.binding.declaringClass)) {
                            MethodBinding constructor = methodScope.getConstructor(referenceBinding2, referenceMethod.binding.parameters, javadocAllocationExpression);
                            if (constructor.isValidBinding() && constructor.original() == javadocAllocationExpression.binding.original()) {
                                MethodBinding methodBinding4 = referenceMethod.binding;
                                if (methodScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8 && methodBinding4.typeVariables != Binding.NO_TYPE_VARIABLES) {
                                    methodBinding4 = methodBinding4.asRawMethod(methodScope.environment());
                                }
                                if (!constructor.areParametersEqual(methodBinding4)) {
                                }
                                z11 = true;
                            }
                        }
                    }
                } else if (z10) {
                    Expression expression2 = this.seeReferences[i11];
                    if ((expression2 instanceof JavadocMessageSend) && (methodBinding2 = (javadocMessageSend = (JavadocMessageSend) expression2).binding) != null && methodBinding2.isValidBinding()) {
                        TypeBinding typeBinding = javadocMessageSend.actualReceiverType;
                        if (typeBinding instanceof ReferenceBinding) {
                            TypeBinding findSuperTypeOriginatingFrom = referenceMethod.binding.declaringClass.findSuperTypeOriginatingFrom((ReferenceBinding) typeBinding);
                            if (findSuperTypeOriginatingFrom != null) {
                                if (TypeBinding.notEquals(findSuperTypeOriginatingFrom.original(), referenceMethod.binding.declaringClass)) {
                                    if (CharOperation.equals(javadocMessageSend.selector, referenceMethod.selector)) {
                                        if (!methodScope.environment().methodVerifier().doesMethodOverride(referenceMethod.binding, javadocMessageSend.binding.original())) {
                                        }
                                        z11 = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!z11 && referenceMethod != null && (annotationArr = referenceMethod.annotations) != null) {
            int length2 = annotationArr.length;
            for (int i12 = 0; i12 < length2 && !z11; i12++) {
                z11 = (referenceMethod.binding.tagBits & 562949953421312L) != 0;
            }
        }
        boolean z12 = referenceMethod == null || ((!z10 || this.inheritedPositions == null) && !z11 && ((referenceBinding = referenceMethod.binding.declaringClass) == null || !referenceBinding.isLocalType()));
        if (!z10 && (jArr = this.inheritedPositions) != null) {
            int length3 = jArr.length;
            for (int i13 = 0; i13 < length3; i13++) {
                long j10 = this.inheritedPositions[i13];
                methodScope.problemReporter().javadocUnexpectedTag((int) (j10 >>> 32), (int) j10);
            }
        }
        CompilerOptions compilerOptions = methodScope.compilerOptions();
        resolveParamTags(methodScope, z12, compilerOptions.reportUnusedParameterIncludeDocCommentReference);
        resolveTypeParameterTags(methodScope, z12 && compilerOptions.reportMissingJavadocTagsMethodTypeParameters);
        JavadocReturnStatement javadocReturnStatement = this.returnStatement;
        if (javadocReturnStatement == null) {
            if (z12 && referenceMethod != null && referenceMethod.isMethod()) {
                MethodDeclaration methodDeclaration = (MethodDeclaration) referenceMethod;
                if (methodDeclaration.binding.returnType != TypeBinding.VOID) {
                    ProblemReporter problemReporter = methodScope.problemReporter();
                    TypeReference typeReference = methodDeclaration.returnType;
                    problemReporter.javadocMissingReturnTag(typeReference.sourceStart, typeReference.sourceEnd, referenceMethod.binding.modifiers);
                }
            }
        } else {
            javadocReturnStatement.resolve(methodScope);
        }
        resolveThrowsTags(methodScope, z12);
        if (compilerOptions.sourceLevel < ClassFileConstants.JDK1_5 && referenceMethod != null && this.valuePositions != -1) {
            ProblemReporter problemReporter2 = methodScope.problemReporter();
            long j11 = this.valuePositions;
            problemReporter2.javadocUnexpectedTag((int) (j11 >>> 32), (int) j11);
        }
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.invalidParameters;
        int length4 = javadocSingleNameReferenceArr == null ? 0 : javadocSingleNameReferenceArr.length;
        for (int i14 = 0; i14 < length4; i14++) {
            this.invalidParameters[i14].resolve(methodScope, false, false);
        }
    }
}
