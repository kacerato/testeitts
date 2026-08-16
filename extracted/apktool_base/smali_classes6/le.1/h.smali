.class public Lle/h;
.super Lle/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lle/h$c;,
        Lle/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lle/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public r:Lbe/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lle/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lle/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lle/f;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lle/f;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public Ff()Lae/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lle/h$b;

    invoke-direct {v0, p0, p0}, Lle/h$b;-><init>(Lle/h;LWd/b0;)V

    return-object v0
.end method

.method public Gf(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lle/h$d;

    invoke-direct {v0, p0, p1}, Lle/h$d;-><init>(Lle/h;Ljava/io/ObjectOutput;)V

    iget-object p1, p0, Lle/h;->r:Lbe/e;

    invoke-interface {p1, v0}, Lbe/e;->U0(Lhe/S;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lle/h$d;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lle/h;->r:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->add(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Order not changed after insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lle/f;->clear()V

    iget-object v0, p0, Lle/h;->r:Lbe/e;

    invoke-interface {v0}, Lbe/e;->clear()V

    return-void
.end method

.method public gf(I)V
    .locals 9

    new-instance v0, Lde/e;

    iget-object v1, p0, Lle/h;->r:Lbe/e;

    invoke-direct {v0, v1}, Lde/e;-><init>(Lbe/e;)V

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v1

    iget-object v8, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v2, p0, Lle/h;->r:Lbe/e;

    invoke-interface {v2}, Lbe/e;->clear()V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, LWd/b0;->l:[Ljava/lang/Object;

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lde/e;->iterator()LZd/Q;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, LZd/Q;->next()I

    move-result v0

    aget-object v4, v8, v0

    sget-object v0, LWd/b0;->p:Ljava/lang/Object;

    if-eq v4, v0, :cond_3

    sget-object v2, LWd/b0;->o:Ljava/lang/Object;

    if-eq v4, v2, :cond_3

    if-eq v4, v0, :cond_0

    if-eq v4, v2, :cond_0

    invoke-virtual {p0, v4}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v2, p0, LWd/b0;->l:[Ljava/lang/Object;

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v5

    move-object v2, p0

    move v6, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, LWd/b0;->Ef(Ljava/lang/Object;Ljava/lang/Object;II[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lle/h;->r:Lbe/e;

    invoke-interface {v2, v0}, Lbe/e;->add(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Order not changed after insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterating over empty location while rehashing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public hf(I)V
    .locals 1

    iget-object v0, p0, Lle/h;->r:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->remove(I)Z

    invoke-super {p0, p1}, LWd/b0;->hf(I)V

    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lle/h;->Ff()Lae/a;

    move-result-object v0

    return-object v0
.end method

.method public jf(I)I
    .locals 1

    new-instance v0, Lle/h$a;

    invoke-direct {v0, p0, p1}, Lle/h$a;-><init>(Lle/h;I)V

    iput-object v0, p0, Lle/h;->r:Lbe/e;

    invoke-super {p0, p1}, LWd/b0;->jf(I)I

    move-result p1

    return p1
.end method

.method public rf(Lhe/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TE;>;)Z"
        }
    .end annotation

    new-instance v0, Lle/h$c;

    iget-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lle/h$c;-><init>(Lle/h;[Ljava/lang/Object;Lhe/k0;)V

    iget-object p1, p0, Lle/h;->r:Lbe/e;

    invoke-interface {p1, v0}, Lbe/e;->U0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lle/h;->Ff()Lae/a;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
