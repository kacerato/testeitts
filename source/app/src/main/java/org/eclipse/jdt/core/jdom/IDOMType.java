package org.eclipse.jdt.core.jdom;

public interface IDOMType extends IDOMMember {
    void addSuperInterface(String str) throws IllegalArgumentException;

    @Override
    String getName();

    String[] getSuperInterfaces();

    String getSuperclass();

    String[] getTypeParameters();

    boolean isAnnotation();

    boolean isClass();

    boolean isEnum();

    void setAnnotation(boolean z10);

    void setClass(boolean z10);

    void setEnum(boolean z10);

    @Override
    void setName(String str) throws IllegalArgumentException;

    void setSuperInterfaces(String[] strArr);

    void setSuperclass(String str);

    void setTypeParameters(String[] strArr);
}
