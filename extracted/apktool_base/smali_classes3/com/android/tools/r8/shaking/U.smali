.class public final Lcom/android/tools/r8/shaking/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/ir/optimize/F;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/x;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/ir/optimize/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/U;->b:Lcom/android/tools/r8/ir/optimize/F;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/graph/H5;Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/tools/r8/internal/sD;->l:Z

    new-instance v0, Lcom/android/tools/r8/internal/rD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rD;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rD;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/rD;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/rD;->d:Lcom/android/tools/r8/graph/M2;

    new-instance v0, Lcom/android/tools/r8/internal/sD;

    iget-object v1, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/rD;->d:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_0
    invoke-interface {p2, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/eg1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/eg1;-><init>()V

    invoke-static {p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    :cond_1
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method
