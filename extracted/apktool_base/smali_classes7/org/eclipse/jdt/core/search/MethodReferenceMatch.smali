.class public Lorg/eclipse/jdt/core/search/MethodReferenceMatch;
.super Lorg/eclipse/jdt/core/search/ReferenceMatch;
.source "SourceFile"


# instance fields
.field private constructor:Z

.field private superInvocation:Z

.field private synthetic:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-void
.end method

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

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move v0, p5

    .line 3
    iput-boolean v0, v8, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->constructor:Z

    move v0, p6

    .line 4
    iput-boolean v0, v8, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->synthetic:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 5
    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZZZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move/from16 v1, p7

    .line 6
    iput-boolean v1, v0, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->superInvocation:Z

    return-void
.end method


# virtual methods
.method public final isConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->constructor:Z

    return v0
.end method

.method public isSuperInvocation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->superInvocation:Z

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/MethodReferenceMatch;->synthetic:Z

    return v0
.end method
