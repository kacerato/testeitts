.class public final Lcom/google/common/collect/q1$e;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "Lcom/google/common/collect/j2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final synthetic g:Lcom/google/common/collect/q1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q1;)V
    .locals 3

    iput-object p1, p0, Lcom/google/common/collect/q1$e;->g:Lcom/google/common/collect/q1;

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/collect/q1$e;->d:Z

    invoke-static {p1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/collect/q1$e;->e:Z

    invoke-static {p1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iput p1, p0, Lcom/google/common/collect/q1$e;->f:I

    return-void
.end method


# virtual methods
.method public Q(I)Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/q1$e;->f:I

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-boolean v0, p0, Lcom/google/common/collect/q1$e;->d:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/q1$e;->g:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/q1$e;->g:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :goto_0
    iget-boolean v1, p0, Lcom/google/common/collect/q1$e;->e:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/common/collect/q1$e;->f:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/q1$e;->g:Lcom/google/common/collect/q1;

    invoke-static {v1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/common/collect/q1$e;->d:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    iget-object p1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$e;->Q(I)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/q1$e;->f:I

    return v0
.end method
