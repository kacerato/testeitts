.class public abstract Lcom/google/common/collect/F0;
.super Lcom/google/common/collect/r0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/V1;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/F0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0<",
        "TE;>;",
        "Lcom/google/common/collect/V1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public C0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract D0()Lcom/google/common/collect/V1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public E0(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/F0;->y6(Ljava/lang/Object;I)I

    return v0
.end method

.method public F0(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public G0(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->i(Lcom/google/common/collect/V1;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H0()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public I0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public J0(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/W1;->v(Lcom/google/common/collect/V1;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public M0(Ljava/lang/Object;II)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/W1;->w(Lcom/google/common/collect/V1;Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public N0()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/W1;->o(Lcom/google/common/collect/V1;)I

    move-result v0

    return v0
.end method

.method public P9(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/V1;->P9(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public S1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e7(Ljava/lang/Object;II)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/V1;->e7(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/V1;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public o0(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->c(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public p0()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->h(Ljava/util/Iterator;)V

    return-void
.end method

.method public pc(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/V1;->pc(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public q0(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/F0;->Ad(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w0(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/F0;->pc(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->p(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public y0(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->s(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public y6(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/F0;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/V1;->y6(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
