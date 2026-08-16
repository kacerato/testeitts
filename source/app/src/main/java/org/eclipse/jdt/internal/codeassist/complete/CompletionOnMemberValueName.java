package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;

public class CompletionOnMemberValueName extends MemberValuePair {
    public CompletionOnMemberValueName(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11, null);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnAttributeName:");
        stringBuffer.append(this.name);
        stringBuffer.append('>');
        return stringBuffer;
    }
}
