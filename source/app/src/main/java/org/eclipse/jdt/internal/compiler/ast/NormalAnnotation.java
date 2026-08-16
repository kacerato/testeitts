package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class NormalAnnotation extends Annotation {
    public MemberValuePair[] memberValuePairs;

    public NormalAnnotation(TypeReference typeReference, int i10) {
        this.type = typeReference;
        this.sourceStart = i10;
        this.sourceEnd = typeReference.sourceEnd;
    }

    @Override
    public ElementValuePair[] computeElementValuePairs() {
        MemberValuePair[] memberValuePairArr = this.memberValuePairs;
        int length = memberValuePairArr == null ? 0 : memberValuePairArr.length;
        if (length == 0) {
            return Binding.NO_ELEMENT_VALUE_PAIRS;
        }
        ElementValuePair[] elementValuePairArr = new ElementValuePair[length];
        for (int i10 = 0; i10 < length; i10++) {
            elementValuePairArr[i10] = this.memberValuePairs[i10].compilerElementPair;
        }
        return elementValuePairArr;
    }

    @Override
    public MemberValuePair[] memberValuePairs() {
        MemberValuePair[] memberValuePairArr = this.memberValuePairs;
        return memberValuePairArr == null ? Annotation.NoValuePairs : memberValuePairArr;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        super.printExpression(i10, stringBuffer);
        stringBuffer.append('(');
        MemberValuePair[] memberValuePairArr = this.memberValuePairs;
        if (memberValuePairArr != null) {
            int length = memberValuePairArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                this.memberValuePairs[i11].print(i10, stringBuffer);
            }
        }
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
            MemberValuePair[] memberValuePairArr = this.memberValuePairs;
            if (memberValuePairArr != null) {
                int length = memberValuePairArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.memberValuePairs[i10].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, classScope);
            }
            MemberValuePair[] memberValuePairArr = this.memberValuePairs;
            if (memberValuePairArr != null) {
                int length = memberValuePairArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.memberValuePairs[i10].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
