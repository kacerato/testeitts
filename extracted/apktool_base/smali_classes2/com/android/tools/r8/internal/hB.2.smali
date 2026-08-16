.class public Lcom/android/tools/r8/internal/hB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/EE;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Z5;

.field public c:Lcom/android/tools/r8/internal/EE;

.field public final d:Lcom/android/tools/r8/internal/fB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hB;->d:Lcom/android/tools/r8/internal/fB;

    iget-object p1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    iput-object p1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 21
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    .line 23
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 24
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/internal/hB;->e:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 28
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 0

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/EE;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Lcom/android/tools/r8/internal/zE;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method

.method public final n()Lcom/android/tools/r8/internal/zE;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/xK;->b(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final previous()Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 9
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/hB;->e:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 13
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hB;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->remove()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->s()V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
