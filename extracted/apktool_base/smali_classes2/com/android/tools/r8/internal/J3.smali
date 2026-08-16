.class public abstract Lcom/android/tools/r8/internal/J3;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/YC;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->v2()I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final m1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u2()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final v2()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/bJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bJ0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/tools/r8/internal/oZ;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_4
    return v2
.end method

.method public abstract w2()Lcom/android/tools/r8/internal/J3;
.end method

.method public final x()Lcom/android/tools/r8/internal/J3;
    .locals 0

    return-object p0
.end method
