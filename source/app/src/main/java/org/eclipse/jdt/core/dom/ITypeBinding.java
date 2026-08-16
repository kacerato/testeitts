package org.eclipse.jdt.core.dom;

public interface ITypeBinding extends IBinding {
    ITypeBinding createArrayType(int i10);

    String getBinaryName();

    ITypeBinding getBound();

    ITypeBinding getComponentType();

    IVariableBinding[] getDeclaredFields();

    IMethodBinding[] getDeclaredMethods();

    int getDeclaredModifiers();

    ITypeBinding[] getDeclaredTypes();

    ITypeBinding getDeclaringClass();

    IBinding getDeclaringMember();

    IMethodBinding getDeclaringMethod();

    int getDimensions();

    ITypeBinding getElementType();

    ITypeBinding getErasure();

    IMethodBinding getFunctionalInterfaceMethod();

    ITypeBinding getGenericTypeOfWildcardType();

    ITypeBinding[] getInterfaces();

    @Override
    int getModifiers();

    default IModuleBinding getModule() {
        return null;
    }

    @Override
    String getName();

    IPackageBinding getPackage();

    String getQualifiedName();

    int getRank();

    ITypeBinding getSuperclass();

    IAnnotationBinding[] getTypeAnnotations();

    ITypeBinding[] getTypeArguments();

    ITypeBinding[] getTypeBounds();

    ITypeBinding getTypeDeclaration();

    ITypeBinding[] getTypeParameters();

    ITypeBinding getWildcard();

    boolean isAnnotation();

    boolean isAnonymous();

    boolean isArray();

    boolean isAssignmentCompatible(ITypeBinding iTypeBinding);

    boolean isCapture();

    boolean isCastCompatible(ITypeBinding iTypeBinding);

    boolean isClass();

    boolean isEnum();

    boolean isFromSource();

    boolean isGenericType();

    boolean isInterface();

    boolean isIntersectionType();

    boolean isLocal();

    boolean isMember();

    boolean isNested();

    boolean isNullType();

    boolean isParameterizedType();

    boolean isPrimitive();

    boolean isRawType();

    boolean isSubTypeCompatible(ITypeBinding iTypeBinding);

    boolean isTopLevel();

    boolean isTypeVariable();

    boolean isUpperbound();

    boolean isWildcardType();
}
