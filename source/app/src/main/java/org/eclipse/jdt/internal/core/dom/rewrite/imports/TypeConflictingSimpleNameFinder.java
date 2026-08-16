package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.TypeNameRequestor;

final class TypeConflictingSimpleNameFinder implements ConflictingSimpleNameFinder {
    private final IJavaProject javaProject;
    private final SearchEngine searchEngine;

    public static class ConflictAccumulatingTypeRequestor extends TypeNameRequestor {
        private final Set<String> namesFoundInMultipleContainers = new HashSet();
        private final Map<String, String> lastContainerFoundForType = new HashMap();

        private static String buildContainerName(char[] cArr, char[][] cArr2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(cArr);
            for (char[] cArr3 : cArr2) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append('.');
                }
                stringBuffer.append(cArr3);
            }
            return stringBuffer.toString();
        }

        @Override
        public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str) {
            String str2 = new String(cArr2);
            String buildContainerName = buildContainerName(cArr, cArr3);
            String put = this.lastContainerFoundForType.put(str2, buildContainerName);
            if (put == null || put.equals(buildContainerName)) {
                return;
            }
            this.namesFoundInMultipleContainers.add(str2);
        }

        public Set<String> getNamesFoundInMultipleContainers() {
            return Collections.unmodifiableSet(this.namesFoundInMultipleContainers);
        }
    }

    public TypeConflictingSimpleNameFinder(IJavaProject iJavaProject, SearchEngine searchEngine) {
        this.javaProject = iJavaProject;
        this.searchEngine = searchEngine;
    }

    private static char[][] stringsToCharArrays(Collection<String> collection) {
        char[][] cArr = new char[collection.size()];
        Iterator<String> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            cArr[i10] = it.next().toCharArray();
            i10++;
        }
        return cArr;
    }

    @Override
    public Set<String> findConflictingSimpleNames(Set<String> set, Set<String> set2, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaSearchScope createJavaSearchScope = SearchEngine.createJavaSearchScope(new IJavaElement[]{this.javaProject});
        ConflictAccumulatingTypeRequestor conflictAccumulatingTypeRequestor = new ConflictAccumulatingTypeRequestor();
        this.searchEngine.searchAllTypeNames(stringsToCharArrays(set2), stringsToCharArrays(set), createJavaSearchScope, conflictAccumulatingTypeRequestor, 3, iProgressMonitor);
        return conflictAccumulatingTypeRequestor.getNamesFoundInMultipleContainers();
    }
}
