.class public final Lcom/android/tools/r8/internal/uY;
.super Lcom/android/tools/r8/internal/SJ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vY;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 6

    sget-object v5, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/SJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/E00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    instance-of v1, v0, Lcom/android/tools/r8/graph/H5;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Hz;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    return-object v0
.end method
