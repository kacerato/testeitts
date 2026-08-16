.class public Lcom/android/tools/r8/internal/Fw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fw;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/v8$a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/ew;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    move v0, v3

    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->W1()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->n2()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->T()Lcom/android/tools/r8/internal/ww;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    iget-object v5, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v6, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lcom/android/tools/r8/internal/ww;->e()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v4

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    if-ne v1, v4, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    new-instance p2, Lcom/android/tools/r8/internal/WE0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/WE0;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/v8$a;->a(Lcom/android/tools/r8/internal/hw;Ljava/util/function/Consumer;)V

    :cond_7
    :goto_3
    return-void
.end method
