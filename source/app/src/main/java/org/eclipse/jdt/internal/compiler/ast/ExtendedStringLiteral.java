package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.core.JavaElement;

public class ExtendedStringLiteral extends StringLiteral {
    public ExtendedStringLiteral(StringLiteral stringLiteral, CharLiteral charLiteral) {
        super(stringLiteral.source, stringLiteral.sourceStart, stringLiteral.sourceEnd, stringLiteral.lineNumber);
        extendWith(charLiteral);
    }

    @Override
    public ExtendedStringLiteral extendWith(CharLiteral charLiteral) {
        char[] cArr = this.source;
        int length = cArr.length;
        char[] cArr2 = new char[length + 1];
        this.source = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, length);
        this.source[length] = charLiteral.value;
        this.sourceEnd = charLiteral.sourceEnd;
        return this;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("ExtendedStringLiteral{");
        stringBuffer.append(this.source);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    public ExtendedStringLiteral(StringLiteral stringLiteral, StringLiteral stringLiteral2) {
        super(stringLiteral.source, stringLiteral.sourceStart, stringLiteral.sourceEnd, stringLiteral.lineNumber);
        extendWith(stringLiteral2);
    }

    @Override
    public ExtendedStringLiteral extendWith(StringLiteral stringLiteral) {
        char[] cArr = this.source;
        int length = cArr.length;
        char[] cArr2 = new char[stringLiteral.source.length + length];
        this.source = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, length);
        char[] cArr3 = stringLiteral.source;
        System.arraycopy(cArr3, 0, this.source, length, cArr3.length);
        this.sourceEnd = stringLiteral.sourceEnd;
        return this;
    }
}
