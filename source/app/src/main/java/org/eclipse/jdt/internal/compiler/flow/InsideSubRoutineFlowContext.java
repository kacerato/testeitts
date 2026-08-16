package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.core.JavaElement;

public class InsideSubRoutineFlowContext extends TryFlowContext {
    public UnconditionalFlowInfo initsOnReturn;

    public InsideSubRoutineFlowContext(FlowContext flowContext, ASTNode aSTNode) {
        super(flowContext, aSTNode);
        this.initsOnReturn = FlowInfo.DEAD_END;
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Inside SubRoutine flow context");
        stringBuffer.append("[initsOnReturn -");
        stringBuffer.append(this.initsOnReturn.toString());
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return stringBuffer.toString();
    }

    @Override
    public UnconditionalFlowInfo initsOnReturn() {
        return this.initsOnReturn;
    }

    @Override
    public boolean isNonReturningContext() {
        return ((SubRoutineStatement) this.associatedNode).isSubRoutineEscaping();
    }

    @Override
    public void recordReturnFrom(UnconditionalFlowInfo unconditionalFlowInfo) {
        if ((unconditionalFlowInfo.tagBits & 1) == 0) {
            UnconditionalFlowInfo unconditionalFlowInfo2 = this.initsOnReturn;
            if (unconditionalFlowInfo2 == FlowInfo.DEAD_END) {
                this.initsOnReturn = (UnconditionalFlowInfo) unconditionalFlowInfo.copy();
            } else {
                this.initsOnReturn = unconditionalFlowInfo2.mergedWith(unconditionalFlowInfo);
            }
        }
    }

    @Override
    public SubRoutineStatement subroutine() {
        return (SubRoutineStatement) this.associatedNode;
    }
}
