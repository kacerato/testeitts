package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class OrPattern extends SearchPattern implements IIndexConstants {
    int matchCompatibility;
    protected SearchPattern[] patterns;

    public OrPattern(SearchPattern searchPattern, SearchPattern searchPattern2) {
        super(Math.max(searchPattern.getMatchRule(), searchPattern2.getMatchRule()));
        this.kind = 256;
        this.mustResolve = searchPattern.mustResolve || searchPattern2.mustResolve;
        SearchPattern[] searchPatternArr = searchPattern instanceof OrPattern ? ((OrPattern) searchPattern).patterns : null;
        SearchPattern[] searchPatternArr2 = searchPattern2 instanceof OrPattern ? ((OrPattern) searchPattern2).patterns : null;
        int length = searchPatternArr == null ? 1 : searchPatternArr.length;
        int length2 = searchPatternArr2 != null ? searchPatternArr2.length : 1;
        SearchPattern[] searchPatternArr3 = new SearchPattern[length + length2];
        this.patterns = searchPatternArr3;
        if (searchPatternArr == null) {
            searchPatternArr3[0] = searchPattern;
        } else {
            System.arraycopy(searchPatternArr, 0, searchPatternArr3, 0, length);
        }
        if (searchPatternArr2 == null) {
            this.patterns[length] = searchPattern2;
        } else {
            System.arraycopy(searchPatternArr2, 0, this.patterns, length, length2);
        }
        this.matchCompatibility = 0;
        int length3 = this.patterns.length;
        for (int i10 = 0; i10 < length3; i10++) {
            this.matchCompatibility |= ((JavaSearchPattern) this.patterns[i10]).matchCompatibility;
        }
    }

    @Override
    public void findIndexMatches(Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) throws IOException {
        try {
            index.startQuery();
            int length = this.patterns.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.patterns[i10].findIndexMatches(index, indexQueryRequestor, searchParticipant, iJavaSearchScope, iProgressMonitor);
            }
        } finally {
            index.stopQuery();
        }
    }

    @Override
    public SearchPattern getBlankPattern() {
        return null;
    }

    public final boolean hasPackageDeclaration() {
        int length = this.patterns.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.patterns[i10] instanceof PackageDeclarationPattern) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasSignatures() {
        boolean isErasureMatch = isErasureMatch();
        int length = this.patterns.length;
        for (int i10 = 0; i10 < length && !isErasureMatch; i10++) {
            if (((JavaSearchPattern) this.patterns[i10]).hasSignatures()) {
                return true;
            }
        }
        return false;
    }

    public boolean isErasureMatch() {
        return (this.matchCompatibility & 16) != 0;
    }

    @Override
    public boolean isPolymorphicSearch() {
        int length = this.patterns.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.patterns[i10].isPolymorphicSearch()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.patterns[0].toString());
        int length = this.patterns.length;
        for (int i10 = 1; i10 < length; i10++) {
            stringBuffer.append("\n| ");
            stringBuffer.append(this.patterns[i10].toString());
        }
        return stringBuffer.toString();
    }
}
