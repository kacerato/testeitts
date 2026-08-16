package org.eclipse.jdt.core.jdom;

public interface IDOMMethod extends IDOMMember {
    void addException(String str) throws IllegalArgumentException;

    void addParameter(String str, String str2) throws IllegalArgumentException;

    String getBody();

    String getDefault();

    String[] getExceptions();

    @Override
    String getName();

    String[] getParameterNames();

    String[] getParameterTypes();

    String getReturnType();

    String[] getTypeParameters();

    boolean isConstructor();

    void setBody(String str);

    void setConstructor(boolean z10);

    void setDefault(String str);

    void setExceptions(String[] strArr);

    @Override
    void setName(String str) throws IllegalArgumentException;

    void setParameters(String[] strArr, String[] strArr2) throws IllegalArgumentException;

    void setReturnType(String str) throws IllegalArgumentException;

    void setTypeParameters(String[] strArr);
}
