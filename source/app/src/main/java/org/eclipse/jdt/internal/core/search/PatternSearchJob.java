package org.eclipse.jdt.internal.core.search;

import java.io.EOFException;
import java.io.IOException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.FileIndexLocation;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class PatternSearchJob implements IJob {
    protected boolean areIndexesReady;
    protected long executionTime = 0;
    protected SearchParticipant participant;
    protected SearchPattern pattern;
    protected IndexQueryRequestor requestor;
    protected IJavaSearchScope scope;

    public PatternSearchJob(SearchPattern searchPattern, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IndexQueryRequestor indexQueryRequestor) {
        this.pattern = searchPattern;
        this.participant = searchParticipant;
        this.scope = iJavaSearchScope;
        this.requestor = indexQueryRequestor;
    }

    @Override
    public boolean belongsTo(String str) {
        return true;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void ensureReadyToRun() {
        if (this.areIndexesReady) {
            return;
        }
        getIndexes(null);
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 3);
        this.executionTime = 0L;
        Index[] indexes = getIndexes(convert.split(1));
        try {
            SubMonitor workRemaining = convert.split(2).setWorkRemaining(indexes.length);
            boolean z10 = true;
            for (Index index : indexes) {
                z10 &= search(index, workRemaining.split(1));
            }
            if (JobManager.VERBOSE) {
                Util.verbose("-> execution time: " + this.executionTime + "ms - " + ((Object) this));
            }
            return z10;
        } finally {
            SubMonitor.done(iProgressMonitor);
        }
    }

    public Index[] getIndexes(IProgressMonitor iProgressMonitor) {
        int length;
        IndexLocation[] indexLocationArr;
        SearchParticipant searchParticipant = this.participant;
        if (searchParticipant instanceof JavaSearchParticipant) {
            indexLocationArr = ((JavaSearchParticipant) searchParticipant).selectIndexURLs(this.pattern, this.scope);
            length = indexLocationArr.length;
        } else {
            IPath[] selectIndexes = searchParticipant.selectIndexes(this.pattern, this.scope);
            length = selectIndexes.length;
            IndexLocation[] indexLocationArr2 = new IndexLocation[selectIndexes.length];
            int length2 = selectIndexes.length;
            for (int i10 = 0; i10 < length2; i10++) {
                indexLocationArr2[i10] = new FileIndexLocation(selectIndexes[i10].toFile(), true);
            }
            indexLocationArr = indexLocationArr2;
        }
        Index[] indexes = JavaModelManager.getIndexManager().getIndexes(indexLocationArr, iProgressMonitor);
        this.areIndexesReady = indexes.length == length;
        return indexes;
    }

    @Override
    public String getJobFamily() {
        return "";
    }

    public boolean search(Index index, IProgressMonitor iProgressMonitor) {
        if (index == null) {
            return true;
        }
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        ReadWriteMonitor readWriteMonitor = index.monitor;
        try {
            if (readWriteMonitor == null) {
                return true;
            }
            try {
                readWriteMonitor.enterRead();
                long currentTimeMillis = System.currentTimeMillis();
                MatchLocator.findIndexMatches(this.pattern, index, this.requestor, this.participant, this.scope, iProgressMonitor);
                this.executionTime += System.currentTimeMillis() - currentTimeMillis;
                return true;
            } catch (IOException e10) {
                if (e10 instanceof EOFException) {
                    e10.printStackTrace();
                }
                readWriteMonitor.exitRead();
                return false;
            }
        } finally {
            readWriteMonitor.exitRead();
        }
    }

    public String toString() {
        return "searching " + this.pattern.toString();
    }

    @Override
    public boolean waitNeeded() {
        return true;
    }
}
