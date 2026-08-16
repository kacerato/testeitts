.class public interface abstract Lorg/eclipse/jdt/core/ITypeParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/ISourceReference;


# virtual methods
.method public abstract getBounds()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getBoundsSignatures()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getDeclaringMember()Lorg/eclipse/jdt/core/IMember;
.end method

.method public abstract getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
.end method
