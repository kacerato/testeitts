package org.eclipse.jdt.internal.compiler.ast;

public class OpensStatement extends PackageVisibilityStatement {
    public OpensStatement(ImportReference importReference) {
        this(importReference, null);
    }

    @Override
    public int computeSeverity(int i10) {
        return 0;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("opens ");
        super.print(0, stringBuffer);
        stringBuffer.append(";");
        return stringBuffer;
    }

    public OpensStatement(ImportReference importReference, ModuleReference[] moduleReferenceArr) {
        super(importReference, moduleReferenceArr);
    }
}
