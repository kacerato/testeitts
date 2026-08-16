.class public Lcom/google/common/collect/m1$f;
.super Lcom/google/common/collect/n1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n1<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/m1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    invoke-direct {p0}, Lcom/google/common/collect/n1;-><init>()V

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    iget-object v0, v0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1$f;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 2
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$g;

    iget-object v1, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/m1$g;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public s()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->C()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->size()I

    move-result v0

    return v0
.end method

.method public v(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$f;->e:Lcom/google/common/collect/m1;

    iget-object v0, v0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method
