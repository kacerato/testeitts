.class public Ldm/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQk/q;


# direct methods
.method public constructor <init>(LQk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm/k;->a:LQk/q;

    return-void
.end method


# virtual methods
.method public a(Ldm/c;)Ldm/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    new-instance v0, Ldm/j;

    new-instance v1, Lci/g;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ldm/c;->k()Lci/b;

    move-result-object p1

    invoke-direct {v1, v2, v2, p1}, Lci/g;-><init>(Lci/e;Lci/f;Lci/b;)V

    iget-object p1, p0, Ldm/k;->a:LQk/q;

    invoke-direct {v0, v1, p1}, Ldm/j;-><init>(Lci/g;LQk/q;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldm/c;",
            ">;)",
            "Ljava/util/List<",
            "Ldm/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ldm/j;

    new-instance v3, Lci/g;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldm/c;

    invoke-virtual {v4}, Ldm/c;->k()Lci/b;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Lci/g;-><init>(Lci/e;Lci/f;Lci/b;)V

    iget-object v4, p0, Ldm/k;->a:LQk/q;

    invoke-direct {v2, v3, v4}, Ldm/j;-><init>(Lci/g;LQk/q;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
