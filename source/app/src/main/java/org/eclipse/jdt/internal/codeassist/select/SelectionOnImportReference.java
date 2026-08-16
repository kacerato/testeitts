package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SelectionOnImportReference extends ImportReference {
    public SelectionOnImportReference(char[][] cArr, long[] jArr, int i10) {
        super(cArr, jArr, false, i10);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer, boolean z10) {
        ASTNode.printIndent(i10, stringBuffer).append("<SelectOnImport:");
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
