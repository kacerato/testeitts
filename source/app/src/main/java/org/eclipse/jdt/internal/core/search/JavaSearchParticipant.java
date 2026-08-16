package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.indexing.BinaryIndexer;
import org.eclipse.jdt.internal.core.search.indexing.ManifestIndexer;
import org.eclipse.jdt.internal.core.search.indexing.SourceIndexer;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchParticipant extends SearchParticipant {
    private ThreadLocal indexSelector = new ThreadLocal();
    private SourceIndexer sourceIndexer;

    @Override
    public void beginSearching() {
        super.beginSearching();
        this.indexSelector.set(null);
    }

    @Override
    public void doneSearching() {
        this.indexSelector.set(null);
        super.doneSearching();
    }

    @Override
    public String getDescription() {
        return "Java";
    }

    @Override
    public SearchDocument getDocument(String str) {
        return new JavaSearchDocument(str, this);
    }

    @Override
    public void indexDocument(SearchDocument searchDocument, IPath iPath) {
        searchDocument.removeAllIndexEntries();
        String path = searchDocument.getPath();
        if (Util.isJavaLikeFileName(path)) {
            SourceIndexer sourceIndexer = new SourceIndexer(searchDocument);
            this.sourceIndexer = sourceIndexer;
            sourceIndexer.indexDocument();
        } else if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(path)) {
            new BinaryIndexer(searchDocument).indexDocument();
        } else if (path.endsWith(TypeConstants.AUTOMATIC_MODULE_NAME)) {
            new ManifestIndexer(searchDocument).indexDocument();
        }
    }

    @Override
    public void indexResolvedDocument(SearchDocument searchDocument, IPath iPath) {
        if (Util.isJavaLikeFileName(searchDocument.getPath())) {
            SourceIndexer sourceIndexer = this.sourceIndexer;
            if (sourceIndexer != null) {
                sourceIndexer.indexResolvedDocument();
            }
            this.sourceIndexer = null;
        }
    }

    @Override
    public void locateMatches(SearchDocument[] searchDocumentArr, SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException {
        MatchLocator matchLocator = new MatchLocator(searchPattern, searchRequestor, iJavaSearchScope, iProgressMonitor);
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        matchLocator.locateMatches(searchDocumentArr);
    }

    @Override
    public void resolveDocument(SearchDocument searchDocument) {
        SourceIndexer sourceIndexer;
        if (!Util.isJavaLikeFileName(searchDocument.getPath()) || (sourceIndexer = this.sourceIndexer) == null) {
            return;
        }
        sourceIndexer.resolveDocument();
    }

    public IndexLocation[] selectIndexURLs(SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope) {
        IndexSelector indexSelector = (IndexSelector) this.indexSelector.get();
        if (indexSelector == null) {
            indexSelector = new IndexSelector(iJavaSearchScope, searchPattern);
            this.indexSelector.set(indexSelector);
        }
        return indexSelector.getIndexLocations();
    }

    @Override
    public IPath[] selectIndexes(SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope) {
        IndexSelector indexSelector = (IndexSelector) this.indexSelector.get();
        if (indexSelector == null) {
            indexSelector = new IndexSelector(iJavaSearchScope, searchPattern);
            this.indexSelector.set(indexSelector);
        }
        IndexLocation[] indexLocations = indexSelector.getIndexLocations();
        IPath[] iPathArr = new IPath[indexLocations.length];
        for (int i10 = 0; i10 < indexLocations.length; i10++) {
            iPathArr[i10] = new Path(indexLocations[i10].getIndexFile().getPath());
        }
        return iPathArr;
    }
}
