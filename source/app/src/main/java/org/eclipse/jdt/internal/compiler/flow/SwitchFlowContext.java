package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.core.JavaElement;

public class SwitchFlowContext extends FlowContext {
    public BranchLabel breakLabel;
    public UnconditionalFlowInfo initsOnBreak;

    public SwitchFlowContext(FlowContext flowContext, ASTNode aSTNode, BranchLabel branchLabel, boolean z10, boolean z11) {
        super(flowContext, aSTNode, z11);
        this.initsOnBreak = FlowInfo.DEAD_END;
        this.breakLabel = branchLabel;
        if (!z10 || flowContext.conditionalLevel <= -1) {
            return;
        }
        this.conditionalLevel++;
    }

    @Override
    public BranchLabel breakLabel() {
        return this.breakLabel;
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Switch flow context");
        stringBuffer.append("[initsOnBreak -");
        stringBuffer.append(this.initsOnBreak.toString());
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return stringBuffer.toString();
    }

    @Override
    public boolean isBreakable() {
        return true;
    }

    @Override
    public void recordBreakFrom(FlowInfo flowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo = this.initsOnBreak;
        if ((unconditionalFlowInfo.tagBits & 1) == 0) {
            this.initsOnBreak = unconditionalFlowInfo.mergedWith(flowInfo.unconditionalInits());
        } else {
            this.initsOnBreak = flowInfo.unconditionalCopy();
        }
    }
}
