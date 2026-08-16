package org.eclipse.jdt.core;

import java.util.EventObject;

public class ElementChangedEvent extends EventObject {
    public static final int POST_CHANGE = 1;
    public static final int POST_RECONCILE = 4;
    public static final int PRE_AUTO_BUILD = 2;
    private static final long serialVersionUID = -8947240431612844420L;
    private int type;

    public ElementChangedEvent(IJavaElementDelta iJavaElementDelta, int i10) {
        super(iJavaElementDelta);
        this.type = i10;
    }

    public IJavaElementDelta getDelta() {
        return (IJavaElementDelta) this.source;
    }

    public int getType() {
        return this.type;
    }
}
