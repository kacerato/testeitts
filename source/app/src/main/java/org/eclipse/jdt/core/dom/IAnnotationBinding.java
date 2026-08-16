package org.eclipse.jdt.core.dom;

public interface IAnnotationBinding extends IBinding {
    IMemberValuePairBinding[] getAllMemberValuePairs();

    ITypeBinding getAnnotationType();

    IMemberValuePairBinding[] getDeclaredMemberValuePairs();

    @Override
    String getName();
}
