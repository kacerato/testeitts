package org.eclipse.jdt.core.jdom;

public interface IDOMField extends IDOMMember {
    String getInitializer();

    @Override
    String getName();

    String getType();

    void setInitializer(String str);

    @Override
    void setName(String str) throws IllegalArgumentException;

    void setType(String str) throws IllegalArgumentException;
}
