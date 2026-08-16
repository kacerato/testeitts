package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class Literal extends Expression {
    public Literal(int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public abstract void computeConstant();

    public abstract TypeBinding literalType(BlockScope blockScope);

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(source());
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.resolvedType = literalType(blockScope);
        computeConstant();
        if (this.constant == null) {
            blockScope.problemReporter().constantOutOfRange(this, this.resolvedType);
            this.constant = Constant.NotAConstant;
        }
        return this.resolvedType;
    }

    public abstract char[] source();
}
