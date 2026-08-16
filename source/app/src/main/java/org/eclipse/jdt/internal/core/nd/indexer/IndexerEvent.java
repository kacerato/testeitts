package org.eclipse.jdt.internal.core.nd.indexer;

import org.eclipse.jdt.core.IJavaElementDelta;

public class IndexerEvent {
    final IJavaElementDelta delta;

    private IndexerEvent(IJavaElementDelta iJavaElementDelta) {
        this.delta = iJavaElementDelta;
    }

    public static IndexerEvent createChange(IJavaElementDelta iJavaElementDelta) {
        return new IndexerEvent(iJavaElementDelta);
    }

    public IJavaElementDelta getDelta() {
        return this.delta;
    }
}
