package org.eclipse.jdt.internal.compiler.ast;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import w2.C15883c;

public class MethodDeclaration extends AbstractMethodDeclaration {
    public TypeReference returnType;
    public TypeParameter[] typeParameters;

    public MethodDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
        this.bits |= 256;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
    
        if (r1.isOrEnclosedByPrivateType() != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void analyseCode(ClassScope classScope, FlowContext flowContext, FlowInfo flowInfo) {
        char[] cArr;
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            MethodBinding methodBinding = this.binding;
            if (methodBinding == null) {
                return;
            }
            if (!methodBinding.isUsed() && !this.binding.isAbstract()) {
                if (!this.binding.isPrivate()) {
                    MethodBinding methodBinding2 = this.binding;
                    if ((methodBinding2.modifiers & 805306368) == 0) {
                    }
                }
                if (!classScope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
                    this.scope.problemReporter().unusedPrivateMethod(this);
                }
            }
            if ((!this.binding.declaringClass.isEnum() || ((cArr = this.selector) != TypeConstants.VALUES && cArr != TypeConstants.VALUEOF)) && !this.binding.isAbstract() && !this.binding.isNative()) {
                if (this.typeParameters != null && !this.scope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
                    int length = this.typeParameters.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        TypeParameter typeParameter = this.typeParameters[i10];
                        if ((typeParameter.binding.modifiers & 134217728) == 0) {
                            this.scope.problemReporter().unusedTypeParameter(typeParameter);
                        }
                    }
                }
                ExceptionHandlingFlowContext exceptionHandlingFlowContext = new ExceptionHandlingFlowContext(flowContext, this, this.binding.thrownExceptions, null, this.scope, FlowInfo.DEAD_END);
                AbstractMethodDeclaration.analyseArguments(classScope.environment(), flowInfo, this.arguments, this.binding);
                ReferenceBinding referenceBinding = this.binding.declaringClass;
                if ((referenceBinding instanceof MemberTypeBinding) && !referenceBinding.isStatic()) {
                    this.bits &= -257;
                }
                if (this.statements != null) {
                    boolean z10 = this.scope.compilerOptions().enableSyntacticNullAnalysisForFields;
                    int i11 = (flowInfo.reachMode() & 3) == 0 ? 0 : 1;
                    int length2 = this.statements.length;
                    for (int i12 = 0; i12 < length2; i12++) {
                        Statement statement = this.statements[i12];
                        i11 = statement.complainIfUnreachable(flowInfo, this.scope, i11, true);
                        if (i11 < 2) {
                            flowInfo = statement.analyseCode(this.scope, exceptionHandlingFlowContext, flowInfo);
                        }
                        if (z10) {
                            exceptionHandlingFlowContext.expireNullCheckedFieldInfo();
                        }
                    }
                } else {
                    this.bits &= -257;
                }
                TypeBinding typeBinding = this.binding.returnType;
                if (typeBinding != TypeBinding.VOID && !isAbstract()) {
                    if (flowInfo != FlowInfo.DEAD_END) {
                        this.scope.problemReporter().shouldReturn(typeBinding, this);
                    }
                    exceptionHandlingFlowContext.complainIfUnusedExceptionHandlers(this);
                    this.scope.checkUnusedParameters(this.binding);
                    if (!this.binding.isStatic() && (this.bits & 256) != 0 && !isDefaultMethod() && !this.binding.isOverriding() && !this.binding.isImplementing()) {
                        if (!this.binding.isPrivate() && !this.binding.isFinal() && !this.binding.declaringClass.isFinal()) {
                            this.scope.problemReporter().methodCanBePotentiallyDeclaredStatic(this);
                        }
                        this.scope.problemReporter().methodCanBeDeclaredStatic(this);
                    }
                    this.scope.checkUnclosedCloseables(flowInfo, null, null, null);
                }
                if ((flowInfo.tagBits & 1) == 0) {
                    this.bits |= 64;
                }
                exceptionHandlingFlowContext.complainIfUnusedExceptionHandlers(this);
                this.scope.checkUnusedParameters(this.binding);
                if (!this.binding.isStatic()) {
                    if (!this.binding.isPrivate()) {
                        this.scope.problemReporter().methodCanBePotentiallyDeclaredStatic(this);
                    }
                    this.scope.problemReporter().methodCanBeDeclaredStatic(this);
                }
                this.scope.checkUnclosedCloseables(flowInfo, null, null, null);
            }
        } catch (AbortMethod unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void getAllAnnotationContexts(int i10, List list) {
        TypeReference.AnnotationCollector annotationCollector = new TypeReference.AnnotationCollector(this.returnType, i10, list);
        int length = this.annotations.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.annotations[i11].traverse(annotationCollector, (BlockScope) null);
        }
    }

    public boolean hasNullTypeAnnotation(TypeReference.AnnotationPosition annotationPosition) {
        if (TypeReference.containsNullAnnotation(this.annotations)) {
            return true;
        }
        TypeReference typeReference = this.returnType;
        return typeReference != null && typeReference.hasNullTypeAnnotation(annotationPosition);
    }

    @Override
    public boolean isDefaultMethod() {
        return (this.modifiers & 65536) != 0;
    }

