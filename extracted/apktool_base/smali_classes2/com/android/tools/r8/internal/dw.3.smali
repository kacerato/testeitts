.class public final Lcom/android/tools/r8/internal/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dw;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/h91;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/h91;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    const-string p0, "Finalize fields pass"

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j1:Lcom/android/tools/r8/internal/U1;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/dw;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dw;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dw;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x40

    .line 15
    iget v2, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/dw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/F5;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->p()Lcom/android/tools/r8/graph/g;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/f91;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/f91;-><init>(Lcom/android/tools/r8/internal/dw;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/dw;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/g91;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/g91;-><init>(Lcom/android/tools/r8/internal/dw;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/dw;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
