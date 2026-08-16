package org.eclipse.jdt.core.jdom;

public interface IDOMPackage extends IDOMNode {
    @Override
    String getName();

    @Override
    void setName(String str);
}
