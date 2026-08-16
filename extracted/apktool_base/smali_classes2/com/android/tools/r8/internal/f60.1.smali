.class public Lcom/android/tools/r8/internal/f60;
.super Lcom/android/tools/r8/internal/xw0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/FE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/f60$a;
    }
.end annotation


# static fields
.field public static final synthetic u:Z = true


# instance fields
.field public p:Lcom/android/tools/r8/internal/W5;

.field public final q:Ljava/util/ArrayList;

.field public r:Lcom/android/tools/r8/internal/f60$a;

.field public s:Z

.field public t:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/f60;->r:Lcom/android/tools/r8/internal/f60$a;

    iget-object p1, p2, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/f60;->b(Ljava/util/Set;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/f60;->s:Z

    return v0
.end method

.method public final S()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/f60;->r:Lcom/android/tools/r8/internal/f60$a;

    return-void
.end method

.method public final T()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->Q()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 111
    sget-boolean p1, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 116
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 117
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ku0;->a(Ljava/util/Set;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/aB;)V
    .locals 9

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, v0, Lcom/android/tools/r8/internal/z7;

    if-eqz v1, :cond_2

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    .line 10
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 13
    sget-boolean v4, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v4, :cond_4

    .line 14
    iget-object v4, v3, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    :goto_4
    move-object v4, v1

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/android/tools/r8/internal/U5;->c:Lcom/android/tools/r8/internal/U5;

    goto :goto_4

    .line 18
    :goto_5
    iget-object v6, p0, Lcom/android/tools/r8/internal/f60;->r:Lcom/android/tools/r8/internal/f60$a;

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 20
    sget-object v1, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    if-ne v4, v1, :cond_6

    .line 21
    iget-object v1, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v5, p1, 0x1

    neg-int v5, v5

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_8

    .line 23
    sget-object v5, Lcom/android/tools/r8/internal/xw0;->n:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v5, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v1

    goto :goto_7

    .line 24
    :cond_8
    iget-object v1, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    :goto_7
    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    move-object v1, p2

    move v2, p1

    move-object v5, v0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 27
    :goto_8
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/f60;->r:Lcom/android/tools/r8/internal/f60$a;

    sget-object v1, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_c

    .line 29
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v3

    :goto_9
    if-ge v1, p1, :cond_c

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    instance-of v5, v4, Lcom/android/tools/r8/internal/z7;

    if-eqz v5, :cond_b

    .line 33
    sget-object v4, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_a

    :cond_b
    invoke-static {v4}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v4

    .line 34
    :goto_a
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/f60;->b(Lcom/android/tools/r8/internal/Mw0;)V

    goto :goto_9

    .line 35
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_b
    if-ge v3, p1, :cond_d

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 36
    iget-object v4, p2, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 37
    iget-object v5, p2, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    .line 39
    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 40
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_b

    .line 42
    :cond_d
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, p2, v2, p1, v0}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    return-void

    .line 43
    :cond_e
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 59
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 61
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 62
    iput-object p1, p2, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    .line 63
    iget-object p2, v0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 64
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 65
    iput-object p1, v0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    if-eqz p3, :cond_0

    .line 66
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(ILcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 52
    iget-object v1, v0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 53
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, v0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->r:Lcom/android/tools/r8/internal/f60$a;

    sget-object v1, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/f60;->b(Lcom/android/tools/r8/internal/Mw0;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 2

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 71
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p2, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 73
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/xw0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 49
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    :cond_3
    return-void

    .line 50
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 108
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/f60;->b(Ljava/util/Set;)V

    return-void

    .line 110
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/f60;->s:Z

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z
    .locals 8

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    if-eq v6, v5, :cond_0

    if-ne v6, p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_4

    .line 75
    sget-boolean p1, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return v3

    :cond_4
    move-object v5, v6

    goto :goto_0

    .line 76
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    if-nez v5, :cond_8

    return v3

    .line 77
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    if-eq v1, v4, :cond_d

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    .line 79
    :cond_9
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    if-nez v1, :cond_a

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    goto :goto_4

    :cond_a
    if-nez v0, :cond_c

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_3
    return v3

    :cond_d
    :goto_4
    if-eqz p1, :cond_e

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    instance-of v0, v0, Lcom/android/tools/r8/internal/z7;

    if-nez v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    .line 85
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 87
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 88
    invoke-virtual {v5, v0, v1, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    :cond_e
    if-eqz p2, :cond_f

    .line 89
    invoke-virtual {p2, p4, p0}, Lcom/android/tools/r8/ir/optimize/a;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/xw0;)V

    .line 90
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :goto_5
    if-ge v4, v1, :cond_10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 91
    iget-object v7, v6, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 92
    invoke-virtual {v7, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 93
    iput-object v2, v6, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_5

    .line 94
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_11
    if-ge v3, v1, :cond_13

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Ljava/util/Map;

    .line 96
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_12

    .line 98
    invoke-interface {v6, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 100
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    .line 101
    iget-object v6, v6, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 103
    :cond_13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 106
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    goto :goto_7

    .line 107
    :cond_14
    iget-object p1, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v2

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v2
.end method

.method public final b(Lcom/android/tools/r8/internal/Mw0;)V
    .locals 4

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/IJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type information in locals-table is inconsistent. Cannot constrain type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by constraint "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/util/Set;)V
    .locals 2

    .line 23
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/X91;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/X91;-><init>(Lcom/android/tools/r8/internal/f60;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/xw0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public d0()Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    if-eq v5, v2, :cond_0

    if-ne v5, p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return v3

    :cond_2
    move-object v2, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/util/function/Predicate;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final e0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " <- phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/Y91;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Y91;-><init>()V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f0()V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/f60;->u:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v1, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v2, v1, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public final g0()V
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Lcom/android/tools/r8/internal/f60;
    .locals 0

    return-object p0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
