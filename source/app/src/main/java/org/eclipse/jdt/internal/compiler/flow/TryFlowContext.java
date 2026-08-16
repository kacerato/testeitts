package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public abstract class TryFlowContext extends FlowContext {
    public FlowContext outerTryContext;

    public TryFlowContext(FlowContext flowContext, ASTNode aSTNode) {
        super(flowContext, aSTNode, true);
    }

    @Override
    public void markFinallyNullStatus(LocalVariableBinding localVariableBinding, int i10) {
        FlowContext flowContext = this.outerTryContext;
        if (flowContext != null) {
            flowContext.markFinallyNullStatus(localVariableBinding, i10);
        }
        super.markFinallyNullStatus(localVariableBinding, i10);
    }

    @Override
    public void mergeFinallyNullInfo(FlowInfo flowInfo) {
        FlowContext flowContext = this.outerTryContext;
        if (flowContext != null) {
            flowContext.mergeFinallyNullInfo(flowInfo);
        }
        super.mergeFinallyNullInfo(flowInfo);
    }
}
