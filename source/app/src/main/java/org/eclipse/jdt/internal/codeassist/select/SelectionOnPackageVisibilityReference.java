package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SelectionOnPackageVisibilityReference extends ImportReference {
    public SelectionOnPackageVisibilityReference(char[][] cArr, long[] jArr) {
        super(cArr, jArr, false, 0);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<SelectOnPackageVisibility:");
        stringBuffer.append(new String(CharOperation.concatWith(this.tokens, '.')));
        stringBuffer.append('>');
        return stringBuffer;
    }
}
