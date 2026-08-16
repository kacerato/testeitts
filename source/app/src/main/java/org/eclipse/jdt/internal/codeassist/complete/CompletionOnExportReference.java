package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class CompletionOnExportReference extends ExportsStatement {
    public CompletionOnExportReference(ImportReference importReference) {
        super(importReference, null);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<CompleteOnExport:");
        stringBuffer.append(this.pkgName);
        stringBuffer.append('>');
        return stringBuffer;
    }
}
