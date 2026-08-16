.class public interface abstract Lorg/eclipse/jdt/core/IAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/ISourceReference;


# virtual methods
.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getMemberValuePairs()[Lorg/eclipse/jdt/core/IMemberValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOccurrenceCount()I
.end method
