package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;

public interface IBinding {
    public static final int ANNOTATION = 5;
    public static final int MEMBER_VALUE_PAIR = 6;
    public static final int METHOD = 4;
    public static final int MODULE = 7;
    public static final int PACKAGE = 1;
    public static final int TYPE = 2;
    public static final int VARIABLE = 3;

    boolean equals(Object obj);

    IAnnotationBinding[] getAnnotations();

    IJavaElement getJavaElement();

    String getKey();

    int getKind();

    int getModifiers();

    String getName();

    boolean isDeprecated();

    boolean isEqualTo(IBinding iBinding);

    boolean isRecovered();

    boolean isSynthetic();

    String toString();
}
