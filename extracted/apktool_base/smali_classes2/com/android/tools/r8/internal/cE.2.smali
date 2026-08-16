.class public abstract Lcom/android/tools/r8/internal/cE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->x:Lcom/android/tools/r8/internal/VD;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/VD;->a(I)Lcom/android/tools/r8/internal/RD;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/Om0;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method
