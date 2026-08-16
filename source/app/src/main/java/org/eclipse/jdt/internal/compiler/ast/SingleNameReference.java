package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class SingleNameReference extends NameReference implements OperatorIds {
    public static final int READ = 0;
    public static final int WRITE = 1;
    public TypeBinding genericCast;
    public boolean isLabel;
    public MethodBinding[] syntheticAccessors;
    public char[] token;

    public SingleNameReference(char[] cArr, long j10) {
        this.token = cArr;
        this.sourceStart = (int) (j10 >>> 32);
        this.sourceEnd = (int) j10;
    }

    @Override
    public FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10) {
        FlowInfo flowInfo2 = flowInfo;
        boolean z11 = (flowInfo2.tagBits & 3) == 0;
        if (z10) {
            int i10 = this.bits & 7;
            if (i10 == 1) {
                FieldBinding fieldBinding = (FieldBinding) this.binding;
                if (fieldBinding.isBlankFinal() && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo2).isDefinitelyAssigned(fieldBinding)) {
                    blockScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
                }
                manageSyntheticAccessIfNecessary(blockScope, flowInfo2, true);
            } else if (i10 == 2) {
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
                if (!flowInfo2.isDefinitelyAssigned(localVariableBinding)) {
                    blockScope.problemReporter().uninitializedLocalVariable(localVariableBinding, this, blockScope);
                }
                int i11 = localVariableBinding.useFlag;
                if (i11 != 1) {
                    if (z11 && (this.implicitConversion & 1024) != 0) {
                        localVariableBinding.useFlag = 1;
                    } else if (i11 <= 0) {
                        localVariableBinding.useFlag = i11 - 1;
                    }
                }
            }
        }
        Expression expression = assignment.expression;
        if (expression != null) {
            flowInfo2 = expression.analyseCode(blockScope, flowContext, flowInfo2).unconditionalInits();
        }
        int i12 = this.bits & 7;
        if (i12 == 1) {
            manageSyntheticAccessIfNecessary(blockScope, flowInfo2, false);
            FieldBinding fieldBinding2 = (FieldBinding) this.binding;
            if (fieldBinding2.isFinal()) {
                if (!z10 && fieldBinding2.isBlankFinal() && blockScope.allowBlankFinalFieldAssignment(fieldBinding2)) {
                    if (flowInfo2.isPotentiallyAssigned(fieldBinding2)) {
                        blockScope.problemReporter().duplicateInitializationOfBlankFinalField(fieldBinding2, this);
                    } else {
                        flowContext.recordSettingFinal(fieldBinding2, this, flowInfo2);
                    }
                    flowInfo2.markAsDefinitelyAssigned(fieldBinding2);
                } else {
                    blockScope.problemReporter().cannotAssignToFinalField(fieldBinding2, this);
                }
            } else if (!z10 && ((fieldBinding2.isNonNull() || fieldBinding2.type.isTypeVariable()) && TypeBinding.equalsEquals(fieldBinding2.declaringClass, blockScope.enclosingReceiverType()))) {
                flowInfo2.markAsDefinitelyAssigned(fieldBinding2);
            }
        } else if (i12 == 2) {
            LocalVariableBinding localVariableBinding2 = (LocalVariableBinding) this.binding;
            boolean isFinal = localVariableBinding2.isFinal();
            if (flowInfo2.isDefinitelyAssigned(localVariableBinding2)) {
                this.bits &= -9;
            } else {
                this.bits |= 8;
            }
            if (flowInfo2.isPotentiallyAssigned(localVariableBinding2) || (this.bits & 524288) != 0) {
                localVariableBinding2.tagBits &= -2049;
                if (!isFinal && (this.bits & 524288) != 0) {
                    blockScope.problemReporter().cannotReferToNonEffectivelyFinalOuterLocal(localVariableBinding2, this);
                }
            }
            if (!isFinal) {
                long j10 = localVariableBinding2.tagBits;
                if ((2048 & j10) != 0 && (j10 & 1024) == 0) {
                    flowContext.recordSettingFinal(localVariableBinding2, this, flowInfo2);
                    flowInfo2.markAsDefinitelyAssigned(localVariableBinding2);
                }
            }
            if (isFinal) {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    blockScope.problemReporter().cannotAssignToFinalOuterLocal(localVariableBinding2, this);
                } else if ((z11 && z10) || !localVariableBinding2.isBlankFinal()) {
                    blockScope.problemReporter().cannotAssignToFinalLocal(localVariableBinding2, this);
                } else if (flowInfo2.isPotentiallyAssigned(localVariableBinding2)) {
                    blockScope.problemReporter().duplicateInitializationOfFinalLocal(localVariableBinding2, this);
                } else if ((this.bits & 524288) != 0) {
                    blockScope.problemReporter().cannotAssignToFinalOuterLocal(localVariableBinding2, this);
                } else {
                    flowContext.recordSettingFinal(localVariableBinding2, this, flowInfo2);
                }
            } else if ((localVariableBinding2.tagBits & 1024) != 0) {
                blockScope.problemReporter().parameterAssignment(localVariableBinding2, this);
            }
            flowInfo2.markAsDefinitelyAssigned(localVariableBinding2);
        }
        manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo2);
        return flowInfo2;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return analyseCode(blockScope, flowContext, flowInfo, true);
    }

    public TypeBinding checkFieldAccess(BlockScope blockScope) {
        int i10;
        FieldBinding fieldBinding = (FieldBinding) this.binding;
        this.constant = fieldBinding.constant(blockScope);
        this.bits = (this.bits & (-8)) | 1;
        MethodScope methodScope = blockScope.methodScope();
        if (fieldBinding.isStatic()) {
            ReferenceBinding referenceBinding = fieldBinding.declaringClass;
            if (referenceBinding.isEnum() && !blockScope.isModuleScope()) {
                SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
                if (this.constant == Constant.NotAConstant && !methodScope.isStatic && ((TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) || TypeBinding.equalsEquals(enclosingSourceType.superclass, referenceBinding)) && methodScope.isInsideInitializerOrConstructor())) {
                    blockScope.problemReporter().enumStaticFieldUsedDuringInitialization(fieldBinding, this);
                }
            }
        } else {
            if (blockScope.compilerOptions().getSeverity(4194304) != 256) {
                blockScope.problemReporter().unqualifiedFieldAccess(this, fieldBinding);
            }
            if (methodScope.isStatic) {
                blockScope.problemReporter().staticFieldAccessToNonStaticVariable(this, fieldBinding);
                return fieldBinding.type;
            }
            blockScope.tagAsAccessingEnclosingInstanceStateOf(fieldBinding.declaringClass, false);
        }
        if (isFieldUseDeprecated(fieldBinding, blockScope, this.bits)) {
            blockScope.problemReporter().deprecatedField(fieldBinding, this);
        }
        if ((this.bits & 8192) == 0 && TypeBinding.equalsEquals(methodScope.enclosingSourceType(), fieldBinding.original().declaringClass) && (i10 = methodScope.lastVisibleFieldID) >= 0 && fieldBinding.f102483id >= i10 && (!fieldBinding.isStatic() || methodScope.isStatic)) {
            blockScope.problemReporter().forwardReference(this, 0, fieldBinding);
            this.bits |= 536870912;
        }
        return fieldBinding.type;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        if (super.checkNPE(blockScope, flowContext, flowInfo, i10) || !blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            return false;
        }
        Binding binding = this.binding;
        if (!(binding instanceof FieldBinding)) {
            return false;
        }
        return checkNullableFieldDereference(blockScope, (FieldBinding) binding, this.sourceEnd + (this.sourceStart << 32), flowContext, i10);
    }

    @Override
    public void computeConversion(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == null || typeBinding2 == null) {
            return;
        }
        Binding binding = this.binding;
        if (binding != null && binding.isValidBinding()) {
            int i10 = this.bits;
            TypeBinding typeBinding3 = (i10 & 1) != 0 ? ((FieldBinding) this.binding).original().type : (i10 & 2) != 0 ? ((LocalVariableBinding) this.binding).type : null;
            if (typeBinding3 != null && typeBinding3.leafComponentType().isTypeVariable()) {
                TypeBinding genericCast = typeBinding3.genericCast(scope.boxing((typeBinding2.isBaseType() || !typeBinding.isBaseType()) ? typeBinding : typeBinding2));
                this.genericCast = genericCast;
                if (genericCast instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) genericCast;
                    if (!referenceBinding.canBeSeenBy(scope)) {
                        scope.problemReporter().invalidType(this, new ProblemReferenceBinding(CharOperation.splitOn('.', referenceBinding.shortReadableName()), referenceBinding, 2));
                    }
                }
            }
        }
        super.computeConversion(scope, typeBinding, typeBinding2);
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
                    singleNameReference.generateCompoundAssignment(blockScope, codeStream, methodBindingArr != null ? methodBindingArr[1] : null, binaryExpression.right, i10, binaryExpression.implicitConversion, z10);
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
                    singleNameReference2.generateCompoundAssignment(blockScope, codeStream, methodBindingArr2 != null ? methodBindingArr2[1] : null, expression, i10, binaryExpression.implicitConversion, z10);
                    if (z10) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                        return;
                    }
                    return;
                }
            }
        }
        int i11 = this.bits & 7;
        if (i11 == 1) {
            int i12 = codeStream.position;
            FieldBinding original = ((FieldBinding) this.binding).original();
            if (!original.isStatic()) {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    generateReceiver(codeStream);
                }
            }
            codeStream.recordPositionsFrom(i12, this.sourceStart);
            assignment.expression.generateCode(blockScope, codeStream, true);
            MethodBinding[] methodBindingArr3 = this.syntheticAccessors;
            fieldStore(blockScope, codeStream, original, methodBindingArr3 == null ? null : methodBindingArr3[1], this.actualReceiverType, true, z10);
            if (z10) {
                codeStream.generateImplicitConversion(assignment.implicitConversion);
                return;
            }
            return;
        }
        if (i11 != 2) {
            return;
        }
        LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
        if (localVariableBinding.resolvedPosition != -1) {
            assignment.expression.generateCode(blockScope, codeStream, true);
            if (localVariableBinding.type.isArrayType()) {
                Expression expression3 = assignment.expression;
                if ((expression3 instanceof CastExpression) && ((CastExpression) expression3).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
                    codeStream.checkcast(localVariableBinding.type);
                }
            }
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
        Expression expression4 = assignment.expression;
        Constant constant = expression4.constant;
        if (constant != Constant.NotAConstant) {
            if (z10) {
                codeStream.generateConstant(constant, assignment.implicitConversion);
                return;
            }
            return;
        }
        expression4.generateCode(blockScope, codeStream, true);
        if (z10) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
            return;
        }
        int i13 = localVariableBinding.type.f102482id;
        if (i13 == 7 || i13 == 8) {
            codeStream.pop2();
        } else {
            codeStream.pop();
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        int i10 = codeStream.position;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            if (z10) {
                codeStream.generateConstant(constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        int i11 = this.bits;
        int i12 = i11 & 7;
        if (i12 == 1) {
            FieldBinding original = ((FieldBinding) this.binding).original();
            Constant constant3 = original.constant();
            if (constant3 != constant2) {
                if (z10) {
                    codeStream.generateConstant(constant3, this.implicitConversion);
                }
                codeStream.recordPositionsFrom(i10, this.sourceStart);
                return;
            }
            if (original.isStatic()) {
                if (!z10 && TypeBinding.equalsEquals(((FieldBinding) this.binding).original().declaringClass, this.actualReceiverType.erasure()) && (this.implicitConversion & 1024) == 0 && this.genericCast == null) {
                    codeStream.recordPositionsFrom(i10, this.sourceStart);
                    return;
                }
                MethodBinding[] methodBindingArr = this.syntheticAccessors;
                if (methodBindingArr == null || (methodBinding2 = methodBindingArr[0]) == null) {
                    codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
                } else {
                    codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
                }
            } else {
                if (!z10 && (this.implicitConversion & 1024) == 0 && this.genericCast == null) {
                    codeStream.recordPositionsFrom(i10, this.sourceStart);
                    return;
                }
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    generateReceiver(codeStream);
                }
                MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
                if (methodBindingArr2 == null || (methodBinding = methodBindingArr2[0]) == null) {
                    codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
                } else {
                    codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
                }
            }
        } else {
            if (i12 != 2) {
                codeStream.recordPositionsFrom(i10, this.sourceStart);
                return;
            }
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            if (localVariableBinding.resolvedPosition == -1) {
                if (z10) {
                    localVariableBinding.useFlag = 1;
                    throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                }
                codeStream.recordPositionsFrom(i10, this.sourceStart);
                return;
            }
            if (!z10 && (this.implicitConversion & 1024) == 0) {
                codeStream.recordPositionsFrom(i10, this.sourceStart);
                return;
            } else if ((i11 & 524288) != 0) {
                checkEffectiveFinality(localVariableBinding, blockScope);
                codeStream.generateOuterAccess(blockScope.getEmulationPath(localVariableBinding), this, localVariableBinding, blockScope);
            } else {
                codeStream.load(localVariableBinding);
            }
        }
        TypeBinding typeBinding = this.genericCast;
        if (typeBinding != null) {
            codeStream.checkcast(typeBinding);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            int i13 = this.implicitConversion;
            boolean z11 = (i13 & 1024) != 0;
            if (z11) {
                codeStream.generateImplicitConversion(i13);
            }
            int i14 = (z11 ? postConversionType(blockScope) : this.resolvedType).f102482id;
            if (i14 == 7 || i14 == 8) {
                codeStream.pop2();
            } else {
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        int i12 = this.bits & 7;
        if (i12 == 1) {
            reportOnlyUselesslyReadPrivateField(blockScope, (FieldBinding) this.binding, z10);
        } else if (i12 == 2) {
            Reference.reportOnlyUselesslyReadLocal(blockScope, (LocalVariableBinding) this.binding, z10);
        }
        MethodBinding[] methodBindingArr = this.syntheticAccessors;
        generateCompoundAssignment(blockScope, codeStream, methodBindingArr == null ? null : methodBindingArr[1], expression, i10, i11, z10);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        MethodBinding methodBinding;
        TypeBinding typeBinding;
        MethodBinding methodBinding2;
        int i10 = this.bits & 7;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            Reference.reportOnlyUselesslyReadLocal(blockScope, localVariableBinding, z10);
            if (localVariableBinding.resolvedPosition == -1) {
                if (z10) {
                    localVariableBinding.useFlag = 1;
                    throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                }
                return;
            }
            if (TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.INT)) {
                if (z10) {
                    codeStream.load(localVariableBinding);
                }
                if (compoundAssignment.operator == 14) {
                    codeStream.iinc(localVariableBinding.resolvedPosition, 1);
                    return;
                } else {
                    codeStream.iinc(localVariableBinding.resolvedPosition, -1);
                    return;
                }
            }
            codeStream.load(localVariableBinding);
            if (z10) {
                int i11 = localVariableBinding.type.f102482id;
                if (i11 == 7 || i11 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
            codeStream.sendOperator(compoundAssignment.operator, this.implicitConversion & 15);
            codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
            codeStream.store(localVariableBinding, false);
            return;
        }
        FieldBinding fieldBinding = (FieldBinding) this.binding;
        reportOnlyUselesslyReadPrivateField(blockScope, fieldBinding, z10);
        FieldBinding original = fieldBinding.original();
        if (original.isStatic()) {
            MethodBinding[] methodBindingArr = this.syntheticAccessors;
            if (methodBindingArr == null || (methodBinding2 = methodBindingArr[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
            }
        } else {
            if ((this.bits & ASTNode.DepthMASK) != 0) {
                ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
            } else {
                codeStream.aload_0();
            }
            codeStream.dup();
            MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
            if (methodBindingArr2 == null || (methodBinding = methodBindingArr2[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
            }
        }
        TypeBinding typeBinding2 = this.genericCast;
        if (typeBinding2 != null) {
            codeStream.checkcast(typeBinding2);
            typeBinding = this.genericCast;
        } else {
            typeBinding = original.type;
        }
        if (z10) {
            if (original.isStatic()) {
                int i12 = typeBinding.f102482id;
                if (i12 == 7 || i12 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            } else {
                int i13 = typeBinding.f102482id;
                if (i13 == 7 || i13 == 8) {
                    codeStream.dup2_x1();
                } else {
                    codeStream.dup_x1();
                }
            }
        }
        codeStream.generateImplicitConversion(this.implicitConversion);
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, this.implicitConversion & 15);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        MethodBinding[] methodBindingArr3 = this.syntheticAccessors;
        fieldStore(blockScope, codeStream, original, methodBindingArr3 != null ? methodBindingArr3[1] : null, this.actualReceiverType, true, false);
    }

    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    @Override
    public char[][] getName() {
        return new char[][]{this.token};
    }

    @Override
    public boolean isEquivalent(Reference reference) {
        char[] cArr;
        if (reference instanceof SingleNameReference) {
            cArr = ((SingleNameReference) reference).token;
        } else {
            if (reference instanceof FieldReference) {
                FieldReference fieldReference = (FieldReference) reference;
                if (fieldReference.receiver.isThis() && !(fieldReference.receiver instanceof QualifiedThisReference)) {
                    cArr = fieldReference.token;
                }
            }
            cArr = null;
        }
        return cArr != null && CharOperation.equals(this.token, cArr);
    }

    @Override
    public LocalVariableBinding localVariableBinding() {
        if ((this.bits & 7) != 2) {
            return null;
        }
        return (LocalVariableBinding) this.binding;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        LocalVariableBinding localVariableBinding;
        int i10 = this.bits;
        if (((i10 & ASTNode.DepthMASK) == 0 && (524288 & i10) == 0) || this.constant != Constant.NotAConstant || (i10 & 7) != 2 || (localVariableBinding = (LocalVariableBinding) this.binding) == null || localVariableBinding.isUninitializedIn(blockScope) || (localVariableBinding.tagBits & 2048) == 0) {
            return;
        }
        int i11 = localVariableBinding.useFlag;
        if (i11 == 1 || i11 == 2) {
            blockScope.emulateOuterAccess(localVariableBinding);
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo, boolean z10) {
        if ((flowInfo.tagBits & 1) == 0 && this.constant == Constant.NotAConstant && (this.bits & 1) != 0) {
            FieldBinding original = ((FieldBinding) this.binding).original();
            if ((this.bits & ASTNode.DepthMASK) != 0) {
                if ((!original.isPrivate() || blockScope.enclosingSourceType().isNestmateOf(original.declaringClass)) && (!original.isProtected() || original.declaringClass.getPackage() == blockScope.enclosingSourceType().getPackage())) {
                    return;
                }
                if (this.syntheticAccessors == null) {
                    this.syntheticAccessors = new MethodBinding[2];
                }
                this.syntheticAccessors[!z10 ? 1 : 0] = ((SourceTypeBinding) blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5)).addSyntheticMethod(original, z10, false);
                blockScope.problemReporter().needToEmulateFieldAccess(original, this, z10);
            }
        }
    }

    @Override
    public VariableBinding nullAnnotatedVariableBinding(boolean z10) {
        int i10 = this.bits & 7;
        if (i10 != 1 && i10 != 2) {
            return null;
        }
        if (z10 || (((VariableBinding) this.binding).tagBits & TagBits.AnnotationNullMASK) != 0) {
            return (VariableBinding) this.binding;
        }
        return null;
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        LocalVariableBinding localVariableBinding = localVariableBinding();
        return localVariableBinding != null ? flowInfo.nullStatus(localVariableBinding) : super.nullStatus(flowInfo, flowContext);
    }

    @Override
    public TypeBinding postConversionType(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        TypeBinding typeBinding2 = this.genericCast;
        if (typeBinding2 != null) {
            typeBinding = typeBinding2;
        }
        int i10 = this.implicitConversion;
        switch ((i10 & 255) >> 4) {
            case 2:
                typeBinding = TypeBinding.CHAR;
                break;
            case 3:
                typeBinding = TypeBinding.BYTE;
                break;
            case 4:
                typeBinding = TypeBinding.SHORT;
                break;
            case 5:
                typeBinding = TypeBinding.BOOLEAN;
                break;
            case 7:
                typeBinding = TypeBinding.LONG;
                break;
            case 8:
                typeBinding = TypeBinding.DOUBLE;
                break;
            case 9:
                typeBinding = TypeBinding.FLOAT;
                break;
            case 10:
                typeBinding = TypeBinding.INT;
                break;
        }
        return (i10 & 512) != 0 ? scope.environment().computeBoxingType(typeBinding) : typeBinding;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(this.token);
        return stringBuffer;
    }

    public TypeBinding reportError(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        Binding binding = this.binding;
        if (binding instanceof ProblemFieldBinding) {
            blockScope.problemReporter().invalidField(this, (FieldBinding) this.binding);
            return null;
        }
        if ((binding instanceof ProblemReferenceBinding) || (binding instanceof MissingTypeBinding)) {
            blockScope.problemReporter().invalidType(this, (TypeBinding) this.binding);
            return null;
        }
        blockScope.problemReporter().unresolvableReference(this, this.binding);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
    
        if (r2 != 7) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00c8  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding checkFieldAccess;
        TypeBinding typeBinding;
        TypeBinding typeBinding2 = this.actualReceiverType;
        if (typeBinding2 != null) {
            this.binding = blockScope.getField(typeBinding2, this.token, this);
        } else {
            this.actualReceiverType = blockScope.enclosingSourceType();
            this.binding = blockScope.getBinding(this.token, this.bits & 7, (InvocationSite) this, true);
        }
        if (this.binding.isValidBinding()) {
            int i10 = this.bits;
            int i11 = i10 & 7;
            if (i11 != 3) {
                if (i11 != 4) {
                }
                this.constant = Constant.NotAConstant;
                typeBinding = (TypeBinding) this.binding;
                if (isTypeUseDeprecated(typeBinding, blockScope)) {
                    blockScope.problemReporter().deprecatedType(typeBinding, this);
                }
                TypeBinding convertToRawType = blockScope.environment().convertToRawType(typeBinding, false);
                this.resolvedType = convertToRawType;
                return convertToRawType;
            }
            Binding binding = this.binding;
            if (!(binding instanceof VariableBinding)) {
                this.bits = (i10 & (-8)) | 4;
                this.constant = Constant.NotAConstant;
                typeBinding = (TypeBinding) this.binding;
                if (isTypeUseDeprecated(typeBinding, blockScope)) {
                }
                TypeBinding convertToRawType2 = blockScope.environment().convertToRawType(typeBinding, false);
                this.resolvedType = convertToRawType2;
                return convertToRawType2;
            }
            VariableBinding variableBinding = (VariableBinding) binding;
            if (binding instanceof LocalVariableBinding) {
                this.bits = (i10 & (-8)) | 2;
                ((LocalVariableBinding) binding).markReferenced();
                if (!variableBinding.isFinal() && (this.bits & 524288) != 0 && blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8) {
                    blockScope.problemReporter().cannotReferToNonFinalOuterLocal((LocalVariableBinding) variableBinding, this);
                }
                checkFieldAccess = variableBinding.type;
                this.constant = (this.bits & 8192) == 0 ? variableBinding.constant(blockScope) : Constant.NotAConstant;
            } else {
                checkFieldAccess = checkFieldAccess(blockScope);
            }
            if (checkFieldAccess != null) {
                if ((this.bits & 8192) == 0) {
                    checkFieldAccess = checkFieldAccess.capture(blockScope, this.sourceStart, this.sourceEnd);
                }
                this.resolvedType = checkFieldAccess;
                if ((checkFieldAccess.tagBits & 128) != 0) {
                    if ((this.bits & 2) != 0) {
                        return null;
                    }
                    blockScope.problemReporter().invalidType(this, checkFieldAccess);
                    return null;
                }
            }
            return checkFieldAccess;
        }
        TypeBinding reportError = reportError(blockScope);
        this.resolvedType = reportError;
        return reportError;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public String unboundReferenceErrorName() {
        return new String(this.token);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        int i10 = this.bits & 7;
        if (i10 == 1) {
            if (z10 || blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
                manageSyntheticAccessIfNecessary(blockScope, flowInfo, true);
            }
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
        if (z10) {
            manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
        }
        return flowInfo;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }

    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, MethodBinding methodBinding, Expression expression, int i10, int i11, boolean z10) {
        MethodBinding methodBinding2;
        MethodBinding methodBinding3;
        int i12 = this.bits & 7;
        if (i12 == 1) {
            FieldBinding original = ((FieldBinding) this.binding).original();
            if (original.isStatic()) {
                MethodBinding[] methodBindingArr = this.syntheticAccessors;
                if (methodBindingArr != null && (methodBinding3 = methodBindingArr[0]) != null) {
                    codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding3, null);
                } else {
                    codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
                }
            } else {
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    codeStream.aload_0();
                }
                codeStream.dup();
                MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
                if (methodBindingArr2 != null && (methodBinding2 = methodBindingArr2[0]) != null) {
                    codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
                } else {
                    codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass((Scope) blockScope, original, this.actualReceiverType, true));
                }
            }
        } else if (i12 == 2) {
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            int i13 = localVariableBinding.type.f102482id;
            if (i13 == 10) {
                Constant constant = expression.constant;
                if (localVariableBinding.resolvedPosition == -1) {
                    if (!z10) {
                        if (constant == Constant.NotAConstant) {
                            expression.generateCode(blockScope, codeStream, false);
                            return;
                        }
                        return;
                    }
                    localVariableBinding.useFlag = 1;
                    throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
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
                if (!z10) {
                    if (constant2 == Constant.NotAConstant) {
                        expression.generateCode(blockScope, codeStream, false);
                        return;
                    }
                    return;
                }
                localVariableBinding.useFlag = 1;
                throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
            }
            codeStream.load(localVariableBinding);
        }
        int i15 = (this.implicitConversion & 255) >> 4;
        if (i15 != 0 && i15 != 1 && i15 != 11) {
            TypeBinding typeBinding = this.genericCast;
            if (typeBinding != null) {
                codeStream.checkcast(typeBinding);
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i15);
            codeStream.generateImplicitConversion(i11);
        } else {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        }
        int i16 = this.bits & 7;
        if (i16 == 1) {
            fieldStore(blockScope, codeStream, ((FieldBinding) this.binding).original(), methodBinding, this.actualReceiverType, true, z10);
            return;
        }
        if (i16 != 2) {
            return;
        }
        LocalVariableBinding localVariableBinding2 = (LocalVariableBinding) this.binding;
        if (z10) {
            int i17 = localVariableBinding2.type.f102482id;
            if (i17 != 7 && i17 != 8) {
                codeStream.dup();
            } else {
                codeStream.dup2();
            }
        }
        codeStream.store(localVariableBinding2, false);
    }
}
