package org.eclipse.jdt.core.jdom;

public interface IDOMInitializer extends IDOMMember {
    String getBody();

    @Override
    String getName();

    void setBody(String str);

    @Override
    void setName(String str);
}
