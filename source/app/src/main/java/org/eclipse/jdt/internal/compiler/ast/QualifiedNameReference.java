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
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class QualifiedNameReference extends NameReference {
    public TypeBinding genericCast;
    public int indexOfFirstFieldBinding;
    public FieldBinding[] otherBindings;
    int[] otherDepths;
    public TypeBinding[] otherGenericCasts;
    public long[] sourcePositions;
    public SyntheticMethodBinding[] syntheticReadAccessors;
    public SyntheticMethodBinding syntheticWriteAccessor;
    public char[][] tokens;

    public QualifiedNameReference(char[][] cArr, long[] jArr, int i10, int i11) {
        this.tokens = cArr;
        this.sourcePositions = jArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    private void checkInternalNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        LocalVariableBinding localVariableBinding;
        int i10 = this.bits;
        if ((i10 & 7) == 2 && (localVariableBinding = (LocalVariableBinding) this.binding) != null) {
            TypeBinding typeBinding = localVariableBinding.type;
            if ((typeBinding.tagBits & 2) == 0 && (z10 || typeBinding.f102482id != 11)) {
                if ((131072 & i10) == 0) {
                    flowContext.recordUsingNullReference(blockScope, localVariableBinding, this, 3, flowInfo);
                }
                flowInfo.markAsComparedEqualToNonNull(localVariableBinding);
                flowContext.markFinallyNullStatus(localVariableBinding, 4);
            }
        }
        if (this.otherBindings != null) {
            if ((this.bits & 7) == 1) {
                checkNullableFieldDereference(blockScope, (FieldBinding) this.binding, this.sourcePositions[this.indexOfFirstFieldBinding - 1], flowContext, 0);
            }
            int length = this.otherBindings.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                checkNullableFieldDereference(blockScope, this.otherBindings[i11], this.sourcePositions[this.indexOfFirstFieldBinding + i11], flowContext, 0);
            }
        }
    }

    @Override
    public FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10) {
        FieldBinding fieldBinding;
        int i10;
        FieldBinding[] fieldBindingArr = this.otherBindings;
        int i11 = 0;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        boolean z11 = length == 0 || !fieldBindingArr[0].isStatic();
        boolean z12 = blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4;
        int i12 = this.bits & 7;
        if (i12 != 1) {
            if (i12 == 2) {
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
                if (!flowInfo.isDefinitelyAssigned(localVariableBinding)) {
                    blockScope.problemReporter().uninitializedLocalVariable(localVariableBinding, this, blockScope);
                }
                if ((flowInfo.tagBits & 3) == 0) {
                    localVariableBinding.useFlag = 1;
                } else if (localVariableBinding.useFlag == 0) {
                    localVariableBinding.useFlag = 2;
                }
                if (z11) {
                    checkInternalNPE(blockScope, flowContext, flowInfo, true);
                }
            }
            fieldBinding = null;
        } else {
            fieldBinding = (FieldBinding) this.binding;
            if (z11 || z12) {
                manageSyntheticAccessIfNecessary(blockScope, fieldBinding, 0, flowInfo);
            }
            if (fieldBinding.isBlankFinal() && this.otherBindings != null && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo).isDefinitelyAssigned(fieldBinding)) {
                blockScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
            }
        }
        if (z11) {
            manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
        }
        if (this.otherBindings != null) {
            while (true) {
                i10 = length - 1;
                if (i11 >= i10) {
                    break;
                }
                FieldBinding[] fieldBindingArr2 = this.otherBindings;
                FieldBinding fieldBinding2 = fieldBindingArr2[i11];
                i11++;
                if (!fieldBindingArr2[i11].isStatic() || z12) {
                    manageSyntheticAccessIfNecessary(blockScope, fieldBinding2, i11, flowInfo);
                }
            }
            fieldBinding = this.otherBindings[i10];
        }
        if (z10) {
            if (length == 0 && fieldBinding.isBlankFinal() && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass, flowInfo).isDefinitelyAssigned(fieldBinding)) {
                blockScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
            }
            manageSyntheticAccessIfNecessary(blockScope, fieldBinding, length, flowInfo);
        }
        Expression expression = assignment.expression;
        if (expression != null) {
            flowInfo = expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
        }
        if (fieldBinding.isFinal()) {
            if (length == 0 && this.indexOfFirstFieldBinding == 1 && fieldBinding.isBlankFinal() && !z10 && blockScope.allowBlankFinalFieldAssignment(fieldBinding)) {
                if (flowInfo.isPotentiallyAssigned(fieldBinding)) {
                    blockScope.problemReporter().duplicateInitializationOfBlankFinalField(fieldBinding, this);
                } else {
                    flowContext.recordSettingFinal(fieldBinding, this, flowInfo);
                }
                flowInfo.markAsDefinitelyAssigned(fieldBinding);
            } else {
                blockScope.problemReporter().cannotAssignToFinalField(fieldBinding, this);
                if (length == 0 && blockScope.allowBlankFinalFieldAssignment(fieldBinding)) {
                    flowInfo.markAsDefinitelyAssigned(fieldBinding);
                }
            }
        }
        manageSyntheticAccessIfNecessary(blockScope, fieldBinding, -1, flowInfo);
        return flowInfo;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return analyseCode(blockScope, flowContext, flowInfo, true);
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        FieldBinding fieldBinding;
        long j10;
        long j11;
        if (super.checkNPE(blockScope, flowContext, flowInfo, i10)) {
            return true;
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if (fieldBindingArr == null) {
            if ((this.bits & 7) == 1) {
                fieldBinding = (FieldBinding) this.binding;
                j11 = this.sourcePositions[0];
            } else {
                fieldBinding = null;
                j11 = 0;
            }
            j10 = j11;
        } else {
            fieldBinding = fieldBindingArr[fieldBindingArr.length - 1];
            long[] jArr = this.sourcePositions;
            j10 = jArr[jArr.length - 1];
        }
        FieldBinding fieldBinding2 = fieldBinding;
        if (fieldBinding2 != null) {
            return checkNullableFieldDereference(blockScope, fieldBinding2, j10, flowContext, i10);
        }
        return false;
    }

    @Override
    public void computeConversion(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        Binding binding;
        if (typeBinding == null || typeBinding2 == null) {
            return;
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        FieldBinding fieldBinding = length == 0 ? ((this.bits & 1) == 0 || (binding = this.binding) == null || !binding.isValidBinding()) ? null : (FieldBinding) this.binding : fieldBindingArr[length - 1];
        if (fieldBinding != null) {
            TypeBinding typeBinding3 = fieldBinding.original().type;
            if (typeBinding3.leafComponentType().isTypeVariable()) {
                TypeBinding genericCast = typeBinding3.genericCast((typeBinding2.isBaseType() || !typeBinding.isBaseType()) ? typeBinding : typeBinding2);
                setGenericCast(length, genericCast);
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
        int i10 = codeStream.position;
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        assignment.expression.generateCode(blockScope, codeStream, true);
        fieldStore(blockScope, codeStream, generateReadSequence, this.syntheticWriteAccessor, getFinalReceiverType(), false, z10);
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
            FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
            if (generateReadSequence != null) {
                boolean isStatic = generateReadSequence.isStatic();
                Constant constant3 = generateReadSequence.constant();
                if (constant3 != constant2) {
                    if (!isStatic) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                    if (z10) {
                        codeStream.generateConstant(constant3, this.implicitConversion);
                    }
                } else {
                    boolean z11 = generateReadSequence == this.binding && (this.indexOfFirstFieldBinding == 1 || TypeBinding.equalsEquals(generateReadSequence.declaringClass, blockScope.enclosingReceiverType())) && this.otherBindings == null;
                    FieldBinding[] fieldBindingArr = this.otherBindings;
                    TypeBinding genericCast = getGenericCast(fieldBindingArr == null ? 0 : fieldBindingArr.length);
                    if (z10 || !((z11 || blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_4) && (this.implicitConversion & 1024) == 0 && genericCast == null)) {
                        int i11 = codeStream.position;
                        if (generateReadSequence.declaringClass == null) {
                            codeStream.arraylength();
                            if (z10) {
                                codeStream.generateImplicitConversion(this.implicitConversion);
                            } else {
                                codeStream.pop();
                            }
                        } else {
                            SyntheticMethodBinding[] syntheticMethodBindingArr = this.syntheticReadAccessors;
                            SyntheticMethodBinding syntheticMethodBinding = syntheticMethodBindingArr == null ? null : syntheticMethodBindingArr[syntheticMethodBindingArr.length - 1];
                            if (syntheticMethodBinding == null) {
                                TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, generateReadSequence, getFinalReceiverType(), z11);
                                if (isStatic) {
                                    codeStream.fieldAccess(Opcodes.OPC_getstatic, generateReadSequence, constantPoolDeclaringClass);
                                } else {
                                    codeStream.fieldAccess(Opcodes.OPC_getfield, generateReadSequence, constantPoolDeclaringClass);
                                }
                            } else {
                                codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
                            }
                            if (genericCast != null) {
                                codeStream.checkcast(genericCast);
                            }
                            if (z10) {
                                codeStream.generateImplicitConversion(this.implicitConversion);
                            } else {
                                int i12 = this.implicitConversion;
                                boolean z12 = (i12 & 1024) != 0;
                                if (z12) {
                                    codeStream.generateImplicitConversion(i12);
                                }
                                int i13 = (z12 ? postConversionType(blockScope) : generateReadSequence.type).f102482id;
                                if (i13 == 7 || i13 == 8) {
                                    codeStream.pop2();
                                } else {
                                    codeStream.pop();
                                }
                            }
                        }
                        long[] jArr = this.sourcePositions;
                        codeStream.recordPositionsFrom(i11, (int) (jArr[jArr.length - 1] >>> 32));
                    } else if (!isStatic) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                }
            }
        } else if (z10) {
            codeStream.generateConstant(constant, this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        reportOnlyUselesslyReadPrivateField(blockScope, generateReadSequence, z10);
        TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, generateReadSequence, getFinalReceiverType(), generateReadSequence == this.binding && (this.indexOfFirstFieldBinding == 1 || TypeBinding.equalsEquals(generateReadSequence.declaringClass, blockScope.enclosingReceiverType())) && this.otherBindings == null);
        SyntheticMethodBinding[] syntheticMethodBindingArr = this.syntheticReadAccessors;
        SyntheticMethodBinding syntheticMethodBinding = syntheticMethodBindingArr == null ? null : syntheticMethodBindingArr[syntheticMethodBindingArr.length - 1];
        if (!generateReadSequence.isStatic()) {
            codeStream.dup();
            if (syntheticMethodBinding == null) {
                codeStream.fieldAccess(Opcodes.OPC_getfield, generateReadSequence, constantPoolDeclaringClass);
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
            }
        } else if (syntheticMethodBinding == null) {
            codeStream.fieldAccess(Opcodes.OPC_getstatic, generateReadSequence, constantPoolDeclaringClass);
        } else {
            codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
        }
        int i12 = (this.implicitConversion & 255) >> 4;
        if (i12 == 0 || i12 == 1 || i12 == 11) {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        } else {
            FieldBinding[] fieldBindingArr = this.otherBindings;
            TypeBinding genericCast = getGenericCast(fieldBindingArr != null ? fieldBindingArr.length : 0);
            if (genericCast != null) {
                codeStream.checkcast(genericCast);
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i12);
            codeStream.generateImplicitConversion(i11);
        }
        fieldStore(blockScope, codeStream, generateReadSequence, this.syntheticWriteAccessor, getFinalReceiverType(), false, z10);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        reportOnlyUselesslyReadPrivateField(blockScope, generateReadSequence, z10);
        TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, generateReadSequence, getFinalReceiverType(), generateReadSequence == this.binding && (this.indexOfFirstFieldBinding == 1 || TypeBinding.equalsEquals(generateReadSequence.declaringClass, blockScope.enclosingReceiverType())) && this.otherBindings == null);
        SyntheticMethodBinding[] syntheticMethodBindingArr = this.syntheticReadAccessors;
        SyntheticMethodBinding syntheticMethodBinding = syntheticMethodBindingArr == null ? null : syntheticMethodBindingArr[syntheticMethodBindingArr.length - 1];
        if (!generateReadSequence.isStatic()) {
            codeStream.dup();
            if (syntheticMethodBinding == null) {
                codeStream.fieldAccess(Opcodes.OPC_getfield, generateReadSequence, null);
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
            }
        } else if (syntheticMethodBinding == null) {
            codeStream.fieldAccess(Opcodes.OPC_getstatic, generateReadSequence, constantPoolDeclaringClass);
        } else {
            codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, constantPoolDeclaringClass);
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        TypeBinding genericCast = getGenericCast(fieldBindingArr != null ? fieldBindingArr.length : 0);
        if (genericCast != null) {
            codeStream.checkcast(genericCast);
        } else {
            genericCast = generateReadSequence.type;
        }
        if (z10) {
            if (generateReadSequence.isStatic()) {
                int i10 = genericCast.f102482id;
                if (i10 == 7 || i10 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            } else {
                int i11 = genericCast.f102482id;
                if (i11 == 7 || i11 == 8) {
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
        fieldStore(blockScope, codeStream, generateReadSequence, this.syntheticWriteAccessor, getFinalReceiverType(), false, false);
    }

    public FieldBinding generateReadSequence(BlockScope blockScope, CodeStream codeStream) {
        FieldBinding original;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        int i10;
        boolean z10;
        FieldBinding[] fieldBindingArr = this.otherBindings;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        boolean z11 = true;
        boolean z12 = length == 0 || !fieldBindingArr[0].isStatic();
        boolean z13 = blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4;
        int i11 = this.bits & 7;
        if (i11 == 1) {
            original = ((FieldBinding) this.binding).original();
            typeBinding = this.genericCast;
            typeBinding2 = this.actualReceiverType;
            if (original.constant() == Constant.NotAConstant && ((z12 && !original.isStatic()) || typeBinding != null)) {
                int i12 = codeStream.position;
                if ((this.bits & ASTNode.DepthMASK) != 0) {
                    ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                } else {
                    generateReceiver(codeStream);
                }
                codeStream.recordPositionsFrom(i12, this.sourceStart);
            }
        } else {
            if (i11 != 2) {
                return null;
            }
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            TypeBinding typeBinding3 = localVariableBinding.type;
            if (z12) {
                Constant constant = localVariableBinding.constant();
                if (constant != Constant.NotAConstant) {
                    codeStream.generateConstant(constant, 0);
                } else if ((this.bits & 524288) != 0) {
                    checkEffectiveFinality(localVariableBinding, blockScope);
                    codeStream.generateOuterAccess(blockScope.getEmulationPath(localVariableBinding), this, localVariableBinding, blockScope);
                } else {
                    codeStream.load(localVariableBinding);
                }
            }
            original = null;
            typeBinding2 = typeBinding3;
            typeBinding = null;
        }
        int length2 = this.sourcePositions.length;
        if (this.otherBindings == null) {
            return original;
        }
        int i13 = 0;
        FieldBinding fieldBinding = original;
        while (i13 < length) {
            int i14 = codeStream.position;
            FieldBinding original2 = this.otherBindings[i13].original();
            TypeBinding[] typeBindingArr = this.otherGenericCasts;
            TypeBinding typeBinding4 = typeBindingArr == null ? null : typeBindingArr[i13];
            if (fieldBinding != null) {
                boolean isStatic = original2.isStatic();
                Constant constant2 = fieldBinding.constant();
                if (constant2 != Constant.NotAConstant) {
                    if (i13 > 0 && !fieldBinding.isStatic()) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                    if (!isStatic) {
                        codeStream.generateConstant(constant2, 0);
                    }
                    i10 = length;
                    z10 = true;
                } else {
                    if (!isStatic || ((i13 > 0 && z13) || typeBinding != null)) {
                        SyntheticMethodBinding[] syntheticMethodBindingArr = this.syntheticReadAccessors;
                        SyntheticMethodBinding syntheticMethodBinding = syntheticMethodBindingArr == null ? null : syntheticMethodBindingArr[i13];
                        if (syntheticMethodBinding == null) {
                            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, fieldBinding, typeBinding2, i13 == 0 && this.indexOfFirstFieldBinding == 1);
                            if (fieldBinding.isStatic()) {
                                codeStream.fieldAccess(Opcodes.OPC_getstatic, fieldBinding, constantPoolDeclaringClass);
                            } else {
                                codeStream.fieldAccess(Opcodes.OPC_getfield, fieldBinding, constantPoolDeclaringClass);
                            }
                        } else {
                            codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
                        }
                        if (typeBinding != null) {
                            codeStream.checkcast(typeBinding);
                        } else {
                            typeBinding = fieldBinding.type;
                        }
                        if (isStatic) {
                            codeStream.pop();
                        }
                    } else {
                        if (fieldBinding == original) {
                            if (fieldBinding.isStatic() && TypeBinding.notEquals(original.declaringClass, this.actualReceiverType.erasure())) {
                                SyntheticMethodBinding[] syntheticMethodBindingArr2 = this.syntheticReadAccessors;
                                SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr2 == null ? null : syntheticMethodBindingArr2[i13];
                                if (syntheticMethodBinding2 == null) {
                                    codeStream.fieldAccess(Opcodes.OPC_getstatic, fieldBinding, CodeStream.getConstantPoolDeclaringClass(blockScope, fieldBinding, typeBinding2, i13 == 0 && this.indexOfFirstFieldBinding == 1));
                                } else {
                                    codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding2, null);
                                }
                                codeStream.pop();
                            }
                        } else if (!fieldBinding.isStatic()) {
                            codeStream.invokeObjectGetClass();
                            codeStream.pop();
                        }
                        typeBinding = fieldBinding.type;
                    }
                    z10 = true;
                    int i15 = ((length2 - length) + i13) - 1;
                    if (i15 >= 0) {
                        i10 = length;
                        codeStream.recordPositionsFrom(i14, (int) (this.sourcePositions[i15] >>> 32));
                    } else {
                        i10 = length;
                    }
                    typeBinding2 = typeBinding;
                }
            } else {
                i10 = length;
                z10 = z11;
            }
            i13++;
            typeBinding = typeBinding4;
            z11 = z10;
            fieldBinding = original2;
            length = i10;
        }
        return fieldBinding;
    }

    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    public FieldBinding getCodegenBinding(int i10) {
        return i10 == 0 ? ((FieldBinding) this.binding).original() : this.otherBindings[i10 - 1].original();
    }

    public TypeBinding getFinalReceiverType() {
        FieldBinding[] fieldBindingArr = this.otherBindings;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        if (length == 0) {
            return this.actualReceiverType;
        }
        if (length == 1) {
            TypeBinding typeBinding = this.genericCast;
            return typeBinding != null ? typeBinding : ((VariableBinding) this.binding).type;
        }
        TypeBinding[] typeBindingArr = this.otherGenericCasts;
        TypeBinding typeBinding2 = typeBindingArr == null ? null : typeBindingArr[length - 2];
        return typeBinding2 != null ? typeBinding2 : fieldBindingArr[length - 2].type;
    }

    public TypeBinding getGenericCast(int i10) {
        if (i10 == 0) {
            return this.genericCast;
        }
        TypeBinding[] typeBindingArr = this.otherGenericCasts;
        if (typeBindingArr == null) {
            return null;
        }
        return typeBindingArr[i10 - 1];
    }

    @Override
    public char[][] getName() {
        return this.tokens;
    }

    public TypeBinding getOtherFieldBindings(BlockScope blockScope) {
        int i10;
        int length = this.tokens.length;
        FieldBinding fieldBinding = (this.bits & 1) != 0 ? (FieldBinding) this.binding : null;
        Binding binding = this.binding;
        TypeBinding typeBinding = ((VariableBinding) binding).type;
        int i11 = this.indexOfFirstFieldBinding;
        if (i11 == length) {
            this.constant = ((FieldBinding) binding).constant(blockScope);
            return (typeBinding == null || (this.bits & 8192) != 0) ? typeBinding : typeBinding.capture(blockScope, this.sourceStart, this.sourceEnd);
        }
        int i12 = length - i11;
        this.otherBindings = new FieldBinding[i12];
        this.otherDepths = new int[i12];
        this.constant = ((VariableBinding) binding).constant(blockScope);
        int i13 = (this.bits & ASTNode.DepthMASK) >> 5;
        while (i11 < length) {
            char[] cArr = this.tokens[i11];
            if (typeBinding == null) {
                return null;
            }
            this.bits &= -8161;
            long j10 = this.sourcePositions[i11];
            FieldBinding field = blockScope.getField(typeBinding.capture(blockScope, (int) (j10 >>> 32), (int) j10), cArr, this);
            int i14 = i11 - this.indexOfFirstFieldBinding;
            this.otherBindings[i14] = field;
            this.otherDepths[i14] = (this.bits & ASTNode.DepthMASK) >> 5;
            if (!field.isValidBinding()) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidField(this, field, i11, typeBinding);
                setDepth(i13);
                return null;
            }
            if (fieldBinding != null) {
                TypeBinding erasureCompatibleType = typeBinding.getErasureCompatibleType(field.declaringClass);
                FieldBinding original = fieldBinding.original();
                if (TypeBinding.notEquals(erasureCompatibleType, typeBinding) || original.type.leafComponentType().isTypeVariable()) {
                    setGenericCast(i11 - 1, original.type.genericCast(erasureCompatibleType));
                }
            }
            int i15 = i11 + 1;
            if (isFieldUseDeprecated(field, blockScope, i15 == length ? this.bits : 0)) {
                blockScope.problemReporter().deprecatedField(field, this);
            }
            Constant constant = this.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2) {
                this.constant = field.constant(blockScope);
            }
            if (field.isStatic()) {
                if ((field.modifiers & 16384) != 0 && !blockScope.isModuleScope()) {
                    ReferenceBinding referenceBinding = field.original().declaringClass;
                    MethodScope methodScope = blockScope.methodScope();
                    SourceTypeBinding enclosingSourceType = methodScope.enclosingSourceType();
                    if ((this.bits & 8192) == 0 && TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) && (i10 = methodScope.lastVisibleFieldID) >= 0 && field.f102483id >= i10 && (!field.isStatic() || methodScope.isStatic)) {
                        blockScope.problemReporter().forwardReference(this, i11, field);
                    }
                    if ((TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) || TypeBinding.equalsEquals(enclosingSourceType.superclass, referenceBinding)) && field.constant(blockScope) == constant2 && !methodScope.isStatic && methodScope.isInsideInitializerOrConstructor()) {
                        blockScope.problemReporter().enumStaticFieldUsedDuringInitialization(field, this);
                    }
                }
                blockScope.problemReporter().nonStaticAccessToStaticField(this, field, i11);
                if (TypeBinding.notEquals(field.declaringClass, typeBinding)) {
                    blockScope.problemReporter().indirectAccessToStaticField(this, field);
                }
            }
            typeBinding = field.type;
            i11 = i15;
            fieldBinding = field;
        }
        setDepth(i13);
        TypeBinding typeBinding2 = this.otherBindings[i12 - 1].type;
        return (typeBinding2 == null || (this.bits & 8192) != 0) ? typeBinding2 : typeBinding2.capture(blockScope, this.sourceStart, this.sourceEnd);
    }

    @Override
    public boolean isEquivalent(Reference reference) {
        int length;
        if (reference instanceof FieldReference) {
            return reference.isEquivalent(this);
        }
        if (!(reference instanceof QualifiedNameReference)) {
            return false;
        }
        QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) reference;
        if (this.tokens.length != qualifiedNameReference.tokens.length || this.binding != qualifiedNameReference.binding) {
            return false;
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if (fieldBindingArr == null) {
            return qualifiedNameReference.otherBindings == null;
        }
        FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
        if (fieldBindingArr2 == null || (length = fieldBindingArr.length) != fieldBindingArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (this.otherBindings[i10] != qualifiedNameReference.otherBindings[i10]) {
                return false;
            }
        }
        return true;
    }

    public boolean isFieldAccess() {
        return this.otherBindings != null || (this.bits & 7) == 1;
    }

    @Override
    public FieldBinding lastFieldBinding() {
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if (fieldBindingArr != null) {
            return fieldBindingArr[fieldBindingArr.length - 1];
        }
        Binding binding = this.binding;
        if (binding == null || (this.bits & 7) != 1) {
            return null;
        }
        return (FieldBinding) binding;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        LocalVariableBinding localVariableBinding;
        int i10 = this.bits;
        if (((i10 & ASTNode.DepthMASK) == 0 && (524288 & i10) == 0) || this.constant != Constant.NotAConstant || (i10 & 7) != 2 || (localVariableBinding = (LocalVariableBinding) this.binding) == null || localVariableBinding.isUninitializedIn(blockScope)) {
            return;
        }
        int i11 = localVariableBinding.useFlag;
        if (i11 == 1 || i11 == 2) {
            blockScope.emulateOuterAccess(localVariableBinding);
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FieldBinding fieldBinding, int i10, FlowInfo flowInfo) {
        int i11;
        int i12;
        int i13;
        if ((flowInfo.tagBits & 1) == 0 && fieldBinding.constant(blockScope) == Constant.NotAConstant) {
            if (fieldBinding.isPrivate()) {
                if (i10 < 0) {
                    FieldBinding[] fieldBindingArr = this.otherBindings;
                    i13 = fieldBindingArr == null ? 0 : fieldBindingArr.length;
                } else {
                    i13 = i10;
                }
                FieldBinding codegenBinding = getCodegenBinding(i13);
                ReferenceBinding referenceBinding = codegenBinding.declaringClass;
                if (blockScope.enclosingSourceType().isNestmateOf(referenceBinding) || !TypeBinding.notEquals(referenceBinding, blockScope.enclosingSourceType())) {
                    return;
                }
                setSyntheticAccessor(fieldBinding, i10, ((SourceTypeBinding) referenceBinding).addSyntheticMethod(codegenBinding, i10 >= 0, false));
                blockScope.problemReporter().needToEmulateFieldAccess(codegenBinding, this, i10 >= 0);
                return;
            }
            if (fieldBinding.isProtected()) {
                if (i10 == 0 || (i10 < 0 && this.otherDepths == null)) {
                    i11 = (this.bits & ASTNode.DepthMASK) >> 5;
                } else {
                    int[] iArr = this.otherDepths;
                    i11 = iArr[i10 < 0 ? iArr.length - 1 : i10 - 1];
                }
                if (i11 <= 0 || fieldBinding.declaringClass.getPackage() == blockScope.enclosingSourceType().getPackage()) {
                    return;
                }
                if (i10 < 0) {
                    FieldBinding[] fieldBindingArr2 = this.otherBindings;
                    i12 = fieldBindingArr2 == null ? 0 : fieldBindingArr2.length;
                } else {
                    i12 = i10;
                }
                FieldBinding codegenBinding2 = getCodegenBinding(i12);
                setSyntheticAccessor(fieldBinding, i10, ((SourceTypeBinding) blockScope.enclosingSourceType().enclosingTypeAt(i11)).addSyntheticMethod(codegenBinding2, i10 >= 0, false));
                blockScope.problemReporter().needToEmulateFieldAccess(codegenBinding2, this, i10 >= 0);
            }
        }
    }

    @Override
    public VariableBinding nullAnnotatedVariableBinding(boolean z10) {
        if (this.binding == null || !isFieldAccess()) {
            return null;
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        FieldBinding fieldBinding = fieldBindingArr == null ? (FieldBinding) this.binding : fieldBindingArr[fieldBindingArr.length - 1];
        if (z10 || fieldBinding.isNullable() || fieldBinding.isNonNull()) {
            return fieldBinding;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        if (r0 != 2) goto L14;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Constant optimizedBooleanConstant() {
        int i10 = this.resolvedType.f102482id;
        if (i10 == 5 || i10 == 33) {
            Constant constant = this.constant;
            if (constant != Constant.NotAConstant) {
                return constant;
            }
            int i11 = this.bits & 7;
            if (i11 == 1) {
                if (this.otherBindings == null) {
                    return ((FieldBinding) this.binding).constant();
                }
            }
            FieldBinding[] fieldBindingArr = this.otherBindings;
            return fieldBindingArr[fieldBindingArr.length - 1].constant();
        }
        return Constant.NotAConstant;
    }

    @Override
    public TypeBinding postConversionType(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        FieldBinding[] fieldBindingArr = this.otherBindings;
        TypeBinding genericCast = getGenericCast(fieldBindingArr == null ? 0 : fieldBindingArr.length);
        if (genericCast != null) {
            typeBinding = genericCast;
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
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        return stringBuffer;
    }

    public TypeBinding reportError(BlockScope blockScope) {
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

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
    
        if (r2 != 7) goto L115;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        FieldBinding fieldBinding;
        int i10;
        this.actualReceiverType = blockScope.enclosingReceiverType();
        Constant constant = Constant.NotAConstant;
        this.constant = constant;
        Binding binding = blockScope.getBinding(this.tokens, this.bits & 7, (InvocationSite) this, true);
        this.binding = binding;
        if (binding.isValidBinding()) {
            int i11 = this.bits;
            int i12 = i11 & 7;
            if (i12 != 3) {
                if (i12 != 4) {
                }
                TypeBinding convertToRawType = blockScope.environment().convertToRawType((TypeBinding) this.binding, false);
                this.resolvedType = convertToRawType;
                return convertToRawType;
            }
            Binding binding2 = this.binding;
            if (binding2 instanceof LocalVariableBinding) {
                this.bits = (i11 & (-8)) | 2;
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding2;
                if (!localVariableBinding.isFinal() && (this.bits & 524288) != 0 && blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8) {
                    blockScope.problemReporter().cannotReferToNonFinalOuterLocal((LocalVariableBinding) this.binding, this);
                }
                TypeBinding typeBinding = localVariableBinding.type;
                if (typeBinding != null && (typeBinding.tagBits & 128) != 0) {
                    return null;
                }
                TypeBinding otherFieldBindings = getOtherFieldBindings(blockScope);
                this.resolvedType = otherFieldBindings;
                if (otherFieldBindings == null || (otherFieldBindings.tagBits & 128) == 0) {
                    return otherFieldBindings;
                }
                FieldBinding[] fieldBindingArr = this.otherBindings;
                FieldBinding fieldBinding2 = fieldBindingArr[fieldBindingArr.length - 1];
                blockScope.problemReporter().invalidField(this, new ProblemFieldBinding(fieldBinding2.declaringClass, fieldBinding2.name, 1), this.tokens.length, this.resolvedType.leafComponentType());
                return null;
            }
            if (!(binding2 instanceof FieldBinding)) {
                this.bits = (i11 & (-8)) | 4;
                TypeBinding convertToRawType2 = blockScope.environment().convertToRawType((TypeBinding) this.binding, false);
                this.resolvedType = convertToRawType2;
                return convertToRawType2;
            }
            this.bits = (i11 & (-8)) | 1;
            FieldBinding fieldBinding3 = (FieldBinding) binding2;
            MethodScope methodScope = blockScope.methodScope();
            ReferenceBinding referenceBinding = fieldBinding3.original().declaringClass;
            SourceTypeBinding enclosingSourceType = methodScope.enclosingSourceType();
            if (!blockScope.isModuleScope() && ((this.indexOfFirstFieldBinding == 1 || (fieldBinding3.modifiers & 16384) != 0 || (!fieldBinding3.isFinal() && referenceBinding.isEnum())) && TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) && (i10 = methodScope.lastVisibleFieldID) >= 0 && fieldBinding3.f102483id >= i10 && ((!fieldBinding3.isStatic() || methodScope.isStatic) && (!methodScope.insideTypeAnnotation || fieldBinding3.f102483id != methodScope.lastVisibleFieldID)))) {
                blockScope.problemReporter().forwardReference(this, this.indexOfFirstFieldBinding - 1, fieldBinding3);
            }
            if (isFieldUseDeprecated(fieldBinding3, blockScope, this.indexOfFirstFieldBinding == this.tokens.length ? this.bits : 0)) {
                blockScope.problemReporter().deprecatedField(fieldBinding3, this);
            }
            if (fieldBinding3.isStatic()) {
                if (referenceBinding.isEnum() && !blockScope.isModuleScope() && ((TypeBinding.equalsEquals(enclosingSourceType, referenceBinding) || TypeBinding.equalsEquals(enclosingSourceType.superclass, referenceBinding)) && fieldBinding3.constant(blockScope) == constant && !methodScope.isStatic && methodScope.isInsideInitializerOrConstructor())) {
                    blockScope.problemReporter().enumStaticFieldUsedDuringInitialization(fieldBinding3, this);
                }
                if (this.indexOfFirstFieldBinding > 1 && TypeBinding.notEquals(fieldBinding3.declaringClass, this.actualReceiverType) && fieldBinding3.declaringClass.canBeSeenBy(blockScope)) {
                    blockScope.problemReporter().indirectAccessToStaticField(this, fieldBinding3);
                }
            } else {
                boolean z10 = blockScope.methodScope().isStatic;
                if (this.indexOfFirstFieldBinding == 1) {
                    if (blockScope.compilerOptions().getSeverity(4194304) != 256) {
                        blockScope.problemReporter().unqualifiedFieldAccess(this, fieldBinding3);
                    }
                    if (!z10) {
                        blockScope.tagAsAccessingEnclosingInstanceStateOf(fieldBinding3.declaringClass, false);
                    }
                }
                if (this.indexOfFirstFieldBinding > 1 || z10) {
                    blockScope.problemReporter().staticFieldAccessToNonStaticVariable(this, fieldBinding3);
                    return null;
                }
            }
            TypeBinding otherFieldBindings2 = getOtherFieldBindings(blockScope);
            this.resolvedType = otherFieldBindings2;
            if (otherFieldBindings2 == null || (otherFieldBindings2.tagBits & 128) == 0) {
                return otherFieldBindings2;
            }
            if (this.indexOfFirstFieldBinding == this.tokens.length) {
                fieldBinding = (FieldBinding) this.binding;
            } else {
                FieldBinding[] fieldBindingArr2 = this.otherBindings;
                fieldBinding = fieldBindingArr2[fieldBindingArr2.length - 1];
            }
            blockScope.problemReporter().invalidField(this, new ProblemFieldBinding(fieldBinding.declaringClass, fieldBinding.name, 1), this.tokens.length, this.resolvedType.leafComponentType());
            return null;
        }
        TypeBinding reportError = reportError(blockScope);
        this.resolvedType = reportError;
        return reportError;
    }

    @Override
    public void setFieldIndex(int i10) {
        this.indexOfFirstFieldBinding = i10;
    }

    public void setGenericCast(int i10, TypeBinding typeBinding) {
        if (typeBinding == null) {
            return;
        }
        if (i10 == 0) {
            this.genericCast = typeBinding;
            return;
        }
        if (this.otherGenericCasts == null) {
            this.otherGenericCasts = new TypeBinding[this.otherBindings.length];
        }
        this.otherGenericCasts[i10 - 1] = typeBinding;
    }

    public void setSyntheticAccessor(FieldBinding fieldBinding, int i10, SyntheticMethodBinding syntheticMethodBinding) {
        if (i10 < 0) {
            this.syntheticWriteAccessor = syntheticMethodBinding;
            return;
        }
        if (this.syntheticReadAccessors == null) {
            FieldBinding[] fieldBindingArr = this.otherBindings;
            this.syntheticReadAccessors = new SyntheticMethodBinding[fieldBindingArr != null ? 1 + fieldBindingArr.length : 1];
        }
        this.syntheticReadAccessors[i10] = syntheticMethodBinding;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public String unboundReferenceErrorName() {
        return new String(this.tokens[0]);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        boolean z11;
        boolean z12;
        FieldBinding[] fieldBindingArr = this.otherBindings;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        if (length == 0) {
            z11 = z10;
        } else {
            z11 = !fieldBindingArr[0].isStatic();
        }
        boolean z13 = blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4;
        int i10 = this.bits & 7;
        if (i10 == 1) {
            if (z11 || z13) {
                manageSyntheticAccessIfNecessary(blockScope, (FieldBinding) this.binding, 0, flowInfo);
            }
            FieldBinding fieldBinding = (FieldBinding) this.binding;
            if (this.indexOfFirstFieldBinding == 1 && fieldBinding.isBlankFinal() && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo).isDefinitelyAssigned(fieldBinding)) {
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
        if (z11) {
            checkInternalNPE(blockScope, flowContext, flowInfo, true);
        }
        if (z11) {
            manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
        }
        if (this.otherBindings != null) {
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 < length - 1) {
                    z12 = !this.otherBindings[i11 + 1].isStatic();
                } else {
                    z12 = z10;
                }
                if (z12 || z13) {
                    manageSyntheticAccessIfNecessary(blockScope, this.otherBindings[i11], i11 + 1, flowInfo);
                }
            }
        }
        return flowInfo;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
