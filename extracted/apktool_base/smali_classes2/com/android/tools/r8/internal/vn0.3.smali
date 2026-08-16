.class public final Lcom/android/tools/r8/internal/vn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/android/tools/r8/internal/fB;

.field public final e:Lcom/android/tools/r8/internal/mS;

.field public final f:Lcom/android/tools/r8/internal/de;

.field public final g:Ljava/util/HashMap;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/mS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vn0;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vn0;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vn0;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vn0;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/vn0;->h:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vn0;->d:Lcom/android/tools/r8/internal/fB;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p3, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vn0;->f:Lcom/android/tools/r8/internal/de;

    iget-object p1, p2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    iget-object p3, p0, Lcom/android/tools/r8/internal/vn0;->g:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 14
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 5
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 14
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/vn0;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 18
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/vn0;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/k3;

    .line 21
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/tools/r8/internal/vn0;->a(ILcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Y5;)V

    goto :goto_2

    .line 23
    :cond_2
    :goto_3
    new-instance v1, Lcom/android/tools/r8/internal/cx1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/cx1;-><init>(Lcom/android/tools/r8/internal/vn0;)V

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    if-nez v1, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    instance-of v3, v1, Lcom/android/tools/r8/internal/bY;

    if-nez v3, :cond_4

    .line 25
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 26
    :cond_4
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/internal/vn0;->a(ILcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Y5;)V

    goto :goto_3

    .line 27
    :cond_5
    iget p1, p0, Lcom/android/tools/r8/internal/vn0;->h:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 7
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/vn0;->f:Lcom/android/tools/r8/internal/de;

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V
    .locals 2

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/dx1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dx1;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/un0;

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/un0;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Y5;)V
    .locals 9

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_1
    :goto_0
    iget v1, p2, Lcom/android/tools/r8/internal/zE;->g:I

    .line 45
    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v2, v2, Lcom/android/tools/r8/internal/bY;

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    if-nez v0, :cond_4

    .line 49
    iget v3, v2, Lcom/android/tools/r8/internal/zE;->g:I

    if-eq v3, v1, :cond_4

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 54
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/vn0;->a:Ljava/util/HashMap;

    add-int/lit8 v1, v1, -0x1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-boolean v6, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v5

    .line 57
    :goto_3
    check-cast v3, Ljava/util/Set;

    if-nez v0, :cond_9

    .line 58
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/un0;

    .line 59
    sget-boolean v7, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iget-object v6, v6, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/mS;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_9
    iget-object v4, p0, Lcom/android/tools/r8/internal/vn0;->b:Ljava/util/HashMap;

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 62
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move-object v4, v5

    .line 63
    :goto_5
    check-cast v4, Ljava/util/Set;

    if-nez v0, :cond_d

    .line 64
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/un0;

    .line 65
    sget-boolean v8, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iget-object v7, v7, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/mS;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_d
    iget-object v6, p0, Lcom/android/tools/r8/internal/vn0;->c:Ljava/util/HashMap;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v5, v1

    .line 69
    :cond_e
    check-cast v5, Ljava/util/Set;

    .line 70
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/tools/r8/internal/vn0;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 71
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v4, v5

    goto :goto_7

    .line 72
    :cond_f
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    :goto_7
    invoke-virtual {p0, p1, v3, p3, v2}, Lcom/android/tools/r8/internal/vn0;->a(ILjava/util/Set;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/B60;)V

    .line 74
    invoke-virtual {p0, p1, v4, p3, v2}, Lcom/android/tools/r8/internal/vn0;->a(ILjava/util/Set;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/B60;)V

    if-nez v0, :cond_11

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_8
    return-void
.end method

