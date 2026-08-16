.class public final synthetic Lv/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/e0;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Lcom/android/tools/r8/internal/dX;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/s0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iput-object p2, p0, Lv/s0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lv/s0;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lv/s0;->d:Lcom/android/tools/r8/internal/dX;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lv/s0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iget-object v1, p0, Lv/s0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lv/s0;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lv/s0;->d:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    return-void
.end method
