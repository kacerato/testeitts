.class public final Lcom/google/common/collect/W1$j;
.super Lcom/google/common/collect/W1$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/W1$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/V1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lw2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/I<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/V1;Lw2/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lw2/I<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/W1$n;-><init>(Lcom/google/common/collect/W1$a;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1;

    iput-object p1, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/I;

    iput-object p1, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-interface {v2, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/D2;->i(Ljava/util/Set;Lw2/I;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/W1$j$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/W1$j$a;-><init>(Lcom/google/common/collect/W1$j;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/D2;->i(Ljava/util/Set;Lw2/I;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public g()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public h()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0}, Lcom/google/common/collect/V1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->y(Ljava/util/Iterator;Lw2/I;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/W1$j;->h()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public pc(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/W1$j;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/V1;->pc(Ljava/lang/Object;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y6(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-interface {v0, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Element %s does not match predicate %s"

    iget-object v2, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-static {v0, v1, p1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/V1;->y6(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
