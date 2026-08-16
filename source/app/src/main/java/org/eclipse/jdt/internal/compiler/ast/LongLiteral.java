package org.eclipse.jdt.internal.compiler.ast;

import com.github.javaparser.ast.expr.LongLiteralExpr;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.LongConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class LongLiteral extends NumberLiteral {
    private char[] reducedForm;
    private static final char[] HEXA_MIN_VALUE = "0x8000000000000000L".toCharArray();
    private static final char[] HEXA_MINUS_ONE_VALUE = "0xffffffffffffffffL".toCharArray();
    private static final char[] OCTAL_MIN_VALUE = "01000000000000000000000L".toCharArray();
    private static final char[] OCTAL_MINUS_ONE_VALUE = "01777777777777777777777L".toCharArray();
    private static final char[] DECIMAL_MIN_VALUE = LongLiteralExpr.MAX_63_BIT_UNSIGNED_VALUE_AS_STRING.toCharArray();
    private static final char[] DECIMAL_MAX_VALUE = "9223372036854775807L".toCharArray();

    public LongLiteral(char[] cArr, char[] cArr2, int i10, int i11) {
        super(cArr, i10, i11);
        this.reducedForm = cArr2;
    }

    public static LongLiteral buildLongLiteral(char[] cArr, int i10, int i11) {
        char[] removePrefixZerosAndUnderscores = NumberLiteral.removePrefixZerosAndUnderscores(cArr, true);
        int length = removePrefixZerosAndUnderscores.length;
        if (length != 19) {
            if (length == 24 && CharOperation.equals(removePrefixZerosAndUnderscores, OCTAL_MIN_VALUE)) {
                if (removePrefixZerosAndUnderscores == cArr) {
                    removePrefixZerosAndUnderscores = null;
                }
                return new LongLiteralMinValue(cArr, removePrefixZerosAndUnderscores, i10, i11);
            }
        } else if (CharOperation.equals(removePrefixZerosAndUnderscores, HEXA_MIN_VALUE)) {
            if (removePrefixZerosAndUnderscores == cArr) {
                removePrefixZerosAndUnderscores = null;
            }
            return new LongLiteralMinValue(cArr, removePrefixZerosAndUnderscores, i10, i11);
        }
        if (removePrefixZerosAndUnderscores == cArr) {
            removePrefixZerosAndUnderscores = null;
        }
        return new LongLiteral(cArr, removePrefixZerosAndUnderscores, i10, i11);
    }

    private void computeValue(char[] cArr, int i10, int i11, int i12) {
        long j10 = 0;
        while (i12 < i10) {
            int i13 = i12 + 1;
            int digit = ScannerHelper.digit(cArr[i12], i11);
            if (digit < 0) {
                return;
            }
            j10 = (j10 * i11) + digit;
            i12 = i13;
        }
        this.constant = LongConstant.fromValue(j10);
    }

    @Override
    public void computeConstant() {
        int i10;
        int i11;
        char[] cArr = this.reducedForm;
        if (cArr == null) {
            cArr = this.source;
        }
        int length = cArr.length;
        int i12 = length - 1;
        if (cArr[0] == '0') {
            i10 = 1;
            if (i12 == 1) {
                this.constant = LongConstant.fromValue(0L);
                return;
            }
            char c10 = cArr[1];
            if (c10 == 'x' || c10 == 'X') {
                i11 = 16;
                i10 = 2;
            } else if (c10 == 'b' || c10 == 'B') {
                i10 = 2;
                i11 = 2;
            } else {
                i11 = 8;
            }
        } else {
            i10 = 0;
            i11 = 10;
        }
        if (i11 == 2) {
            if (length - 3 > 64) {
                return;
            }
            computeValue(cArr, i12, i11, i10);
            return;
        }
        if (i11 == 8) {
            if (length <= 24) {
                if (length != 24 || cArr[i10] <= '1') {
                    if (CharOperation.equals(cArr, OCTAL_MINUS_ONE_VALUE)) {
                        this.constant = LongConstant.fromValue(-1L);
                        return;
                    } else {
                        computeValue(cArr, i12, i11, i10);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i11 != 10) {
            if (i11 == 16 && length <= 19) {
                if (CharOperation.equals(cArr, HEXA_MINUS_ONE_VALUE)) {
                    this.constant = LongConstant.fromValue(-1L);
                    return;
                } else {
                    computeValue(cArr, i12, i11, i10);
                    return;
                }
            }
            return;
        }
        char[] cArr2 = DECIMAL_MAX_VALUE;
        if (length <= cArr2.length) {
            if (length != cArr2.length || CharOperation.compareTo(cArr, cArr2, 0, i12) <= 0) {
                computeValue(cArr, i12, i11, i10);
            }
        }
    }

    public LongLiteral convertToMinValue() {
        if (((this.bits & ASTNode.ParenthesizedMASK) >> 21) != 0) {
            return this;
        }
        char[] cArr = this.reducedForm;
        if (cArr == null) {
            cArr = this.source;
        }
        return (cArr.length == 20 && CharOperation.equals(cArr, DECIMAL_MIN_VALUE, false)) ? new LongLiteralMinValue(this.source, this.reducedForm, this.sourceStart, this.sourceEnd) : this;
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
        return TypeBinding.LONG;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
