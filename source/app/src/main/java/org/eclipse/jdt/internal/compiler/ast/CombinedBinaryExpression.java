package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class CombinedBinaryExpression extends BinaryExpression {
    public static final int ARITY_MAX_MAX = 160;
    public static final int ARITY_MAX_MIN = 20;
    public static int defaultArityMaxStartingValue = 20;
    public int arity;
    public int arityMax;
    public BinaryExpression[] referencesTable;

    public CombinedBinaryExpression(Expression expression, Expression expression2, int i10, int i11) {
        super(expression, expression2, i10);
        initArity(expression, i11);
    }

    private void initArity(Expression expression, int i10) {
        this.arity = i10;
        if (i10 <= 1) {
            this.arityMax = defaultArityMaxStartingValue;
            return;
        }
        BinaryExpression[] binaryExpressionArr = new BinaryExpression[i10];
        this.referencesTable = binaryExpressionArr;
        int i11 = i10 - 1;
        binaryExpressionArr[i11] = (BinaryExpression) expression;
        while (i11 > 0) {
            BinaryExpression[] binaryExpressionArr2 = this.referencesTable;
            binaryExpressionArr2[i11 - 1] = (BinaryExpression) binaryExpressionArr2[i11].left;
            i11--;
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        BinaryExpression[] binaryExpressionArr = this.referencesTable;
        if (binaryExpressionArr == null) {
            return super.analyseCode(blockScope, flowContext, flowInfo);
        }
        try {
            BinaryExpression binaryExpression = binaryExpressionArr[0];
            UnconditionalFlowInfo unconditionalInits = binaryExpression.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
            if (binaryExpression.resolvedType.f102482id != 11) {
                binaryExpression.left.checkNPE(blockScope, flowContext, unconditionalInits);
            }
            int i10 = this.arity;
            for (int i11 = 0; i11 < i10; i11++) {
                BinaryExpression binaryExpression2 = this.referencesTable[i11];
                unconditionalInits = binaryExpression2.right.analyseCode(blockScope, flowContext, unconditionalInits).unconditionalInits();
                if (binaryExpression2.resolvedType.f102482id != 11) {
                    binaryExpression2.right.checkNPE(blockScope, flowContext, unconditionalInits);
                }
            }
            UnconditionalFlowInfo unconditionalInits2 = this.right.analyseCode(blockScope, flowContext, unconditionalInits).unconditionalInits();
            if (this.resolvedType.f102482id != 11) {
                this.right.checkNPE(blockScope, flowContext, unconditionalInits2);
            }
            flowContext.recordAbruptExit();
            return unconditionalInits2;
        } catch (Throwable th2) {
            flowContext.recordAbruptExit();
            throw th2;
        }
    }

    @Override
    public void generateOptimizedStringConcatenation(BlockScope blockScope, CodeStream codeStream, int i10) {
        BinaryExpression[] binaryExpressionArr = this.referencesTable;
        if (binaryExpressionArr == null) {
            super.generateOptimizedStringConcatenation(blockScope, codeStream, i10);
            return;
        }
        int i11 = this.bits;
        if (((i11 & ASTNode.OperatorMASK) >> 6) != 14 || (i11 & 15) != 11) {
            super.generateOptimizedStringConcatenation(blockScope, codeStream, i10);
            return;
        }
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant) {
            codeStream.generateConstant(constant, this.implicitConversion);
            codeStream.invokeStringConcatenationAppendForType(this.implicitConversion & 15);
            return;
        }
        BinaryExpression binaryExpression = binaryExpressionArr[0];
        int i12 = codeStream.position;
        int i13 = this.arity - 1;
        while (true) {
            if (i13 < 0) {
                break;
            }
            binaryExpression = this.referencesTable[i13];
            Constant constant2 = binaryExpression.constant;
            if (constant2 != Constant.NotAConstant) {
                codeStream.generateConstant(constant2, binaryExpression.implicitConversion);
                codeStream.invokeStringConcatenationAppendForType(binaryExpression.implicitConversion & 15);
                break;
            }
            i13--;
        }
        int i14 = i13 + 1;
        if (i14 == 0) {
            Expression expression = binaryExpression.left;
            expression.generateOptimizedStringConcatenation(blockScope, codeStream, expression.implicitConversion & 15);
        }
        while (i14 < this.arity) {
            BinaryExpression binaryExpression2 = this.referencesTable[i14];
            codeStream.recordPositionsFrom(i12, binaryExpression2.left.sourceStart);
            int i15 = codeStream.position;
            Expression expression2 = binaryExpression2.right;
            expression2.generateOptimizedStringConcatenation(blockScope, codeStream, expression2.implicitConversion & 15);
            codeStream.recordPositionsFrom(i15, binaryExpression2.right.sourceStart);
            i14++;
        }
        codeStream.recordPositionsFrom(i12, this.left.sourceStart);
        int i16 = codeStream.position;
        Expression expression3 = this.right;
        expression3.generateOptimizedStringConcatenation(blockScope, codeStream, expression3.implicitConversion & 15);
        codeStream.recordPositionsFrom(i16, this.right.sourceStart);
    }

    @Override
    public void generateOptimizedStringConcatenationCreation(BlockScope blockScope, CodeStream codeStream, int i10) {
        BinaryExpression[] binaryExpressionArr = this.referencesTable;
        if (binaryExpressionArr == null) {
            super.generateOptimizedStringConcatenationCreation(blockScope, codeStream, i10);
            return;
        }
        int i11 = this.bits;
        if (((i11 & ASTNode.OperatorMASK) >> 6) != 14 || (i11 & 15) != 11 || this.constant != Constant.NotAConstant) {
            super.generateOptimizedStringConcatenationCreation(blockScope, codeStream, i10);
            return;
        }
        int i12 = codeStream.position;
        int i13 = this.arity;
        BinaryExpression binaryExpression = binaryExpressionArr[i13 - 1];
        int i14 = i13 - 1;
        while (true) {
            if (i14 < 0) {
                break;
            }
            binaryExpression = this.referencesTable[i14];
            int i15 = binaryExpression.bits;
            if (((i15 & ASTNode.OperatorMASK) >> 6) != 14 || (i15 & 15) != 11) {
                break;
            }
            if (binaryExpression.constant != Constant.NotAConstant) {
                codeStream.newStringContatenation();
                codeStream.dup();
                codeStream.ldc(binaryExpression.constant.stringValue());
                codeStream.invokeStringConcatenationStringConstructor();
                break;
            }
            i14--;
        }
        binaryExpression.generateOptimizedStringConcatenationCreation(blockScope, codeStream, binaryExpression.implicitConversion & 15);
        int i16 = i14 + 1;
        if (i16 == 0) {
            Expression expression = binaryExpression.left;
            expression.generateOptimizedStringConcatenationCreation(blockScope, codeStream, expression.implicitConversion & 15);
        }
        while (i16 < this.arity) {
            BinaryExpression binaryExpression2 = this.referencesTable[i16];
            codeStream.recordPositionsFrom(i12, binaryExpression2.left.sourceStart);
            int i17 = codeStream.position;
            Expression expression2 = binaryExpression2.right;
            expression2.generateOptimizedStringConcatenation(blockScope, codeStream, expression2.implicitConversion & 15);
            codeStream.recordPositionsFrom(i17, binaryExpression2.right.sourceStart);
            i16++;
        }
        codeStream.recordPositionsFrom(i12, this.left.sourceStart);
        int i18 = codeStream.position;
        Expression expression3 = this.right;
        expression3.generateOptimizedStringConcatenation(blockScope, codeStream, expression3.implicitConversion & 15);
        codeStream.recordPositionsFrom(i18, this.right.sourceStart);
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        if (this.referencesTable == null) {
            return super.printExpressionNoParenthesis(i10, stringBuffer);
        }
        String operatorToString = operatorToString();
        for (int i11 = this.arity - 1; i11 >= 0; i11--) {
            stringBuffer.append('(');
        }
        StringBuffer printExpression = this.referencesTable[0].left.printExpression(i10, stringBuffer);
        int i12 = this.arity;
        for (int i13 = 0; i13 < i12; i13++) {
            printExpression.append(C15883c.f126249O);
            printExpression.append(operatorToString);
            printExpression.append(C15883c.f126249O);
            printExpression = this.referencesTable[i13].right.printExpression(0, printExpression);
            printExpression.append(')');
        }
        printExpression.append(C15883c.f126249O);
        printExpression.append(operatorToString);
        printExpression.append(C15883c.f126249O);
        return this.right.printExpression(0, printExpression);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        BinaryExpression[] binaryExpressionArr = this.referencesTable;
        if (binaryExpressionArr == null) {
            return super.resolveType(blockScope);
        }
        Expression expression = binaryExpressionArr[0].left;
        if (expression instanceof CastExpression) {
            expression.bits |= 32;
        }
        expression.resolveType(blockScope);
        int i10 = this.arity;
        for (int i11 = 0; i11 < i10; i11++) {
            this.referencesTable[i11].nonRecursiveResolveTypeUpwards(blockScope);
        }
        nonRecursiveResolveTypeUpwards(blockScope);
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (this.referencesTable == null) {
            super.traverse(aSTVisitor, blockScope);
            return;
        }
        if (aSTVisitor.visit(this, blockScope)) {
            int i10 = this.arity - 1;
            while (true) {
                if (i10 < 0) {
                    break;
                }
                if (!aSTVisitor.visit(this.referencesTable[i10], blockScope)) {
                    aSTVisitor.endVisit(this.referencesTable[i10], blockScope);
                    break;
                }
                i10--;
            }
            int i11 = i10 + 1;
            if (i11 == 0) {
                this.referencesTable[0].left.traverse(aSTVisitor, blockScope);
            }
            int i12 = this.arity;
            while (i11 < i12) {
                this.referencesTable[i11].right.traverse(aSTVisitor, blockScope);
                aSTVisitor.endVisit(this.referencesTable[i11], blockScope);
                i11++;
            }
            this.right.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void tuneArityMax() {
        int i10 = this.arityMax;
        if (i10 < 160) {
            this.arityMax = i10 * 2;
        }
    }

    public CombinedBinaryExpression(CombinedBinaryExpression combinedBinaryExpression) {
        super(combinedBinaryExpression);
        initArity(combinedBinaryExpression.left, combinedBinaryExpression.arity);
    }
}
