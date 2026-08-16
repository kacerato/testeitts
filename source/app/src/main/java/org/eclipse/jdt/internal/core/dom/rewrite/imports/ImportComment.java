package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import org.eclipse.jface.text.IRegion;

final class ImportComment {
    final IRegion region;
    final int succeedingLineDelimiters;

    public ImportComment(IRegion iRegion, int i10) {
        this.region = iRegion;
        this.succeedingLineDelimiters = i10;
    }
}
