package org.eclipse.jdt.internal.core.dom.rewrite.imports;

class NewImportEntry extends ImportEntry {
    public NewImportEntry(ImportName importName) {
        super(importName);
    }

    @Override
    public OriginalImportEntry asOriginalImportEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isOriginal() {
        return false;
    }

    public String toString() {
        return String.format("NewImportEntry(%s)", this.importName);
    }
}
