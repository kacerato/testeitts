.class public final synthetic Lcom/android/tools/r8/internal/z91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wl;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/em;

.field public final synthetic b:Lcom/android/tools/r8/internal/ga;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/em;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/z91;->a:Lcom/android/tools/r8/internal/em;

    iput-object p2, p0, Lcom/android/tools/r8/internal/z91;->b:Lcom/android/tools/r8/internal/ga;

    iput-object p3, p0, Lcom/android/tools/r8/internal/z91;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/z91;->a:Lcom/android/tools/r8/internal/em;

    iget-object v2, v0, Lcom/android/tools/r8/internal/z91;->b:Lcom/android/tools/r8/internal/ga;

    iget-object v3, v0, Lcom/android/tools/r8/internal/z91;->c:Lcom/android/tools/r8/graph/H5;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
