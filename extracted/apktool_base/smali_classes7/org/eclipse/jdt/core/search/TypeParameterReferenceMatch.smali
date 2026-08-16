.class public Lorg/eclipse/jdt/core/search/TypeParameterReferenceMatch;
.super Lorg/eclipse/jdt/core/search/SearchMatch;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/SearchMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {p0, p5}, Lorg/eclipse/jdt/core/search/SearchMatch;->setInsideDocComment(Z)V

    return-void
.end method
