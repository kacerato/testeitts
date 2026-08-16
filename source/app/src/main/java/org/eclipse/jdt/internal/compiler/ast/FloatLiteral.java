package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.FloatConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.FloatUtil;

public class FloatLiteral extends NumberLiteral {
    float value;

    public FloatLiteral(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x004f. Please report as an issue. */
    @Override
    public void computeConstant() {
        if (CharOperation.indexOf('_', this.source) > 0) {
            this.source = CharOperation.remove(this.source, '_');
        }
        try {
            try {
                float floatValue = Float.valueOf(String.valueOf(this.source)).floatValue();
                if (floatValue > Float.MAX_VALUE) {
                    return;
                }
                if (floatValue < Float.MIN_VALUE) {
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
                this.value = floatValue;
                this.constant = FloatConstant.fromValue(floatValue);
            } catch (NumberFormatException unused) {
                float valueOfHexFloatLiteral = FloatUtil.valueOfHexFloatLiteral(this.source);
                if (valueOfHexFloatLiteral == Float.POSITIVE_INFINITY || Float.isNaN(valueOfHexFloatLiteral)) {
                    return;
                }
                this.value = valueOfHexFloatLiteral;
                this.constant = FloatConstant.fromValue(valueOfHexFloatLiteral);
            }
        } catch (NumberFormatException unused2) {
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
        return TypeBinding.FLOAT;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
