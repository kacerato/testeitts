.class public interface abstract Lorg/eclipse/jdt/core/dom/ITypeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IBinding;


# virtual methods
.method public abstract createArrayType(I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getBinaryName()Ljava/lang/String;
.end method

.method public abstract getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getComponentType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getDeclaredFields()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
.end method

.method public abstract getDeclaredMethods()[Lorg/eclipse/jdt/core/dom/IMethodBinding;
.end method

.method public abstract getDeclaredModifiers()I
.end method

.method public abstract getDeclaredTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
.end method

.method public abstract getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
.end method

.method public abstract getDimensions()I
.end method

.method public abstract getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getErasure()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getFunctionalInterfaceMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
.end method

.method public abstract getGenericTypeOfWildcardType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getInterfaces()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getModifiers()I
.end method

.method public getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public abstract getRank()I
.end method

.method public abstract getSuperclass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
.end method

.method public abstract getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getTypeBounds()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getWildcard()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract isAnnotation()Z
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isArray()Z
.end method

.method public abstract isAssignmentCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
.end method

.method public abstract isCapture()Z
.end method

.method public abstract isCastCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
.end method

.method public abstract isClass()Z
.end method

.method public abstract isEnum()Z
.end method

.method public abstract isFromSource()Z
.end method

.method public abstract isGenericType()Z
.end method

.method public abstract isInterface()Z
.end method

.method public abstract isIntersectionType()Z
.end method

.method public abstract isLocal()Z
.end method

.method public abstract isMember()Z
.end method

.method public abstract isNested()Z
.end method

.method public abstract isNullType()Z
.end method

.method public abstract isParameterizedType()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isRawType()Z
.end method

.method public abstract isSubTypeCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
.end method

.method public abstract isTopLevel()Z
.end method

.method public abstract isTypeVariable()Z
.end method

.method public abstract isUpperbound()Z
.end method

.method public abstract isWildcardType()Z
.end method
