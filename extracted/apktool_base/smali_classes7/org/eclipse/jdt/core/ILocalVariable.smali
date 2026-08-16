.class public interface abstract Lorg/eclipse/jdt/core/ILocalVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/ISourceReference;
.implements Lorg/eclipse/jdt/core/IAnnotatable;


# virtual methods
.method public abstract getDeclaringMember()Lorg/eclipse/jdt/core/IMember;
.end method

.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getFlags()I
.end method

.method public abstract getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
.end method

.method public abstract getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
.end method

.method public abstract getTypeSignature()Ljava/lang/String;
.end method

.method public abstract isParameter()Z
.end method
