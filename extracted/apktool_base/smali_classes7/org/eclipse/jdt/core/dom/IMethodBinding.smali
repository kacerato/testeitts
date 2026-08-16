.class public interface abstract Lorg/eclipse/jdt/core/dom/IMethodBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IBinding;


# virtual methods
.method public abstract getDeclaredReceiverType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
.end method

.method public abstract getDefaultValue()Ljava/lang/Object;
.end method

.method public abstract getExceptionTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getMethodDeclaration()Lorg/eclipse/jdt/core/dom/IMethodBinding;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations(I)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
.end method

.method public abstract getParameterTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getSyntheticOuterLocals()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
.end method

.method public abstract getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract isAnnotationMember()Z
.end method

.method public abstract isConstructor()Z
.end method

.method public abstract isDefaultConstructor()Z
.end method

.method public abstract isGenericMethod()Z
.end method

.method public abstract isParameterizedMethod()Z
.end method

.method public abstract isRawMethod()Z
.end method

.method public abstract isSubsignature(Lorg/eclipse/jdt/core/dom/IMethodBinding;)Z
.end method

.method public abstract isVarargs()Z
.end method

.method public abstract overrides(Lorg/eclipse/jdt/core/dom/IMethodBinding;)Z
.end method
