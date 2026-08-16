package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMessageSend extends MessageSend {
    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnMessageSend:");
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, stringBuffer).append('.');
        }
        if (this.typeArguments != null) {
            stringBuffer.append('<');
            int length = this.typeArguments.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                this.typeArguments[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            this.typeArguments[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        stringBuffer.append(this.selector);
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i12 = 0; i12 < this.arguments.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i12].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(")>");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            int length = expressionArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                this.arguments[length].resolveType(blockScope);
            }
        }
        if (this.receiver.isImplicitThis()) {
            throw new CompletionNodeFound(this, (Binding) null, blockScope);
        }
        TypeBinding resolveType = this.receiver.resolveType(blockScope);
        this.actualReceiverType = resolveType;
        if (resolveType == null || resolveType.isBaseType()) {
            throw new CompletionNodeFound();
        }
        if (this.actualReceiverType.isArrayType()) {
            this.actualReceiverType = blockScope.getJavaLangObject();
        }
        throw new CompletionNodeFound(this, this.actualReceiverType, blockScope);
    }
}
