package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.Index;

public class SubTypeSearchJob extends PatternSearchJob {
    SimpleSet indexes;

    public SubTypeSearchJob(SearchPattern searchPattern, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IndexQueryRequestor indexQueryRequestor) {
        super(searchPattern, searchParticipant, iJavaSearchScope, indexQueryRequestor);
        this.indexes = new SimpleSet(5);
    }

    public void finished() {
        for (Object obj : this.indexes.values) {
            if (obj != null) {
                ((Index) obj).stopQuery();
            }
        }
    }

    @Override
    public Index[] getIndexes(IProgressMonitor iProgressMonitor) {
        SimpleSet simpleSet = this.indexes;
        int i10 = simpleSet.elementSize;
        if (i10 == 0) {
            return super.getIndexes(iProgressMonitor);
        }
        this.areIndexesReady = true;
        Index[] indexArr = new Index[i10];
        simpleSet.asArray(indexArr);
        return indexArr;
    }

    @Override
    public boolean search(Index index, IProgressMonitor iProgressMonitor) {
        if (index == null) {
            return true;
        }
        if (this.indexes.addIfNotIncluded(index) == index) {
            index.startQuery();
        }
        return super.search(index, iProgressMonitor);
    }
}
