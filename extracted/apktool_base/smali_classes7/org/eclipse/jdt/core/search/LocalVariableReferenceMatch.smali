.class public Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;
.super Lorg/eclipse/jdt/core/search/SearchMatch;
.source "SourceFile"


# instance fields
.field private isReadAccess:Z

.field private isWriteAccess:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/SearchMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move v0, p5

    iput-boolean v0, v7, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;->isReadAccess:Z

    move v0, p6

    iput-boolean v0, v7, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;->isWriteAccess:Z

    move v0, p7

    invoke-virtual {p0, p7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setInsideDocComment(Z)V

    return-void
.end method


# virtual methods
.method public final isReadAccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;->isReadAccess:Z

    return v0
.end method

.method public final isWriteAccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/LocalVariableReferenceMatch;->isWriteAccess:Z

    return v0
.end method
