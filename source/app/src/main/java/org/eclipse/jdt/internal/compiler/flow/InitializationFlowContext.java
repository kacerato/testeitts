package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class InitializationFlowContext extends ExceptionHandlingFlowContext {
    public int exceptionCount;
    public FlowInfo[] exceptionThrowerFlowInfos;
    public ASTNode[] exceptionThrowers;
    public FlowInfo initsBeforeContext;
    public TypeBinding[] thrownExceptions;

    public InitializationFlowContext(FlowContext flowContext, ASTNode aSTNode, FlowInfo flowInfo, FlowContext flowContext2, BlockScope blockScope) {
        super(flowContext, aSTNode, Binding.NO_EXCEPTIONS, flowContext2, blockScope, FlowInfo.DEAD_END);
        this.thrownExceptions = new TypeBinding[5];
        this.exceptionThrowers = new ASTNode[5];
        this.exceptionThrowerFlowInfos = new FlowInfo[5];
        this.initsBeforeContext = flowInfo;
    }

    public void checkInitializerExceptions(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        for (int i10 = 0; i10 < this.exceptionCount; i10++) {
            flowContext.checkExceptionHandlers(this.thrownExceptions[i10], this.exceptionThrowers[i10], this.exceptionThrowerFlowInfos[i10], blockScope);
        }
    }

    @Override
    public FlowContext getInitializationContext() {
        return this;
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Initialization flow context");
        for (int i10 = 0; i10 < this.exceptionCount; i10++) {
            stringBuffer.append('[');
            stringBuffer.append(this.thrownExceptions[i10].readableName());
            stringBuffer.append('-');
            stringBuffer.append(this.exceptionThrowerFlowInfos[i10].toString());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return stringBuffer.toString();
    }

    @Override
    public void recordHandlingException(ReferenceBinding referenceBinding, UnconditionalFlowInfo unconditionalFlowInfo, TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode, boolean z10) {
        TypeBinding[] typeBindingArr = this.thrownExceptions;
        int length = typeBindingArr.length;
        if (this.exceptionCount == length) {
            int i10 = length * 2;
            TypeBinding[] typeBindingArr2 = new TypeBinding[i10];
            this.thrownExceptions = typeBindingArr2;
            System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            ASTNode[] aSTNodeArr = this.exceptionThrowers;
            ASTNode[] aSTNodeArr2 = new ASTNode[i10];
            this.exceptionThrowers = aSTNodeArr2;
            System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, length);
            FlowInfo[] flowInfoArr = this.exceptionThrowerFlowInfos;
            FlowInfo[] flowInfoArr2 = new FlowInfo[i10];
            this.exceptionThrowerFlowInfos = flowInfoArr2;
            System.arraycopy(flowInfoArr, 0, flowInfoArr2, 0, length);
        }
        TypeBinding[] typeBindingArr3 = this.thrownExceptions;
        int i11 = this.exceptionCount;
        typeBindingArr3[i11] = typeBinding;
        this.exceptionThrowers[i11] = aSTNode;
        FlowInfo[] flowInfoArr3 = this.exceptionThrowerFlowInfos;
        this.exceptionCount = i11 + 1;
        flowInfoArr3[i11] = unconditionalFlowInfo.copy();
    }
}
