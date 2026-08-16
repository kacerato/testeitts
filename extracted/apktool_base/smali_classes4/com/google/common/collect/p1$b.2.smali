.class public Lcom/google/common/collect/p1$b;
.super Lcom/google/common/collect/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p1;->r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/j2;

.field public final synthetic g:Lcom/google/common/collect/p1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p1;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;Lcom/google/common/collect/j2;Lcom/google/common/collect/p1;)V
    .locals 0

    iput-object p4, p0, Lcom/google/common/collect/p1$b;->f:Lcom/google/common/collect/j2;

    iput-object p5, p0, Lcom/google/common/collect/p1$b;->g:Lcom/google/common/collect/p1;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/p1;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/google/common/collect/j2;)Lcom/google/common/collect/l2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p1$b;->r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/p1;->l()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)",
            "Lcom/google/common/collect/p1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1$b;->f:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/p1$b;->g:Lcom/google/common/collect/p1;

    iget-object v1, p0, Lcom/google/common/collect/p1$b;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p1;->r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/p1;->p()Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1
.end method
