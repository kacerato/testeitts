package org.eclipse.jdt.internal.compiler.ast;

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
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public abstract class AbstractMethodDeclaration extends ASTNode implements ProblemSeverities, ReferenceContext {
    public Annotation[] annotations;
    public Argument[] arguments;
    public MethodBinding binding;
    public int bodyStart;
    public CompilationResult compilationResult;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    public int explicitDeclarations;
    public Javadoc javadoc;
    public int modifiers;
    public int modifiersSourceStart;
    public Receiver receiver;
    public MethodScope scope;
    public char[] selector;
    public Statement[] statements;
    public TypeReference[] thrownExceptions;
    public boolean ignoreFurtherInvestigation = false;
    public int bodyEnd = -1;

    public AbstractMethodDeclaration(CompilationResult compilationResult) {
        this.compilationResult = compilationResult;
    }

    public static void analyseArguments(LookupEnvironment lookupEnvironment, FlowInfo flowInfo, Argument[] argumentArr, MethodBinding methodBinding) {
        Boolean bool;
        if (argumentArr != null) {
            boolean usesNullTypeAnnotations = lookupEnvironment.usesNullTypeAnnotations();
            int min = Math.min(methodBinding.parameters.length, argumentArr.length);
            for (int i10 = 0; i10 < min; i10++) {
                if (usesNullTypeAnnotations) {
                    TypeBinding typeBinding = methodBinding.parameters[i10];
                    long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
                    if (j10 == 72057594037927936L) {
                        flowInfo.markAsDefinitelyNonNull(argumentArr[i10].binding);
                    } else if (j10 == 36028797018963968L) {
                        flowInfo.markPotentiallyNullBit(argumentArr[i10].binding);
                    } else if (typeBinding.isFreeTypeVariable()) {
                        flowInfo.markNullStatus(argumentArr[i10].binding, 48);
                    }
                } else {
                    Boolean[] boolArr = methodBinding.parameterNonNullness;
                    if (boolArr != null && (bool = boolArr[i10]) != null) {
                        if (bool.booleanValue()) {
                            flowInfo.markAsDefinitelyNonNull(argumentArr[i10].binding);
                        } else {
                            flowInfo.markPotentiallyNullBit(argumentArr[i10].binding);
                        }
                    }
                }
                flowInfo.markAsDefinitelyAssigned(argumentArr[i10].binding);
            }
        }
    }

    private void checkArgumentsSize() {
        TypeBinding[] typeBindingArr = this.binding.parameters;
        int length = typeBindingArr.length;
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = typeBindingArr[i11].f102482id;
            i10 = (i12 == 7 || i12 == 8) ? i10 + 2 : i10 + 1;
            if (i10 > 255) {
                ProblemReporter problemReporter = this.scope.problemReporter();
                LocalVariableBinding localVariableBinding = this.scope.locals[i11];
                problemReporter.noMoreAvailableSpaceForArgument(localVariableBinding, localVariableBinding.declaration);
            }
        }
    }

    @Override
    public void abort(int i10, CategorizedProblem categorizedProblem) {
        if (i10 == 2) {
            throw new AbortCompilation(this.compilationResult, categorizedProblem);
        }
        if (i10 == 4) {
            throw new AbortCompilationUnit(this.compilationResult, categorizedProblem);
        }
        if (i10 == 8) {
            throw new AbortType(this.compilationResult, categorizedProblem);
        }
        throw new AbortMethod(this.compilationResult, categorizedProblem);
    }

    public void bindArguments() {
        Argument[] argumentArr = this.arguments;
        if (argumentArr != null) {
            MethodBinding methodBinding = this.binding;
            AnnotationBinding[][] annotationBindingArr = null;
            boolean z10 = true;
            if (methodBinding == null) {
                int length = argumentArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.arguments[i10].bind(this.scope, null, true);
                }
                return;
            }
            if (!methodBinding.isAbstract() && !this.binding.isNative()) {
                z10 = false;
            }
            int length2 = this.arguments.length;
            for (int i11 = 0; i11 < length2; i11++) {
                Argument argument = this.arguments[i11];
                TypeBinding[] typeBindingArr = this.binding.parameters;
                typeBindingArr[i11] = argument.bind(this.scope, typeBindingArr[i11], z10);
                if (argument.annotations != null) {
                    if (annotationBindingArr == null) {
                        AnnotationBinding[][] annotationBindingArr2 = new AnnotationBinding[length2];
                        for (int i12 = 0; i12 < i11; i12++) {
                            annotationBindingArr2[i12] = Binding.NO_ANNOTATIONS;
                        }
                        annotationBindingArr = annotationBindingArr2;
                    }
                    annotationBindingArr[i11] = argument.binding.getAnnotations();
                } else if (annotationBindingArr != null) {
                    annotationBindingArr[i11] = Binding.NO_ANNOTATIONS;
                }
            }
            if (annotationBindingArr != null) {
                this.binding.setParameterAnnotations(annotationBindingArr);
            }
        }
    }

    public void bindThrownExceptions() {
        MethodBinding methodBinding;
        ReferenceBinding[] referenceBindingArr;
        TypeReference[] typeReferenceArr = this.thrownExceptions;
        if (typeReferenceArr == null || (methodBinding = this.binding) == null || (referenceBindingArr = methodBinding.thrownExceptions) == null) {
            return;
        }
        int length = typeReferenceArr.length;
        int length2 = referenceBindingArr.length;
        if (length2 == length) {
            for (int i10 = 0; i10 < length2; i10++) {
                this.thrownExceptions[i10].resolvedType = this.binding.thrownExceptions[i10];
            }
            return;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < length && i11 < length2; i12++) {
            TypeReference typeReference = this.thrownExceptions[i12];
            ReferenceBinding referenceBinding = this.binding.thrownExceptions[i11];
            char[][] cArr = referenceBinding.compoundName;
            if (cArr != null) {
                if (typeReference instanceof SingleTypeReference) {
                    if (CharOperation.equals(typeReference.getTypeName()[0], cArr[cArr.length - 1])) {
                        typeReference.resolvedType = referenceBinding;
                        i11++;
                    }
                } else if (CharOperation.equals(typeReference.getTypeName(), cArr)) {
                    typeReference.resolvedType = referenceBinding;
                    i11++;
                }
            }
        }
    }

    @Override
    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public void createArgumentBindings() {
        createArgumentBindings(this.arguments, this.binding, this.scope);
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        CompilationResult compilationResult;
        int i10;
        boolean z10;
        TypeDeclaration typeDeclaration;
        classFile.codeStream.wideMode = false;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CategorizedProblem[] problems = this.scope.referenceCompilationUnit().compilationResult.getProblems();
            int length = problems.length;
            CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
            System.arraycopy(problems, 0, categorizedProblemArr, 0, length);
            classFile.addProblemMethod(this, this.binding, categorizedProblemArr);
            return;
        }
        if (classScope == null || (typeDeclaration = classScope.referenceContext) == null) {
            compilationResult = null;
            i10 = 0;
        } else {
            compilationResult = typeDeclaration.compilationResult();
            i10 = compilationResult.problemCount;
        }
        int i11 = 0;
        boolean z11 = false;
        do {
            try {
                i11 = classFile.contentsOffset;
                generateCode(classFile);
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
                    z11 = true;
                }
            }
            z10 = false;
        } while (z10);
        if (z11) {
            CategorizedProblem[] allProblems = this.scope.referenceCompilationUnit().compilationResult.getAllProblems();
            int length2 = allProblems.length;
            CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[length2];
            System.arraycopy(allProblems, 0, categorizedProblemArr2, 0, length2);
            classFile.addProblemMethod(this, this.binding, categorizedProblemArr2, i11);
        }
    }

    public void getAllAnnotationContexts(int i10, List list) {
    }

    @Override
    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        MethodScope methodScope = this.scope;
        if (methodScope != null) {
            return methodScope.compilationUnitScope().referenceContext;
        }
        return null;
    }

    @Override
    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public boolean isAbstract() {
        MethodBinding methodBinding = this.binding;
        return methodBinding != null ? methodBinding.isAbstract() : (this.modifiers & 1024) != 0;
    }

    public boolean isAnnotationMethod() {
        return false;
    }

    public boolean isClinit() {
        return false;
    }

    public boolean isConstructor() {
        return false;
    }

    public boolean isDefaultConstructor() {
        return false;
    }

    public boolean isDefaultMethod() {
        return false;
    }

    public boolean isInitializationMethod() {
        return false;
    }

    public boolean isMethod() {
        return false;
    }

    public boolean isNative() {
        MethodBinding methodBinding = this.binding;
        return methodBinding != null ? methodBinding.isNative() : (this.modifiers & 256) != 0;
    }

    public boolean isStatic() {
        MethodBinding methodBinding = this.binding;
        return methodBinding != null ? methodBinding.isStatic() : (this.modifiers & 8) != 0;
    }

    public abstract void parseStatements(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration);

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            javadoc.print(i10, stringBuffer);
        }
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        TypeParameter[] typeParameters = typeParameters();
        if (typeParameters != null) {
            stringBuffer.append('<');
            int length = typeParameters.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                typeParameters[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            typeParameters[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        StringBuffer printReturnType = printReturnType(0, stringBuffer);
        printReturnType.append(this.selector);
        printReturnType.append('(');
        Receiver receiver = this.receiver;
        if (receiver != null) {
            receiver.print(0, stringBuffer);
        }
        if (this.arguments != null) {
            for (int i12 = 0; i12 < this.arguments.length; i12++) {
                if (i12 > 0 || this.receiver != null) {
                    stringBuffer.append(", ");
                }
                this.arguments[i12].print(0, stringBuffer);
            }
        }
        stringBuffer.append(')');
        if (this.thrownExceptions != null) {
            stringBuffer.append(" throws ");
            for (int i13 = 0; i13 < this.thrownExceptions.length; i13++) {
                if (i13 > 0) {
                    stringBuffer.append(", ");
                }
                this.thrownExceptions[i13].print(0, stringBuffer);
            }
        }
        printBody(i10 + 1, stringBuffer);
        return stringBuffer;
    }

    public StringBuffer printBody(int i10, StringBuffer stringBuffer) {
        if (isAbstract() || (this.modifiers & 16777216) != 0) {
            stringBuffer.append(';');
            return stringBuffer;
        }
        stringBuffer.append(" {");
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

    public StringBuffer printReturnType(int i10, StringBuffer stringBuffer) {
        return stringBuffer;
    }

    public void resolve(ClassScope classScope) {
        if (this.binding == null) {
            this.ignoreFurtherInvestigation = true;
        }
        try {
            bindArguments();
            resolveReceiver();
            bindThrownExceptions();
            ASTNode.resolveAnnotations(this.scope, this.annotations, this.binding, isConstructor());
            long j10 = this.scope.compilerOptions().sourceLevel;
            if (j10 < ClassFileConstants.JDK1_8) {
                validateNullAnnotations(this.scope.environment().usesNullTypeAnnotations());
            }
            resolveStatements();
            MethodBinding methodBinding = this.binding;
            if (methodBinding == null || (methodBinding.getAnnotationTagBits() & 70368744177664L) != 0 || (this.binding.modifiers & 1048576) == 0 || j10 < ClassFileConstants.JDK1_5) {
                return;
            }
            this.scope.problemReporter().missingDeprecatedAnnotationForMethod(this);
        } catch (AbortMethod unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void resolveJavadoc() {
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null) {
            return;
        }
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            javadoc.resolve(this.scope);
            return;
        }
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if (referenceBinding == null || referenceBinding.isLocalType()) {
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

    public void resolveReceiver() {
        Receiver receiver = this.receiver;
        if (receiver == null) {
            return;
        }
        if (receiver.modifiers != 0) {
            ProblemReporter problemReporter = this.scope.problemReporter();
            Receiver receiver2 = this.receiver;
            problemReporter.illegalModifiers(receiver2.declarationSourceStart, receiver2.declarationSourceEnd);
        }
        TypeBinding typeBinding = this.receiver.type.resolvedType;
        if (this.binding == null || typeBinding == null || !typeBinding.isValidBinding()) {
            return;
        }
        ReferenceBinding referenceBinding = this.binding.declaringClass;
        if (isStatic() || referenceBinding.isAnonymousType()) {
            this.scope.problemReporter().disallowedThisParameter(this.receiver);
            return;
        }
        ReferenceBinding enclosingReceiverType = this.scope.enclosingReceiverType();
        if (isConstructor()) {
            if (referenceBinding.isStatic() || (referenceBinding.tagBits & 24) == 0) {
                this.scope.problemReporter().disallowedThisParameter(this.receiver);
                return;
            }
            enclosingReceiverType = enclosingReceiverType.enclosingType();
        }
        NameReference nameReference = this.receiver.qualifyingName;
        char[][] name = nameReference == null ? null : nameReference.getName();
        if (isConstructor()) {
            if (name == null || name.length > 1 || !CharOperation.equals(enclosingReceiverType.sourceName(), name[0])) {
                this.scope.problemReporter().illegalQualifierForExplicitThis(this.receiver, enclosingReceiverType);
                this.receiver.qualifyingName = null;
            }
        } else if (name != null && name.length > 0) {
            this.scope.problemReporter().illegalQualifierForExplicitThis2(this.receiver);
            this.receiver.qualifyingName = null;
        }
        if (TypeBinding.notEquals(enclosingReceiverType, typeBinding)) {
            this.scope.problemReporter().illegalTypeForExplicitThis(this.receiver, enclosingReceiverType);
        }
        if (this.receiver.type.hasNullTypeAnnotation(TypeReference.AnnotationPosition.ANY)) {
            this.scope.problemReporter().nullAnnotationUnsupportedLocation(this.receiver.type);
        }
    }

    public void resolveStatements() {
        Statement[] statementArr = this.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.statements[i10].resolve(this.scope);
            }
            return;
        }
        if ((this.bits & 8) != 0) {
            if (isConstructor() && this.arguments == null) {
                return;
            }
            this.scope.problemReporter().undocumentedEmptyBlock(this.bodyStart - 1, this.bodyEnd + 1);
        }
    }

    @Override
    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    @Override
    public void tagAsHavingIgnoredMandatoryErrors(int i10) {
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
    }

    public TypeParameter[] typeParameters() {
        return null;
    }

    public void validateNullAnnotations(boolean z10) {
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null) {
            return;
        }
        int i10 = 0;
        if (z10) {
            int length = methodBinding.parameters.length;
            while (i10 < length) {
                MethodScope methodScope = this.scope;
                long j10 = this.binding.parameters[i10].tagBits;
                Argument argument = this.arguments[i10];
                methodScope.validateNullAnnotation(j10, argument.type, argument.annotations);
                i10++;
            }
            return;
        }
        if (methodBinding.parameterNonNullness != null) {
            int length2 = methodBinding.parameters.length;
            while (i10 < length2) {
                Boolean bool = this.binding.parameterNonNullness[i10];
                if (bool != null) {
                    long j11 = bool.booleanValue() ? 72057594037927936L : 36028797018963968L;
                    MethodScope methodScope2 = this.scope;
                    Argument argument2 = this.arguments[i10];
                    if (!methodScope2.validateNullAnnotation(j11, argument2.type, argument2.annotations)) {
                        this.binding.parameterNonNullness[i10] = null;
                    }
                }
                i10++;
            }
        }
    }

    public static void createArgumentBindings(Argument[] argumentArr, MethodBinding methodBinding, MethodScope methodScope) {
        boolean usesNullTypeAnnotations = methodScope.environment().usesNullTypeAnnotations();
        if (argumentArr == null || methodBinding == null) {
            return;
        }
        int length = argumentArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Argument argument = argumentArr[i10];
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            typeBindingArr[i10] = argument.createBinding(methodScope, typeBindingArr[i10]);
            if (!usesNullTypeAnnotations) {
                long j10 = argument.binding.tagBits & TagBits.AnnotationNullMASK;
                if (j10 != 0) {
                    if (methodBinding.parameterNonNullness == null) {
                        methodBinding.parameterNonNullness = new Boolean[argumentArr.length];
                        methodBinding.tagBits |= 4096;
                    }
                    methodBinding.parameterNonNullness[i10] = Boolean.valueOf(j10 == 72057594037927936L);
                }
            }
        }
    }

    public void generateCode(ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        int i10 = classFile.contentsOffset;
        int generateMethodInfoAttributes = classFile.generateMethodInfoAttributes(this.binding);
        if (!this.binding.isNative() && !this.binding.isAbstract()) {
            int i11 = classFile.contentsOffset;
            classFile.generateCodeAttributeHeader();
            CodeStream codeStream = classFile.codeStream;
            codeStream.reset(this, classFile);
            this.scope.computeLocalVariablePositions(!this.binding.isStatic() ? 1 : 0, codeStream);
            Argument[] argumentArr = this.arguments;
            if (argumentArr != null) {
                int length = argumentArr.length;
                for (int i12 = 0; i12 < length; i12++) {
                    LocalVariableBinding localVariableBinding = this.arguments[i12].binding;
                    codeStream.addVisibleLocalVariable(localVariableBinding);
                    localVariableBinding.recordInitializationStartPC(0);
                }
            }
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length2 = statementArr.length;
                for (int i13 = 0; i13 < length2; i13++) {
                    this.statements[i13].generateCode(this.scope, codeStream);
                }
            }
            if (!this.ignoreFurtherInvestigation) {
                if ((this.bits & 64) != 0) {
                    codeStream.return_();
                }
                codeStream.exitUserScope(this.scope);
                codeStream.recordPositionsFrom(0, this.declarationSourceEnd);
                try {
                    classFile.completeCodeAttribute(i11);
                    generateMethodInfoAttributes++;
                } catch (NegativeArraySizeException unused) {
                    throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
                }
            } else {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
        } else {
            checkArgumentsSize();
        }
        classFile.completeMethodInfo(this.binding, i10, generateMethodInfoAttributes);
    }
}
