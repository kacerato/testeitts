.class public Lcom/google/common/collect/g0$b$a;
.super Lcom/google/common/collect/W1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g0$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$i<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/g0$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g0$b$a;->b:Lcom/google/common/collect/g0$b;

    invoke-direct {p0}, Lcom/google/common/collect/W1$i;-><init>()V

    return-void
.end method

.method public static synthetic e(Lw2/I;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/g0$b$a;->f(Lw2/I;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lw2/I;Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    invoke-interface {p0, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g0$b$a;->b:Lcom/google/common/collect/g0$b;

    return-object v0
.end method

.method public final h(Lw2/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/I<",
            "-",
            "Lcom/google/common/collect/V1$a<",
            "TK;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g0$b$a;->b:Lcom/google/common/collect/g0$b;

    iget-object v0, v0, Lcom/google/common/collect/g0$b;->e:Lcom/google/common/collect/g0;

    new-instance v1, Lcom/google/common/collect/h0;

    invoke-direct {v1, p1}, Lcom/google/common/collect/h0;-><init>(Lw2/I;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g0;->n(Lw2/I;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g0$b$a;->b:Lcom/google/common/collect/g0$b;

    invoke-virtual {v0}, Lcom/google/common/collect/U1$g;->g()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g0$b$a;->h(Lw2/I;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g0$b$a;->h(Lw2/I;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/g0$b$a;->b:Lcom/google/common/collect/g0$b;

    iget-object v0, v0, Lcom/google/common/collect/g0$b;->e:Lcom/google/common/collect/g0;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
