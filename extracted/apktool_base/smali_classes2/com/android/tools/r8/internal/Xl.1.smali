.class public final Lcom/android/tools/r8/internal/Xl;
.super Lcom/android/tools/r8/internal/am;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Yl;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Yl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xl;->b:Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/I00;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 12

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/Xl;->b:Lcom/android/tools/r8/internal/Yl;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Yl;->b:Lcom/android/tools/r8/internal/Wl;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 3
    invoke-interface/range {v2 .. v11}, Lcom/android/tools/r8/internal/Wl;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xl;->b:Lcom/android/tools/r8/internal/Yl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Yl;->b:Lcom/android/tools/r8/internal/Wl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xl;->b:Lcom/android/tools/r8/internal/Yl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Yl;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/m21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/m21;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
