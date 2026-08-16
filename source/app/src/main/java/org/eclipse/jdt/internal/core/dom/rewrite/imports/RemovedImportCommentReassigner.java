package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class RemovedImportCommentReassigner {
    private final Collection<OriginalImportEntry> originalImportsWithComments;

    public RemovedImportCommentReassigner(List<OriginalImportEntry> list) {
        this.originalImportsWithComments = retainImportsWithComments(list);
    }

    private Map<ImportEntry, Collection<OriginalImportEntry>> assignRemovedImports(Collection<ImportEntry> collection) {
        Collection<OriginalImportEntry> identifyRemovedImportsWithComments = identifyRemovedImportsWithComments(collection);
        if (identifyRemovedImportsWithComments.isEmpty()) {
            return Collections.emptyMap();
        }
        Map<ImportName, ImportEntry> identifyFirstSingleForEachOnDemand = identifyFirstSingleForEachOnDemand(collection);
        Map<ImportName, ImportEntry> identifyFirstOccurrenceOfEachImportName = identifyFirstOccurrenceOfEachImportName(collection);
        HashMap hashMap = new HashMap();
        Iterator<ImportEntry> it = collection.iterator();
        while (it.hasNext()) {
            hashMap.put(it.next(), new ArrayList());
        }
        hashMap.put(null, new ArrayList());
        for (OriginalImportEntry originalImportEntry : identifyRemovedImportsWithComments) {
            ImportName importName = originalImportEntry.importName;
            ((Collection) hashMap.get(importName.isOnDemand() ? identifyFirstSingleForEachOnDemand.get(importName) : identifyFirstOccurrenceOfEachImportName.get(importName.getContainerOnDemand()))).add(originalImportEntry);
        }
        return hashMap;
    }

    private static boolean hasFloatingComment(OriginalImportEntry originalImportEntry) {
        Iterator<ImportComment> it = originalImportEntry.comments.iterator();
        while (it.hasNext()) {
            if (it.next().succeedingLineDelimiters > 1) {
                return true;
            }
        }
        return false;
    }

    private Map<ImportName, ImportEntry> identifyFirstOccurrenceOfEachImportName(Iterable<ImportEntry> iterable) {
        HashMap hashMap = new HashMap();
        for (ImportEntry importEntry : iterable) {
            if (!hashMap.containsKey(importEntry.importName)) {
                hashMap.put(importEntry.importName, importEntry);
            }
        }
        return hashMap;
    }

    private Map<ImportName, ImportEntry> identifyFirstSingleForEachOnDemand(Iterable<ImportEntry> iterable) {
        HashMap hashMap = new HashMap();
        for (ImportEntry importEntry : iterable) {
            if (!importEntry.importName.isOnDemand()) {
                ImportName containerOnDemand = importEntry.importName.getContainerOnDemand();
                if (!hashMap.containsKey(containerOnDemand)) {
                    hashMap.put(containerOnDemand, importEntry);
                }
            }
        }
        return hashMap;
    }

    private Collection<OriginalImportEntry> identifyRemovedImportsWithComments(Collection<ImportEntry> collection) {
        ArrayList arrayList = new ArrayList(this.originalImportsWithComments);
        arrayList.removeAll(collection);
        return arrayList;
    }

    private static Collection<OriginalImportEntry> retainImportsWithComments(Collection<OriginalImportEntry> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (OriginalImportEntry originalImportEntry : collection) {
            if (!originalImportEntry.comments.isEmpty()) {
                arrayList.add(originalImportEntry);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map<ImportEntry, Collection<ImportComment>> reassignComments(Collection<ImportEntry> collection) {
        Map<ImportEntry, Collection<OriginalImportEntry>> assignRemovedImports = assignRemovedImports(collection);
        HashMap hashMap = new HashMap();
        for (Map.Entry<ImportEntry, Collection<OriginalImportEntry>> entry : assignRemovedImports.entrySet()) {
            ImportEntry key = entry.getKey();
            if (key != null) {
                ArrayDeque arrayDeque = new ArrayDeque();
                Collection<OriginalImportEntry> value = entry.getValue();
                Iterator<OriginalImportEntry> it = value.iterator();
                if (it.hasNext()) {
                    it.next();
                }
                for (OriginalImportEntry originalImportEntry : value) {
                    OriginalImportEntry next = it.hasNext() ? it.next() : null;
                    arrayDeque.addAll(originalImportEntry.comments);
                    if (next != null && hasFloatingComment(next)) {
                        arrayDeque.add(new ImportComment(((ImportComment) arrayDeque.removeLast()).region, 2));
                    }
                }
                hashMap.put(key, arrayDeque);
            }
        }
        return hashMap;
    }
}
