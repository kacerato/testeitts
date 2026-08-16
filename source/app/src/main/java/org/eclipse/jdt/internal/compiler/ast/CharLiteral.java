package org.eclipse.jdt.internal.compiler.ast;

import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.CharConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.JavaElement;

public class CharLiteral extends NumberLiteral {
    char value;

    public CharLiteral(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
        computeValue();
    }

    private void computeValue() {
        char[] cArr = this.source;
        char c10 = cArr[1];
        this.value = c10;
        if (c10 != '\\') {
            return;
        }
        char c11 = cArr[2];
        if (c11 == '\"') {
            this.value = '\"';
            return;
        }
        if (c11 == '\'') {
            this.value = JavaElement.JEM_MODULAR_CLASSFILE;
            return;
        }
        if (c11 == '\\') {
            this.value = JavaElement.JEM_ESCAPE;
            return;
        }
        if (c11 == 'b') {
            this.value = '\b';
            return;
        }
        if (c11 == 'f') {
            this.value = '\f';
            return;
        }
        if (c11 == 'n') {
            this.value = '\n';
            return;
        }
        if (c11 == 'r') {
            this.value = CharUtils.CR;
            return;
        }
        if (c11 == 't') {
            this.value = '\t';
            return;
        }
        int numericValue = ScannerHelper.getNumericValue(c11);
        char c12 = this.source[3];
        if (c12 == '\'') {
            char c13 = (char) numericValue;
            this.value = c13;
            this.constant = CharConstant.fromValue(c13);
        } else {
            int numericValue2 = (numericValue * 8) + ScannerHelper.getNumericValue(c12);
            char c14 = this.source[4];
            if (c14 != '\'') {
                numericValue2 = (numericValue2 * 8) + ScannerHelper.getNumericValue(c14);
            }
            this.value = (char) numericValue2;
        }
    }

    @Override
    public void computeConstant() {
        this.constant = CharConstant.fromValue(this.value);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.generateConstant(this.constant, this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public TypeBinding literalType(BlockScope blockScope) {
        return TypeBinding.CHAR;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
