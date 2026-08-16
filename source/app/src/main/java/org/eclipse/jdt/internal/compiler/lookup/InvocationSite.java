package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;

public interface InvocationSite {

    public static class EmptyWithAstNode implements InvocationSite {
        ASTNode node;

        public EmptyWithAstNode(ASTNode aSTNode) {
            this.node = aSTNode;
        }

        @Override
        public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr) {
        }

        @Override
        public boolean checkingPotentialCompatibility() {
            return false;
        }

        @Override
        public InferenceContext18 freshInferenceContext(Scope scope) {
            return null;
        }

        @Override
        public TypeBinding[] genericTypeArguments() {
            return null;
        }

        @Override
        public ExpressionContext getExpressionContext() {
            return ExpressionContext.VANILLA_CONTEXT;
        }

        @Override
        public TypeBinding invocationTargetType() {
            return null;
        }

        @Override
        public boolean isQualifiedSuper() {
            return false;
        }

        @Override
        public boolean isSuperAccess() {
            return false;
        }

        @Override
        public boolean isTypeAccess() {
            return false;
        }

        @Override
        public boolean receiverIsImplicitThis() {
            return false;
        }

        @Override
        public void setActualReceiverType(ReferenceBinding referenceBinding) {
        }

        @Override
        public void setDepth(int i10) {
        }

        @Override
        public void setFieldIndex(int i10) {
        }

        @Override
        public int sourceEnd() {
            return this.node.sourceEnd;
        }

        @Override
        public int sourceStart() {
            return this.node.sourceStart;
        }
    }

    void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr);

    boolean checkingPotentialCompatibility();

    InferenceContext18 freshInferenceContext(Scope scope);

    TypeBinding[] genericTypeArguments();

    ExpressionContext getExpressionContext();

    TypeBinding invocationTargetType();

    boolean isQualifiedSuper();

    boolean isSuperAccess();

    boolean isTypeAccess();

    default int nameSourceEnd() {
        return sourceEnd();
    }

    default int nameSourceStart() {
        return sourceStart();
    }

    boolean receiverIsImplicitThis();

    void setActualReceiverType(ReferenceBinding referenceBinding);

    void setDepth(int i10);

    void setFieldIndex(int i10);

    int sourceEnd();

    int sourceStart();
}
