package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ListRewriteEvent extends RewriteEvent {
    public static final int BOTH = 3;
    public static final int NEW = 1;
    public static final int OLD = 2;
    private List listEntries;
    private List originalNodes;

    public ListRewriteEvent(List list) {
        this.originalNodes = new ArrayList(list);
    }

    private List getEntries() {
        if (this.listEntries == null) {
            int size = this.originalNodes.size();
            this.listEntries = new ArrayList(size * 2);
            for (int i10 = 0; i10 < size; i10++) {
                ASTNode aSTNode = (ASTNode) this.originalNodes.get(i10);
                this.listEntries.add(new NodeRewriteEvent(aSTNode, aSTNode));
            }
        }
        return this.listEntries;
    }

    @Override
    public int getChangeKind() {
        if (this.listEntries != null) {
            for (int i10 = 0; i10 < this.listEntries.size(); i10++) {
                if (((RewriteEvent) this.listEntries.get(i10)).getChangeKind() != 0) {
                    return 8;
                }
            }
        }
        return 0;
    }

    @Override
    public RewriteEvent[] getChildren() {
        List entries = getEntries();
        return (RewriteEvent[]) entries.toArray(new RewriteEvent[entries.size()]);
    }

    public int getIndex(ASTNode aSTNode, int i10) {
        List entries = getEntries();
        for (int size = entries.size() - 1; size >= 0; size--) {
            RewriteEvent rewriteEvent = (RewriteEvent) entries.get(size);
            if ((i10 & 2) != 0 && rewriteEvent.getOriginalValue() == aSTNode) {
                return size;
            }
            if ((i10 & 1) != 0 && rewriteEvent.getNewValue() == aSTNode) {
                return size;
            }
        }
        return -1;
    }

    @Override
    public Object getNewValue() {
        List entries = getEntries();
        ArrayList arrayList = new ArrayList(entries.size());
        for (int i10 = 0; i10 < entries.size(); i10++) {
            Object newValue = ((RewriteEvent) entries.get(i10)).getNewValue();
            if (newValue != null) {
                arrayList.add(newValue);
            }
        }
        return arrayList;
    }

    @Override
    public Object getOriginalValue() {
        return this.originalNodes;
    }

    public RewriteEvent insert(ASTNode aSTNode, int i10) {
        NodeRewriteEvent nodeRewriteEvent = new NodeRewriteEvent(null, aSTNode);
        if (i10 != -1) {
            getEntries().add(i10, nodeRewriteEvent);
        } else {
            getEntries().add(nodeRewriteEvent);
        }
        return nodeRewriteEvent;
    }

    @Override
    public boolean isListRewrite() {
        return true;
    }

    public RewriteEvent removeEntry(ASTNode aSTNode) {
        return replaceEntry(aSTNode, null);
    }

    public RewriteEvent replaceEntry(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        List entries = getEntries();
        int size = entries.size();
        for (int i10 = 0; i10 < size; i10++) {
            NodeRewriteEvent nodeRewriteEvent = (NodeRewriteEvent) entries.get(i10);
            if (nodeRewriteEvent.getOriginalValue() == aSTNode || nodeRewriteEvent.getNewValue() == aSTNode) {
                nodeRewriteEvent.setNewValue(aSTNode2);
                if (nodeRewriteEvent.getNewValue() != null || nodeRewriteEvent.getOriginalValue() != null) {
                    return nodeRewriteEvent;
                }
                entries.remove(i10);
                return null;
            }
        }
        return null;
    }

    public void revertChange(NodeRewriteEvent nodeRewriteEvent) {
        Object originalValue = nodeRewriteEvent.getOriginalValue();
        if (originalValue == null) {
            getEntries().remove(nodeRewriteEvent);
        } else {
            nodeRewriteEvent.setNewValue(originalValue);
        }
    }

    public void setNewValue(ASTNode aSTNode, int i10) {
        ((NodeRewriteEvent) getEntries().get(i10)).setNewValue(aSTNode);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" [list change\n\t");
        RewriteEvent[] children = getChildren();
        for (int i10 = 0; i10 < children.length; i10++) {
            if (i10 != 0) {
                stringBuffer.append("\n\t");
            }
            stringBuffer.append((Object) children[i10]);
        }
        stringBuffer.append("\n]");
        return stringBuffer.toString();
    }

    public ListRewriteEvent(RewriteEvent[] rewriteEventArr) {
        this.listEntries = new ArrayList(rewriteEventArr.length * 2);
        this.originalNodes = new ArrayList(rewriteEventArr.length * 2);
        for (RewriteEvent rewriteEvent : rewriteEventArr) {
            this.listEntries.add(rewriteEvent);
            if (rewriteEvent.getOriginalValue() != null) {
                this.originalNodes.add(rewriteEvent.getOriginalValue());
            }
        }
    }

    public int getChangeKind(int i10) {
        return ((NodeRewriteEvent) getEntries().get(i10)).getChangeKind();
    }
}
