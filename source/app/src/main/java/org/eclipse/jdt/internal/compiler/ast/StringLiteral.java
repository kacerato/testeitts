package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.StringConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public class StringLiteral extends Literal {
    int lineNumber;
    char[] source;

    public StringLiteral(char[] cArr, int i10, int i11, int i12) {
        this(i10, i11);
        this.source = cArr;
        this.lineNumber = i12 - 1;
    }

    @Override
    public void computeConstant() {
        this.constant = StringConstant.fromValue(String.valueOf(this.source));
    }

    public ExtendedStringLiteral extendWith(CharLiteral charLiteral) {
        return new ExtendedStringLiteral(this, charLiteral);
    }

    public StringLiteralConcatenation extendsWith(StringLiteral stringLiteral) {
        return new StringLiteralConcatenation(this, stringLiteral);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.ldc(this.constant.stringValue());
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public TypeBinding literalType(BlockScope blockScope) {
        return blockScope.getJavaLangString();
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append('\"');
        int i11 = 0;
        while (true) {
            char[] cArr = this.source;
            if (i11 >= cArr.length) {
                stringBuffer.append('\"');
                return stringBuffer;
            }
            Util.appendEscapedChar(stringBuffer, cArr[i11], true);
            i11++;
        }
    }

    @Override
    public char[] source() {
        return this.source;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    public ExtendedStringLiteral extendWith(StringLiteral stringLiteral) {
        return new ExtendedStringLiteral(this, stringLiteral);
    }

    public StringLiteral(int i10, int i11) {
        super(i10, i11);
    }
}
