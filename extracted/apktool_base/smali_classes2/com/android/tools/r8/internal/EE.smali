.class public interface abstract Lcom/android/tools/r8/internal/EE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/AE;
.implements Ljava/util/ListIterator;
.implements Lcom/android/tools/r8/internal/s70;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/AE;",
        "Ljava/util/ListIterator<",
        "Lcom/android/tools/r8/internal/zE;",
        ">;",
        "Lcom/android/tools/r8/internal/s70;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/DE;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/Z5;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/r8/internal/zE;",
            ">;",
            "Lcom/android/tools/r8/internal/nJ;",
            ")",
            "Lcom/android/tools/r8/internal/EE;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;[Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 4
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/Z5;",
            "Lcom/android/tools/r8/internal/xw0;",
            "Lcom/android/tools/r8/internal/B60;",
            ")",
            "Lcom/android/tools/r8/internal/VJ;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/W5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/fB;",
            ")",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v7

    .line 15
    invoke-interface/range {v0 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 16
    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/fB;",
            "Ljava/util/ListIterator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Lcom/android/tools/r8/graph/H2;",
            ")",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "I",
            "Ljava/util/ListIterator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;)",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/Z5;",
            "Lcom/android/tools/r8/internal/nJ;",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;)",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "Ljava/util/ListIterator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;)",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation

    .line 12
    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "Ljava/util/ListIterator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;Z)",
            "Lcom/android/tools/r8/internal/W5;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/graph/L2;",
            ")",
            "Lcom/android/tools/r8/internal/xw0;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/xw0;
    .locals 6

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/graph/L2;",
            "Lcom/android/tools/r8/ir/optimize/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/j0;",
            "Lcom/android/tools/r8/ir/optimize/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/graph/l1;",
            "Lcom/android/tools/r8/ir/optimize/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/Z5;",
            "Lcom/android/tools/r8/internal/xw0;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Lcom/android/tools/r8/ir/optimize/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Ljava/util/ListIterator<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Lcom/android/tools/r8/ir/optimize/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/xw0;",
            ")V"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;I)V
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Z)V
    .locals 0

    .line 10
    invoke-static {p2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/dD0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/dD0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/EE;->c(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V
.end method

.method public abstract a(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;)V"
        }
    .end annotation
.end method

.method public a([Lcom/android/tools/r8/internal/zE;)V
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/H5;",
            ")Z"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    .line 9
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/graph/M2;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/internal/sD;",
            ">;)Z"
        }
    .end annotation
.end method

.method public b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/fB;I)Lcom/android/tools/r8/internal/W5;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/s70;->d(Ljava/util/function/Predicate;)V

    .line 4
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public c(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/eD0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/eD0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/EE;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    return-void
.end method

.method public d(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    sget-boolean v1, Lcom/android/tools/r8/internal/DE;->a:Z

    if-nez v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    sget-boolean v1, Lcom/android/tools/r8/internal/DE;->a:Z

    if-nez v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract i()V
.end method

.method public abstract synthetic previous()Lcom/android/tools/r8/internal/zE;
.end method

.method public abstract remove()V
.end method

.method public s()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v0
.end method
