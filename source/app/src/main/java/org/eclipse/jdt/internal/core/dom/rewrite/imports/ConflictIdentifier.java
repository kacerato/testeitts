package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;

public class ConflictIdentifier {
    private final Set<String> implicitImportContainers;
    private final OnDemandComputer onDemandComputer;
    private final StaticConflictingSimpleNameFinder staticConflictFinder;
    private final TypeConflictingSimpleNameFinder typeConflictFinder;

    public static final class Conflicts {
        final Set<String> staticConflicts;
        final Set<String> typeConflicts;

        public Conflicts(Set<String> set, Set<String> set2) {
            this.typeConflicts = Collections.unmodifiableSet(new HashSet(set));
            this.staticConflicts = Collections.unmodifiableSet(new HashSet(set2));
        }

        public String toString() {
            return String.format("Conflicts(type: %s; static: %s)", this.typeConflicts, this.staticConflicts);
        }
    }

    public ConflictIdentifier(OnDemandComputer onDemandComputer, TypeConflictingSimpleNameFinder typeConflictingSimpleNameFinder, StaticConflictingSimpleNameFinder staticConflictingSimpleNameFinder, Set<String> set) {
        this.onDemandComputer = onDemandComputer;
        this.typeConflictFinder = typeConflictingSimpleNameFinder;
        this.staticConflictFinder = staticConflictingSimpleNameFinder;
        this.implicitImportContainers = set;
    }

    private Collection<String> extractContainerNames(Collection<OnDemandReduction> collection, boolean z10) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<OnDemandReduction> it = collection.iterator();
        while (it.hasNext()) {
            ImportName importName = it.next().containerOnDemand;
            if (importName.isStatic == z10) {
                arrayList.add(importName.containerName);
            }
        }
        return arrayList;
    }

    private Collection<String> extractOnDemandContainerNames(Collection<ImportName> collection, boolean z10) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (ImportName importName : collection) {
            if (importName.isOnDemand() && importName.isStatic == z10) {
                arrayList.add(importName.containerName);
            }
        }
        return arrayList;
    }

    private Set<String> findConflictingSimpleNames(ConflictingSimpleNameFinder conflictingSimpleNameFinder, Set<ImportName> set, boolean z10, Set<String> set2, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (set2.isEmpty() || set.isEmpty()) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (ImportName importName : set) {
            if (importName.isStatic == z10) {
                hashSet.add(importName.simpleName);
            }
        }
        return conflictingSimpleNameFinder.findConflictingSimpleNames(hashSet, set2, iProgressMonitor);
    }

    public Conflicts identifyConflicts(Set<ImportName> set, Set<ImportName> set2, Set<String> set3, Set<String> set4, IProgressMonitor iProgressMonitor) throws JavaModelException {
        Collection<OnDemandReduction> identifyPossibleReductions = this.onDemandComputer.identifyPossibleReductions(set, set2, set3, set4);
        Set<String> hashSet = new HashSet<>(extractContainerNames(identifyPossibleReductions, false));
        Set<String> hashSet2 = new HashSet<>(extractContainerNames(identifyPossibleReductions, true));
        if (!hashSet.isEmpty()) {
            hashSet.addAll(extractOnDemandContainerNames(set, false));
            hashSet.addAll(this.implicitImportContainers);
            hashSet.addAll(hashSet2);
        }
        if (!hashSet2.isEmpty()) {
            hashSet2.addAll(extractOnDemandContainerNames(set, true));
        }
        return new Conflicts(findConflictingSimpleNames(this.typeConflictFinder, set, false, hashSet, iProgressMonitor), findConflictingSimpleNames(this.staticConflictFinder, set, true, hashSet2, iProgressMonitor));
    }
}
