package org.eclipse.jdt.core.jdom;

public interface IDOMMember extends IDOMNode {
    String getComment();

    int getFlags();

    void setComment(String str);

    void setFlags(int i10);
}
