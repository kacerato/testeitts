package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class SingleMemberAnnotation extends Annotation {
    public Expression memberValue;
    private MemberValuePair[] singlePairs;

    public SingleMemberAnnotation(TypeReference typeReference, int i10) {
        this.type = typeReference;
        this.sourceStart = i10;
        this.sourceEnd = typeReference.sourceEnd;
    }

    @Override
    public ElementValuePair[] computeElementValuePairs() {
        return new ElementValuePair[]{memberValuePairs()[0].compilerElementPair};
    }

    @Override
    public MemberValuePair[] memberValuePairs() {
        if (this.singlePairs == null) {
            char[] cArr = TypeConstants.VALUE;
            Expression expression = this.memberValue;
            this.singlePairs = new MemberValuePair[]{new MemberValuePair(cArr, expression.sourceStart, expression.sourceEnd, expression)};
        }
        return this.singlePairs;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        super.printExpression(i10, stringBuffer);
        stringBuffer.append('(');
        this.memberValue.printExpression(i10, stringBuffer);
        stringBuffer.append(')');
        return stringBuffer;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, blockScope);
            }
            Expression expression = this.memberValue;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public SingleMemberAnnotation() {
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, classScope);
            }
            Expression expression = this.memberValue;
            if (expression != null) {
                expression.traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
