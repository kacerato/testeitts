package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class CodeSnippetSingleNameReference extends SingleNameReference implements EvaluationConstants, ProblemReasons {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;

    public CodeSnippetSingleNameReference(char[] cArr, long j10, EvaluationContext evaluationContext) {
        super(cArr, j10);
        this.evaluationContext = evaluationContext;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        int i10 = this.bits & 7;
        if (i10 == 1) {
            FieldBinding fieldBinding = (FieldBinding) this.binding;
            if (fieldBinding.isBlankFinal() && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo).isDefinitelyAssigned(fieldBinding)) {
                blockScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
            }
        } else if (i10 == 2) {
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            if (!flowInfo.isDefinitelyAssigned(localVariableBinding)) {
                blockScope.problemReporter().uninitializedLocalVariable(localVariableBinding, this, blockScope);
            }
            if ((flowInfo.tagBits & 3) == 0) {
                localVariableBinding.useFlag = 1;
            } else if (localVariableBinding.useFlag == 0) {
                localVariableBinding.useFlag = 2;
            }
        }
        return flowInfo;
    }

    @Override
    public TypeBinding checkFieldAccess(BlockScope blockScope) {
        if (this.delegateThis == null) {
            return super.checkFieldAccess(blockScope);
        }
        FieldBinding fieldBinding = (FieldBinding) this.binding;
        this.bits = (this.bits & (-8)) | 1;
        if (!fieldBinding.isStatic() && this.evaluationContext.isStatic) {
            blockScope.problemReporter().staticFieldAccessToNonStaticVariable(this, fieldBinding);
            this.constant = Constant.NotAConstant;
            return null;
        }
        this.constant = fieldBinding.constant(blockScope);
        if (isFieldUseDeprecated(fieldBinding, blockScope, this.bits)) {
            blockScope.problemReporter().deprecatedField(fieldBinding, this);
        }
        return fieldBinding.type;
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
        if (assignment.expression.isCompactableOperation()) {
            BinaryExpression binaryExpression = (BinaryExpression) assignment.expression;
            int i10 = (binaryExpression.bits & ASTNode.OperatorMASK) >> 6;
            Expression expression = binaryExpression.left;
            if (expression instanceof SingleNameReference) {
                SingleNameReference singleNameReference = (SingleNameReference) expression;
                if (singleNameReference.binding == this.binding) {
                    MethodBinding[] methodBindingArr = this.syntheticAccessors;
                    singleNameReference.generateCompoundAssignment(blockScope, codeStream, methodBindingArr == null ? null : methodBindingArr[1], binaryExpression.right, i10, binaryExpression.implicitConversion, z10);
                    if (z10) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                        return;
                    }
                    return;
                }
            }
            Expression expression2 = binaryExpression.right;
            if ((expression2 instanceof SingleNameReference) && (i10 == 14 || i10 == 15)) {
                SingleNameReference singleNameReference2 = (SingleNameReference) expression2;
                if (singleNameReference2.binding == this.binding && expression.constant != Constant.NotAConstant && ((expression.implicitConversion & 255) >> 4) != 11 && ((expression2.implicitConversion & 255) >> 4) != 11) {
                    MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
                    singleNameReference2.generateCompoundAssignment(blockScope, codeStream, methodBindingArr2 == null ? null : methodBindingArr2[1], expression, i10, binaryExpression.implicitConversion, z10);
                    if (z10) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                        return;
                    }
                    return;
                }
            }
        }
        int i11 = this.bits & 7;
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            if (localVariableBinding.resolvedPosition != -1) {
                assignment.expression.generateCode(blockScope, codeStream, true);
                codeStream.store(localVariableBinding, z10);
                if ((this.bits & 8) != 0) {
                    localVariableBinding.recordInitializationStartPC(codeStream.position);
                }
                if (z10) {
                    codeStream.generateImplicitConversion(assignment.implicitConversion);
                    return;
                }
                return;
            }
            Expression expression3 = assignment.expression;
            Constant constant = expression3.constant;
            if (constant != Constant.NotAConstant) {
                if (z10) {
                    codeStream.generateConstant(constant, assignment.implicitConversion);
                    return;
                }
                return;
            }
            expression3.generateCode(blockScope, codeStream, true);
            if (z10) {
                codeStream.generateImplicitConversion(assignment.implicitConversion);
                return;
            } else if (TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.LONG) || TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.DOUBLE)) {
                codeStream.pop2();
                return;
            } else {
                codeStream.pop();
                return;
            }
        }
        FieldBinding original = ((FieldBinding) this.binding).original();
        if (original.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
            if (!original.isStatic()) {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    generateReceiver(codeStream);
                }
            }
            assignment.expression.generateCode(blockScope, codeStream, true);
            fieldStore(blockScope, codeStream, original, null, this.actualReceiverType, this.delegateThis == null, z10);
            if (z10) {
                codeStream.generateImplicitConversion(assignment.implicitConversion);
                return;
            }
            return;
        }
        codeStream.generateEmulationForField(original);
        if (original.isStatic()) {
            codeStream.aconst_null();
        } else if ((this.bits & ASTNode.DepthMASK) != 0) {
            blockScope.problemReporter().needImplementation(this);
        } else {
            generateReceiver(codeStream);
        }
        assignment.expression.generateCode(blockScope, codeStream, true);
        if (z10) {
            if (TypeBinding.equalsEquals(original.type, TypeBinding.LONG) || TypeBinding.equalsEquals(original.type, TypeBinding.DOUBLE)) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateEmulatedWriteAccessForField(original);
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
            int i11 = this.bits;
            int i12 = i11 & 7;
            if (i12 != 1) {
                if (i12 == 2) {
                    LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
                    if (localVariableBinding.resolvedPosition == -1) {
                        if (z10) {
                            localVariableBinding.useFlag = 1;
                            throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                        }
                        codeStream.recordPositionsFrom(i10, this.sourceStart);
                        return;
                    }
                    if (z10) {
                        if ((524288 & i11) != 0) {
                            checkEffectiveFinality(localVariableBinding, blockScope);
                            codeStream.generateOuterAccess(blockScope.getEmulationPath(localVariableBinding), this, localVariableBinding, blockScope);
                        } else {
                            codeStream.load(localVariableBinding);
                        }
                        codeStream.generateImplicitConversion(this.implicitConversion);
                    }
                }
            } else if (z10) {
                FieldBinding original = ((FieldBinding) this.binding).original();
                Constant constant3 = original.constant();
                if (constant3 == constant2) {
                    if (original.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
                        FieldBinding fieldBinding = this.delegateThis;
                        TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, fieldBinding != null ? fieldBinding.type : this.actualReceiverType, true);
                        if (original.isStatic()) {
                            codeStream.fieldAccess(Opcodes.OPC_getstatic, original, constantPoolDeclaringClass);
                        } else {
                            if ((this.bits & ASTNode.DepthMASK) != 0) {
                                ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                                codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                            } else {
                                generateReceiver(codeStream);
                            }
                            codeStream.fieldAccess(Opcodes.OPC_getfield, original, constantPoolDeclaringClass);
                        }
                    } else {
                        if (original.isStatic()) {
                            codeStream.aconst_null();
                        } else if ((this.bits & ASTNode.DepthMASK) != 0) {
                            blockScope.problemReporter().needImplementation(this);
                        } else {
                            generateReceiver(codeStream);
                        }
                        codeStream.generateEmulatedReadAccessForField(original);
                    }
                    TypeBinding typeBinding = this.genericCast;
                    if (typeBinding != null) {
                        codeStream.checkcast(typeBinding);
                    }
                    codeStream.generateImplicitConversion(this.implicitConversion);
                } else {
                    codeStream.generateConstant(constant3, this.implicitConversion);
                }
            }
        } else if (z10) {
            codeStream.generateConstant(constant, this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, MethodBinding methodBinding, Expression expression, int i10, int i11, boolean z10) {
        int i12 = this.bits & 7;
        if (i12 == 1) {
            FieldBinding original = ((FieldBinding) this.binding).original();
            if (original.isStatic()) {
                if (original.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
                    FieldBinding fieldBinding = this.delegateThis;
                    codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, fieldBinding != null ? fieldBinding.type : this.actualReceiverType, true));
                } else {
                    codeStream.generateEmulationForField(original);
                    codeStream.aconst_null();
                    codeStream.aconst_null();
                    codeStream.generateEmulatedReadAccessForField(original);
                }
            } else if (original.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    generateReceiver(codeStream);
                }
                codeStream.dup();
                FieldBinding fieldBinding2 = this.delegateThis;
                codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, fieldBinding2 != null ? fieldBinding2.type : this.actualReceiverType, true));
            } else {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    blockScope.problemReporter().needImplementation(this);
                }
                codeStream.generateEmulationForField(original);
                generateReceiver(codeStream);
                codeStream.dup();
                codeStream.generateEmulatedReadAccessForField(original);
            }
        } else if (i12 == 2) {
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            int i13 = localVariableBinding.type.f102482id;
            if (i13 == 10) {
                Constant constant = expression.constant;
                if (localVariableBinding.resolvedPosition == -1) {
                    if (z10) {
                        localVariableBinding.useFlag = 1;
                        throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                    }
                    if (constant == Constant.NotAConstant) {
                        expression.generateCode(blockScope, codeStream, false);
                        return;
                    }
                    return;
                }
                if (constant != Constant.NotAConstant && constant.typeID() != 9 && constant.typeID() != 8) {
                    if (i10 == 13) {
                        int i14 = -constant.intValue();
                        if (i14 == ((short) i14)) {
                            codeStream.iinc(localVariableBinding.resolvedPosition, i14);
                            if (z10) {
                                codeStream.load(localVariableBinding);
                                return;
                            }
                            return;
                        }
                    } else if (i10 == 14) {
                        int intValue = constant.intValue();
                        if (intValue == ((short) intValue)) {
                            codeStream.iinc(localVariableBinding.resolvedPosition, intValue);
                            if (z10) {
                                codeStream.load(localVariableBinding);
                                return;
                            }
                            return;
                        }
                    }
                }
            } else if (i13 == 11) {
                codeStream.generateStringConcatenationAppend(blockScope, this, expression);
                if (z10) {
                    codeStream.dup();
                }
                codeStream.store(localVariableBinding, false);
                return;
            }
            if (localVariableBinding.resolvedPosition == -1) {
                Constant constant2 = expression.constant;
                if (z10) {
                    localVariableBinding.useFlag = 1;
                    throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                }
                if (constant2 == Constant.NotAConstant) {
                    expression.generateCode(blockScope, codeStream, false);
                    return;
                }
                return;
            }
            codeStream.load(localVariableBinding);
        }
        int i15 = this.implicitConversion;
        int i16 = (i15 & 255) >> 4;
        if (i16 == 0 || i16 == 1 || i16 == 11) {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        } else {
            codeStream.generateImplicitConversion(i15);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i16);
            codeStream.generateImplicitConversion(i11);
        }
        int i17 = this.bits & 7;
        if (i17 != 1) {
            if (i17 != 2) {
                return;
            }
            LocalVariableBinding localVariableBinding2 = (LocalVariableBinding) this.binding;
            if (z10) {
                int i18 = localVariableBinding2.type.f102482id;
                if (i18 == 7 || i18 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            }
            codeStream.store(localVariableBinding2, false);
            return;
        }
        FieldBinding original2 = ((FieldBinding) this.binding).original();
        if (original2.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
            fieldStore(blockScope, codeStream, original2, methodBinding, this.actualReceiverType, this.delegateThis == null, z10);
            return;
        }
        if (z10) {
            int i19 = original2.type.f102482id;
            if (i19 == 7 || i19 == 8) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateEmulatedWriteAccessForField(original2);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        int i10 = this.bits & 7;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            super.generatePostIncrement(blockScope, codeStream, compoundAssignment, z10);
            return;
        }
        FieldBinding original = ((FieldBinding) this.binding).original();
        if (original.canBeSeenBy(getReceiverType(blockScope), this, blockScope)) {
            super.generatePostIncrement(blockScope, codeStream, compoundAssignment, z10);
            return;
        }
        if (original.isStatic()) {
            codeStream.aconst_null();
        } else if ((this.bits & ASTNode.DepthMASK) != 0) {
            blockScope.problemReporter().needImplementation(this);
        } else {
            generateReceiver(codeStream);
        }
        codeStream.generateEmulatedReadAccessForField(original);
        if (z10) {
            int i11 = original.type.f102482id;
            if (i11 == 7 || i11 == 8) {
                codeStream.dup2();
            } else {
                codeStream.dup();
            }
        }
        codeStream.generateEmulationForField(original);
        int i12 = original.type.f102482id;
        if (i12 == 7 || i12 == 8) {
            codeStream.dup_x2();
            codeStream.pop();
            if (original.isStatic()) {
                codeStream.aconst_null();
            } else {
                generateReceiver(codeStream);
            }
            codeStream.dup_x2();
            codeStream.pop();
        } else {
            codeStream.dup_x1();
            codeStream.pop();
            if (original.isStatic()) {
                codeStream.aconst_null();
            } else {
                generateReceiver(codeStream);
            }
            codeStream.dup_x1();
            codeStream.pop();
        }
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, original.type.f102482id);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        codeStream.generateEmulatedWriteAccessForField(original);
    }

    @Override
    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
        FieldBinding fieldBinding = this.delegateThis;
        if (fieldBinding != null) {
            codeStream.fieldAccess(Opcodes.OPC_getfield, fieldBinding, null);
        }
    }

    public TypeBinding getReceiverType(BlockScope blockScope) {
        Scope scope = blockScope.parent;
        while (scope.kind != 3) {
            scope = scope.parent;
        }
        return ((ClassScope) scope).referenceContext.binding;
    }

    @Override
    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo, boolean z10) {
        if (this.delegateThis == null) {
            super.manageSyntheticAccessIfNecessary(blockScope, flowInfo, z10);
            return;
        }
        if ((flowInfo.tagBits & 1) == 0 && this.constant == Constant.NotAConstant) {
            Binding binding = this.binding;
            if (binding instanceof ParameterizedFieldBinding) {
                ParameterizedFieldBinding parameterizedFieldBinding = (ParameterizedFieldBinding) binding;
                TypeBinding typeBinding = parameterizedFieldBinding.originalField.type;
                if ((typeBinding.tagBits & TagBits.HasTypeVariable) != 0) {
                    this.genericCast = typeBinding.genericCast(blockScope.boxing(parameterizedFieldBinding.type));
                }
            }
        }
    }

    @Override
    public TypeBinding reportError(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        Binding binding = this.binding;
        if ((binding instanceof ProblemFieldBinding) && ((ProblemFieldBinding) binding).problemId() == 1 && this.evaluationContext.declaringTypeName != null) {
            FieldBinding field = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
            this.delegateThis = field;
            if (field != null) {
                TypeBinding typeBinding = field.type;
                this.actualReceiverType = typeBinding;
                FieldBinding field2 = blockScope.getField(typeBinding, this.token, this);
                this.binding = field2;
                return !field2.isValidBinding() ? super.reportError(blockScope) : checkFieldAccess(blockScope);
            }
        }
        Binding binding2 = this.binding;
        if ((binding2 instanceof ProblemBinding) && ((ProblemBinding) binding2).problemId() == 1 && this.evaluationContext.declaringTypeName != null) {
            FieldBinding field3 = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
            this.delegateThis = field3;
            if (field3 != null) {
                TypeBinding typeBinding2 = field3.type;
                this.actualReceiverType = typeBinding2;
                FieldBinding field4 = blockScope.getField(typeBinding2, this.token, this);
                if (field4.isValidBinding()) {
                    this.binding = field4;
                    return checkFieldAccess(blockScope);
                }
                if (((ProblemFieldBinding) field4).problemId() != 2) {
                    return super.reportError(blockScope);
                }
                this.binding = new CodeSnippetScope(blockScope).getFieldForCodeSnippet(this.delegateThis.type, this.token, this);
                return checkFieldAccess(blockScope);
            }
        }
        return super.reportError(blockScope);
    }
}
