package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CodeSnippetFieldReference extends FieldReference implements ProblemReasons, EvaluationConstants {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;

    public CodeSnippetFieldReference(char[] cArr, long j10, EvaluationContext evaluationContext) {
        super(cArr, j10);
        this.evaluationContext = evaluationContext;
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
        FieldBinding original = this.binding.original();
        if (original.canBeSeenBy(this.actualReceiverType, this, blockScope)) {
            this.receiver.generateCode(blockScope, codeStream, !original.isStatic());
            assignment.expression.generateCode(blockScope, codeStream, true);
            fieldStore(blockScope, codeStream, original, null, this.actualReceiverType, this.receiver.isImplicitThis(), z10);
        } else {
            codeStream.generateEmulationForField(original);
            this.receiver.generateCode(blockScope, codeStream, !original.isStatic());
            if (original.isStatic()) {
                codeStream.aconst_null();
            }
            assignment.expression.generateCode(blockScope, codeStream, true);
            if (z10) {
                int i10 = original.type.f102482id;
                if (i10 == 7 || i10 == 8) {
                    codeStream.dup2_x2();
                } else {
                    codeStream.dup_x2();
                }
            }
            codeStream.generateEmulatedWriteAccessForField(original);
        }
        if (z10) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant == constant2) {
            FieldBinding original = this.binding.original();
            boolean isStatic = original.isStatic();
            this.receiver.generateCode(blockScope, codeStream, !isStatic);
            if (z10) {
                Constant constant3 = original.constant();
                if (constant3 == constant2) {
                    if (original.declaringClass == null) {
                        codeStream.arraylength();
                    } else if (original.canBeSeenBy(this.actualReceiverType, this, blockScope)) {
                        TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis());
                        if (isStatic) {
                            codeStream.fieldAccess(Opcodes.OPC_getstatic, original, constantPoolDeclaringClass);
                        } else {
                            codeStream.fieldAccess(Opcodes.OPC_getfield, original, constantPoolDeclaringClass);
                        }
                    } else {
                        if (isStatic) {
                            codeStream.aconst_null();
                        }
                        codeStream.generateEmulatedReadAccessForField(original);
                    }
                    codeStream.generateImplicitConversion(this.implicitConversion);
                } else {
                    if (!isStatic) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                    codeStream.generateConstant(constant3, this.implicitConversion);
                }
            } else if (!isStatic) {
                codeStream.invokeObjectGetClass();
                codeStream.pop();
            }
        } else if (z10) {
            codeStream.generateConstant(constant, this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        FieldBinding original = this.binding.original();
        if (original.canBeSeenBy(this.actualReceiverType, this, blockScope)) {
            Expression expression2 = this.receiver;
            boolean isStatic = original.isStatic();
            expression2.generateCode(blockScope, codeStream, !isStatic);
            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis());
            if (isStatic) {
                codeStream.fieldAccess(Opcodes.OPC_getstatic, original, constantPoolDeclaringClass);
            } else {
                codeStream.dup();
                codeStream.fieldAccess(Opcodes.OPC_getfield, original, constantPoolDeclaringClass);
            }
            int i12 = this.implicitConversion;
            int i13 = (i12 & 255) >> 4;
            if (i13 == 0 || i13 == 1 || i13 == 11) {
                codeStream.generateStringConcatenationAppend(blockScope, null, expression);
            } else {
                codeStream.generateImplicitConversion(i12);
                if (expression == IntLiteral.One) {
                    codeStream.generateConstant(expression.constant, this.implicitConversion);
                } else {
                    expression.generateCode(blockScope, codeStream, true);
                }
                codeStream.sendOperator(i10, i13);
                codeStream.generateImplicitConversion(i11);
            }
            fieldStore(blockScope, codeStream, original, null, this.actualReceiverType, this.receiver.isImplicitThis(), z10);
            return;
        }
        Expression expression3 = this.receiver;
        boolean isStatic2 = original.isStatic();
        expression3.generateCode(blockScope, codeStream, !isStatic2);
        if (isStatic2) {
            codeStream.generateEmulationForField(original);
            codeStream.aconst_null();
            codeStream.aconst_null();
            codeStream.generateEmulatedReadAccessForField(original);
        } else {
            codeStream.generateEmulationForField(this.binding);
            this.receiver.generateCode(blockScope, codeStream, !isStatic2);
            codeStream.dup();
            codeStream.generateEmulatedReadAccessForField(original);
        }
        int i14 = this.implicitConversion;
        int i15 = (i14 & 255) >> 4;
        if (i15 == 11) {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        } else {
            codeStream.generateImplicitConversion(i14);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i15);
            codeStream.generateImplicitConversion(i11);
        }
        if (z10) {
            if (TypeBinding.equalsEquals(original.type, TypeBinding.LONG) || TypeBinding.equalsEquals(original.type, TypeBinding.DOUBLE)) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateEmulatedWriteAccessForField(original);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        FieldBinding original = this.binding.original();
        if (original.canBeSeenBy(this.actualReceiverType, this, blockScope)) {
            super.generatePostIncrement(blockScope, codeStream, compoundAssignment, z10);
            return;
        }
        Expression expression = this.receiver;
        boolean isStatic = original.isStatic();
        expression.generateCode(blockScope, codeStream, !isStatic);
        if (isStatic) {
            codeStream.aconst_null();
        }
        codeStream.dup();
        codeStream.generateEmulatedReadAccessForField(original);
        int i10 = original.type.f102482id;
        if (i10 == 7 || i10 == 8) {
            if (z10) {
                codeStream.dup2_x1();
            }
            codeStream.dup2_x1();
            codeStream.pop2();
        } else {
            if (z10) {
                codeStream.dup_x1();
            }
            codeStream.dup_x1();
            codeStream.pop();
        }
        codeStream.generateEmulationForField(original);
        codeStream.swap();
        if (i10 == 7 || i10 == 8) {
            codeStream.dup2_x2();
        } else {
            codeStream.dup2_x1();
        }
        codeStream.pop2();
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, original.type.f102482id);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        codeStream.generateEmulatedWriteAccessForField(original);
    }

    @Override
    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo, boolean z10) {
        int i10 = flowInfo.tagBits;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        boolean z10;
        TypeBinding resolveType = this.receiver.resolveType(blockScope);
        this.actualReceiverType = resolveType;
        if (resolveType == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        FieldBinding field = blockScope.getField(resolveType, this.token, this);
        this.binding = field;
        if (!field.isValidBinding()) {
            FieldBinding fieldBinding = this.binding;
            if ((fieldBinding instanceof ProblemFieldBinding) && ((ProblemFieldBinding) fieldBinding).problemId() == 2) {
                if (this.evaluationContext.declaringTypeName == null) {
                    this.constant = Constant.NotAConstant;
                    blockScope.problemReporter().invalidField(this, this.actualReceiverType);
                    return null;
                }
                FieldBinding field2 = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
                this.delegateThis = field2;
                if (field2 == null) {
                    this.constant = Constant.NotAConstant;
                    blockScope.problemReporter().invalidField(this, this.actualReceiverType);
                    return null;
                }
                this.actualReceiverType = field2.type;
                this.binding = new CodeSnippetScope(blockScope).getFieldForCodeSnippet(this.delegateThis.type, this.token, this);
                z10 = true;
                if (this.binding.isValidBinding()) {
                    this.constant = Constant.NotAConstant;
                    if (z10) {
                        this.binding = field;
                    }
                    blockScope.problemReporter().invalidField(this, this.actualReceiverType);
                    return null;
                }
                if (isFieldUseDeprecated(this.binding, blockScope, this.bits)) {
                    blockScope.problemReporter().deprecatedField(this.binding, this);
                }
                this.constant = this.receiver.isImplicitThis() ? this.binding.constant(blockScope) : Constant.NotAConstant;
                if (!this.receiver.isThis()) {
                    this.constant = Constant.NotAConstant;
                }
                TypeBinding typeBinding = this.binding.type;
                this.resolvedType = typeBinding;
                return typeBinding;
            }
        }
        z10 = false;
        if (this.binding.isValidBinding()) {
        }
    }
}