.method public final a(ILjava/util/Set;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/B60;)V
    .locals 3

    .line 76
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ne0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iget v1, v1, Lcom/android/tools/r8/internal/mS;->c:I

    invoke-direct {v0, p3, p1, v1, p4}, Lcom/android/tools/r8/internal/Ne0;-><init>(Lcom/android/tools/r8/internal/EE;IILcom/android/tools/r8/internal/B60;)V

    .line 78
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/un0;

    .line 79
    iget-object p3, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    iget-object p3, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->k()Z

    move-result p3

    const/16 p4, 0x100

    if-eqz p3, :cond_7

    .line 81
    sget-boolean p3, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez p3, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iget-object v2, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 82
    iget v2, v2, Lcom/android/tools/r8/internal/FT;->k:I

    .line 83
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/mS;->d(I)I

    move-result v1

    if-ge v1, p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_4
    :goto_1
    iget-object v1, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 85
    iget-object v1, v1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 86
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e2()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    new-instance p3, Lcom/android/tools/r8/internal/Ke0;

    iget-object p4, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 89
    iget p4, p4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 90
    iget-object p2, p2, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    invoke-direct {p3, p4, p2, v1}, Lcom/android/tools/r8/internal/Ke0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Ne0;->a(Lcom/android/tools/r8/internal/Ke0;)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_7

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 92
    :cond_7
    :goto_2
    iget-object p3, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 93
    iget p3, p3, Lcom/android/tools/r8/internal/FT;->k:I

    .line 94
    iget-object v1, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 95
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq p3, v1, :cond_1

    .line 96
    iget-object p3, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    .line 97
    iget-object p3, p3, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 99
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    sget-object v1, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 101
    iget-object p3, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 102
    iget-object p3, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 103
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p2, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    .line 104
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/tools/r8/internal/vn0;->e:Lcom/android/tools/r8/internal/mS;

    iget-object v1, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 105
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 106
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/mS;->d(I)I

    move-result p3

    if-ge p3, p4, :cond_8

    .line 107
    new-instance p3, Lcom/android/tools/r8/internal/Ke0;

    iget-object p4, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 108
    iget p4, p4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 109
    iget-object v1, p2, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 110
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 111
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-direct {p3, p4, v1, p2}, Lcom/android/tools/r8/internal/Ke0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/zE;)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Ne0;->a(Lcom/android/tools/r8/internal/Ke0;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    new-instance p3, Lcom/android/tools/r8/internal/Ke0;

    iget-object p4, p2, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 114
    iget p4, p4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 115
    iget-object v1, p2, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 116
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 117
    iget-object p2, p2, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    invoke-direct {p3, p4, v1, p2}, Lcom/android/tools/r8/internal/Ke0;-><init>(IILcom/android/tools/r8/internal/pu0;)V

    .line 118
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Ne0;->a(Lcom/android/tools/r8/internal/Ke0;)V

    goto/16 :goto_0

    .line 119
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ne0;->c()V

    .line 120
    iget p1, p0, Lcom/android/tools/r8/internal/vn0;->h:I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ne0;->a()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/vn0;->h:I

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/fx1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/tools/r8/internal/fx1;-><init>(Lcom/android/tools/r8/internal/vn0;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 121
    iget p1, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->b:Ljava/util/HashMap;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->a:Ljava/util/HashMap;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->c:Ljava/util/HashMap;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/un0;)Z
    .locals 11

    .line 29
    iget-object v0, p4, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/un0;

    .line 31
    iget-object v3, v1, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 32
    :goto_0
    iget-object p1, p4, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 33
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 34
    iget-object v0, p4, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v0

    .line 35
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/un0;

    .line 36
    iget-object v5, v3, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 37
    iget v5, v5, Lcom/android/tools/r8/internal/FT;->k:I

    .line 38
    iget-object v6, v3, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v0, :cond_2

    move v8, v4

    :goto_2
    if-ge v8, v6, :cond_4

    add-int v9, v5, v8

    add-int v10, p1, v7

    if-ne v9, v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 39
    :goto_3
    iget-object p1, p4, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    .line 40
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/un0;

    .line 41
    iget-object v0, p3, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    if-ne v0, p1, :cond_6

    move-object v2, p3

    :cond_7
    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    .line 42
    iget-object p1, p4, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    iput-object p1, v1, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    const/4 p1, 0x1

    return p1

    :cond_8
    return v4
.end method

.method public final b(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vn0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/ex1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ex1;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/un0;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/un0;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/un0;

    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/vn0;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/un0;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    .line 3
    iget-object p3, v0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->d()I

    move-result p3

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->d()I

    move-result v1

    if-le p3, v1, :cond_4

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget v1, v1, Lcom/android/tools/r8/internal/FT;->t:I

    if-lt p3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iput p3, p2, Lcom/android/tools/r8/internal/FT;->t:I

    goto :goto_3

    .line 7
    :cond_4
    iget-object p2, v0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    .line 8
    sget-boolean p3, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez p3, :cond_6

    .line 9
    iget-object p3, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 10
    iget p3, p3, Lcom/android/tools/r8/internal/FT;->t:I

    if-lt v1, p3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_6
    :goto_2
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 12
    iput v1, p2, Lcom/android/tools/r8/internal/FT;->t:I

    .line 13
    :goto_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/vn0;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/gx1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/gx1;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
