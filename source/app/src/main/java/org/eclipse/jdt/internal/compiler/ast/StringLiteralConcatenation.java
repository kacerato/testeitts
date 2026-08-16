package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.core.JavaElement;

public class StringLiteralConcatenation extends StringLiteral {
    private static final int INITIAL_SIZE = 5;
    public int counter;
    public Expression[] literals;

    public StringLiteralConcatenation(StringLiteral stringLiteral, StringLiteral stringLiteral2) {
        super(stringLiteral.sourceStart, stringLiteral.sourceEnd);
        this.source = stringLiteral.source;
        StringLiteral[] stringLiteralArr = new StringLiteral[5];
        this.literals = stringLiteralArr;
        this.counter = 1;
        stringLiteralArr[0] = stringLiteral;
        extendsWith(stringLiteral2);
    }

    @Override
    public StringLiteralConcatenation extendsWith(StringLiteral stringLiteral) {
        this.sourceEnd = stringLiteral.sourceEnd;
        Expression[] expressionArr = this.literals;
        int length = expressionArr.length;
        if (this.counter == length) {
            StringLiteral[] stringLiteralArr = new StringLiteral[length + 5];
            this.literals = stringLiteralArr;
            System.arraycopy(expressionArr, 0, stringLiteralArr, 0, length);
        }
        char[] cArr = this.source;
        int length2 = cArr.length;
        char[] cArr2 = new char[stringLiteral.source.length + length2];
        this.source = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, length2);
        char[] cArr3 = stringLiteral.source;
        System.arraycopy(cArr3, 0, this.source, length2, cArr3.length);
        Expression[] expressionArr2 = this.literals;
        int i10 = this.counter;
        this.counter = i10 + 1;
        expressionArr2[i10] = stringLiteral;
        return this;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("StringLiteralConcatenation{");
        int i11 = this.counter;
        for (int i12 = 0; i12 < i11; i12++) {
            this.literals[i12].printExpression(i10, stringBuffer);
            stringBuffer.append("+\n");
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer;
    }

    @Override
    public char[] source() {
        return this.source;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            int i10 = this.counter;
            for (int i11 = 0; i11 < i10; i11++) {
                this.literals[i11].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
