.class public final Lcom/android/tools/r8/internal/qp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/E1;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Pp0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Pp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qp0;->a:Lcom/android/tools/r8/internal/Pp0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/pp0;

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/pp0;->h:Lcom/android/tools/r8/internal/pp0;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/pp0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qp0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;
    .locals 1

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 5
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/pp0;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/op0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/op0;-><init>(Lcom/android/tools/r8/internal/pp0;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/ir1;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/internal/ir1;-><init>(Lcom/android/tools/r8/internal/qp0;Lcom/android/tools/r8/internal/op0;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->a()Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;
    .locals 7

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 20
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/pp0;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/op0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/op0;-><init>(Lcom/android/tools/r8/internal/pp0;)V

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/qp0;->a:Lcom/android/tools/r8/internal/Pp0;

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/vh1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/vh1;-><init>(Lcom/android/tools/r8/internal/pp0;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/Pp0;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/zE;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-nez v1, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 30
    iget-object v5, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 31
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 32
    iget-object v5, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v6, v0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    if-ne v5, v6, :cond_5

    .line 33
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    .line 34
    :cond_5
    iget-object v5, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 35
    iget-object v5, v0, Lcom/android/tools/r8/internal/op0;->e:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_d

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 37
    sget-boolean v1, Lcom/android/tools/r8/internal/qp0;->b:Z

    if-nez v1, :cond_8

    .line 38
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 41
    iget-object v3, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 42
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    if-nez v1, :cond_a

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 45
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 47
    iget-object v1, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :cond_b
    sget-boolean v1, Lcom/android/tools/r8/internal/qp0;->b:Z

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_d
    :goto_4
    sget-boolean v1, Lcom/android/tools/r8/internal/qp0;->b:Z

    if-nez v1, :cond_f

    if-eqz p2, :cond_f

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-nez v1, :cond_f

    .line 51
    iget-object v1, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    .line 53
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_f
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 55
    iget-object v2, p0, Lcom/android/tools/r8/internal/qp0;->a:Lcom/android/tools/r8/internal/Pp0;

    .line 56
    instance-of v3, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v3, :cond_10

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 58
    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 60
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 62
    iget-object v2, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/op0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_6

    .line 64
    :cond_11
    iget-object v2, p0, Lcom/android/tools/r8/internal/qp0;->a:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 66
    iget-object v2, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_6
    if-nez p2, :cond_15

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 68
    iget-object v1, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 69
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p2

    if-nez p2, :cond_13

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result p2

    if-nez p2, :cond_13

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result p2

    if-nez p2, :cond_13

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result p2

    if-nez p2, :cond_13

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 75
    :cond_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 76
    iget-object p2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v1, v0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    if-ne p2, v1, :cond_14

    .line 77
    new-instance p2, Ljava/util/HashSet;

    iget-object v1, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    .line 78
    :cond_14
    iget-object p2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 79
    iget-object p2, v0, Lcom/android/tools/r8/internal/op0;->e:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->a()Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/op0;Lcom/android/tools/r8/internal/f60;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/qp0;->a:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 14
    iget-object v2, p1, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    .line 15
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/op0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/pp0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qp0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method
