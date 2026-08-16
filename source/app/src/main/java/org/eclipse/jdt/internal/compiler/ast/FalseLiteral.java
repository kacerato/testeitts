package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class FalseLiteral extends MagicLiteral {
    static final char[] source = {'f', 'a', 'l', 's', 'e'};

    public FalseLiteral(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public void computeConstant() {
        this.constant = BooleanConstant.fromValue(false);
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
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        int i10 = codeStream.position;
        if (z10 && branchLabel2 != null && branchLabel == null) {
            codeStream.goto_(branchLabel2);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public TypeBinding literalType(BlockScope blockScope) {
        return TypeBinding.BOOLEAN;
    }

    @Override
    public char[] source() {
        return source;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
