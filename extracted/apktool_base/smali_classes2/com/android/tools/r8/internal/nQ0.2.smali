.class public final synthetic Lcom/android/tools/r8/internal/nQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wl;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ov0;

.field public final synthetic b:Lcom/android/tools/r8/internal/ha;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ov0;Lcom/android/tools/r8/internal/ha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nQ0;->a:Lcom/android/tools/r8/internal/Ov0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nQ0;->b:Lcom/android/tools/r8/internal/ha;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/nQ0;->a:Lcom/android/tools/r8/internal/Ov0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/nQ0;->b:Lcom/android/tools/r8/internal/ha;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/tools/r8/internal/Ov0;->a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
