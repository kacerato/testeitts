.class public final Lcom/android/tools/r8/internal/sm0;
.super Lcom/android/tools/r8/ir/optimize/W;
.source "SourceFile"


# instance fields
.field public final l:Lcom/android/tools/r8/internal/h80;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/tools/r8/ir/optimize/W;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/QR;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/sm0;->l:Lcom/android/tools/r8/internal/h80;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Cx0;
    .locals 0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;)Lcom/android/tools/r8/ir/optimize/H;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/tools/r8/internal/rm0;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/rm0;-><init>(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V

    return-object v7
.end method
