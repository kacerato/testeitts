.class public interface abstract Lorg/eclipse/jdt/core/IImportDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/ISourceReference;
.implements Lorg/eclipse/jdt/core/ISourceManipulation;


# virtual methods
.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getFlags()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isOnDemand()Z
.end method
