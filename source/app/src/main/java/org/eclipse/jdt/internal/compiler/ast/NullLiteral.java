package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class NullLiteral extends MagicLiteral {
    static final char[] source = {'n', 'u', 'l', 'l'};

    public NullLiteral(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public void computeConstant() {
        this.constant = Constant.NotAConstant;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.aconst_null();
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public TypeBinding literalType(BlockScope blockScope) {
        return TypeBinding.NULL;
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        return 2;
    }

    @Override
    public Object reusableJSRTarget() {
        return TypeBinding.NULL;
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
