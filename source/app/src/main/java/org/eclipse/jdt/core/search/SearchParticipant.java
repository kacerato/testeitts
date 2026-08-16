package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.FileIndexLocation;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;

public abstract class SearchParticipant {
    private IPath lastIndexLocation;

    public void beginSearching() {
    }

    public void doneSearching() {
    }

    public String getDescription() {
        return "Search participant";
    }

    public abstract SearchDocument getDocument(String str);

    public abstract void indexDocument(SearchDocument searchDocument, IPath iPath);

    public void indexResolvedDocument(SearchDocument searchDocument, IPath iPath) {
    }

    public abstract void locateMatches(SearchDocument[] searchDocumentArr, SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException;

    public void removeIndex(IPath iPath) {
        JavaModelManager.getIndexManager().removeIndexPath(iPath);
    }

    public void resolveDocument(SearchDocument searchDocument) {
    }

    public final void scheduleDocumentIndexing(SearchDocument searchDocument, IPath iPath) {
        IPath path = new Path(searchDocument.getPath());
        Object target = JavaModel.getTarget(path, true);
        if (target instanceof IResource) {
            path = ((IResource) target).getProject().getFullPath();
        } else if (target == null) {
            path = path.removeLastSegments(1);
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        FileIndexLocation fileIndexLocation = new FileIndexLocation(iPath.toFile(), true);
        indexManager.ensureIndexExists(fileIndexLocation, path);
        indexManager.scheduleDocumentIndexing(searchDocument, path, fileIndexLocation, this);
        if (iPath.equals(this.lastIndexLocation)) {
            return;
        }
        indexManager.updateParticipant(iPath, path);
        this.lastIndexLocation = iPath;
    }

    public abstract IPath[] selectIndexes(SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope);
}
