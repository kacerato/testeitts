package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedAllocationExpression extends QualifiedAllocationExpression {
    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        if (this.enclosingInstance == null) {
            stringBuffer.append("<CompleteOnAllocationExpression:");
        } else {
            stringBuffer.append("<CompleteOnQualifiedAllocationExpression:");
        }
        StringBuffer printExpression = super.printExpression(i10, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeReference typeReference;
        this.argumentTypes = Binding.NO_PARAMETERS;
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            int length = expressionArr.length;
            this.argumentTypes = new TypeBinding[expressionArr.length];
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                this.argumentTypes[length] = this.arguments[length].resolveType(blockScope);
            }
        }
        TypeReference typeReference2 = this.type;
        boolean z10 = (typeReference2 == null || (typeReference2.bits & 524288) == 0) ? false : true;
        Expression expression = this.enclosingInstance;
        if (expression != null) {
            TypeBinding resolveType = expression.resolveType(blockScope);
            if (resolveType == null) {
                Expression expression2 = this.enclosingInstance;
                if ((expression2 instanceof AllocationExpression) && (typeReference = ((AllocationExpression) expression2).type) != null) {
                    resolveType = typeReference.resolvedType;
                }
            }
            if (resolveType == null || !(resolveType instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
            TypeBinding resolveTypeEnclosing = ((SingleTypeReference) this.type).resolveTypeEnclosing(blockScope, (ReferenceBinding) resolveType);
            this.resolvedType = resolveTypeEnclosing;
            if (z10 && (resolveTypeEnclosing instanceof ParameterizedTypeBinding)) {
                TypeBinding[] inferElidedTypes = inferElidedTypes(blockScope);
                if (inferElidedTypes != null) {
                    TypeReference typeReference3 = this.type;
                    ParameterizedTypeBinding createParameterizedType = blockScope.environment().createParameterizedType(((ParameterizedTypeBinding) this.resolvedType).genericType(), inferElidedTypes, this.resolvedType.enclosingType());
                    typeReference3.resolvedType = createParameterizedType;
                    this.resolvedType = createParameterizedType;
                } else {
                    this.bits |= 524288;
                }
            }
            TypeBinding typeBinding = this.resolvedType;
            if (!(typeBinding instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
            if (typeBinding.isInterface()) {
                this.resolvedType = blockScope.getJavaLangObject();
            }
        } else {
            TypeBinding resolveType2 = typeReference2.resolveType(blockScope, true);
            this.resolvedType = resolveType2;
            if (z10 && (resolveType2 instanceof ParameterizedTypeBinding)) {
                TypeBinding[] inferElidedTypes2 = inferElidedTypes(blockScope);
                if (inferElidedTypes2 != null) {
                    TypeReference typeReference4 = this.type;
                    ParameterizedTypeBinding createParameterizedType2 = blockScope.environment().createParameterizedType(((ParameterizedTypeBinding) this.resolvedType).genericType(), inferElidedTypes2, this.resolvedType.enclosingType());
                    typeReference4.resolvedType = createParameterizedType2;
                    this.resolvedType = createParameterizedType2;
                } else {
                    this.bits |= 524288;
                }
            }
            if (!(this.resolvedType instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
        }
        throw new CompletionNodeFound(this, this.resolvedType, blockScope);
    }
}
