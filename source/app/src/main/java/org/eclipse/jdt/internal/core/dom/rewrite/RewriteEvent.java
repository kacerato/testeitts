package org.eclipse.jdt.internal.core.dom.rewrite;

public abstract class RewriteEvent {
    public static final int CHILDREN_CHANGED = 8;
    public static final int INSERTED = 1;
    public static final int REMOVED = 2;
    public static final int REPLACED = 4;
    public static final int UNCHANGED = 0;

    public abstract int getChangeKind();

    public abstract RewriteEvent[] getChildren();

    public abstract Object getNewValue();

    public abstract Object getOriginalValue();

    public abstract boolean isListRewrite();
}
