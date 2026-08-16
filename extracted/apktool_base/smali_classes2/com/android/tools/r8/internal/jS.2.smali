.class public Lcom/android/tools/r8/internal/jS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/EE;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/W5;

.field public c:Lcom/android/tools/r8/internal/Y5;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-lez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jS;->previous()Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W5;

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W5;

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/internal/jS;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    if-ne p0, p1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    return p1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

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
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/zE;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1

    .line 31
    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    .line 34
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

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

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/EE;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Lcom/android/tools/r8/internal/zE;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-static {v0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method

.method public final n()Lcom/android/tools/r8/internal/zE;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-static {v0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-static {v0}, Lcom/android/tools/r8/internal/jS;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    .line 9
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jS;->previous()Lcom/android/tools/r8/internal/zE;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->remove()V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
