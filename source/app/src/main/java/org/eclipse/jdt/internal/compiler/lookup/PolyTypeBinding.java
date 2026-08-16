package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;

public class PolyTypeBinding extends TypeBinding {
    Expression expression;
    boolean vanillaCompatibilty = true;

    public PolyTypeBinding(Expression expression) {
        this.expression = expression;
    }

    public TypeBinding computeBoxingType() {
        PolyTypeBinding polyTypeBinding = new PolyTypeBinding(this.expression);
        polyTypeBinding.vanillaCompatibilty = !this.vanillaCompatibilty;
        return polyTypeBinding;
    }

    @Override
    public char[] constantPoolName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public PackageBinding getPackage() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return this.vanillaCompatibilty ? this.expression.isCompatibleWith(typeBinding, scope) : this.expression.isBoxingCompatibleWith(typeBinding, scope);
    }

    @Override
    public boolean isFunctionalType() {
        return this.expression.isFunctionalType();
    }

    @Override
    public boolean isPolyType() {
        return true;
    }

    @Override
    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return this.expression.isPotentiallyCompatibleWith(typeBinding, scope);
    }

    @Override
    public int kind() {
        return 65540;
    }

    @Override
    public char[] qualifiedSourceName() {
        return readableName();
    }

    @Override
    public char[] readableName() {
        return this.expression.printExpression(0, new StringBuffer()).toString().toCharArray();
    }

    @Override
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        return this.expression.sIsMoreSpecific(typeBinding, typeBinding2, scope);
    }

    @Override
    public char[] shortReadableName() {
        Expression expression = this.expression;
        return expression instanceof LambdaExpression ? ((LambdaExpression) expression).printExpression(0, new StringBuffer(), true).toString().toCharArray() : readableName();
    }

    @Override
    public char[] sourceName() {
        return readableName();
    }

    public String toString() {
        return this.expression.printExpression(0, new StringBuffer("PolyTypeBinding for: ")).toString();
    }
}
