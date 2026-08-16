package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SelectionOnPackageReference extends ImportReference {
    public SelectionOnPackageReference(char[][] cArr, long[] jArr) {
        super(cArr, jArr, false, 0);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer, boolean z10) {
        ASTNode.printIndent(i10, stringBuffer).append("<SelectOnPackage:");
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }
}
