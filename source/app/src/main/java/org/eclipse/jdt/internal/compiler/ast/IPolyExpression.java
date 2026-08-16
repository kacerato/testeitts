package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public interface IPolyExpression {
    ExpressionContext getExpressionContext();

    Expression[] getPolyExpressions();

    TypeBinding invocationTargetType();

    boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope);

    boolean isCompatibleWith(TypeBinding typeBinding, Scope scope);

    boolean isFunctionalType();

    boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding);

    boolean isPolyExpression();

    boolean isPolyExpression(MethodBinding methodBinding);

    boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope);

    Expression resolveExpressionExpecting(TypeBinding typeBinding, Scope scope, InferenceContext18 inferenceContext18);

    TypeBinding resolveType(BlockScope blockScope);

    boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope);

    void setExpectedType(TypeBinding typeBinding);

    void setExpressionContext(ExpressionContext expressionContext);
}
