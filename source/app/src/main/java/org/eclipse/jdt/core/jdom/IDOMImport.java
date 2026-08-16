package org.eclipse.jdt.core.jdom;

public interface IDOMImport extends IDOMNode {
    int getFlags();

    @Override
    String getName();

    boolean isOnDemand();

    void setFlags(int i10);

    @Override
    void setName(String str);
}
