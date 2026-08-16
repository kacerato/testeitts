package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import w2.C15883c;

final class ImportDeclarationWriter {
    private final boolean insertSpaceBeforeSemicolon;

    public ImportDeclarationWriter(boolean z10) {
        this.insertSpaceBeforeSemicolon = z10;
    }

    public String writeImportDeclaration(ImportName importName) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("import ");
        if (importName.isStatic) {
            sb2.append("static ");
        }
        sb2.append(importName.qualifiedName);
        if (this.insertSpaceBeforeSemicolon) {
            sb2.append(C15883c.f126249O);
        }
        sb2.append(';');
        return sb2.toString();
    }
}
