package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import org.eclipse.jface.text.IRegion;

class RewriteSite {
    final boolean hasPrecedingElements;
    final boolean hasSucceedingElements;
    final IRegion importsRegion;
    final IRegion surroundingRegion;

    public RewriteSite(IRegion iRegion, IRegion iRegion2, boolean z10, boolean z11) {
        this.surroundingRegion = iRegion;
        this.importsRegion = iRegion2;
        this.hasPrecedingElements = z10;
        this.hasSucceedingElements = z11;
    }
}
