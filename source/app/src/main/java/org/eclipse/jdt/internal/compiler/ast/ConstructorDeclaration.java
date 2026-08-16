package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class ConstructorDeclaration extends AbstractMethodDeclaration {
    public ExplicitConstructorCall constructorCall;
    public TypeParameter[] typeParameters;

    public ConstructorDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    private void internalGenerateCode(ClassScope classScope, ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        int i10 = classFile.contentsOffset;
        int generateMethodInfoAttributes = classFile.generateMethodInfoAttributes(this.binding);
        if (!this.binding.isNative() && !this.binding.isAbstract()) {
            TypeDeclaration typeDeclaration = classScope.referenceContext;
            int i11 = classFile.contentsOffset;
            classFile.generateCodeAttributeHeader();
            CodeStream codeStream = classFile.codeStream;
            codeStream.reset(this, classFile);
            ReferenceBinding referenceBinding = this.binding.declaringClass;
            int i12 = referenceBinding.isEnum() ? 2 : 0;
            int i13 = i12 + 1;
            if (referenceBinding.isNestedType()) {
                this.scope.extraSyntheticArguments = referenceBinding.syntheticOuterLocalVariables();
                this.scope.computeLocalVariablePositions(referenceBinding.getEnclosingInstancesSlotSize() + 1 + i12, codeStream);
                i13 = i13 + referenceBinding.getEnclosingInstancesSlotSize() + referenceBinding.getOuterLocalVariablesSlotSize();
            } else {
                this.scope.computeLocalVariablePositions(i13, codeStream);
            }
            Argument[] argumentArr = this.arguments;
            if (argumentArr != null) {
                int length = argumentArr.length;
                for (int i14 = 0; i14 < length; i14++) {
                    LocalVariableBinding localVariableBinding = this.arguments[i14].binding;
                    codeStream.addVisibleLocalVariable(localVariableBinding);
                    localVariableBinding.recordInitializationStartPC(0);
                    int i15 = localVariableBinding.type.f102482id;
                    i13 = (i15 == 7 || i15 == 8) ? i13 + 2 : i13 + 1;
                }
            }
            MethodScope methodScope = typeDeclaration.initializerScope;
            methodScope.computeLocalVariablePositions(i13, codeStream);
            ExplicitConstructorCall explicitConstructorCall = this.constructorCall;
            boolean z10 = explicitConstructorCall == null || explicitConstructorCall.accessMode != 3;
            boolean z11 = this.scope.compilerOptions().targetJDK >= ClassFileConstants.JDK1_4;
            if (z10 && z11) {
                generateSyntheticFieldInitializationsIfNecessary(this.scope, codeStream, referenceBinding);
                int i16 = this.bodyStart;
                if (i16 <= 0) {
                    i16 = this.sourceStart;
                }
                codeStream.recordPositionsFrom(0, i16);
            }
            ExplicitConstructorCall explicitConstructorCall2 = this.constructorCall;
            if (explicitConstructorCall2 != null) {
                explicitConstructorCall2.generateCode(this.scope, codeStream);
            }
            if (z10) {
                if (!z11) {
                    generateSyntheticFieldInitializationsIfNecessary(this.scope, codeStream, referenceBinding);
                }
                FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
                if (fieldDeclarationArr != null) {
                    int length2 = fieldDeclarationArr.length;
                    for (int i17 = 0; i17 < length2; i17++) {
                        FieldDeclaration fieldDeclaration = typeDeclaration.fields[i17];
                        if (!fieldDeclaration.isStatic()) {
                            fieldDeclaration.generateCode(methodScope, codeStream);
                        }
                    }
                }
            }
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length3 = statementArr.length;
                for (int i18 = 0; i18 < length3; i18++) {
                    this.statements[i18].generateCode(this.scope, codeStream);
                }
            }
            if (this.ignoreFurtherInvestigation) {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            if ((this.bits & 64) != 0) {
                codeStream.return_();
            }
            codeStream.exitUserScope(this.scope);
            int i19 = this.bodyEnd;
            if (i19 <= 0) {
                i19 = this.sourceStart;
            }
            codeStream.recordPositionsFrom(0, i19);
            try {
                classFile.completeCodeAttribute(i11);
                generateMethodInfoAttributes++;
                if ((codeStream instanceof StackMapFrameCodeStream) && z10 && typeDeclaration.fields != null) {
                    ((StackMapFrameCodeStream) codeStream).resetSecretLocals();
                }
            } catch (NegativeArraySizeException unused) {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
        }
        classFile.completeMethodInfo(this.binding, i10, generateMethodInfoAttributes);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0088, code lost:
    
        if (r1.findSuperTypeOriginatingFrom(56, false) != null) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.eclipse.jdt.internal.compiler.flow.FlowContext, org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext] */
    /* JADX WARN: Type inference failed for: r4v7, types: [org.eclipse.jdt.internal.compiler.ast.FieldDeclaration] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [org.eclipse.jdt.internal.compiler.ast.ASTNode] */
    /* JADX WARN: Type inference failed for: r5v4, types: [org.eclipse.jdt.internal.compiler.problem.ProblemReporter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void analyseCode(ClassScope classScope, InitializationFlowContext initializationFlowContext, FlowInfo flowInfo, int i10) {
        UnconditionalFlowInfo unconditionalFlowInfo;
        ArrayList arrayList;
        int size;
        ExplicitConstructorCall explicitConstructorCall;
        MethodBinding exactConstructor;
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        int reachMode = flowInfo.reachMode();
        flowInfo.setReachMode(i10);
        MethodBinding methodBinding = this.binding;
        if (methodBinding != null && (this.bits & 128) == 0 && !methodBinding.isUsed() && (!methodBinding.isPrivate() ? methodBinding.isOrEnclosedByPrivateType() : (this.binding.declaringClass.tagBits & 1152921504606846976L) != 0) && (explicitConstructorCall = this.constructorCall) != null) {
            if (explicitConstructorCall.accessMode != 3) {
                ReferenceBinding superclass = methodBinding.declaringClass.superclass();
                if (superclass != null && (exactConstructor = superclass.getExactConstructor(Binding.NO_PARAMETERS)) != null && exactConstructor.canBeSeenBy(SuperReference.implicitSuperConstructorCall(), this.scope)) {
                    ReferenceBinding referenceBinding = methodBinding.declaringClass;
                    if (methodBinding.isPublic()) {
                        if (methodBinding.parameters.length == 0) {
                            if (referenceBinding.isStatic()) {
                            }
                        }
                    }
                }
            }
            this.scope.problemReporter().unusedPrivateConstructor(this);
        }
        if (isRecursive(null)) {
            this.scope.problemReporter().recursiveConstructorInvocation(this.constructorCall);
        }
        if (this.typeParameters != null && !this.scope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
            int length = this.typeParameters.length;
            for (int i11 = 0; i11 < length; i11++) {
                TypeParameter typeParameter = this.typeParameters[i11];
                if ((typeParameter.binding.modifiers & 134217728) == 0) {
                    this.scope.problemReporter().unusedTypeParameter(typeParameter);
                }
            }
        }
        try {
            ExceptionHandlingFlowContext exceptionHandlingFlowContext = new ExceptionHandlingFlowContext(initializationFlowContext.parent, this, this.binding.thrownExceptions, initializationFlowContext, this.scope, FlowInfo.DEAD_END);
            initializationFlowContext.checkInitializerExceptions(this.scope, exceptionHandlingFlowContext, flowInfo);
            if (this.binding.declaringClass.isAnonymousType() && (arrayList = exceptionHandlingFlowContext.extendedExceptions) != null && (size = arrayList.size()) > 0) {
                ReferenceBinding[] referenceBindingArr = new ReferenceBinding[size];
                arrayList.toArray(referenceBindingArr);
                this.binding.thrownExceptions = referenceBindingArr;
            }
            AbstractMethodDeclaration.analyseArguments(classScope.environment(), flowInfo, this.arguments, this.binding);
            ExplicitConstructorCall explicitConstructorCall2 = this.constructorCall;
            if (explicitConstructorCall2 != null) {
                if (explicitConstructorCall2.accessMode == 3) {
                    for (FieldBinding fieldBinding : this.binding.declaringClass.fields()) {
                        if (!fieldBinding.isStatic()) {
                            flowInfo.markAsDefinitelyAssigned(fieldBinding);
                        }
                    }
                }
                unconditionalFlowInfo = this.constructorCall.analyseCode(this.scope, exceptionHandlingFlowContext, flowInfo);
            } else {
                unconditionalFlowInfo = flowInfo;
            }
            unconditionalFlowInfo.setReachMode(reachMode);
            if (this.statements != null) {
                boolean z10 = this.scope.compilerOptions().enableSyntacticNullAnalysisForFields;
                int i12 = (reachMode & 3) == 0 ? 0 : 1;
                int length2 = this.statements.length;
                for (int i13 = 0; i13 < length2; i13++) {
                    Statement statement = this.statements[i13];
                    i12 = statement.complainIfUnreachable(unconditionalFlowInfo, this.scope, i12, true);
                    if (i12 < 2) {
                        unconditionalFlowInfo = statement.analyseCode(this.scope, exceptionHandlingFlowContext, unconditionalFlowInfo);
                    }
                    if (z10) {
                        exceptionHandlingFlowContext.expireNullCheckedFieldInfo();
                    }
                }
            }
            if ((unconditionalFlowInfo.tagBits & 1) == 0) {
                this.bits |= 64;
            }
            ExplicitConstructorCall explicitConstructorCall3 = this.constructorCall;
            UnconditionalFlowInfo unconditionalFlowInfo2 = unconditionalFlowInfo;
            if (explicitConstructorCall3 != null) {
                unconditionalFlowInfo2 = unconditionalFlowInfo;
                if (explicitConstructorCall3.accessMode != 3) {
                    UnconditionalFlowInfo mergedWith = unconditionalFlowInfo.mergedWith(exceptionHandlingFlowContext.initsOnReturn);
                    for (FieldBinding fieldBinding2 : this.binding.declaringClass.fields()) {
                        if (!fieldBinding2.isStatic() && !mergedWith.isDefinitelyAssigned(fieldBinding2)) {
                            if (fieldBinding2.isFinal()) {
                                this.scope.problemReporter().uninitializedBlankFinalField(fieldBinding2, (this.bits & 128) != 0 ? this.scope.referenceType().declarationOf(fieldBinding2.original()) : this);
                            } else if (fieldBinding2.isNonNull() || fieldBinding2.type.isFreeTypeVariable()) {
                                ?? declarationOf = this.scope.referenceType().declarationOf(fieldBinding2.original());
                                if (!isValueProvidedUsingAnnotation(declarationOf)) {
                                    ?? problemReporter = this.scope.problemReporter();
                                    if ((this.bits & 128) == 0) {
                                        declarationOf = this;
                                    }
                                    problemReporter.uninitializedNonNullField(fieldBinding2, declarationOf);
                                }
                            }
                        }
                    }
                    unconditionalFlowInfo2 = mergedWith;
                }
            }
            exceptionHandlingFlowContext.complainIfUnusedExceptionHandlers(this);
            this.scope.checkUnusedParameters(this.binding);
            this.scope.checkUnclosedCloseables(unconditionalFlowInfo2, null, null, null);
        } catch (AbortMethod unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void generateCode(ClassScope classScope, ClassFile classFile) {
        CompilationResult compilationResult;
        int i10;
        int i11;
        boolean z10;
        TypeDeclaration typeDeclaration;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CategorizedProblem[] problems = this.scope.referenceCompilationUnit().compilationResult.getProblems();
            int length = problems.length;
            CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
            System.arraycopy(problems, 0, categorizedProblemArr, 0, length);
            classFile.addProblemConstructor(this, this.binding, categorizedProblemArr);
            return;
        }
        if (classScope == null || (typeDeclaration = classScope.referenceContext) == null) {
            compilationResult = null;
            i10 = 0;
            i11 = 0;
        } else {
            compilationResult = typeDeclaration.compilationResult();
            i10 = compilationResult.problemCount;
            i11 = 0;
        }
        int i12 = i11;
        do {
            try {
                i11 = classFile.contentsOffset;
                internalGenerateCode(classScope, classFile);
            } catch (AbortMethod e10) {
                CompilationResult compilationResult2 = e10.compilationResult;
                z10 = true;
                if (compilationResult2 == CodeStream.RESTART_IN_WIDE_MODE) {
                    classFile.contentsOffset = i11;
                    classFile.methodCount--;
                    classFile.codeStream.resetInWideMode();
                    if (compilationResult != null) {
                        compilationResult.problemCount = i10;
                    }
                } else if (compilationResult2 == CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE) {
                    classFile.contentsOffset = i11;
                    classFile.methodCount--;
                    classFile.codeStream.resetForCodeGenUnusedLocals();
                    if (compilationResult != null) {
                        compilationResult.problemCount = i10;
                    }
                } else {
                    i12 = 1;
                }
            }
            z10 = false;
        } while (z10);
        if (i12 != 0) {
            CategorizedProblem[] allProblems = this.scope.referenceCompilationUnit().compilationResult.getAllProblems();
            int length2 = allProblems.length;
            CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[length2];
            System.arraycopy(allProblems, 0, categorizedProblemArr2, 0, length2);
            classFile.addProblemConstructor(this, this.binding, categorizedProblemArr2, i11);
        }
    }

    public void generateSyntheticFieldInitializationsIfNecessary(MethodScope methodScope, CodeStream codeStream, ReferenceBinding referenceBinding) {
        if (referenceBinding.isNestedType()) {
            NestedTypeBinding nestedTypeBinding = (NestedTypeBinding) referenceBinding;
            SyntheticArgumentBinding[] syntheticEnclosingInstances = nestedTypeBinding.syntheticEnclosingInstances();
            if (syntheticEnclosingInstances != null) {
                for (SyntheticArgumentBinding syntheticArgumentBinding : syntheticEnclosingInstances) {
                    if (syntheticArgumentBinding.matchingField != null) {
                        codeStream.aload_0();
                        codeStream.load(syntheticArgumentBinding);
                        codeStream.fieldAccess(Opcodes.OPC_putfield, syntheticArgumentBinding.matchingField, null);
                    }
                }
            }
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = nestedTypeBinding.syntheticOuterLocalVariables();
            if (syntheticOuterLocalVariables != null) {
                for (SyntheticArgumentBinding syntheticArgumentBinding2 : syntheticOuterLocalVariables) {
                    if (syntheticArgumentBinding2.matchingField != null) {
                        codeStream.aload_0();
                        codeStream.load(syntheticArgumentBinding2);
                        codeStream.fieldAccess(Opcodes.OPC_putfield, syntheticArgumentBinding2.matchingField, null);
                    }
                }
            }
        }
    }

    @Override
    public void getAllAnnotationContexts(int i10, List list) {
        SingleTypeReference singleTypeReference = new SingleTypeReference(this.selector, 0L);
        singleTypeReference.resolvedType = this.binding.declaringClass;
        TypeReference.AnnotationCollector annotationCollector = new TypeReference.AnnotationCollector(singleTypeReference, i10, list);
        int length = this.annotations.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.annotations[i11].traverse(annotationCollector, (BlockScope) null);
        }
    }

    @Override
    public boolean isConstructor() {
        return true;
    }

    @Override
    public boolean isDefaultConstructor() {
        return (this.bits & 128) != 0;
    }

    @Override
    public boolean isInitializationMethod() {
        return true;
    }

    public boolean isRecursive(ArrayList arrayList) {
        ExplicitConstructorCall explicitConstructorCall;
        ConstructorDeclaration constructorDeclaration;
        if (this.binding == null || (explicitConstructorCall = this.constructorCall) == null || explicitConstructorCall.binding == null || explicitConstructorCall.isSuperAccess() || !this.constructorCall.binding.isValidBinding() || (constructorDeclaration = (ConstructorDeclaration) this.scope.referenceType().declarationOf(this.constructorCall.binding.original())) == null) {
            return false;
        }
        if (this == constructorDeclaration) {
            return true;
        }
        if (arrayList == null) {
            arrayList = new ArrayList(1);
        } else {
            int indexOf = arrayList.indexOf(this);
            if (indexOf >= 0) {
                return indexOf == 0;
            }
        }
        arrayList.add(this);
        return constructorDeclaration.isRecursive(arrayList);
    }

    public boolean isValueProvidedUsingAnnotation(FieldDeclaration fieldDeclaration) {
        Annotation[] annotationArr = fieldDeclaration.annotations;
        if (annotationArr != null) {
            int length = annotationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Annotation annotation = fieldDeclaration.annotations[i10];
                int i11 = annotation.resolvedType.f102482id;
                if (i11 == 80) {
                    return true;
                }
                if (i11 == 81) {
                    MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
                    if (memberValuePairs == Annotation.NoValuePairs) {
                        return true;
                    }
                    for (int i12 = 0; i12 < memberValuePairs.length; i12++) {
                        if (CharOperation.equals(memberValuePairs[i12].name, TypeConstants.OPTIONAL)) {
                            return memberValuePairs[i12].value instanceof FalseLiteral;
                        }
                    }
                } else if (i11 != 82) {
                    continue;
                } else {
                    MemberValuePair[] memberValuePairs2 = annotation.memberValuePairs();
                    if (memberValuePairs2 == Annotation.NoValuePairs) {
                        return true;
                    }
                    for (int i13 = 0; i13 < memberValuePairs2.length; i13++) {
                        if (CharOperation.equals(memberValuePairs2[i13].name, TypeConstants.REQUIRED)) {
                            return memberValuePairs2[i13].value instanceof TrueLiteral;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    public void parseStatements(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration) {
        if ((this.bits & 128) == 0 || this.constructorCall != null) {
            parser.parse(this, compilationUnitDeclaration, false);
            return;
        }
        ExplicitConstructorCall implicitSuperConstructorCall = SuperReference.implicitSuperConstructorCall();
        this.constructorCall = implicitSuperConstructorCall;
        implicitSuperConstructorCall.sourceStart = this.sourceStart;
        implicitSuperConstructorCall.sourceEnd = this.sourceEnd;
    }

    @Override
    public StringBuffer printBody(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(" {");
        if (this.constructorCall != null) {
            stringBuffer.append('\n');
            this.constructorCall.printStatement(i10, stringBuffer);
        }
        if (this.statements != null) {
            for (int i11 = 0; i11 < this.statements.length; i11++) {
                stringBuffer.append('\n');
                this.statements[i11].printStatement(i10, stringBuffer);
            }
        }
        stringBuffer.append('\n');
        ASTNode.printIndent(i10 != 0 ? i10 - 1 : 0, stringBuffer).append(JavaElement.JEM_ANNOTATION);
        return stringBuffer;
    }

    @Override
    public void resolveJavadoc() {
        ReferenceBinding referenceBinding;
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null || this.javadoc != null) {
            super.resolveJavadoc();
            return;
        }
        if ((this.bits & 128) != 0 || (referenceBinding = methodBinding.declaringClass) == null || referenceBinding.isLocalType()) {
            return;
        }
        int i10 = this.binding.modifiers & 7;
        ClassScope classScope = this.scope.classScope();
        ProblemReporter problemReporter = this.scope.problemReporter();
        int computeSeverity = problemReporter.computeSeverity(IProblem.JavadocMissing);
        if (computeSeverity != 256) {
            if (classScope != null) {
                i10 = Util.computeOuterMostVisibility(classScope.referenceType(), i10);
            }
            problemReporter.javadocMissing(this.sourceStart, this.sourceEnd, computeSeverity, i10 | (this.binding.modifiers & (-8)));
        }
    }

    @Override
    public void resolveStatements() {
        int i10;
        SourceTypeBinding enclosingSourceType = this.scope.enclosingSourceType();
        if (!CharOperation.equals(enclosingSourceType.sourceName, this.selector)) {
            this.scope.problemReporter().missingReturnType(this);
        }
        MethodBinding methodBinding = this.binding;
        if (methodBinding != null && !methodBinding.isPrivate()) {
            enclosingSourceType.tagBits |= 1152921504606846976L;
        }
        ExplicitConstructorCall explicitConstructorCall = this.constructorCall;
        if (explicitConstructorCall != null) {
            if (enclosingSourceType.f102482id != 1 || (i10 = explicitConstructorCall.accessMode) == 3) {
                explicitConstructorCall.resolve(this.scope);
            } else {
                if (i10 == 2) {
                    this.scope.problemReporter().cannotUseSuperInJavaLangObject(this.constructorCall);
                }
                this.constructorCall = null;
            }
        }
        if ((this.modifiers & 16777216) != 0) {
            this.scope.problemReporter().methodNeedBody(this);
        }
        super.resolveStatements();
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Javadoc javadoc = this.javadoc;
            if (javadoc != null) {
                javadoc.traverse(aSTVisitor, this.scope);
            }
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, this.scope);
                }
            }
            TypeParameter[] typeParameterArr = this.typeParameters;
            if (typeParameterArr != null) {
                int length2 = typeParameterArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.typeParameters[i11].traverse(aSTVisitor, this.scope);
                }
            }
            Argument[] argumentArr = this.arguments;
            if (argumentArr != null) {
                int length3 = argumentArr.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    this.arguments[i12].traverse(aSTVisitor, this.scope);
                }
            }
            TypeReference[] typeReferenceArr = this.thrownExceptions;
            if (typeReferenceArr != null) {
                int length4 = typeReferenceArr.length;
                for (int i13 = 0; i13 < length4; i13++) {
                    this.thrownExceptions[i13].traverse(aSTVisitor, this.scope);
                }
            }
            ExplicitConstructorCall explicitConstructorCall = this.constructorCall;
            if (explicitConstructorCall != null) {
                explicitConstructorCall.traverse(aSTVisitor, this.scope);
            }
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length5 = statementArr.length;
                for (int i14 = 0; i14 < length5; i14++) {
                    this.statements[i14].traverse(aSTVisitor, this.scope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }

    @Override
    public TypeParameter[] typeParameters() {
        return this.typeParameters;
    }
}
