package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.internal.core.JavaElement;

public class NodeRewriteEvent extends RewriteEvent {
    private Object newValue;
    private Object originalValue;

    public NodeRewriteEvent(Object obj, Object obj2) {
        this.originalValue = obj;
        this.newValue = obj2;
    }

    @Override
    public int getChangeKind() {
        Object obj = this.originalValue;
        Object obj2 = this.newValue;
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return 2;
        }
        return obj.equals(obj2) ? 0 : 4;
    }

    @Override
    public RewriteEvent[] getChildren() {
        return null;
    }

    @Override
    public Object getNewValue() {
        return this.newValue;
    }

    @Override
    public Object getOriginalValue() {
        return this.originalValue;
    }

    @Override
    public boolean isListRewrite() {
        return false;
    }

    public void setNewValue(Object obj) {
        this.newValue = obj;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int changeKind = getChangeKind();
        if (changeKind == 1) {
            stringBuffer.append(" [inserted: ");
            stringBuffer.append(getNewValue());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (changeKind == 2) {
            stringBuffer.append(" [removed: ");
            stringBuffer.append(getOriginalValue());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (changeKind != 4) {
            stringBuffer.append(" [unchanged]");
        } else {
            stringBuffer.append(" [replaced: ");
            stringBuffer.append(getOriginalValue());
            stringBuffer.append(" -> ");
            stringBuffer.append(getNewValue());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return stringBuffer.toString();
    }
}
