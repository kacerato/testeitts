.class public Lorg/eclipse/jdt/core/search/FieldReferenceMatch;
.super Lorg/eclipse/jdt/core/search/ReferenceMatch;
.source "SourceFile"


# instance fields
.field private isReadAccess:Z

.field private isWriteAccess:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move v0, p5

    iput-boolean v0, v8, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;->isReadAccess:Z

    move v0, p6

    iput-boolean v0, v8, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;->isWriteAccess:Z

    return-void
.end method


# virtual methods
.method public final isReadAccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;->isReadAccess:Z

    return v0
.end method

.method public final isWriteAccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/FieldReferenceMatch;->isWriteAccess:Z

    return v0
.end method
