package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class LabelFlowContext extends SwitchFlowContext {
    public char[] labelName;

    public LabelFlowContext(FlowContext flowContext, ASTNode aSTNode, char[] cArr, BranchLabel branchLabel, BlockScope blockScope) {
        super(flowContext, aSTNode, branchLabel, false, true);
        this.labelName = cArr;
        checkLabelValidity(blockScope);
    }

    public void checkLabelValidity(BlockScope blockScope) {
        for (FlowContext localParent = getLocalParent(); localParent != null; localParent = localParent.getLocalParent()) {
            char[] labelName = localParent.labelName();
            if (labelName != null && CharOperation.equals(labelName, this.labelName)) {
                blockScope.problemReporter().alreadyDefinedLabel(this.labelName, this.associatedNode);
            }
        }
    }

    @Override
    public String individualToString() {
        return "Label flow context [label:" + String.valueOf(this.labelName) + "]";
    }

    @Override
    public char[] labelName() {
        return this.labelName;
    }
}
