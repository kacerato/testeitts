.class public final Lcom/google/common/collect/c3$f;
.super Lcom/google/common/collect/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c3<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final f:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/google/common/collect/c3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3;Lcom/google/common/collect/j2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    new-instance v0, Lcom/google/common/collect/c3$g;

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/google/common/collect/c3$g;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;Ljava/util/NavigableMap;Lcom/google/common/collect/c3$a;)V

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/c3;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/c3$a;)V

    iput-object p2, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    iget-object v1, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->a(Lcom/google/common/collect/j2;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    iget-object v1, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c3;->a(Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public i(Lcom/google/common/collect/j2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    invoke-static {v0, p1}, Lcom/google/common/collect/c3;->q(Lcom/google/common/collect/c3;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public k(Lcom/google/common/collect/j2;)Lcom/google/common/collect/m2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/m2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/c3$f;

    iget-object v1, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c3$f;-><init>(Lcom/google/common/collect/c3;Lcom/google/common/collect/j2;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/common/collect/j2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    const-string v1, "Cannot add range %s to subRangeSet(%s)"

    iget-object v2, p0, Lcom/google/common/collect/c3$f;->f:Lcom/google/common/collect/j2;

    invoke-static {v0, v1, p1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/c3$f;->g:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->o(Lcom/google/common/collect/j2;)V

    return-void
.end method
