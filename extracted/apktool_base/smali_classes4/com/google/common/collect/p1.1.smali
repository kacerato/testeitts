.class public Lcom/google/common/collect/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/l2;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/p1$d;,
        Lcom/google/common/collect/p1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/l2<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p1<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:J


# instance fields
.field public final transient b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field public final transient c:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/p1;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p1;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    sput-object v0, Lcom/google/common/collect/p1;->d:Lcom/google/common/collect/p1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;>;",
            "Lcom/google/common/collect/g1<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    iput-object p2, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/p1;)Lcom/google/common/collect/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    return-object p0
.end method

.method public static n()Lcom/google/common/collect/p1$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/p1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p1$c;

    invoke-direct {v0}, Lcom/google/common/collect/p1$c;-><init>()V

    return-object v0
.end method

.method public static o(Lcom/google/common/collect/l2;)Lcom/google/common/collect/p1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l2<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/p1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/p1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/p1;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g1$a;-><init>(I)V

    new-instance v1, Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/g1$a;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j2;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/common/collect/p1;

    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/p1;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    return-object p0
.end method

.method public static p()Lcom/google/common/collect/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/p1<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/p1;->d:Lcom/google/common/collect/p1;

    return-object v0
.end method

.method public static q(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/p1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p1;

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/p1;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/j2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

.method public bridge synthetic d(Lcom/google/common/collect/j2;)Lcom/google/common/collect/l2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p1;->r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/l2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l2;

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v4, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public bridge synthetic g()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->l()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/google/common/collect/l2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public j(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v4, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l()Lcom/google/common/collect/i1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v2;

    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/j2;->D()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/t1;

    iget-object v2, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    invoke-virtual {v2}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object v1
.end method

.method public m()Lcom/google/common/collect/i1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v2;

    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->D()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/t1;

    iget-object v2, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object v1
.end method

.method public r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)",
            "Lcom/google/common/collect/p1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/p1;->p()Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->c()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->J()Lw2/t;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    sget-object v3, Lcom/google/common/collect/I2$c;->FIRST_AFTER:Lcom/google/common/collect/I2$c;

    sget-object v4, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/p1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    sget-object v5, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/p1;->p()Lcom/google/common/collect/p1;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int v2, v1, v0

    new-instance v5, Lcom/google/common/collect/p1$a;

    invoke-direct {v5, p0, v2, v0, p1}, Lcom/google/common/collect/p1$a;-><init>(Lcom/google/common/collect/p1;IILcom/google/common/collect/j2;)V

    new-instance v2, Lcom/google/common/collect/p1$b;

    iget-object v3, p0, Lcom/google/common/collect/p1;->c:Lcom/google/common/collect/g1;

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/g1;->O(II)Lcom/google/common/collect/g1;

    move-result-object v6

    move-object v3, v2

    move-object v4, p0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/p1$b;-><init>(Lcom/google/common/collect/p1;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;Lcom/google/common/collect/j2;Lcom/google/common/collect/p1;)V

    return-object v2

    :cond_3
    :goto_0
    return-object p0
.end method

.method public s()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/p1$d;

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/p1$d;-><init>(Lcom/google/common/collect/i1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
