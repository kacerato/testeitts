package org.eclipse.jdt.core.search;

import org.eclipse.core.runtime.CoreException;

public abstract class SearchRequestor {
    public abstract void acceptSearchMatch(SearchMatch searchMatch) throws CoreException;

    public void beginReporting() {
    }

    public void endReporting() {
    }

    public void enterParticipant(SearchParticipant searchParticipant) {
    }

    public void exitParticipant(SearchParticipant searchParticipant) {
    }
}
