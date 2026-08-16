package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Collection;
import java.util.List;

interface ImportAdder {
    List<ImportName> addImports(Collection<ImportName> collection, Collection<ImportName> collection2);
}
