package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SuperReference extends ThisReference {
    public SuperReference(int i10, int i11) {
        super(i10, i11);
    }

    public static ExplicitConstructorCall implicitSuperConstructorCall() {
        return new ExplicitConstructorCall(1);
    }

    @Override
    public boolean isImplicitThis() {
        return false;
    }

    @Override
    public boolean isSuper() {
        return true;
    }

    @Override
    public boolean isThis() {
        return false;
    }

    @Override
    public boolean isUnqualifiedSuper() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("super");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        ReferenceBinding enclosingReceiverType = blockScope.enclosingReceiverType();
        if (!checkAccess(blockScope, enclosingReceiverType)) {
            return null;
        }
        if (enclosingReceiverType.f102482id == 1) {
            blockScope.problemReporter().cannotUseSuperInJavaLangObject(this);
            return null;
        }
        ReferenceBinding superclass = enclosingReceiverType.superclass();
        this.resolvedType = superclass;
        return superclass;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
