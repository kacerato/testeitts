package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.search.SearchPattern;

public class AndPattern extends IntersectingPattern {
    int current;
    protected SearchPattern[] patterns;

    public AndPattern(SearchPattern searchPattern, SearchPattern searchPattern2) {
        super(2048, combinedMatchRule(searchPattern.getMatchRule(), searchPattern2.getMatchRule()));
        this.mustResolve = searchPattern.mustResolve || searchPattern2.mustResolve;
        SearchPattern[] searchPatternArr = searchPattern instanceof AndPattern ? ((AndPattern) searchPattern).patterns : null;
        SearchPattern[] searchPatternArr2 = searchPattern2 instanceof AndPattern ? ((AndPattern) searchPattern2).patterns : null;
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
        this.matchCompatibility = getMatchRule() & 112;
        this.current = 0;
    }

    private static int combinedMatchRule(int i10, int i11) {
        int i12 = i10 & i11;
        int i13 = i12 & 112;
        if (i13 == 0) {
            int i14 = i10 & 112;
            if (i14 == 64) {
                i10 = i11;
            } else {
                int i15 = i11 & 112;
                if (i15 != 64) {
                    i10 = Math.min(i14, i15);
                }
            }
        } else {
            i10 = i13;
        }
        return i10 | (i12 & 15) | (i12 & 384);
    }

    @Override
    public SearchPattern currentPattern() {
        SearchPattern[] searchPatternArr = this.patterns;
        int i10 = this.current;
        this.current = i10 + 1;
        return searchPatternArr[i10];
    }

    @Override
    public boolean hasNextQuery() {
        return this.current < this.patterns.length - 1;
    }

    @Override
    public void resetQuery() {
        this.current = 0;
    }
}
