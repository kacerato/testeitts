package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;

public class CompletionOnPackageVisibilityReference extends CompletionOnImportReference {
    String pkgName;

    public CompletionOnPackageVisibilityReference(char[][] cArr, long[] jArr) {
        super(cArr, jArr, 0);
        this.pkgName = new String(CharOperation.concatWith(cArr, '.'));
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<CompleteOnPackageVisibilityReference:");
        stringBuffer.append(this.pkgName);
        stringBuffer.append('>');
        return stringBuffer;
    }
}
