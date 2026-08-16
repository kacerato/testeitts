package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMessageSendName extends MessageSend {
    public CompletionOnMessageSendName(char[] cArr, int i10, int i11) {
        this.selector = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.nameSourcePosition = i11;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnMessageSendName:");
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
        stringBuffer.append(")>");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        if (this.receiver.isImplicitThis()) {
            throw new CompletionNodeFound();
        }
        TypeBinding resolveType = this.receiver.resolveType(blockScope);
        this.actualReceiverType = resolveType;
        if (resolveType == null || resolveType.isBaseType() || this.actualReceiverType.isArrayType()) {
            throw new CompletionNodeFound();
        }
        TypeReference[] typeReferenceArr = this.typeArguments;
        if (typeReferenceArr != null) {
            int length = typeReferenceArr.length;
            this.genericTypeArguments = new TypeBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.genericTypeArguments[i10] = this.typeArguments[i10].resolveType(blockScope, true);
            }
        }
        throw new CompletionNodeFound(this, this.actualReceiverType, blockScope);
    }
}
