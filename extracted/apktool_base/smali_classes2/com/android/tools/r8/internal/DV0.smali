.class public final synthetic Lcom/android/tools/r8/internal/DV0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Rw;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/ir/optimize/u;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Rw;ZLjava/util/List;Lcom/android/tools/r8/ir/optimize/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DV0;->a:Lcom/android/tools/r8/internal/Rw;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/DV0;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/DV0;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/internal/DV0;->d:Lcom/android/tools/r8/ir/optimize/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/DV0;->a:Lcom/android/tools/r8/internal/Rw;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/DV0;->b:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/DV0;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/DV0;->d:Lcom/android/tools/r8/ir/optimize/u;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/F0;

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Rw;->a(ZLjava/util/List;Lcom/android/tools/r8/ir/optimize/u;Lcom/android/tools/r8/graph/F0;Ljava/util/List;)V

    return-void
.end method
