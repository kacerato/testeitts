package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;

public abstract class IndexQueryRequestor {
    public abstract boolean acceptIndexMatch(String str, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet);
}
