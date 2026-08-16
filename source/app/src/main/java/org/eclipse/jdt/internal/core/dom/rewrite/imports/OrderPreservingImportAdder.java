package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

final class OrderPreservingImportAdder implements ImportAdder {
    private final Comparator<ImportName> importComparator;

    public static class AdjacentImports {
        final Collection<ImportName> importsBefore = new ArrayList();
        final Collection<ImportName> importsAfter = new ArrayList();

        public String toString() {
            return String.format("(%s, %s)", this.importsBefore.toString(), this.importsAfter.toString());
        }
    }

    public OrderPreservingImportAdder(Comparator<ImportName> comparator) {
        this.importComparator = comparator;
    }

    private static int countMatchingPrefixSegments(String str, String str2) {
        if (str.isEmpty() || str2.isEmpty()) {
            return 0;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 <= str.length() && i10 <= str2.length()) {
            boolean z10 = true;
            boolean z11 = i10 == str.length() || str.charAt(i10) == '.';
            if (i10 != str2.length() && str2.charAt(i10) != '.') {
                z10 = false;
            }
            if (!z11 || !z10) {
                if (z11 || z10 || str.charAt(i10) != str2.charAt(i10)) {
                    break;
                }
            } else {
                i11++;
            }
            i10++;
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<ImportName, AdjacentImports> determineAdjacentNewImports(Collection<ImportName> collection, Iterable<ImportName> iterable) {
        TreeSet treeSet = new TreeSet(this.importComparator);
        treeSet.addAll(collection);
        HashMap hashMap = new HashMap();
        Iterator<ImportName> it = collection.iterator();
        while (it.hasNext()) {
            hashMap.put(it.next(), new AdjacentImports());
        }
        for (ImportName importName : iterable) {
            ImportName importName2 = (ImportName) treeSet.lower(importName);
            ImportName importName3 = (ImportName) treeSet.higher(importName);
            if (shouldGroupWithSucceeding(importName, importName2, importName3)) {
                ((AdjacentImports) hashMap.get(importName3)).importsBefore.add(importName);
            } else {
                ((AdjacentImports) hashMap.get(importName2)).importsAfter.add(importName);
            }
        }
        return hashMap;
    }

    private boolean shouldGroupWithSucceeding(ImportName importName, ImportName importName2, ImportName importName3) {
        if (importName2 == null) {
            return true;
        }
        if (importName3 == null) {
            return false;
        }
        String str = importName.containerName;
        return countMatchingPrefixSegments(str, importName3.containerName) > countMatchingPrefixSegments(str, importName2.containerName);
    }

    @Override
    public List<ImportName> addImports(Collection<ImportName> collection, Collection<ImportName> collection2) {
        if (collection2.isEmpty()) {
            return new ArrayList(collection);
        }
        ArrayList arrayList = new ArrayList(collection2);
        arrayList.removeAll(new HashSet(collection));
        Collections.sort(arrayList, this.importComparator);
        if (collection.isEmpty()) {
            return arrayList;
        }
        Map<ImportName, AdjacentImports> determineAdjacentNewImports = determineAdjacentNewImports(new ArrayList<>(collection), arrayList);
        ArrayList arrayList2 = new ArrayList(collection.size() + arrayList.size());
        for (ImportName importName : collection) {
            AdjacentImports remove = determineAdjacentNewImports.remove(importName);
            if (remove != null) {
                arrayList2.addAll(remove.importsBefore);
            }
            arrayList2.add(importName);
            if (remove != null) {
                arrayList2.addAll(remove.importsAfter);
            }
        }
        return arrayList2;
    }
}
