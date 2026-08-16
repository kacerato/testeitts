package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class BlockScope extends Scope {
    public static final VariableBinding[] EmulationPathToImplicitThis = new VariableBinding[0];
    public static final VariableBinding[] NoEnclosingInstanceInConstructorCall = new VariableBinding[0];
    public static final VariableBinding[] NoEnclosingInstanceInStaticContext = new VariableBinding[0];
    public Statement blockStatement;
    public CaseStatement enclosingCase;
    public FlowInfo finallyInfo;
    public boolean insideTypeAnnotation;
    public int localIndex;
    public LocalVariableBinding[] locals;
    public int maxOffset;
    public int offset;
    public BlockScope[] shiftScopes;
    public int startIndex;
    public int subscopeCount;
    public Scope[] subscopes;
    private List trackingVariables;

    public BlockScope(BlockScope blockScope) {
        this(blockScope, true);
    }

    private void checkAndSetModifiersForVariable(LocalVariableBinding localVariableBinding) {
        int i10 = localVariableBinding.modifiers;
        if ((4194304 & i10) != 0 && localVariableBinding.declaration != null) {
            problemReporter().duplicateModifierForVariable(localVariableBinding.declaration, this instanceof MethodScope);
        }
        if ((65519 & i10) != 0 && localVariableBinding.declaration != null) {
            problemReporter().illegalModifierForVariable(localVariableBinding.declaration, this instanceof MethodScope);
        }
        localVariableBinding.modifiers = i10;
    }

    private boolean checkAppropriate(MethodBinding methodBinding, MethodBinding methodBinding2, InvocationSite invocationSite) {
        if (methodBinding2 == null || !methodBinding2.isValidBinding() || methodBinding2 == methodBinding || !MethodVerifier.doesMethodOverride(methodBinding2, methodBinding, environment())) {
            return true;
        }
        problemReporter().illegalSuperCallBypassingOverride(invocationSite, methodBinding, methodBinding2.declaringClass);
        return false;
    }

    private void reportResourceLeak(FakedTrackingVariable fakedTrackingVariable, ASTNode aSTNode, int i10) {
        if (aSTNode != null) {
            fakedTrackingVariable.recordErrorLocation(aSTNode, i10);
        } else {
            fakedTrackingVariable.reportError(problemReporter(), null, i10);
        }
    }

    public final void addAnonymousType(TypeDeclaration typeDeclaration, ReferenceBinding referenceBinding) {
        new ClassScope(this, typeDeclaration).buildAnonymousTypeBinding(enclosingSourceType(), referenceBinding);
        for (MethodScope methodScope = methodScope(); methodScope != null; methodScope = methodScope.enclosingMethodScope()) {
            ReferenceContext referenceContext = methodScope.referenceContext;
            if (!(referenceContext instanceof LambdaExpression)) {
                return;
            }
            LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
            MethodScope methodScope2 = lambdaExpression.scope;
            if (!methodScope2.isStatic && !methodScope2.isConstructorCall) {
                lambdaExpression.shouldCaptureInstance = true;
            }
        }
    }

    public final void addLocalType(TypeDeclaration typeDeclaration) {
        ClassScope classScope = new ClassScope(this, typeDeclaration);
        addSubscope(classScope);
        classScope.buildLocalTypeBinding(enclosingSourceType());
        for (MethodScope methodScope = methodScope(); methodScope != null; methodScope = methodScope.enclosingMethodScope()) {
            ReferenceContext referenceContext = methodScope.referenceContext;
            if (!(referenceContext instanceof LambdaExpression)) {
                return;
            }
            LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
            MethodScope methodScope2 = lambdaExpression.scope;
            if (!methodScope2.isStatic && !methodScope2.isConstructorCall) {
                lambdaExpression.shouldCaptureInstance = true;
            }
        }
    }

    public final void addLocalVariable(LocalVariableBinding localVariableBinding) {
        checkAndSetModifiersForVariable(localVariableBinding);
        int i10 = this.localIndex;
        LocalVariableBinding[] localVariableBindingArr = this.locals;
        if (i10 == localVariableBindingArr.length) {
            LocalVariableBinding[] localVariableBindingArr2 = new LocalVariableBinding[i10 * 2];
            this.locals = localVariableBindingArr2;
            System.arraycopy(localVariableBindingArr, 0, localVariableBindingArr2, 0, i10);
        }
        LocalVariableBinding[] localVariableBindingArr3 = this.locals;
        int i11 = this.localIndex;
        this.localIndex = i11 + 1;
        localVariableBindingArr3[i11] = localVariableBinding;
        localVariableBinding.declaringScope = this;
        MethodScope outerMostMethodScope = outerMostMethodScope();
        int i12 = outerMostMethodScope.analysisIndex;
        outerMostMethodScope.analysisIndex = i12 + 1;
        localVariableBinding.f102483id = i12;
    }

    public void addSubscope(Scope scope) {
        int i10 = this.subscopeCount;
        Scope[] scopeArr = this.subscopes;
        if (i10 == scopeArr.length) {
            Scope[] scopeArr2 = new Scope[i10 * 2];
            this.subscopes = scopeArr2;
            System.arraycopy(scopeArr, 0, scopeArr2, 0, i10);
        }
        Scope[] scopeArr3 = this.subscopes;
        int i11 = this.subscopeCount;
        this.subscopeCount = i11 + 1;
        scopeArr3[i11] = scope;
    }

    public final boolean allowBlankFinalFieldAssignment(FieldBinding fieldBinding) {
        if (TypeBinding.notEquals(enclosingReceiverType(), fieldBinding.declaringClass)) {
            return false;
        }
        MethodScope methodScope = methodScope();
        if (methodScope.isStatic == fieldBinding.isStatic() && !methodScope.isLambdaScope()) {
            return methodScope.isInsideInitializer() || ((AbstractMethodDeclaration) methodScope.referenceContext).isInitializationMethod();
        }
        return false;
    }

    public String basicToString(int i10) {
        String str = "\n";
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            }
            str = String.valueOf(str) + "\t";
        }
        String str2 = String.valueOf(str) + "--- Block Scope ---";
        String str3 = String.valueOf(str) + "\t";
        String str4 = String.valueOf(str2) + str3 + "locals:";
        for (int i11 = 0; i11 < this.localIndex; i11++) {
            str4 = String.valueOf(str4) + str3 + "\t" + this.locals[i11].toString();
        }
        return String.valueOf(str4) + str3 + "startIndex = " + this.startIndex;
    }

    public void checkAppropriateMethodAgainstSupers(char[] cArr, MethodBinding methodBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        ReferenceBinding[] superInterfaces;
        ReferenceBinding enclosingReceiverType = enclosingReceiverType();
        if (!checkAppropriate(methodBinding, getMethod(enclosingReceiverType.superclass(), cArr, typeBindingArr, invocationSite), invocationSite) || (superInterfaces = enclosingReceiverType.superInterfaces()) == null) {
            return;
        }
        for (int i10 = 0; i10 < superInterfaces.length && checkAppropriate(methodBinding, getMethod(superInterfaces[i10], cArr, typeBindingArr, invocationSite), invocationSite); i10++) {
        }
    }

    public void checkUnclosedCloseables(FlowInfo flowInfo, FlowContext flowContext, ASTNode aSTNode, BlockScope blockScope) {
        if (compilerOptions().analyseResourceLeaks) {
            if (this.trackingVariables == null) {
                if (aSTNode == null || !(this.parent instanceof BlockScope) || isLambdaScope()) {
                    return;
                }
                ((BlockScope) this.parent).checkUnclosedCloseables(flowInfo, flowContext, aSTNode, blockScope);
                return;
            }
            if (aSTNode == null || flowInfo.reachMode() == 0) {
                FakedTrackingVariable closeTrackingVariable = aSTNode instanceof ReturnStatement ? FakedTrackingVariable.getCloseTrackingVariable(((ReturnStatement) aSTNode).expression, flowInfo, flowContext) : null;
                FakedTrackingVariable.IteratorForReporting iteratorForReporting = new FakedTrackingVariable.IteratorForReporting(this.trackingVariables, this, aSTNode != null);
                while (iteratorForReporting.hasNext()) {
                    FakedTrackingVariable next = iteratorForReporting.next();
                    if (closeTrackingVariable == null || !next.isResourceBeingReturned(closeTrackingVariable)) {
                        if (aSTNode == null || !next.hasDefinitelyNoResource(flowInfo)) {
                            if (aSTNode == null || flowContext == null || !flowContext.recordExitAgainstResource(this, flowInfo, next, aSTNode)) {
                                int findMostSpecificStatus = next.findMostSpecificStatus(flowInfo, this, blockScope);
                                if (findMostSpecificStatus == 2) {
                                    reportResourceLeak(next, aSTNode, findMostSpecificStatus);
                                } else {
                                    if (aSTNode == null) {
                                        if (next.reportRecordedErrors(this, findMostSpecificStatus, flowInfo.reachMode() != 0)) {
                                        }
                                    }
                                    if (findMostSpecificStatus == 16) {
                                        reportResourceLeak(next, aSTNode, findMostSpecificStatus);
                                    } else if (findMostSpecificStatus == 4 && environment().globalOptions.complianceLevel >= ClassFileConstants.JDK1_7) {
                                        next.reportExplicitClosing(problemReporter());
                                    }
                                }
                            }
                        }
                    }
                }
                if (aSTNode == null) {
                    for (int i10 = 0; i10 < this.localIndex; i10++) {
                        this.locals[i10].closeTracker = null;
                    }
                    this.trackingVariables = null;
                }
            }
        }
    }

    public void computeLocalVariablePositions(int i10, int i11, CodeStream codeStream) {
        LocalDeclaration localDeclaration;
        this.offset = i11;
        this.maxOffset = i11;
        int i12 = this.localIndex;
        boolean z10 = i10 < i12;
        int i13 = this.subscopeCount;
        boolean z11 = i13 > 0;
        int i14 = 0;
        while (true) {
            if (!z10 && !z11) {
                break;
            }
            if (!z11 || (z10 && this.subscopes[i14].startIndex() > i10)) {
                LocalVariableBinding localVariableBinding = this.locals[i10];
                boolean z12 = localVariableBinding.useFlag > 0 && localVariableBinding.constant() == Constant.NotAConstant;
                if (localVariableBinding.useFlag == 0 && (localDeclaration = localVariableBinding.declaration) != null && (localDeclaration.bits & 1073741824) != 0) {
                    if (localVariableBinding.isCatchParameter()) {
                        problemReporter().unusedExceptionParameter(localVariableBinding.declaration);
                    } else {
                        problemReporter().unusedLocalVariable(localVariableBinding.declaration);
                    }
                }
                if (!z12 && localVariableBinding.declaration != null && compilerOptions().preserveAllLocalVariables) {
                    if (localVariableBinding.useFlag == 0) {
                        localVariableBinding.useFlag = 1;
                    }
                    z12 = true;
                }
                if (z12) {
                    if (localVariableBinding.declaration != null) {
                        codeStream.record(localVariableBinding);
                    }
                    localVariableBinding.resolvedPosition = this.offset;
                    if (TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.LONG) || TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.DOUBLE)) {
                        this.offset += 2;
                    } else {
                        this.offset++;
                    }
                    if (this.offset > 65535) {
                        ProblemReporter problemReporter = problemReporter();
                        ASTNode aSTNode = localVariableBinding.declaration;
                        if (aSTNode == null) {
                            aSTNode = (ASTNode) methodScope().referenceContext;
                        }
                        problemReporter.noMoreAvailableSpaceForLocal(localVariableBinding, aSTNode);
                    }
                } else {
                    localVariableBinding.resolvedPosition = -1;
                }
                i10++;
                z10 = i10 < i12;
            } else {
                Scope scope = this.subscopes[i14];
                if (scope instanceof BlockScope) {
                    BlockScope blockScope = (BlockScope) scope;
                    blockScope.computeLocalVariablePositions(0, blockScope.shiftScopes == null ? this.offset : blockScope.maxShiftedOffset(), codeStream);
                    int i15 = blockScope.maxOffset;
                    if (i15 > this.maxOffset) {
                        this.maxOffset = i15;
                    }
                }
                i14++;
                z11 = i14 < i13;
            }
        }
        int i16 = this.offset;
        if (i16 > this.maxOffset) {
            this.maxOffset = i16;
        }
    }

    public void correlateTrackingVarsIfElse(FlowInfo flowInfo, FlowInfo flowInfo2) {
        int mergeNullStatus;
        List list = this.trackingVariables;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                FakedTrackingVariable fakedTrackingVariable = (FakedTrackingVariable) this.trackingVariables.get(i10);
                if (fakedTrackingVariable.originalBinding != null) {
                    if (flowInfo.isDefinitelyNonNull(fakedTrackingVariable.binding) && flowInfo2.isDefinitelyNull(fakedTrackingVariable.originalBinding)) {
                        flowInfo2.markAsDefinitelyNonNull(fakedTrackingVariable.binding);
                    } else if (flowInfo2.isDefinitelyNonNull(fakedTrackingVariable.binding) && flowInfo.isDefinitelyNull(fakedTrackingVariable.originalBinding)) {
                        flowInfo.markAsDefinitelyNonNull(fakedTrackingVariable.binding);
                    } else {
                        UnconditionalFlowInfo unconditionalFlowInfo = FlowInfo.DEAD_END;
                        if (flowInfo != unconditionalFlowInfo && flowInfo2 != unconditionalFlowInfo) {
                            for (int i11 = i10 + 1; i11 < size; i11++) {
                                FakedTrackingVariable fakedTrackingVariable2 = (FakedTrackingVariable) this.trackingVariables.get(i11);
                                if (fakedTrackingVariable.originalBinding == fakedTrackingVariable2.originalBinding) {
                                    boolean hasNullInfoFor = flowInfo.hasNullInfoFor(fakedTrackingVariable.binding);
                                    boolean hasNullInfoFor2 = flowInfo2.hasNullInfoFor(fakedTrackingVariable.binding);
                                    boolean hasNullInfoFor3 = flowInfo.hasNullInfoFor(fakedTrackingVariable2.binding);
                                    boolean hasNullInfoFor4 = flowInfo2.hasNullInfoFor(fakedTrackingVariable2.binding);
                                    if (!hasNullInfoFor && hasNullInfoFor2 && hasNullInfoFor3 && !hasNullInfoFor4) {
                                        mergeNullStatus = FlowInfo.mergeNullStatus(flowInfo.nullStatus(fakedTrackingVariable2.binding), flowInfo2.nullStatus(fakedTrackingVariable.binding));
                                    } else if (hasNullInfoFor && !hasNullInfoFor2 && !hasNullInfoFor3 && hasNullInfoFor4) {
                                        mergeNullStatus = FlowInfo.mergeNullStatus(flowInfo.nullStatus(fakedTrackingVariable.binding), flowInfo2.nullStatus(fakedTrackingVariable2.binding));
                                    }
                                    flowInfo.markNullStatus(fakedTrackingVariable.binding, mergeNullStatus);
                                    flowInfo2.markNullStatus(fakedTrackingVariable.binding, mergeNullStatus);
                                    fakedTrackingVariable.originalBinding.closeTracker = fakedTrackingVariable;
                                    flowInfo.markNullStatus(fakedTrackingVariable2.binding, 4);
                                    flowInfo2.markNullStatus(fakedTrackingVariable2.binding, 4);
                                }
                            }
                        }
                    }
                }
            }
        }
        Scope scope = this.parent;
        if (scope instanceof BlockScope) {
            ((BlockScope) scope).correlateTrackingVarsIfElse(flowInfo, flowInfo2);
        }
    }

    public void emulateOuterAccess(LocalVariableBinding localVariableBinding) {
        MethodScope methodScope;
        BlockScope blockScope = localVariableBinding.declaringScope;
        if (blockScope == null) {
            return;
        }
        int i10 = 0;
        for (Scope scope = this; blockScope != scope; scope = scope.parent) {
            int i11 = scope.kind;
            if (i11 != 2) {
                if (i11 == 3) {
                    i10++;
                }
            } else if (scope.isLambdaScope()) {
                ((LambdaExpression) scope.referenceContext()).addSyntheticArgument(localVariableBinding);
            }
        }
        if (i10 == 0 || blockScope.methodScope() == (methodScope = methodScope())) {
            return;
        }
        NestedTypeBinding nestedTypeBinding = (NestedTypeBinding) enclosingSourceType();
        if (nestedTypeBinding.isLocalType()) {
            if (methodScope.isInsideInitializerOrConstructor()) {
                nestedTypeBinding.addSyntheticArgument(localVariableBinding);
            } else {
                nestedTypeBinding.addSyntheticArgumentAndField(localVariableBinding);
            }
        }
    }

    public final ReferenceBinding findLocalType(char[] cArr) {
        CaseStatement caseStatement;
        long j10 = compilerOptions().complianceLevel;
        for (int i10 = this.subscopeCount - 1; i10 >= 0; i10--) {
            Scope scope = this.subscopes[i10];
            if (scope instanceof ClassScope) {
                LocalTypeBinding localTypeBinding = (LocalTypeBinding) ((ClassScope) scope).referenceContext.binding;
                if ((j10 < ClassFileConstants.JDK1_4 || (caseStatement = localTypeBinding.enclosingCase) == null || isInsideCase(caseStatement)) && CharOperation.equals(localTypeBinding.sourceName(), cArr)) {
                    return localTypeBinding;
                }
            }
        }
        return null;
    }

    public LocalDeclaration[] findLocalVariableDeclarations(int i10) {
        LocalDeclaration localDeclaration;
        int i11 = this.localIndex;
        boolean z10 = i11 > 0;
        int i12 = this.subscopeCount;
        boolean z11 = i12 > 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        LocalDeclaration[] localDeclarationArr = null;
        while (true) {
            if (!z10 && !z11) {
                return null;
            }
            if (!z11 || (z10 && this.subscopes[i13].startIndex() > i14)) {
                LocalVariableBinding localVariableBinding = this.locals[i14];
                if (localVariableBinding != null && (localDeclaration = localVariableBinding.declaration) != null) {
                    if (localDeclaration.declarationSourceStart > i10) {
                        return localDeclarationArr;
                    }
                    if (i10 <= localDeclaration.declarationSourceEnd) {
                        if (localDeclarationArr == null) {
                            localDeclarationArr = new LocalDeclaration[i11];
                        }
                        localDeclarationArr[i15] = localDeclaration;
                        i15++;
                    }
                }
                i14++;
                z10 = i14 < i11;
                if (!z10 && localDeclarationArr != null) {
                    return localDeclarationArr;
                }
            } else {
                Scope scope = this.subscopes[i13];
                if (scope.kind == 1 && (localDeclarationArr = ((BlockScope) scope).findLocalVariableDeclarations(i10)) != null) {
                    return localDeclarationArr;
                }
                i13++;
                z11 = i13 < i12;
            }
        }
    }

    @Override
    public LocalVariableBinding findVariable(char[] cArr) {
        int length = cArr.length;
        for (int i10 = this.localIndex - 1; i10 >= 0; i10--) {
            LocalVariableBinding localVariableBinding = this.locals[i10];
            char[] cArr2 = localVariableBinding.name;
            if (cArr2.length == length && CharOperation.equals(cArr2, cArr)) {
                return localVariableBinding;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ee, code lost:
    
        if ((r18 & 1) == 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f2, code lost:
    
        if ((r6 instanceof org.eclipse.jdt.internal.compiler.lookup.FieldBinding) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f4, code lost:
    
        r2 = (org.eclipse.jdt.internal.compiler.lookup.FieldBinding) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00fb, code lost:
    
        if (r2.isStatic() != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010d, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding(r2, r2.declaringClass, org.eclipse.jdt.core.compiler.CharOperation.concatWith(org.eclipse.jdt.core.compiler.CharOperation.subarray(r17, 0, r11), '.'), 7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010e, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0111, code lost:
    
        if ((r18 & 4) == 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0115, code lost:
    
        if ((r6 instanceof org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0117, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0121, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemBinding(org.eclipse.jdt.core.compiler.CharOperation.subarray(r17, 0, r11), (int) r5);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Binding getBinding(char[][] cArr, int i10, InvocationSite invocationSite, boolean z10) {
        int i11;
        Binding findField;
        Binding binding = getBinding(cArr[0], i10 | 20, invocationSite, z10);
        ?? r52 = 1;
        invocationSite.setFieldIndex(1);
        if (binding instanceof VariableBinding) {
            return binding;
        }
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordQualifiedReference(cArr);
        if (!binding.isValidBinding()) {
            return binding;
        }
        int length = cArr.length;
        if (binding instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding) binding;
            int i12 = 1;
            while (i12 < length) {
                compilationUnitScope.recordReference(packageBinding.compoundName, cArr[i12]);
                i11 = i12 + 1;
                binding = packageBinding.getTypeOrPackage(cArr[i12], module(), i11 < length);
                invocationSite.setFieldIndex(i11);
                if (binding == null) {
                    if (i11 == length) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, 1);
                    }
                    return new ProblemBinding(CharOperation.subarray(cArr, 0, i11), 1);
                }
                if (binding instanceof ReferenceBinding) {
                    if (!binding.isValidBinding()) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), (ReferenceBinding) ((ReferenceBinding) binding).closestMatch(), binding.problemId());
                    }
                    ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                    if (!referenceBinding.canBeSeenBy(this)) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), referenceBinding, 2);
                    }
                } else {
                    packageBinding = (PackageBinding) binding;
                    i12 = i11;
                }
            }
            return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i12), null, 1);
        }
        i11 = 1;
        ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
        Binding convertToRawType = environment().convertToRawType(referenceBinding2, false);
        boolean z11 = invocationSite instanceof ASTNode;
        if (z11) {
            ASTNode aSTNode = (ASTNode) invocationSite;
            if (aSTNode.isTypeUseDeprecated(referenceBinding2, this)) {
                problemReporter().deprecatedType(referenceBinding2, aSTNode);
            }
        }
        ProblemFieldBinding problemFieldBinding = null;
        while (true) {
            if (i11 >= length) {
                break;
            }
            ReferenceBinding referenceBinding3 = (ReferenceBinding) convertToRawType;
            int i13 = i11 + 1;
            char[] cArr2 = cArr[i11];
            invocationSite.setFieldIndex(i13);
            invocationSite.setActualReceiverType(referenceBinding3);
            int i14 = i10 & 1;
            if (i14 != 0 && (findField = findField(referenceBinding3, cArr2, invocationSite, r52)) != null) {
                if (findField.isValidBinding()) {
                    i11 = i13;
                    convertToRawType = findField;
                    break;
                }
                ProblemFieldBinding problemFieldBinding2 = (ProblemFieldBinding) findField;
                problemFieldBinding = new ProblemFieldBinding(problemFieldBinding2.closestMatch, problemFieldBinding2.declaringClass, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i13), '.'), findField.problemId());
                if (findField.problemId() != 2) {
                    return problemFieldBinding;
                }
            }
            ReferenceBinding findMemberType = findMemberType(cArr2, referenceBinding3);
            if (findMemberType == null) {
                if (problemFieldBinding != null) {
                    return problemFieldBinding;
                }
                if (i14 != 0) {
                    return new ProblemFieldBinding(null, referenceBinding3, cArr2, 1);
                }
                if ((i10 & 3) != 0) {
                    return new ProblemBinding(CharOperation.subarray(cArr, 0, i13), referenceBinding3, 1);
                }
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), referenceBinding3, 1);
            }
            if (!findMemberType.isValidBinding()) {
                return problemFieldBinding != null ? problemFieldBinding : new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), (ReferenceBinding) findMemberType.closestMatch(), findMemberType.problemId());
            }
            if (z11) {
                ASTNode aSTNode2 = (ASTNode) invocationSite;
                if (aSTNode2.isTypeUseDeprecated(findMemberType, this)) {
                    problemReporter().deprecatedType(findMemberType, aSTNode2);
                }
            }
            convertToRawType = findMemberType;
            r52 = 1;
            i11 = i13;
        }
    }

    public VariableBinding[] getEmulationPath(LocalVariableBinding localVariableBinding) {
        FieldBinding syntheticField;
        SyntheticArgumentBinding syntheticArgument;
        SyntheticArgumentBinding syntheticArgument2;
        MethodScope methodScope = methodScope();
        SourceTypeBinding enclosingSourceType = methodScope.enclosingSourceType();
        BlockScope blockScope = localVariableBinding.declaringScope;
        if (blockScope != null && methodScope != blockScope.methodScope()) {
            if (methodScope.isLambdaScope() && (syntheticArgument2 = ((LambdaExpression) methodScope.referenceContext).getSyntheticArgument(localVariableBinding)) != null) {
                return new VariableBinding[]{syntheticArgument2};
            }
            if (methodScope.isInsideInitializerOrConstructor() && enclosingSourceType.isNestedType() && (syntheticArgument = ((NestedTypeBinding) enclosingSourceType).getSyntheticArgument(localVariableBinding)) != null) {
                return new VariableBinding[]{syntheticArgument};
            }
            if (methodScope.isStatic || (syntheticField = enclosingSourceType.getSyntheticField(localVariableBinding)) == null) {
                return null;
            }
            return new VariableBinding[]{syntheticField};
        }
        return new VariableBinding[]{localVariableBinding};
    }

    public final boolean isDuplicateLocalVariable(char[] cArr) {
        BlockScope blockScope = this;
        while (true) {
            for (int i10 = 0; i10 < this.localIndex; i10++) {
                if (CharOperation.equals(cArr, blockScope.locals[i10].name)) {
                    return true;
                }
            }
            if (blockScope.kind != 1) {
                return false;
            }
            blockScope = (BlockScope) blockScope.parent;
        }
    }

    public int maxShiftedOffset() {
        int i10;
        BlockScope[] blockScopeArr = this.shiftScopes;
        int i11 = -1;
        if (blockScopeArr != null) {
            int length = blockScopeArr.length;
            for (int i12 = 0; i12 < length; i12++) {
                BlockScope blockScope = this.shiftScopes[i12];
                if (blockScope != null && (i10 = blockScope.maxOffset) > i11) {
                    i11 = i10;
                }
            }
        }
        return i11;
    }

    public final boolean needBlankFinalFieldInitializationCheck(FieldBinding fieldBinding) {
        boolean isStatic = fieldBinding.isStatic();
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        for (MethodScope namedMethodScope = namedMethodScope(); namedMethodScope != null && namedMethodScope.isStatic == isStatic; namedMethodScope = namedMethodScope.enclosingMethodScope().namedMethodScope()) {
            if (!namedMethodScope.isInsideInitializer() && !((AbstractMethodDeclaration) namedMethodScope.referenceContext).isInitializationMethod()) {
                return false;
            }
            ReferenceBinding enclosingReceiverType = namedMethodScope.enclosingReceiverType();
            if (TypeBinding.equalsEquals(enclosingReceiverType, referenceBinding)) {
                return true;
            }
            if (!enclosingReceiverType.erasure().isAnonymousType()) {
                return false;
            }
        }
        return false;
    }

    @Override
    public ProblemReporter problemReporter() {
        return methodScope().problemReporter();
    }

    public void propagateInnerEmulation(ReferenceBinding referenceBinding, boolean z10) {
        SyntheticArgumentBinding[] syntheticOuterLocalVariables = referenceBinding.syntheticOuterLocalVariables();
        if (syntheticOuterLocalVariables != null) {
            for (SyntheticArgumentBinding syntheticArgumentBinding : syntheticOuterLocalVariables) {
                if (!z10 || !TypeBinding.equalsEquals(syntheticArgumentBinding.type, referenceBinding.enclosingType())) {
                    emulateOuterAccess(syntheticArgumentBinding.actualOuterLocalVariable);
                }
            }
        }
    }

    public void pruneWrapperTrackingVar(FakedTrackingVariable fakedTrackingVariable) {
        this.trackingVariables.remove(fakedTrackingVariable);
    }

    public TypeDeclaration referenceType() {
        return methodScope().referenceType();
    }

    public int registerTrackingVariable(FakedTrackingVariable fakedTrackingVariable) {
        if (this.trackingVariables == null) {
            this.trackingVariables = new ArrayList(3);
        }
        this.trackingVariables.add(fakedTrackingVariable);
        MethodScope outerMostMethodScope = outerMostMethodScope();
        int i10 = outerMostMethodScope.analysisIndex;
        outerMostMethodScope.analysisIndex = i10 + 1;
        return i10;
    }

    public void removeTrackingVar(FakedTrackingVariable fakedTrackingVariable) {
        FakedTrackingVariable fakedTrackingVariable2 = fakedTrackingVariable.innerTracker;
        if (fakedTrackingVariable2 != null) {
            fakedTrackingVariable2.withdraw();
            fakedTrackingVariable.innerTracker = null;
        }
        List list = this.trackingVariables;
        if (list == null || !list.remove(fakedTrackingVariable)) {
            Scope scope = this.parent;
            if (scope instanceof BlockScope) {
                ((BlockScope) scope).removeTrackingVar(fakedTrackingVariable);
            }
        }
    }

    public int scopeIndex() {
        if (this instanceof MethodScope) {
            return -1;
        }
        BlockScope blockScope = (BlockScope) this.parent;
        Scope[] scopeArr = blockScope.subscopes;
        int i10 = blockScope.subscopeCount;
        for (int i11 = 0; i11 < i10; i11++) {
            if (scopeArr[i11] == this) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public int startIndex() {
        return this.startIndex;
    }

    public String toString() {
        return toString(0);
    }

    public BlockScope(BlockScope blockScope, boolean z10) {
        this(1, blockScope);
        this.locals = new LocalVariableBinding[5];
        if (z10) {
            blockScope.addSubscope(this);
        }
        this.startIndex = blockScope.localIndex;
    }

    public String toString(int i10) {
        String basicToString = basicToString(i10);
        for (int i11 = 0; i11 < this.subscopeCount; i11++) {
            if (this.subscopes[i11] instanceof BlockScope) {
                basicToString = String.valueOf(basicToString) + ((BlockScope) this.subscopes[i11]).toString(i10 + 1) + "\n";
            }
        }
        return basicToString;
    }

    public BlockScope(BlockScope blockScope, int i10) {
        this(1, blockScope);
        this.locals = new LocalVariableBinding[i10];
        blockScope.addSubscope(this);
        this.startIndex = blockScope.localIndex;
    }

    public BlockScope(int i10, Scope scope) {
        super(i10, scope);
        this.subscopes = new Scope[1];
        this.subscopeCount = 0;
        this.insideTypeAnnotation = false;
    }

    public Object[] getEmulationPath(ReferenceBinding referenceBinding, boolean z10, boolean z11) {
        FieldBinding syntheticField;
        SyntheticArgumentBinding syntheticArgument;
        MethodScope methodScope = methodScope();
        SourceTypeBinding enclosingSourceType = methodScope.enclosingSourceType();
        if (!methodScope.isStatic && !methodScope.isConstructorCall && (TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) || (!z10 && enclosingSourceType.findSuperTypeOriginatingFrom(referenceBinding) != null))) {
            return EmulationPathToImplicitThis;
        }
        if (enclosingSourceType.isNestedType() && !enclosingSourceType.isStatic()) {
            boolean isInsideInitializerOrConstructor = methodScope.isInsideInitializerOrConstructor();
            if (isInsideInitializerOrConstructor && (syntheticArgument = ((NestedTypeBinding) enclosingSourceType).getSyntheticArgument(referenceBinding, z10, methodScope.isConstructorCall)) != null) {
                boolean z12 = enclosingSourceType.isAnonymousType() && enclosingSourceType.scope.referenceContext.allocation.enclosingInstance != null;
                if (z11 && !z12 && (TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) || (!z10 && enclosingSourceType.findSuperTypeOriginatingFrom(referenceBinding) != null))) {
                    return NoEnclosingInstanceInConstructorCall;
                }
                return new Object[]{syntheticArgument};
            }
            if (methodScope.isStatic) {
                return NoEnclosingInstanceInStaticContext;
            }
            if (enclosingSourceType.isAnonymousType()) {
                ReferenceBinding enclosingType = enclosingSourceType.enclosingType();
                if (enclosingType.isNestedType()) {
                    NestedTypeBinding nestedTypeBinding = (NestedTypeBinding) enclosingType;
                    SyntheticArgumentBinding syntheticArgument2 = nestedTypeBinding.getSyntheticArgument(nestedTypeBinding.enclosingType(), z10, methodScope.isConstructorCall);
                    if (syntheticArgument2 != null && (syntheticField = enclosingSourceType.getSyntheticField(syntheticArgument2)) != null && (TypeBinding.equalsEquals(syntheticField.type, referenceBinding) || (!z10 && ((ReferenceBinding) syntheticField.type).findSuperTypeOriginatingFrom(referenceBinding) != null))) {
                        return new Object[]{syntheticField};
                    }
                }
            }
            FieldBinding syntheticField2 = enclosingSourceType.getSyntheticField(referenceBinding, z10);
            if (syntheticField2 != null) {
                if (methodScope.isConstructorCall) {
                    return NoEnclosingInstanceInConstructorCall;
                }
                return new Object[]{syntheticField2};
            }
            Object[] objArr = new Object[2];
            ReferenceBinding enclosingType2 = enclosingSourceType.enclosingType();
            if (isInsideInitializerOrConstructor) {
                objArr[0] = ((NestedTypeBinding) enclosingSourceType).getSyntheticArgument(enclosingType2, z10, methodScope.isConstructorCall);
            } else {
                if (methodScope.isConstructorCall) {
                    return NoEnclosingInstanceInConstructorCall;
                }
                objArr[0] = enclosingSourceType.getSyntheticField(enclosingType2, z10);
            }
            if (objArr[0] != null) {
                int i10 = 1;
                while (true) {
                    ReferenceBinding enclosingType3 = enclosingType2.enclosingType();
                    if (enclosingType3 == null || TypeBinding.equalsEquals(enclosingType2, referenceBinding) || (!z10 && enclosingType2.findSuperTypeOriginatingFrom(referenceBinding) != null)) {
                        break;
                    }
                    if (methodScope != null) {
                        methodScope = methodScope.enclosingMethodScope();
                        if (methodScope != null && methodScope.isConstructorCall) {
                            return NoEnclosingInstanceInConstructorCall;
                        }
                        if (methodScope != null && methodScope.isStatic) {
                            return NoEnclosingInstanceInStaticContext;
                        }
                    }
                    FieldBinding syntheticField3 = ((NestedTypeBinding) enclosingType2).getSyntheticField(enclosingType3, z10);
                    if (syntheticField3 == null) {
                        break;
                    }
                    if (i10 == objArr.length) {
                        Object[] objArr2 = new Object[i10 + 1];
                        System.arraycopy(objArr, 0, objArr2, 0, i10);
                        objArr = objArr2;
                    }
                    objArr[i10] = ((SourceTypeBinding) syntheticField3.declaringClass).addSyntheticMethod(syntheticField3, true, false);
                    i10++;
                    enclosingType2 = enclosingType3;
                }
                if (TypeBinding.equalsEquals(enclosingType2, referenceBinding) || (!z10 && enclosingType2.findSuperTypeOriginatingFrom(referenceBinding) != null)) {
                    return objArr;
                }
            }
            return null;
        }
        if (methodScope.isConstructorCall) {
            return NoEnclosingInstanceInConstructorCall;
        }
        if (methodScope.isStatic) {
            return NoEnclosingInstanceInStaticContext;
        }
        return null;
    }

    public final Binding getBinding(char[][] cArr, InvocationSite invocationSite) {
        int i10;
        int length = cArr.length;
        Binding binding = getBinding(cArr[0], 23, invocationSite, true);
        if (!binding.isValidBinding()) {
            return binding;
        }
        if (binding instanceof PackageBinding) {
            int i11 = 1;
            while (i11 < length) {
                i10 = i11 + 1;
                binding = ((PackageBinding) binding).getTypeOrPackage(cArr[i11], module(), i10 < length);
                if (binding == null) {
                    if (i10 == length) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i10), null, 1);
                    }
                    return new ProblemBinding(CharOperation.subarray(cArr, 0, i10), 1);
                }
                if (!(binding instanceof ReferenceBinding)) {
                    i11 = i10;
                } else {
                    if (!binding.isValidBinding()) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i10), (ReferenceBinding) ((ReferenceBinding) binding).closestMatch(), binding.problemId());
                    }
                    ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                    if (!referenceBinding.canBeSeenBy(this)) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i10), referenceBinding, 2);
                    }
                }
            }
            return binding;
        }
        i10 = 1;
        if (binding instanceof ReferenceBinding) {
            while (i10 < length) {
                ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
                int i12 = i10 + 1;
                char[] cArr2 = cArr[i10];
                FieldBinding findField = findField(referenceBinding2.capture(this, invocationSite.sourceStart(), invocationSite.sourceEnd()), cArr2, invocationSite, true);
                if (findField != null) {
                    if (!findField.isValidBinding()) {
                        return new ProblemFieldBinding(findField, findField.declaringClass, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i12), '.'), findField.problemId());
                    }
                    if (!findField.isStatic()) {
                        return new ProblemFieldBinding(findField, findField.declaringClass, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i12), '.'), 7);
                    }
                    i10 = i12;
                    binding = findField;
                } else {
                    ReferenceBinding findMemberType = findMemberType(cArr2, referenceBinding2);
                    if (findMemberType == null) {
                        return new ProblemBinding(CharOperation.subarray(cArr, 0, i12), referenceBinding2, 1);
                    }
                    if (!findMemberType.isValidBinding()) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i12), (ReferenceBinding) findMemberType.closestMatch(), findMemberType.problemId());
                    }
                    binding = findMemberType;
                    i10 = i12;
                }
            }
            return binding;
        }
        VariableBinding variableBinding = (VariableBinding) binding;
        while (i10 < length) {
            TypeBinding typeBinding = variableBinding.type;
            if (typeBinding == null) {
                return new ProblemFieldBinding(null, null, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i10), '.'), 1);
            }
            TypeBinding capture = typeBinding.capture(this, invocationSite.sourceStart(), invocationSite.sourceEnd());
            int i13 = i10 + 1;
            FieldBinding findField2 = findField(capture, cArr[i10], invocationSite, true);
            if (findField2 == null) {
                return new ProblemFieldBinding(null, capture instanceof ReferenceBinding ? (ReferenceBinding) capture : null, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i13), '.'), 1);
            }
            if (!findField2.isValidBinding()) {
                return findField2;
            }
            variableBinding = findField2;
            i10 = i13;
        }
        return variableBinding;
    }
}
