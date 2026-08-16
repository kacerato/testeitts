.class public final Lcom/android/tools/r8/graph/k0;
.super Lcom/android/tools/r8/internal/tr0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/graph/k0;->h()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    iput-boolean p2, p1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/tr0;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/QJ;->p:Z

    new-instance v0, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->s:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/PJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public static h()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/xe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/xe;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/ye;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ye;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method
