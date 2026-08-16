package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class OnDemandComputer {
    private int staticOnDemandThreshold;
    private int typeOnDemandThreshold;

    public OnDemandComputer(int i10, int i11) {
        this.typeOnDemandThreshold = i10;
        this.staticOnDemandThreshold = i11;
    }

    private Map<ImportName, Collection<ImportName>> mapByContainer(Collection<ImportName> collection) {
        HashMap hashMap = new HashMap();
        for (ImportName importName : collection) {
            ImportName containerOnDemand = importName.getContainerOnDemand();
            Collection collection2 = (Collection) hashMap.get(containerOnDemand);
            if (collection2 == null) {
                collection2 = new ArrayList();
                hashMap.put(containerOnDemand, collection2);
            }
            collection2.add(importName);
        }
        return hashMap;
    }

    private OnDemandReduction maybeReduce(ImportName importName, Collection<ImportName> collection, int i10, Set<String> set) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (ImportName importName2 : collection) {
            if (importName2.isOnDemand()) {
                z10 = true;
            } else if (!set.contains(importName2.simpleName)) {
                arrayList.add(importName2);
            }
        }
        if (z10 || arrayList.size() >= i10) {
            return new OnDemandReduction(importName, arrayList);
        }
        return null;
    }

    public Collection<OnDemandReduction> identifyPossibleReductions(Set<ImportName> set, Set<ImportName> set2, Set<String> set3, Set<String> set4) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<ImportName, Collection<ImportName>> entry : mapByContainer(set).entrySet()) {
            ImportName key = entry.getKey();
            boolean isEmpty = key.containerName.isEmpty();
            if (set2.contains(key) && !isEmpty) {
                Collection<ImportName> value = entry.getValue();
                boolean z10 = key.isStatic;
                OnDemandReduction maybeReduce = maybeReduce(key, value, z10 ? this.staticOnDemandThreshold : this.typeOnDemandThreshold, z10 ? set4 : set3);
                if (maybeReduce != null) {
                    arrayList.add(maybeReduce);
                }
            }
        }
        return arrayList;
    }
}
