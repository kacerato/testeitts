package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class CodeSnippetAllocationExpression extends AllocationExpression implements ProblemReasons, EvaluationConstants {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;

    public CodeSnippetAllocationExpression(EvaluationContext evaluationContext) {
        this.evaluationContext = evaluationContext;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        MethodBinding original = this.binding.original();
        ReferenceBinding referenceBinding = original.declaringClass;
        int i11 = 0;
        if (original.canBeSeenBy(referenceBinding, this, blockScope)) {
            codeStream.new_(this.type, referenceBinding);
            if (z10) {
                codeStream.dup();
            }
            codeStream.recordPositionsFrom(i10, this.type.sourceStart);
            if (referenceBinding.isNestedType()) {
                codeStream.generateSyntheticEnclosingInstanceValues(blockScope, referenceBinding, enclosingInstance(), this);
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length = expressionArr.length;
                while (i11 < length) {
                    this.arguments[i11].generateCode(blockScope, codeStream, true);
                    i11++;
                }
            }
            if (referenceBinding.isNestedType()) {
                codeStream.generateSyntheticOuterArgumentValues(blockScope, referenceBinding, this);
            }
            codeStream.invoke(Opcodes.OPC_invokespecial, original, null, this.typeArguments);
        } else {
            codeStream.generateEmulationForConstructor(blockScope, original);
            Expression[] expressionArr2 = this.arguments;
            if (expressionArr2 != null) {
                int length2 = expressionArr2.length;
                codeStream.generateInlinedValue(length2);
                codeStream.newArray(blockScope.createArrayType(blockScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
                codeStream.dup();
                while (i11 < length2) {
                    codeStream.generateInlinedValue(i11);
                    this.arguments[i11].generateCode(blockScope, codeStream, true);
                    TypeBinding typeBinding = original.parameters[i11];
                    if (typeBinding.isBaseType() && typeBinding != TypeBinding.NULL) {
                        codeStream.generateBoxingConversion(original.parameters[i11].f102482id);
                    }
                    codeStream.aastore();
                    if (i11 < length2 - 1) {
                        codeStream.dup();
                    }
                    i11++;
                }
            } else {
                codeStream.generateInlinedValue(0);
                codeStream.newArray(blockScope.createArrayType(blockScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
            }
            codeStream.invokeJavaLangReflectConstructorNewInstance();
            codeStream.checkcast(referenceBinding);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
    }

    @Override
    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        Expression[] expressionArr;
        this.constant = Constant.NotAConstant;
        TypeBinding resolveType = this.type.resolveType(blockScope, true);
        this.resolvedType = resolveType;
        if (this.type instanceof ParameterizedQualifiedTypeReference) {
            ReferenceBinding referenceBinding = (ReferenceBinding) resolveType;
            if (referenceBinding == null) {
                return referenceBinding;
            }
            while (true) {
                if ((referenceBinding.modifiers & 8) != 0 || referenceBinding.isRawType()) {
                    break;
                }
                referenceBinding = referenceBinding.enclosingType();
                if (referenceBinding == null) {
                    ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) this.type;
                    int length = parameterizedQualifiedTypeReference.typeArguments.length - 2;
                    while (true) {
                        if (length < 0) {
                            break;
                        }
                        if (parameterizedQualifiedTypeReference.typeArguments[length] != null) {
                            blockScope.problemReporter().illegalQualifiedParameterizedTypeAllocation(this.type, this.resolvedType);
                            break;
                        }
                        length--;
                    }
                }
            }
        }
        TypeReference typeReference = this.type;
        int i10 = 0;
        boolean z10 = (typeReference == null || (typeReference.bits & 524288) == 0) ? false : true;
        TypeReference[] typeReferenceArr = this.typeArguments;
        if (typeReferenceArr != null) {
            int length2 = typeReferenceArr.length;
            this.argumentsHaveErrors = blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_5;
            this.genericTypeArguments = new TypeBinding[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                TypeReference typeReference2 = this.typeArguments[i11];
                TypeBinding[] typeBindingArr = this.genericTypeArguments;
                TypeBinding resolveType2 = typeReference2.resolveType(blockScope, true);
                typeBindingArr[i11] = resolveType2;
                if (resolveType2 == null) {
                    this.argumentsHaveErrors = true;
                }
                if (this.argumentsHaveErrors && (typeReference2 instanceof Wildcard)) {
                    blockScope.problemReporter().illegalUsageOfWildcard(typeReference2);
                }
            }
            if (z10) {
                blockScope.problemReporter().diamondNotWithExplicitTypeArguments(this.typeArguments);
                return null;
            }
            if (this.argumentsHaveErrors) {
                Expression[] expressionArr2 = this.arguments;
                if (expressionArr2 != null) {
                    int length3 = expressionArr2.length;
                    while (i10 < length3) {
                        this.arguments[i10].resolveType(blockScope);
                        i10++;
                    }
                }
                return null;
            }
        }
        this.argumentTypes = Binding.NO_PARAMETERS;
        Expression[] expressionArr3 = this.arguments;
        if (expressionArr3 != null) {
            this.argumentsHaveErrors = false;
            int length4 = expressionArr3.length;
            this.argumentTypes = new TypeBinding[length4];
            for (int i12 = 0; i12 < length4; i12++) {
                Expression expression = this.arguments[i12];
                if (expression instanceof CastExpression) {
                    expression.bits |= 32;
                    this.argsContainCast = true;
                }
                expression.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                TypeBinding[] typeBindingArr2 = this.argumentTypes;
                TypeBinding resolveType3 = expression.resolveType(blockScope);
                typeBindingArr2[i12] = resolveType3;
                if (resolveType3 == null) {
                    this.argumentsHaveErrors = true;
                }
            }
            if (this.argumentsHaveErrors) {
                return this.resolvedType;
            }
        }
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return null;
        }
        if (!typeBinding.canBeInstantiated()) {
            blockScope.problemReporter().cannotInstantiate(this.type, this.resolvedType);
            return this.resolvedType;
        }
        if (z10) {
            TypeBinding[] inferElidedTypes = inferElidedTypes(blockScope);
            if (inferElidedTypes == null) {
                blockScope.problemReporter().cannotInferElidedTypes(this);
                this.resolvedType = null;
                return null;
            }
            TypeReference typeReference3 = this.type;
            ParameterizedTypeBinding createParameterizedType = blockScope.environment().createParameterizedType(((ParameterizedTypeBinding) this.resolvedType).genericType(), inferElidedTypes, ((ParameterizedTypeBinding) this.resolvedType).enclosingType());
            typeReference3.resolvedType = createParameterizedType;
            this.resolvedType = createParameterizedType;
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) this.resolvedType;
        MethodBinding findConstructorBinding = findConstructorBinding(blockScope, this, referenceBinding2, this.argumentTypes);
        this.binding = findConstructorBinding;
        if (!findConstructorBinding.isValidBinding()) {
            MethodBinding methodBinding = this.binding;
            if (!(methodBinding instanceof ProblemMethodBinding) || ((ProblemMethodBinding) methodBinding).problemId() != 2) {
                MethodBinding methodBinding2 = this.binding;
                if (methodBinding2.declaringClass == null) {
                    methodBinding2.declaringClass = referenceBinding2;
                }
                TypeReference typeReference4 = this.type;
                if (typeReference4 != null && !typeReference4.resolvedType.isValidBinding()) {
                    return null;
                }
                blockScope.problemReporter().invalidConstructor(this, this.binding);
                return this.resolvedType;
            }
            if (this.evaluationContext.declaringTypeName == null) {
                MethodBinding methodBinding3 = this.binding;
                if (methodBinding3.declaringClass == null) {
                    methodBinding3.declaringClass = referenceBinding2;
                }
                TypeReference typeReference5 = this.type;
                if (typeReference5 != null && !typeReference5.resolvedType.isValidBinding()) {
                    return null;
                }
                blockScope.problemReporter().invalidConstructor(this, this.binding);
                return this.resolvedType;
            }
            FieldBinding field = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
            this.delegateThis = field;
            if (field == null) {
                MethodBinding methodBinding4 = this.binding;
                if (methodBinding4.declaringClass == null) {
                    methodBinding4.declaringClass = referenceBinding2;
                }
                TypeReference typeReference6 = this.type;
                if (typeReference6 != null && !typeReference6.resolvedType.isValidBinding()) {
                    return null;
                }
                blockScope.problemReporter().invalidConstructor(this, this.binding);
                return this.resolvedType;
            }
            MethodBinding constructor = new CodeSnippetScope(blockScope).getConstructor((ReferenceBinding) this.delegateThis.type, this.argumentTypes, this);
            if (!constructor.isValidBinding()) {
                MethodBinding methodBinding5 = this.binding;
                if (methodBinding5.declaringClass == null) {
                    methodBinding5.declaringClass = referenceBinding2;
                }
                TypeReference typeReference7 = this.type;
                if (typeReference7 != null && !typeReference7.resolvedType.isValidBinding()) {
                    return null;
                }
                blockScope.problemReporter().invalidConstructor(this, this.binding);
                return this.resolvedType;
            }
            this.binding = constructor;
        }
        if (isMethodUseDeprecated(this.binding, blockScope, true, this)) {
            blockScope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (this.arguments != null) {
            while (true) {
                expressionArr = this.arguments;
                if (i10 >= expressionArr.length) {
                    break;
                }
                TypeBinding typeBinding2 = this.binding.parameters[i10];
                TypeBinding typeBinding3 = this.argumentTypes[i10];
                expressionArr[i10].computeConversion(blockScope, typeBinding2, typeBinding3);
                if (typeBinding3.needsUncheckedConversion(typeBinding2)) {
                    blockScope.problemReporter().unsafeTypeConversion(this.arguments[i10], typeBinding3, typeBinding2);
                }
                i10++;
            }
            if (this.argsContainCast) {
                CastExpression.checkNeedForArgumentCasts(blockScope, null, referenceBinding2, this.binding, expressionArr, this.argumentTypes, this);
            }
        }
        if (referenceBinding2.isRawType() && this.binding.hasSubstitutedParameters()) {
            blockScope.problemReporter().unsafeRawInvocation(this, this.binding);
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        return referenceBinding2;
    }
}
