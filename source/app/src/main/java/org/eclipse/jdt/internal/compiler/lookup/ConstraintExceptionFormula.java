package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;

public class ConstraintExceptionFormula extends ConstraintFormula {
    FunctionalExpression left;

    public ConstraintExceptionFormula(FunctionalExpression functionalExpression, TypeBinding typeBinding) {
        this.left = functionalExpression;
        this.right = typeBinding;
        this.relation = 7;
    }

    @Override
    public boolean applySubstitution(BoundSet boundSet, InferenceVariable[] inferenceVariableArr) {
        return super.applySubstitution(boundSet, inferenceVariableArr);
    }

    @Override
    public Collection<InferenceVariable> inputVariables(InferenceContext18 inferenceContext18) {
        FunctionalExpression functionalExpression = this.left;
        int i10 = 0;
        if (functionalExpression instanceof LambdaExpression) {
            TypeBinding typeBinding = this.right;
            if (typeBinding instanceof InferenceVariable) {
                return Collections.singletonList((InferenceVariable) typeBinding);
            }
            if (typeBinding.isFunctionalInterface(inferenceContext18.scope)) {
                LambdaExpression lambdaExpression = (LambdaExpression) this.left;
                MethodBinding singleAbstractMethod = this.right.getSingleAbstractMethod(inferenceContext18.scope, true);
                HashSet hashSet = new HashSet();
                if (lambdaExpression.argumentsTypeElided()) {
                    int length = singleAbstractMethod.parameters.length;
                    while (i10 < length) {
                        singleAbstractMethod.parameters[i10].collectInferenceVariables(hashSet);
                        i10++;
                    }
                }
                TypeBinding typeBinding2 = singleAbstractMethod.returnType;
                if (typeBinding2 != TypeBinding.VOID) {
                    typeBinding2.collectInferenceVariables(hashSet);
                }
                return hashSet;
            }
        } else if (functionalExpression instanceof ReferenceExpression) {
            TypeBinding typeBinding3 = this.right;
            if (typeBinding3 instanceof InferenceVariable) {
                return Collections.singletonList((InferenceVariable) typeBinding3);
            }
            if (typeBinding3.isFunctionalInterface(inferenceContext18.scope)) {
                MethodBinding singleAbstractMethod2 = this.right.getSingleAbstractMethod(inferenceContext18.scope, true);
                HashSet hashSet2 = new HashSet();
                int length2 = singleAbstractMethod2.parameters.length;
                while (i10 < length2) {
                    singleAbstractMethod2.parameters[i10].collectInferenceVariables(hashSet2);
                    i10++;
                }
                singleAbstractMethod2.returnType.collectInferenceVariables(hashSet2);
                return hashSet2;
            }
        }
        return ConstraintFormula.EMPTY_VARIABLE_LIST;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cb  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object reduce(InferenceContext18 inferenceContext18) {
        MethodBinding singleAbstractMethod;
        TypeBinding[] typeBindingArr;
        TypeBinding[] typeBindingArr2;
        Scope scope = inferenceContext18.scope;
        if (this.right.isFunctionalInterface(scope) && (singleAbstractMethod = this.right.getSingleAbstractMethod(scope, true)) != null) {
            FunctionalExpression functionalExpression = this.left;
            if (functionalExpression instanceof LambdaExpression) {
                if (((LambdaExpression) functionalExpression).argumentsTypeElided()) {
                    int length = singleAbstractMethod.parameters.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        if (!singleAbstractMethod.parameters[i10].isProperType(true)) {
                            return ReductionResult.FALSE;
                        }
                    }
                }
                TypeBinding typeBinding = singleAbstractMethod.returnType;
                if (typeBinding != TypeBinding.VOID && !typeBinding.isProperType(true)) {
                    return ReductionResult.FALSE;
                }
            } else if (!((ReferenceExpression) functionalExpression).isExactMethodReference()) {
                int length2 = singleAbstractMethod.parameters.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (!singleAbstractMethod.parameters[i11].isProperType(true)) {
                        return ReductionResult.FALSE;
                    }
                }
                TypeBinding typeBinding2 = singleAbstractMethod.returnType;
                if (typeBinding2 != TypeBinding.VOID && !typeBinding2.isProperType(true)) {
                    return ReductionResult.FALSE;
                }
            }
            ReferenceBinding[] referenceBindingArr = singleAbstractMethod.thrownExceptions;
            InferenceVariable[] inferenceVariableArr = new InferenceVariable[referenceBindingArr.length];
            int i12 = 0;
            for (int i13 = 0; i13 < referenceBindingArr.length; i13++) {
                if (!referenceBindingArr[i13].isProperType(true)) {
                    inferenceVariableArr[i12] = (InferenceVariable) referenceBindingArr[i13];
                    i12++;
                }
            }
            if (i12 == 0) {
                return ReductionResult.TRUE;
            }
            FunctionalExpression functionalExpression2 = this.left;
            if (functionalExpression2 instanceof LambdaExpression) {
                LambdaExpression resolveExpressionExpecting = ((LambdaExpression) functionalExpression2).resolveExpressionExpecting(this.right, inferenceContext18.scope, inferenceContext18);
                if (resolveExpressionExpecting == null) {
                    return ReductionResult.TRUE;
                }
                Set<TypeBinding> thrownExceptions = resolveExpressionExpecting.getThrownExceptions();
                typeBindingArr2 = (TypeBinding[]) thrownExceptions.toArray(new TypeBinding[thrownExceptions.size()]);
            } else {
                ReferenceExpression resolveExpressionExpecting2 = ((ReferenceExpression) functionalExpression2).resolveExpressionExpecting(this.right, scope, inferenceContext18);
                MethodBinding methodBinding = resolveExpressionExpecting2 != null ? resolveExpressionExpecting2.binding : null;
                if (methodBinding == null) {
                    typeBindingArr = null;
                    if (typeBindingArr != null) {
                        return ReductionResult.TRUE;
                    }
                    int length3 = typeBindingArr.length;
                    ArrayList arrayList = new ArrayList();
                    for (int i14 = 0; i14 < length3; i14++) {
                        if (!typeBindingArr[i14].isUncheckedException(false)) {
                            int i15 = 0;
                            while (true) {
                                if (i15 >= referenceBindingArr.length) {
                                    for (int i16 = 0; i16 < i12; i16++) {
                                        arrayList.add(ConstraintTypeFormula.create(typeBindingArr[i14], inferenceVariableArr[i16], 2));
                                    }
                                } else if (!referenceBindingArr[i15].isProperType(true) || !typeBindingArr[i14].isCompatibleWith(referenceBindingArr[i15])) {
                                    i15++;
                                }
                            }
                        }
                    }
                    for (int i17 = 0; i17 < i12; i17++) {
                        inferenceContext18.currentBounds.inThrows.add(inferenceVariableArr[i17].prototype());
                    }
                    return arrayList.toArray(new ConstraintFormula[arrayList.size()]);
                }
                typeBindingArr2 = methodBinding.thrownExceptions;
            }
            typeBindingArr = typeBindingArr2;
            if (typeBindingArr != null) {
            }
        }
        return ReductionResult.FALSE;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('\u27e8');
        this.left.printExpression(4, stringBuffer);
        stringBuffer.append(" \u2286throws ");
        appendTypeName(stringBuffer, this.right);
        stringBuffer.append('\u27e9');
        return stringBuffer.toString();
    }
}
