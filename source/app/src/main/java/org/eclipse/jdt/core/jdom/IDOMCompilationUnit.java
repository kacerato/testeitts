package org.eclipse.jdt.core.jdom;

public interface IDOMCompilationUnit extends IDOMNode {
    String getHeader();

    @Override
    String getName();

    void setHeader(String str);

    @Override
    void setName(String str);
}