    @Override
    public boolean isMethod() {
        return true;
    }

    @Override
    public void parseStatements(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration) {
        parser.parse(this, compilationUnitDeclaration);
    }

    @Override
    public StringBuffer printReturnType(int i10, StringBuffer stringBuffer) {
        TypeReference typeReference = this.returnType;
        if (typeReference == null) {
            return stringBuffer;
        }
        StringBuffer printExpression = typeReference.printExpression(0, stringBuffer);
        printExpression.append(C15883c.f126249O);
        return printExpression;
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x012e, code lost:
    
        if (r3 == org.eclipse.jdt.internal.compiler.lookup.TypeConstants.VALUEOF) goto L119;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolveStatements() {
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        TypeReference typeReference = this.returnType;
        if (typeReference != null && (methodBinding2 = this.binding) != null) {
            this.bits |= typeReference.bits & 1048576;
            typeReference.resolvedType = methodBinding2.returnType;
        }
        if (CharOperation.equals(this.scope.enclosingSourceType().sourceName, this.selector)) {
            this.scope.problemReporter().methodWithConstructorName(this);
        }
        TypeReference typeReference2 = this.returnType;
        boolean z10 = typeReference2 != null && (typeReference2.resolvedType instanceof TypeVariableBinding);
        TypeParameter[] typeParameterArr = this.typeParameters;
        if (typeParameterArr != null) {
            int length = typeParameterArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeParameter typeParameter = this.typeParameters[i10];
                this.bits |= typeParameter.bits & 1048576;
                if (z10 && TypeBinding.equalsEquals(typeParameter.binding, this.returnType.resolvedType)) {
                    z10 = false;
                }
            }
        }
        CompilerOptions compilerOptions = this.scope.compilerOptions();
        MethodBinding methodBinding3 = this.binding;
        if (methodBinding3 != null) {
            long j10 = compilerOptions.complianceLevel;
            if (j10 >= ClassFileConstants.JDK1_5) {
                int i11 = methodBinding3.modifiers;
                long j11 = methodBinding3.tagBits;
                boolean z11 = (562949953421312L & j11) != 0;
                boolean z12 = (j11 & 512) != 0;
                if (!z11 || z12) {
                    if (methodBinding3.declaringClass.isInterface()) {
                        if (j10 >= ClassFileConstants.JDK1_6 && compilerOptions.reportMissingOverrideAnnotationForInterfaceMethodImplementation && ((i11 & 268435464) == 268435456 || this.binding.isImplementing())) {
                            this.scope.problemReporter().missingOverrideAnnotationForInterfaceMethodImplementation(this);
                        }
                    } else if ((i11 & 268435464) == 268435456) {
                        this.scope.problemReporter().missingOverrideAnnotation(this);
                    } else if (j10 >= ClassFileConstants.JDK1_6 && compilerOptions.reportMissingOverrideAnnotationForInterfaceMethodImplementation && this.binding.isImplementing()) {
                        this.scope.problemReporter().missingOverrideAnnotationForInterfaceMethodImplementation(this);
                    }
                } else if ((i11 & 268435464) != 268435456 && (j10 < ClassFileConstants.JDK1_6 || (536870920 & i11) != 536870912)) {
                    this.scope.problemReporter().methodMustOverride(this, j10);
                }
            }
        }
        int kind = TypeDeclaration.kind(this.scope.referenceType().modifiers);
        if (kind != 1) {
            if (kind == 2) {
                long j12 = compilerOptions.sourceLevel;
                if (j12 >= ClassFileConstants.JDK1_8) {
                    int i12 = this.modifiers;
                    if ((16778240 & i12) == 16777216 && ((j12 >= ClassFileConstants.JDK9 && (i12 & 2) != 0) || (i12 & 65544) != 0)) {
                        this.scope.problemReporter().methodNeedBody(this);
                    }
                }
            } else if (kind == 3) {
                char[] cArr = this.selector;
                if (cArr != TypeConstants.VALUES) {
                }
            }
            super.resolveStatements();
            if (compilerOptions.getSeverity(CompilerOptions.OverridingMethodWithoutSuperInvocation) == 256 && (methodBinding = this.binding) != null && (methodBinding.modifiers & 805306368) == 268435456 && (this.bits & 16) == 0) {
                this.scope.problemReporter().overridesMethodWithoutSuperInvocation(this.binding);
                return;
            }
            return;
        }
        int i13 = this.modifiers;
        if ((i13 & 16777216) != 0) {
            if ((i13 & 256) == 0 && (i13 & 1024) == 0) {
                this.scope.problemReporter().methodNeedBody(this);
            }
        } else if ((i13 & 256) == 0 && (i13 & 1024) == 0) {
            MethodBinding methodBinding4 = this.binding;
            if (methodBinding4 == null || methodBinding4.isStatic() || (this.binding.declaringClass instanceof LocalTypeBinding) || z10) {
                this.bits &= -257;
            }
        } else {
            this.scope.problemReporter().methodNeedingNoBody(this);
        }
        super.resolveStatements();
        if (compilerOptions.getSeverity(CompilerOptions.OverridingMethodWithoutSuperInvocation) == 256) {
        }
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
            TypeReference typeReference = this.returnType;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, this.scope);
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
