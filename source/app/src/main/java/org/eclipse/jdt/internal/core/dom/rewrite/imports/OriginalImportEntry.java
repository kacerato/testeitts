package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.jface.text.IRegion;

class OriginalImportEntry extends ImportEntry {
    final List<ImportComment> comments;
    final IRegion declarationAndComments;
    final IRegion leadingDelimiter;
    final int precedingLineDelimiters;

    public OriginalImportEntry(ImportName importName, Collection<ImportComment> collection, int i10, IRegion iRegion, IRegion iRegion2) {
        super(importName);
        this.comments = Collections.unmodifiableList(new ArrayList(collection));
        this.precedingLineDelimiters = i10;
        this.leadingDelimiter = iRegion;
        this.declarationAndComments = iRegion2;
    }

    @Override
    public OriginalImportEntry asOriginalImportEntry() {
        return this;
    }

    @Override
    public boolean isOriginal() {
        return true;
    }

    public String toString() {
        return String.format("OriginalImportEntry(%s)", this.importName);
    }
}
