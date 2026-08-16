package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class Reference extends Expression {
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void reportOnlyUselesslyReadLocal(BlockScope blockScope, LocalVariableBinding localVariableBinding, boolean z10) {
        int i10;
        boolean z11;
        LocalDeclaration localDeclaration = localVariableBinding.declaration;
        if (localDeclaration == null || (localDeclaration.bits & 1073741824) == 0 || (i10 = localVariableBinding.useFlag) >= 1) {
            return;
        }
        if (z10) {
            localVariableBinding.useFlag = 1;
            return;
        }
        int i11 = i10 + 1;
        localVariableBinding.useFlag = i11;
        if (i11 != 0) {
            return;
        }
        if (!(localDeclaration instanceof Argument)) {
            blockScope.problemReporter().unusedLocalVariable(localVariableBinding.declaration);
            return;
        }
        MethodScope methodScope = blockScope.methodScope();
        if (methodScope == null || methodScope.isLambdaScope()) {
            return;
        }
        MethodBinding methodBinding = ((AbstractMethodDeclaration) methodScope.referenceContext()).binding;
        boolean z12 = !methodBinding.isMain();
        if (!methodBinding.isImplementing()) {
            if (methodBinding.isOverriding()) {
                z11 = blockScope.compilerOptions().reportUnusedParameterWhenOverridingConcrete;
            }
            if (z12) {
                return;
            }
            blockScope.problemReporter().unusedArgument(localVariableBinding.declaration);
            return;
        }
        z11 = blockScope.compilerOptions().reportUnusedParameterWhenImplementingAbstract;
        z12 &= z11;
        if (z12) {
        }
    }

    public abstract FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10);

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        if (flowContext.isNullcheckedFieldAccess(this)) {
            return true;
        }
        return super.checkNPE(blockScope, flowContext, flowInfo, i10);
    }

    public boolean checkNullableFieldDereference(Scope scope, FieldBinding fieldBinding, long j10, FlowContext flowContext, int i10) {
        if (fieldBinding == null) {
            return false;
        }
        if (i10 > 0 && scope.compilerOptions().enableSyntacticNullAnalysisForFields) {
            flowContext.recordNullCheckedFieldReference(this, i10);
        }
        TypeBinding typeBinding = fieldBinding.type;
        if ((typeBinding.tagBits & 36028797018963968L) != 0) {
            scope.problemReporter().dereferencingNullableExpression(j10, scope.environment());
            return true;
        }
        if (typeBinding.isFreeTypeVariable()) {
            scope.problemReporter().fieldFreeTypeVariableReference(fieldBinding, j10);
            return true;
        }
        if ((fieldBinding.tagBits & 36028797018963968L) == 0) {
            return false;
        }
        scope.problemReporter().nullableFieldDereference(fieldBinding, j10);
        return true;
    }

    public FieldBinding fieldBinding() {
        return null;
    }

    public void fieldStore(Scope scope, CodeStream codeStream, FieldBinding fieldBinding, MethodBinding methodBinding, TypeBinding typeBinding, boolean z10, boolean z11) {
        int i10 = codeStream.position;
        if (fieldBinding.isStatic()) {
            if (z11) {
                int i11 = fieldBinding.type.f102482id;
                if (i11 == 7 || i11 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            }
            if (methodBinding == null) {
                codeStream.fieldAccess(Opcodes.OPC_putstatic, fieldBinding, CodeStream.getConstantPoolDeclaringClass(scope, fieldBinding, typeBinding, z10));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
            }
        } else {
            if (z11) {
                int i12 = fieldBinding.type.f102482id;
                if (i12 == 7 || i12 == 8) {
                    codeStream.dup2_x1();
                } else {
                    codeStream.dup_x1();
                }
            }
            if (methodBinding == null) {
                codeStream.fieldAccess(Opcodes.OPC_putfield, fieldBinding, CodeStream.getConstantPoolDeclaringClass(scope, fieldBinding, typeBinding, z10));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public abstract void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10);

    public abstract void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10);

    public abstract void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10);

    public boolean isEquivalent(Reference reference) {
        return false;
    }

    public FieldBinding lastFieldBinding() {
        return null;
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        FieldBinding lastFieldBinding = lastFieldBinding();
        if (lastFieldBinding != null) {
            if (lastFieldBinding.isNonNull() || flowContext.isNullcheckedFieldAccess(this)) {
                return 4;
            }
            if (lastFieldBinding.isNullable()) {
                return 16;
            }
            if (lastFieldBinding.type.isFreeTypeVariable()) {
                return 48;
            }
        }
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return FlowInfo.tagBitsToNullStatus(typeBinding.tagBits);
        }
        return 1;
    }

    public void reportOnlyUselesslyReadPrivateField(BlockScope blockScope, FieldBinding fieldBinding, boolean z10) {
        if (z10) {
            fieldBinding.compoundUseFlag = 0;
            fieldBinding.modifiers |= 134217728;
        } else if (fieldBinding.isUsedOnlyInCompound()) {
            int i10 = fieldBinding.compoundUseFlag - 1;
            fieldBinding.compoundUseFlag = i10;
            if (i10 == 0 && fieldBinding.isOrEnclosedByPrivateType() && (this.implicitConversion & 1024) == 0) {
                blockScope.problemReporter().unusedPrivateField(fieldBinding.sourceField());
            }
        }
    }
}
