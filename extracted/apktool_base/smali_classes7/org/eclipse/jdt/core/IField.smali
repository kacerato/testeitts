.class public interface abstract Lorg/eclipse/jdt/core/IField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMember;
.implements Lorg/eclipse/jdt/core/IAnnotatable;


# virtual methods
.method public abstract getConstant()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getTypeSignature()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isEnumConstant()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isResolved()Z
.end method
