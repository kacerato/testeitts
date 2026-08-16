package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;

public abstract class IntersectingPattern extends JavaSearchPattern {
    public IntersectingPattern(int i10, int i11) {
        super(i10, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
    
        throw new org.eclipse.core.runtime.OperationCanceledException();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void findIndexMatches(Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) throws IOException {
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        resetQuery();
        try {
            index.startQuery();
            SimpleSet simpleSet = null;
            loop0: while (true) {
                SearchPattern currentPattern = currentPattern();
                EntryResult[] queryIn = currentPattern.queryIn(index);
                if (queryIn == null) {
                    return;
                }
                SearchPattern blankPattern = currentPattern.getBlankPattern();
                SimpleSet simpleSet2 = new SimpleSet(3);
                for (EntryResult entryResult : queryIn) {
                    if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
                        break loop0;
                    }
                    blankPattern.decodeIndexKey(entryResult.getWord());
                    if (currentPattern.matchesDecodedKey(blankPattern)) {
                        String[] documentNames = entryResult.getDocumentNames(index);
                        if (simpleSet != null) {
                            int length = documentNames.length;
                            for (int i10 = 0; i10 < length; i10++) {
                                if (simpleSet.includes(documentNames[i10])) {
                                    simpleSet2.add(documentNames[i10]);
                                }
                            }
                        } else {
                            for (String str : documentNames) {
                                simpleSet2.add(str);
                            }
                        }
                    }
                }
                if (simpleSet2.elementSize == 0) {
                    return;
                }
                if (!hasNextQuery()) {
                    index.stopQuery();
                    String str2 = index.containerPath;
                    char c10 = index.separator;
                    for (Object obj : simpleSet2.values) {
                        if (obj != null) {
                            acceptMatch((String) obj, str2, c10, null, indexQueryRequestor, searchParticipant, iJavaSearchScope, iProgressMonitor);
                        }
                    }
                    return;
                }
                simpleSet = simpleSet2;
            }
        } finally {
            index.stopQuery();
        }
    }

    public abstract boolean hasNextQuery();

    public abstract void resetQuery();
}
