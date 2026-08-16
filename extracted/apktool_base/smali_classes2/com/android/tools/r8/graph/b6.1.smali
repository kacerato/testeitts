.class public final Lcom/android/tools/r8/graph/b6;
.super Lcom/android/tools/r8/internal/tr0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/graph/b6;->h()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    iput-object p2, p1, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/tr0;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/qh;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public static d(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Or0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->b()V

    return-void
.end method

.method public static h()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/Lc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Lc;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/Mc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Mc;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method
