package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocArraySingleTypeReference extends ArrayTypeReference {
    public JavadocArraySingleTypeReference(char[] cArr, int i10, long j10) {
        super(cArr, i10, j10);
        this.bits |= 32768;
    }

    @Override
    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope) {
        scope.problemReporter().javadocDeprecatedType(typeBinding, this, scope.getDeclarationModifiers());
    }

    @Override
    public void reportInvalidType(Scope scope) {
        scope.problemReporter().javadocInvalidType(this, this.resolvedType, scope.getDeclarationModifiers());
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
