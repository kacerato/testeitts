package org.eclipse.jdt.internal.core.dom.rewrite.imports;

abstract class ImportEntry {
    final ImportName importName;

    public ImportEntry(ImportName importName) {
        this.importName = importName;
    }

    public abstract OriginalImportEntry asOriginalImportEntry();

    public abstract boolean isOriginal();
}
