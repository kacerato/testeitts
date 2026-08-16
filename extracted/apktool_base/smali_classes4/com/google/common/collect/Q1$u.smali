.class public final Lcom/google/common/collect/Q1$u;
.super Lcom/google/common/collect/Q1$v;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Q1$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final h:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w;Lw2/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Q1$v;-><init>(Ljava/util/Map;Lw2/I;)V

    .line 2
    new-instance v0, Lcom/google/common/collect/Q1$u;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/w;->A8()Lcom/google/common/collect/w;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/collect/Q1$u;->n(Lw2/I;)Lw2/I;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/collect/Q1$u;-><init>(Lcom/google/common/collect/w;Lw2/I;Lcom/google/common/collect/w;)V

    iput-object v0, p0, Lcom/google/common/collect/Q1$u;->h:Lcom/google/common/collect/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/w;Lw2/I;Lcom/google/common/collect/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Q1$v;-><init>(Ljava/util/Map;Lw2/I;)V

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/Q1$u;->h:Lcom/google/common/collect/w;

    return-void
.end method

.method public static n(Lw2/I;)Lw2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lw2/I<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Q1$u$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q1$u$a;-><init>(Lw2/I;)V

    return-object v0
.end method


# virtual methods
.method public A8()Lcom/google/common/collect/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$u;->h:Lcom/google/common/collect/w;

    return-object v0
.end method

.method public U6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Q1$n;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0}, Lcom/google/common/collect/Q1$u;->o()Lcom/google/common/collect/w;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/w;->U6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()Lcom/google/common/collect/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$n;->e:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Q1$u;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/Q1$u;->h:Lcom/google/common/collect/w;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
