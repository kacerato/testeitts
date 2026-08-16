package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.DoubleConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.FloatUtil;

public class DoubleLiteral extends NumberLiteral {
    double value;

    public DoubleLiteral(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0052. Please report as an issue. */
    @Override
    public void computeConstant() {
        if (CharOperation.indexOf('_', this.source) > 0) {
            this.source = CharOperation.remove(this.source, '_');
        }
        try {
            try {
                double doubleValue = Double.valueOf(String.valueOf(this.source)).doubleValue();
                if (doubleValue > Double.MAX_VALUE) {
                    return;
                }
                if (doubleValue < Double.MIN_VALUE) {
                    int i10 = 0;
                    boolean z10 = false;
                    while (true) {
                        char[] cArr = this.source;
                        if (i10 >= cArr.length) {
                            break;
                        }
                        char c10 = cArr[i10];
                        if (c10 != '.' && c10 != '0') {
                            if (c10 == 'P') {
                                break;
                            }
                            if (c10 != 'X') {
                                if (c10 != 'p') {
                                    if (c10 != 'x') {
                                        switch (c10) {
                                            default:
                                                switch (c10) {
                                                    case 'd':
                                                    case 'e':
                                                    case 'f':
                                                        break;
                                                    default:
                                                        return;
                                                }
                                            case 'D':
                                            case 'E':
                                            case 'F':
                                                if (z10) {
                                                    return;
                                                }
                                                break;
                                        }
                                    }
                                } else {
                                    break;
                                }
                            }
                            z10 = true;
                        }
                        i10++;
                    }
                }
                this.value = doubleValue;
                this.constant = DoubleConstant.fromValue(doubleValue);
            } catch (NumberFormatException unused) {
            }
        } catch (NumberFormatException unused2) {
            double valueOfHexDoubleLiteral = FloatUtil.valueOfHexDoubleLiteral(this.source);
            if (valueOfHexDoubleLiteral == Double.POSITIVE_INFINITY || Double.isNaN(valueOfHexDoubleLiteral)) {
                return;
            }
            this.value = valueOfHexDoubleLiteral;
            this.constant = DoubleConstant.fromValue(valueOfHexDoubleLiteral);
        }
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
        return TypeBinding.DOUBLE;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
