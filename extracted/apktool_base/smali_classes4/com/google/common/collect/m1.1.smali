.class public abstract Lcom/google/common/collect/m1;
.super Lcom/google/common/collect/v;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m1$h;,
        Lcom/google/common/collect/m1$g;,
        Lcom/google/common/collect/m1$f;,
        Lcom/google/common/collect/m1$d;,
        Lcom/google/common/collect/m1$e;,
        Lcom/google/common/collect/m1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final i:J


# instance fields
.field public final transient g:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TK;+",
            "Lcom/google/common/collect/c1<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final transient h:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "TK;+",
            "Lcom/google/common/collect/c1<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    iput p2, p0, Lcom/google/common/collect/m1;->h:I

    return-void
.end method

.method public static E()Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/h1;->W()Lcom/google/common/collect/h1;

    move-result-object v0

    return-object v0
.end method

.method public static F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/h1;->X(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/h1;->Y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/google/common/collect/h1;->a0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/google/common/collect/h1;->b0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/google/common/collect/h1;->c0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcom/google/common/collect/m1$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/m1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$c;

    invoke-direct {v0}, Lcom/google/common/collect/m1$c;-><init>()V

    return-object v0
.end method

.method public static n(Lcom/google/common/collect/S1;)Lcom/google/common/collect/m1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/m1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->B()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/h1;->Q(Lcom/google/common/collect/S1;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Iterable;)Lcom/google/common/collect/m1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/h1;->R(Ljava/lang/Iterable;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A()Lcom/google/common/collect/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->v()Z

    move-result v0

    return v0
.end method

.method public C()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n1<",
            "TK;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->j()Lcom/google/common/collect/V1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n1;

    return-object v0
.end method

.method public K(Ljava/lang/Object;)Lcom/google/common/collect/c1;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/c1;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1$b;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public O()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c1;

    return-object v0
.end method

.method public final Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic b()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->q()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
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

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1;->K(Ljava/lang/Object;)Lcom/google/common/collect/c1;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/m1;->L(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f()Lcom/google/common/collect/V1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->r()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->s()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->g0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1;->y(Ljava/lang/Object;)Lcom/google/common/collect/c1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->x()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->M()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Lcom/google/common/collect/V1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->D()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->l()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->C()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1$d;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public r()Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1$f;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
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

.method public s()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1$h;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m1;->h:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->v()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c1;

    return-object v0
.end method

.method public bridge synthetic v()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->u()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->O()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lcom/google/common/collect/S1;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public x()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1$a;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public abstract y(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation
.end method
