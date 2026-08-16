.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;


# virtual methods
.method public asAnnotation()Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;
    .locals 0

    return-object p0
.end method

.method public abstract getAnnotationMembers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationMemberDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isInheritable()Z
.end method
