.class public Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;


# instance fields
.field requestor:Lorg/eclipse/jdt/core/search/MethodNameRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/MethodNameRequestor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameRequestor;

    return-void
.end method


# virtual methods
.method public acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;I)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/MethodNameRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/MethodNameRequestor;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-virtual/range {v1 .. v14}, Lorg/eclipse/jdt/core/search/MethodNameRequestor;->acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;I)V

    return-void
.end method
