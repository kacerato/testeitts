package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

class OnDemandReduction {
    final ImportName containerOnDemand;
    final Collection<ImportName> reducibleImports;

    public OnDemandReduction(ImportName importName, Collection<ImportName> collection) {
        this.containerOnDemand = importName;
        this.reducibleImports = Collections.unmodifiableCollection(new ArrayList(collection));
    }

    public String toString() {
        return String.format("{%s: %s}", this.containerOnDemand.containerName, this.reducibleImports);
    }
}
