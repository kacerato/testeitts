.class public final Lcom/google/common/collect/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    serializable = true
.end annotation


# instance fields
.field public final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final e:Lcom/google/common/collect/x;

.field public final f:Z

.field public final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final h:Lcom/google/common/collect/x;

.field public transient i:Lcom/google/common/collect/R0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/x;",
            "ZTT;",
            "Lcom/google/common/collect/x;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/google/common/collect/R0;->c:Z

    iput-boolean p5, p0, Lcom/google/common/collect/R0;->f:Z

    iput-object p3, p0, Lcom/google/common/collect/R0;->d:Ljava/lang/Object;

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/x;

    iput-object v0, p0, Lcom/google/common/collect/R0;->e:Lcom/google/common/collect/x;

    iput-object p6, p0, Lcom/google/common/collect/R0;->g:Ljava/lang/Object;

    invoke-static {p7}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/x;

    iput-object v0, p0, Lcom/google/common/collect/R0;->h:Lcom/google/common/collect/x;

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p6}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    invoke-static {p3}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p6}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p1, p2, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p5, 0x1

    if-gtz p1, :cond_2

    move v0, p5

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    invoke-static {v0, v1, p3, p6}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne p4, p1, :cond_3

    if-eq p7, p1, :cond_4

    :cond_3
    move p2, p5

    :cond_4
    invoke-static {p2}, Lw2/H;->d(Z)V

    :cond_5
    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/R0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/R0;

    sget-object v7, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object v8
.end method

.method public static d(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/R0;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/R0;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object v8
.end method

.method public static e(Lcom/google/common/collect/j2;)Lcom/google/common/collect/R0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/j2<",
            "TT;>;)",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->y()Lcom/google/common/collect/x;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/common/collect/j2;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v1

    :cond_2
    move-object v8, v1

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->K()Lcom/google/common/collect/x;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_3
    sget-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/google/common/collect/R0;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->q()Z

    move-result v4

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->r()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object v0
.end method

.method public static n(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/R0;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/x;",
            "TT;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/R0;

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object v8
.end method

.method public static r(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/R0;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/R0;

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object v8
.end method


# virtual methods
.method public b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/R0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/R0;->p(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/R0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/R0;

    iget-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/R0;->c:Z

    iget-boolean v2, p1, Lcom/google/common/collect/R0;->c:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/R0;->f:Z

    iget-boolean v2, p1, Lcom/google/common/collect/R0;->f:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Lcom/google/common/collect/x;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/R0;->e:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/x;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/R0;->h:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R0;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/R0;->c:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/R0;->f:Z

    return v0
.end method

.method public l(Lcom/google/common/collect/R0;)Lcom/google/common/collect/R0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/R0<",
            "TT;>;)",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    iget-boolean v0, p0, Lcom/google/common/collect/R0;->c:Z

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->j()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v0, p1, Lcom/google/common/collect/R0;->c:Z

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v2

    :cond_0
    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/R0;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lcom/google/common/collect/R0;->f:Z

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->k()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v0, p1, Lcom/google/common/collect/R0;->f:Z

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v4

    :cond_3
    :goto_2
    move v8, v0

    move-object v9, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/R0;->k()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_5

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v6, v7, :cond_3

    :cond_5
    invoke-virtual {p1}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v4

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    iget-object p1, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-interface {p1, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_6

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v2, p1, :cond_7

    if-ne v4, p1, :cond_7

    :cond_6
    sget-object p1, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    sget-object v0, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    move-object v7, p1

    move-object v10, v0

    move-object v6, v9

    goto :goto_4

    :cond_7
    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    :goto_4
    new-instance p1, Lcom/google/common/collect/R0;

    iget-object v4, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    return-object p1
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/R0;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R0;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lcom/google/common/collect/R0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/R0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R0;->i:Lcom/google/common/collect/R0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/R0;

    iget-object v1, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/common/collect/R0;->f:Z

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/common/collect/R0;->c:Z

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/R0;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/x;ZLjava/lang/Object;Lcom/google/common/collect/x;)V

    iput-object p0, v0, Lcom/google/common/collect/R0;->i:Lcom/google/common/collect/R0;

    iput-object v0, p0, Lcom/google/common/collect/R0;->i:Lcom/google/common/collect/R0;

    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_3

    move v1, v0

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public q(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/R0;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_3

    move v1, v0

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/R0;->b:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/R0;->e:Lcom/google/common/collect/x;

    sget-object v2, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    iget-boolean v3, p0, Lcom/google/common/collect/R0;->c:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/R0;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v3, "-\u221e"

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/common/collect/R0;->f:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/R0;->g:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v4, "\u221e"

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/R0;->h:Lcom/google/common/collect/x;

    if-ne v5, v2, :cond_3

    const/16 v2, 0x5d

    goto :goto_3

    :cond_3
    const/16 v2, 0x29

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
