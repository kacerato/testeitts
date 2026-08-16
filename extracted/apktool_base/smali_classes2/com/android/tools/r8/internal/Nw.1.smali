.class public abstract Lcom/android/tools/r8/internal/Nw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 6
    check-cast p0, Lcom/android/tools/r8/graph/E0;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 9
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/g1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p2

    const/16 v0, 0x12

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 14
    iput-object v0, p2, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 16
    iput-object p1, p2, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 20
    sget-boolean p2, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/r3;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/g1;)V

    if-nez p2, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    new-instance v2, Lcom/android/tools/r8/internal/TO0;

    invoke-direct {v2, v1, p0}, Lcom/android/tools/r8/internal/TO0;-><init>(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/J1;->b(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
