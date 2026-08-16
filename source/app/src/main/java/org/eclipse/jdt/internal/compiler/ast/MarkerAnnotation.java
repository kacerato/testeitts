package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;

public class MarkerAnnotation extends Annotation {
    public MarkerAnnotation(TypeReference typeReference, int i10) {
        this.type = typeReference;
        this.sourceStart = i10;
        this.sourceEnd = typeReference.sourceEnd;
    }

    @Override
    public MemberValuePair[] memberValuePairs() {
        return Annotation.NoValuePairs;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        TypeReference typeReference;
        if (aSTVisitor.visit(this, blockScope) && (typeReference = this.type) != null) {
            typeReference.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        TypeReference typeReference;
        if (aSTVisitor.visit(this, classScope) && (typeReference = this.type) != null) {
            typeReference.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
