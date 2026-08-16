package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class FieldInitsFakingFlowContext extends ExceptionHandlingFlowContext {
    public FieldInitsFakingFlowContext(FlowContext flowContext, ASTNode aSTNode, ReferenceBinding[] referenceBindingArr, FlowContext flowContext2, BlockScope blockScope, UnconditionalFlowInfo unconditionalFlowInfo) {
        super(flowContext, aSTNode, referenceBindingArr, flowContext2, blockScope, unconditionalFlowInfo);
    }
}
