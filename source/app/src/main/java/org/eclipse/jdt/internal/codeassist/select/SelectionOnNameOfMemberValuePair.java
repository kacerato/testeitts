package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnNameOfMemberValuePair extends MemberValuePair {
    public SelectionOnNameOfMemberValuePair(char[] cArr, int i10, int i11, Expression expression) {
        super(cArr, i10, i11, expression);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnName:");
        stringBuffer.append(this.name);
        stringBuffer.append(">");
        return stringBuffer;
    }

    @Override
    public void resolveTypeExpecting(BlockScope blockScope, TypeBinding typeBinding) {
        super.resolveTypeExpecting(blockScope, typeBinding);
        if (this.binding == null) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.binding);
    }
}
