package org.eclipse.jdt.internal.compiler.ast;

public class ExportsStatement extends PackageVisibilityStatement {
    public ExportsStatement(ImportReference importReference) {
        this(importReference, null);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("exports ");
        super.print(0, stringBuffer);
        stringBuffer.append(";");
        return stringBuffer;
    }

    public ExportsStatement(ImportReference importReference, ModuleReference[] moduleReferenceArr) {
        super(importReference, moduleReferenceArr);
    }
}
