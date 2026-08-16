package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;

final class ReorderingImportAdder implements ImportAdder {
    private final Comparator<ImportName> importComparator;

    public ReorderingImportAdder(Comparator<ImportName> comparator) {
        this.importComparator = comparator;
    }

    @Override
    public List<ImportName> addImports(Collection<ImportName> collection, Collection<ImportName> collection2) {
        HashSet hashSet = new HashSet((collection.size() + collection2.size()) * 2);
        hashSet.addAll(collection);
        hashSet.addAll(collection2);
        ArrayList arrayList = new ArrayList(hashSet);
        Collections.sort(arrayList, this.importComparator);
        return arrayList;
    }
}
