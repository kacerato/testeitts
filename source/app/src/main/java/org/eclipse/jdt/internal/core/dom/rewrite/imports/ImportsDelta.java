package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class ImportsDelta {
    final Set<ImportName> importsToAdd;
    final Set<ImportName> importsToRemove;

    public ImportsDelta(Collection<ImportName> collection, Collection<ImportName> collection2) {
        this.importsToAdd = Collections.unmodifiableSet(new HashSet(collection));
        this.importsToRemove = Collections.unmodifiableSet(new HashSet(collection2));
    }

    public String toString() {
        return String.format("(additions: %s, removals: %s)", this.importsToAdd, this.importsToRemove);
    }
}
