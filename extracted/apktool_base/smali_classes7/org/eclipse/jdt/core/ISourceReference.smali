.class public interface abstract Lorg/eclipse/jdt/core/ISourceReference;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract exists()Z
.end method

.method public abstract getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getSource()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
