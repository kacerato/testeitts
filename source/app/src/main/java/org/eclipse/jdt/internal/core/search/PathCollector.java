package org.eclipse.jdt.internal.core.search;

import java.util.HashSet;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;

public class PathCollector extends IndexQueryRequestor {
    public HashSet paths = new HashSet(5);

    @Override
    public boolean acceptIndexMatch(String str, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
        this.paths.add(str);
        return true;
    }

    public String[] getPaths() {
        HashSet hashSet = this.paths;
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }
}
