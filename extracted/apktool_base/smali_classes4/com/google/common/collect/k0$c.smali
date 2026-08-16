.class public Lcom/google/common/collect/k0$c;
.super Lcom/google/common/collect/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/r0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Lcom/google/common/collect/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/k0$c;->m0()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    iget-object v0, v0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->v()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    invoke-virtual {v1}, Lcom/google/common/collect/k0;->N()Lw2/I;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/C;->d(Ljava/util/Collection;Lw2/I;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    iget-object v0, v0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/S1;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    iget-object v0, v0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k0$c;->b:Lcom/google/common/collect/k0;

    iget-object v0, v0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/S1;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
