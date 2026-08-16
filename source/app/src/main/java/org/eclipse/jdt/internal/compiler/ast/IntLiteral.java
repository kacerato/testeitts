package org.eclipse.jdt.internal.compiler.ast;

import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IntConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class IntLiteral extends NumberLiteral {
    private char[] reducedForm;
    public int value;
    private static final char[] HEXA_MIN_VALUE = "0x80000000".toCharArray();
    private static final char[] HEXA_MINUS_ONE_VALUE = "0xffffffff".toCharArray();
    private static final char[] OCTAL_MIN_VALUE = "020000000000".toCharArray();
    private static final char[] OCTAL_MINUS_ONE_VALUE = "037777777777".toCharArray();
    private static final char[] DECIMAL_MIN_VALUE = IntegerLiteralExpr.MAX_31_BIT_UNSIGNED_VALUE_AS_STRING.toCharArray();
    private static final char[] DECIMAL_MAX_VALUE = "2147483647".toCharArray();
    public static final IntLiteral One = new IntLiteral(new char[]{'1'}, null, 0, 0, 1, IntConstant.fromValue(1));

    public IntLiteral(char[] cArr, char[] cArr2, int i10, int i11) {
        super(cArr, i10, i11);
        this.reducedForm = cArr2;
    }

    public static IntLiteral buildIntLiteral(char[] cArr, int i10, int i11) {
        char[] removePrefixZerosAndUnderscores = NumberLiteral.removePrefixZerosAndUnderscores(cArr, false);
        int length = removePrefixZerosAndUnderscores.length;
        if (length != 10) {
            if (length == 12 && CharOperation.equals(removePrefixZerosAndUnderscores, OCTAL_MIN_VALUE)) {
                if (removePrefixZerosAndUnderscores == cArr) {
                    removePrefixZerosAndUnderscores = null;
                }
                return new IntLiteralMinValue(cArr, removePrefixZerosAndUnderscores, i10, i11);
            }
        } else if (CharOperation.equals(removePrefixZerosAndUnderscores, HEXA_MIN_VALUE)) {
            if (removePrefixZerosAndUnderscores == cArr) {
                removePrefixZerosAndUnderscores = null;
            }
            return new IntLiteralMinValue(cArr, removePrefixZerosAndUnderscores, i10, i11);
        }
        if (removePrefixZerosAndUnderscores == cArr) {
            removePrefixZerosAndUnderscores = null;
        }
        return new IntLiteral(cArr, removePrefixZerosAndUnderscores, i10, i11);
    }

    private void computeValue(char[] cArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i12 < i10) {
            int i14 = i12 + 1;
            int digit = ScannerHelper.digit(cArr[i12], i11);
            if (digit < 0) {
                return;
            }
            i13 = (i13 * i11) + digit;
            i12 = i14;
        }
        this.constant = IntConstant.fromValue(i13);
    }

    @Override
    public void computeConstant() {
        int i10;
        char[] cArr = this.reducedForm;
        if (cArr == null) {
            cArr = this.source;
        }
        int length = cArr.length;
        int i11 = 0;
        if (cArr[0] != '0') {
            i10 = 10;
        } else {
            if (length == 1) {
                this.constant = IntConstant.fromValue(0);
                return;
            }
            char c10 = cArr[1];
            if (c10 == 'x' || c10 == 'X') {
                i10 = 16;
                i11 = 2;
            } else if (c10 == 'b' || c10 == 'B') {
                i11 = 2;
                i10 = 2;
            } else {
                i11 = 1;
                i10 = 8;
            }
        }
        if (i10 == 2) {
            if (length - 2 > 32) {
                return;
            }
            computeValue(cArr, length, i10, i11);
            return;
        }
        if (i10 == 8) {
            if (length <= 12) {
                if (length != 12 || cArr[i11] <= '4') {
                    if (CharOperation.equals(cArr, OCTAL_MINUS_ONE_VALUE)) {
                        this.constant = IntConstant.fromValue(-1);
                        return;
                    } else {
                        computeValue(cArr, length, i10, i11);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i10 != 10) {
            if (i10 == 16 && length <= 10) {
                if (CharOperation.equals(cArr, HEXA_MINUS_ONE_VALUE)) {
                    this.constant = IntConstant.fromValue(-1);
                    return;
                } else {
                    computeValue(cArr, length, i10, i11);
                    return;
                }
            }
            return;
        }
        char[] cArr2 = DECIMAL_MAX_VALUE;
        if (length <= cArr2.length) {
            if (length != cArr2.length || CharOperation.compareTo(cArr, cArr2) <= 0) {
                computeValue(cArr, length, i10, i11);
            }
        }
    }

    public IntLiteral convertToMinValue() {
        if (((this.bits & ASTNode.ParenthesizedMASK) >> 21) != 0) {
            return this;
        }
        char[] cArr = this.reducedForm;
        if (cArr == null) {
            cArr = this.source;
        }
        return (cArr.length == 10 && CharOperation.equals(cArr, DECIMAL_MIN_VALUE)) ? new IntLiteralMinValue(this.source, this.reducedForm, this.sourceStart, this.sourceEnd) : this;
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
        return TypeBinding.INT;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    public IntLiteral(char[] cArr, char[] cArr2, int i10, int i11, int i12, Constant constant) {
        super(cArr, i10, i11);
        this.reducedForm = cArr2;
        this.value = i12;
        this.constant = constant;
    }
}
