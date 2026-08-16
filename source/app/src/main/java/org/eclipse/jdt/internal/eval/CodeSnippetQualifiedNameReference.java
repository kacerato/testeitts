package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class CodeSnippetQualifiedNameReference extends QualifiedNameReference implements EvaluationConstants, ProblemReasons {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;

    public CodeSnippetQualifiedNameReference(char[][] cArr, long[] jArr, int i10, int i11, EvaluationContext evaluationContext) {
        super(cArr, jArr, i10, i11);
        this.evaluationContext = evaluationContext;
    }

    public TypeBinding checkFieldAccess(BlockScope blockScope) {
        int i10;
        FieldBinding fieldBinding = (FieldBinding) this.binding;
        MethodScope methodScope = blockScope.methodScope();
        ReferenceBinding referenceBinding = fieldBinding.original().declaringClass;
        if ((this.indexOfFirstFieldBinding == 1 || referenceBinding.isEnum()) && TypeBinding.equalsEquals(methodScope.enclosingSourceType(), referenceBinding) && (i10 = methodScope.lastVisibleFieldID) >= 0 && fieldBinding.f102483id >= i10 && (!fieldBinding.isStatic() || methodScope.isStatic)) {
            blockScope.problemReporter().forwardReference(this, this.indexOfFirstFieldBinding - 1, fieldBinding);
        }
        this.bits = (this.bits & (-8)) | 1;
        return getOtherFieldBindings(blockScope);
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if ((fieldBindingArr == null ? (FieldBinding) this.binding : fieldBindingArr[fieldBindingArr.length - 1]).canBeSeenBy(getFinalReceiverType(), this, blockScope)) {
            super.generateAssignment(blockScope, codeStream, assignment, z10);
            return;
        }
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        codeStream.generateEmulationForField(generateReadSequence);
        codeStream.swap();
        assignment.expression.generateCode(blockScope, codeStream, true);
        if (z10) {
            int i10 = generateReadSequence.type.f102482id;
            if (i10 == 7 || i10 == 8) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateEmulatedWriteAccessForField(generateReadSequence);
        if (z10) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if ((this.bits & 3) == 0) {
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if ((fieldBindingArr == null ? (FieldBinding) this.binding : fieldBindingArr[fieldBindingArr.length - 1]).canBeSeenBy(getFinalReceiverType(), this, blockScope)) {
            super.generateCode(blockScope, codeStream, z10);
            return;
        }
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        if (generateReadSequence != null) {
            boolean isStatic = generateReadSequence.isStatic();
            Constant constant = generateReadSequence.constant();
            if (constant != Constant.NotAConstant) {
                if (!isStatic) {
                    codeStream.invokeObjectGetClass();
                    codeStream.pop();
                }
                if (z10) {
                    codeStream.generateConstant(constant, this.implicitConversion);
                }
            } else {
                boolean z11 = generateReadSequence == this.binding && (this.indexOfFirstFieldBinding == 1 || TypeBinding.equalsEquals(generateReadSequence.declaringClass, blockScope.enclosingReceiverType())) && this.otherBindings == null;
                FieldBinding[] fieldBindingArr2 = this.otherBindings;
                TypeBinding genericCast = getGenericCast(fieldBindingArr2 == null ? 0 : fieldBindingArr2.length);
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
                        codeStream.generateEmulatedReadAccessForField(generateReadSequence);
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
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if ((fieldBindingArr == null ? (FieldBinding) this.binding : fieldBindingArr[fieldBindingArr.length - 1]).canBeSeenBy(getFinalReceiverType(), this, blockScope)) {
            super.generateCompoundAssignment(blockScope, codeStream, expression, i10, i11, z10);
            return;
        }
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        if (generateReadSequence.isStatic()) {
            codeStream.generateEmulationForField(generateReadSequence);
            codeStream.swap();
            codeStream.aconst_null();
            codeStream.swap();
            codeStream.generateEmulatedReadAccessForField(generateReadSequence);
        } else {
            codeStream.generateEmulationForField(generateReadSequence);
            codeStream.swap();
            codeStream.dup();
            codeStream.generateEmulatedReadAccessForField(generateReadSequence);
        }
        int i12 = this.implicitConversion;
        int i13 = (i12 & 255) >> 4;
        if (i13 == 11) {
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
        if (z10) {
            int i14 = generateReadSequence.type.f102482id;
            if (i14 == 7 || i14 == 8) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateEmulatedWriteAccessForField(generateReadSequence);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        FieldBinding[] fieldBindingArr = this.otherBindings;
        if ((fieldBindingArr == null ? (FieldBinding) this.binding : fieldBindingArr[fieldBindingArr.length - 1]).canBeSeenBy(getFinalReceiverType(), this, blockScope)) {
            super.generatePostIncrement(blockScope, codeStream, compoundAssignment, z10);
            return;
        }
        FieldBinding generateReadSequence = generateReadSequence(blockScope, codeStream);
        codeStream.generateEmulatedReadAccessForField(generateReadSequence);
        if (z10) {
            int i10 = generateReadSequence.type.f102482id;
            if (i10 == 7 || i10 == 8) {
                codeStream.dup2();
            } else {
                codeStream.dup();
            }
        }
        codeStream.generateEmulationForField(generateReadSequence);
        if (TypeBinding.equalsEquals(generateReadSequence.type, TypeBinding.LONG) || TypeBinding.equalsEquals(generateReadSequence.type, TypeBinding.DOUBLE)) {
            codeStream.dup_x2();
            codeStream.pop();
            if (generateReadSequence.isStatic()) {
                codeStream.aconst_null();
            } else {
                generateReadSequence(blockScope, codeStream);
            }
            codeStream.dup_x2();
            codeStream.pop();
        } else {
            codeStream.dup_x1();
            codeStream.pop();
            if (generateReadSequence.isStatic()) {
                codeStream.aconst_null();
            } else {
                generateReadSequence(blockScope, codeStream);
            }
            codeStream.dup_x1();
            codeStream.pop();
        }
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, generateReadSequence.type.f102482id);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        codeStream.generateEmulatedWriteAccessForField(generateReadSequence);
    }

    @Override
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
            TypeBinding typeBinding3 = this.genericCast;
            TypeBinding typeBinding4 = this.actualReceiverType;
            if (original.constant() == Constant.NotAConstant && z12) {
                if (original.canBeSeenBy(this.actualReceiverType, this, blockScope)) {
                    if (!original.isStatic()) {
                        if ((this.bits & ASTNode.DepthMASK) != 0) {
                            ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                            codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
                        } else {
                            generateReceiver(codeStream);
                        }
                    }
                } else if (original.isStatic()) {
                    codeStream.aconst_null();
                } else if ((this.bits & ASTNode.DepthMASK) != 0) {
                    blockScope.problemReporter().needImplementation(this);
                } else {
                    generateReceiver(codeStream);
                }
            }
            typeBinding = typeBinding3;
            typeBinding2 = typeBinding4;
        } else {
            if (i11 != 2) {
                return null;
            }
            LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
            typeBinding2 = localVariableBinding.type;
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
            typeBinding = null;
            original = null;
        }
        int length2 = this.sourcePositions.length;
        if (this.otherBindings == null) {
            return original;
        }
        int i12 = 0;
        FieldBinding fieldBinding = original;
        while (i12 < length) {
            int i13 = codeStream.position;
            FieldBinding original2 = this.otherBindings[i12].original();
            TypeBinding[] typeBindingArr = this.otherGenericCasts;
            TypeBinding typeBinding5 = typeBindingArr == null ? null : typeBindingArr[i12];
            if (fieldBinding != null) {
                boolean isStatic = original2.isStatic();
                Constant constant2 = fieldBinding.constant();
                if (constant2 != Constant.NotAConstant) {
                    if (i12 > 0 && !fieldBinding.isStatic()) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                    if (!isStatic) {
                        codeStream.generateConstant(constant2, 0);
                    }
                    i10 = length;
                    z10 = true;
                } else {
                    if (!isStatic || ((i12 > 0 && z13) || typeBinding != null)) {
                        if (fieldBinding.canBeSeenBy(typeBinding2, this, blockScope)) {
                            SyntheticMethodBinding[] syntheticMethodBindingArr = this.syntheticReadAccessors;
                            SyntheticMethodBinding syntheticMethodBinding = syntheticMethodBindingArr == null ? null : syntheticMethodBindingArr[i12];
                            if (syntheticMethodBinding == null) {
                                TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, fieldBinding, typeBinding2, i12 == 0 && this.indexOfFirstFieldBinding == 1);
                                if (fieldBinding.isStatic()) {
                                    codeStream.fieldAccess(Opcodes.OPC_getstatic, fieldBinding, constantPoolDeclaringClass);
                                } else {
                                    codeStream.fieldAccess(Opcodes.OPC_getfield, fieldBinding, constantPoolDeclaringClass);
                                }
                            } else {
                                codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding, null);
                            }
                        } else {
                            codeStream.generateEmulatedReadAccessForField(fieldBinding);
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
                                if (fieldBinding.canBeSeenBy(typeBinding2, this, blockScope)) {
                                    SyntheticMethodBinding[] syntheticMethodBindingArr2 = this.syntheticReadAccessors;
                                    SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr2 == null ? null : syntheticMethodBindingArr2[i12];
                                    if (syntheticMethodBinding2 == null) {
                                        codeStream.fieldAccess(Opcodes.OPC_getstatic, fieldBinding, CodeStream.getConstantPoolDeclaringClass(blockScope, fieldBinding, typeBinding2, i12 == 0 && this.indexOfFirstFieldBinding == 1));
                                    } else {
                                        codeStream.invoke(Opcodes.OPC_invokestatic, syntheticMethodBinding2, null);
                                    }
                                } else {
                                    codeStream.generateEmulatedReadAccessForField(fieldBinding);
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
                    int i14 = ((length2 - length) + i12) - 1;
                    if (i14 >= 0) {
                        i10 = length;
                        codeStream.recordPositionsFrom(i13, (int) (this.sourcePositions[i14] >>> 32));
                    } else {
                        i10 = length;
                    }
                    typeBinding2 = typeBinding;
                }
            } else {
                i10 = length;
                z10 = z11;
            }
            if (original2 != null && !original2.canBeSeenBy(typeBinding2, this, blockScope) && original2.isStatic()) {
                codeStream.aconst_null();
            }
            i12++;
            typeBinding = typeBinding5;
            z11 = z10;
            fieldBinding = original2;
            length = i10;
        }
        return fieldBinding;
    }

    @Override
    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
        FieldBinding fieldBinding = this.delegateThis;
        if (fieldBinding != null) {
            codeStream.fieldAccess(Opcodes.OPC_getfield, fieldBinding, null);
        }
    }

    @Override
    public TypeBinding getOtherFieldBindings(BlockScope blockScope) {
        int length = this.tokens.length;
        if ((this.bits & 1) != 0) {
            if (!((FieldBinding) this.binding).isStatic()) {
                if (this.indexOfFirstFieldBinding != 1) {
                    blockScope.problemReporter().staticFieldAccessToNonStaticVariable(this, (FieldBinding) this.binding);
                    return null;
                }
                if (blockScope.methodScope().isStatic) {
                    blockScope.problemReporter().staticFieldAccessToNonStaticVariable(this, (FieldBinding) this.binding);
                    return null;
                }
            }
            if (isFieldUseDeprecated((FieldBinding) this.binding, blockScope, this.indexOfFirstFieldBinding == length ? this.bits : 0)) {
                blockScope.problemReporter().deprecatedField((FieldBinding) this.binding, this);
            }
        }
        Binding binding = this.binding;
        TypeBinding typeBinding = ((VariableBinding) binding).type;
        int i10 = this.indexOfFirstFieldBinding;
        if (i10 == length) {
            this.constant = ((FieldBinding) binding).constant(blockScope);
            return typeBinding;
        }
        int i11 = length - i10;
        this.otherBindings = new FieldBinding[i11];
        this.constant = ((VariableBinding) binding).constant(blockScope);
        while (i10 < length) {
            char[] cArr = this.tokens[i10];
            if (typeBinding == null) {
                return null;
            }
            FieldBinding field = blockScope.getField(typeBinding, cArr, this);
            int i12 = i10 - this.indexOfFirstFieldBinding;
            this.otherBindings[i12] = field;
            if (!field.isValidBinding()) {
                CodeSnippetScope codeSnippetScope = new CodeSnippetScope(blockScope);
                if (this.delegateThis == null) {
                    if (this.evaluationContext.declaringTypeName == null) {
                        this.constant = Constant.NotAConstant;
                        blockScope.problemReporter().invalidField(this, field, i10, typeBinding);
                        return null;
                    }
                    FieldBinding field2 = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
                    this.delegateThis = field2;
                    if (field2 == null) {
                        return super.reportError(blockScope);
                    }
                    this.actualReceiverType = field2.type;
                }
                field = codeSnippetScope.getFieldForCodeSnippet(this.delegateThis.type, cArr, this);
                this.otherBindings[i12] = field;
            }
            if (!field.isValidBinding()) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidField(this, field, i10, typeBinding);
                return null;
            }
            i10++;
            if (isFieldUseDeprecated(field, blockScope, i10 == length ? this.bits : 0)) {
                blockScope.problemReporter().deprecatedField(field, this);
            }
            if (this.constant != Constant.NotAConstant) {
                this.constant = field.constant(blockScope);
            }
            typeBinding = field.type;
        }
        return this.otherBindings[i11 - 1].type;
    }

    @Override
    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FieldBinding fieldBinding, int i10, FlowInfo flowInfo) {
    }

    @Override
    public TypeBinding reportError(BlockScope blockScope) {
        if (this.evaluationContext.declaringTypeName == null) {
            return super.reportError(blockScope);
        }
        FieldBinding field = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
        this.delegateThis = field;
        if (field == null) {
            return super.reportError(blockScope);
        }
        this.actualReceiverType = field.type;
        Binding binding = this.binding;
        if (!(binding instanceof ProblemFieldBinding) || ((ProblemFieldBinding) binding).problemId() != 1) {
            Binding binding2 = this.binding;
            if (!(binding2 instanceof ProblemBinding) || ((ProblemBinding) binding2).problemId() != 1) {
                Binding binding3 = this.binding;
                if ((binding3 instanceof ProblemFieldBinding) && ((ProblemFieldBinding) binding3).problemId() == 2) {
                    Binding binding4 = new CodeSnippetScope(blockScope).getBinding(this.tokens, this.bits & 7, this, (ReferenceBinding) this.delegateThis.type);
                    this.binding = binding4;
                    if (!binding4.isValidBinding()) {
                        return super.reportError(blockScope);
                    }
                    this.bits = (this.bits & (-8)) | 1;
                    TypeBinding otherFieldBindings = getOtherFieldBindings(blockScope);
                    if (otherFieldBindings != null && otherFieldBindings.isValidBinding()) {
                        return otherFieldBindings;
                    }
                }
                return super.reportError(blockScope);
            }
        }
        FieldBinding field2 = blockScope.getField(this.delegateThis.type, this.tokens[0], this);
        if (field2.isValidBinding()) {
            this.binding = field2;
            return checkFieldAccess(blockScope);
        }
        if (((ProblemFieldBinding) field2).problemId() != 2) {
            return super.reportError(blockScope);
        }
        FieldBinding fieldForCodeSnippet = new CodeSnippetScope(blockScope).getFieldForCodeSnippet(this.delegateThis.type, this.tokens[0], this);
        this.binding = fieldForCodeSnippet;
        return fieldForCodeSnippet.isValidBinding() ? checkFieldAccess(blockScope) : super.reportError(blockScope);
    }
}
