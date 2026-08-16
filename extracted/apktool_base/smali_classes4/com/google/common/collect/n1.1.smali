.class public abstract Lcom/google/common/collect/n1;
.super Lcom/google/common/collect/o1;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/V1;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n1$b;,
        Lcom/google/common/collect/n1$d;,
        Lcom/google/common/collect/n1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o1<",
        "TE;>;",
        "Lcom/google/common/collect/V1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# instance fields
.field public transient c:Lcom/google/common/collect/g1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient d:Lcom/google/common/collect/r1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/o1;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-direct {v0}, Lcom/google/common/collect/n1$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/google/common/collect/n1$b;->h([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lcom/google/common/collect/n1$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-direct {v0}, Lcom/google/common/collect/n1$b;-><init>()V

    return-object v0
.end method

.method public static varargs l([Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-direct {v0}, Lcom/google/common/collect/n1$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/n1$b;->h([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/Collection;)Lcom/google/common/collect/n1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/V1$a<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/n1$b;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/n1$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Iterable;)Lcom/google/common/collect/n1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/n1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-static {p0}, Lcom/google/common/collect/W1;->l(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/n1$b;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/n1$b;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;

    invoke-virtual {v0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/util/Iterator;)Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-direct {v0}, Lcom/google/common/collect/n1$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/n1$b;->j(Ljava/util/Iterator;)Lcom/google/common/collect/n1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static p([Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method private r()Lcom/google/common/collect/r1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/n1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Lcom/google/common/collect/n1$a;)V

    :goto_0
    return-object v0
.end method

.method public static x()Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/s2;->h:Lcom/google/common/collect/s2;

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->l([Ljava/lang/Object;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final P9(Ljava/lang/Object;I)I
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1;->c:Lcom/google/common/collect/g1;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/c1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/n1;->c:Lcom/google/common/collect/g1;

    :cond_0
    return-object v0
.end method

.method public b([Ljava/lang/Object;I)I
    .locals 4
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-interface {p0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e7(Ljava/lang/Object;II)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->i(Lcom/google/common/collect/V1;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/D2;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/n1$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/n1$a;-><init>(Lcom/google/common/collect/n1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation build Lv2/c;
    .end annotation
.end method

.method public final pc(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract s()Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1;->d:Lcom/google/common/collect/r1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/n1;->r()Lcom/google/common/collect/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/n1;->d:Lcom/google/common/collect/r1;

    :cond_0
    return-object v0
.end method

.method public abstract v(I)Lcom/google/common/collect/V1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final y6(Ljava/lang/Object;I)I
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
