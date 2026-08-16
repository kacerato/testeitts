package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;

public class SecondaryTypeDeclarationPattern extends TypeDeclarationPattern {
    private static final char[] SECONDARY_PATTERN_KEY = "*/S".toCharArray();

    public SecondaryTypeDeclarationPattern() {
        super(null, null, null, 'S', 8);
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new SecondaryTypeDeclarationPattern(8);
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        stringBuffer.append("Secondary");
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        return index.query(TypeDeclarationPattern.CATEGORIES, SECONDARY_PATTERN_KEY, 10);
    }

    public SecondaryTypeDeclarationPattern(int i10) {
        super(i10);
    }
}
