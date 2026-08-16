.class public final Lcom/android/tools/r8/internal/yj;
.super Lcom/android/tools/r8/internal/Cw;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lcom/android/tools/r8/internal/f80;

.field public final synthetic n:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p5, p0, Lcom/android/tools/r8/internal/yj;->m:Lcom/android/tools/r8/internal/f80;

    iput-object p6, p0, Lcom/android/tools/r8/internal/yj;->n:Ljava/util/function/Consumer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Cw;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/tZ;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/F5;)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yj;->m:Lcom/android/tools/r8/internal/f80;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/yj;->n:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/yj;->m:Lcom/android/tools/r8/internal/f80;

    iget-object p1, p1, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method
