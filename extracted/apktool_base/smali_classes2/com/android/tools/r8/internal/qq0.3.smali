.class public final Lcom/android/tools/r8/internal/qq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/W5;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/f60;

.field public final d:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qq0;->a:Lcom/android/tools/r8/internal/W5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_6
    move-object p3, p2

    :goto_1
    iput-object p3, p0, Lcom/android/tools/r8/internal/qq0;->c:Lcom/android/tools/r8/internal/f60;

    iput-object p4, p0, Lcom/android/tools/r8/internal/qq0;->d:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 5
    sget-object v4, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v0, v4, :cond_0

    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq v0, v5, :cond_0

    goto/16 :goto_b

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    sget-boolean v5, Lcom/android/tools/r8/internal/sq0;->a:Z

    .line 7
    iget-object v6, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 9
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    move-object v2, v6

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v6

    if-nez v6, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 12
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_16

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/rq0;->b:Lcom/android/tools/r8/internal/xw0;

    if-eq v2, v0, :cond_4

    .line 14
    iget-object v6, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 15
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object p1

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 18
    :cond_5
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-ne v2, v0, :cond_6

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    goto :goto_3

    .line 20
    :cond_6
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 21
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_b

    .line 23
    :cond_7
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    .line 25
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    .line 26
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    if-nez v5, :cond_9

    .line 27
    iget-object v1, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-eq v1, v4, :cond_9

    .line 28
    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_9
    :goto_5
    iget-object v1, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v4, :cond_a

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 31
    :goto_6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/W5;ILcom/android/tools/r8/internal/gd0;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_b

    :cond_b
    if-nez p1, :cond_c

    .line 32
    new-instance p1, Lcom/android/tools/r8/internal/rq0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/rq0;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)V

    .line 33
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/tools/r8/internal/bd0;

    .line 35
    new-instance v2, Lcom/android/tools/r8/internal/ad0;

    .line 36
    iget-object v1, v1, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 37
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    .line 38
    :goto_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    iget-object v1, v2, Lcom/android/tools/r8/internal/ad0;->g:Lcom/android/tools/r8/internal/gd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ed0;->b()I

    move-result v3

    aget-object v1, v1, v3

    .line 40
    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 41
    iget-object v3, p1, Lcom/android/tools/r8/internal/rq0;->c:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    goto :goto_7

    .line 42
    :cond_d
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/rq0;->a:Lcom/android/tools/r8/internal/W5;

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qq0;->b(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;

    move-result-object p1

    return-object p1

    .line 44
    :cond_e
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    sget-boolean v4, Lcom/android/tools/r8/internal/sq0;->a:Z

    .line 47
    iget-object v4, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 49
    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v2, v4

    :cond_f
    if-eqz v2, :cond_16

    if-eqz p1, :cond_11

    .line 50
    iget-object v0, p1, Lcom/android/tools/r8/internal/rq0;->b:Lcom/android/tools/r8/internal/xw0;

    if-eq v2, v0, :cond_11

    .line 51
    iget-object v4, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 52
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v4, v0, :cond_10

    goto :goto_8

    :cond_10
    return-object p1

    .line 54
    :cond_11
    :goto_8
    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    .line 55
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    .line 56
    :goto_9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v1

    if-ge v3, v1, :cond_13

    .line 57
    iget-object v1, p2, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v1, v1, v3

    .line 58
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, v4, v1, v0, v5}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/W5;ILcom/android/tools/r8/internal/gd0;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    if-nez p1, :cond_14

    .line 60
    new-instance p1, Lcom/android/tools/r8/internal/rq0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/rq0;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)V

    .line 61
    :cond_14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/tools/r8/internal/bd0;

    .line 63
    new-instance v2, Lcom/android/tools/r8/internal/ad0;

    .line 64
    iget-object v1, v1, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 65
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    .line 66
    :goto_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 67
    iget-object v1, v2, Lcom/android/tools/r8/internal/ad0;->g:Lcom/android/tools/r8/internal/gd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ed0;->b()I

    move-result v3

    aget-object v1, v1, v3

    .line 68
    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 69
    iget-object v3, p1, Lcom/android/tools/r8/internal/rq0;->c:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    goto :goto_a

    .line 70
    :cond_15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/rq0;->a:Lcom/android/tools/r8/internal/W5;

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qq0;->b(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;

    move-result-object p1

    :cond_16
    :goto_b
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;ILcom/android/tools/r8/internal/gd0;Ljava/util/Set;)Z
    .locals 6

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vh;->v2()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_c

    .line 79
    iget-object v3, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    .line 80
    sget v4, Lcom/android/tools/r8/internal/tq0;->e:I

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 84
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/qq0;->d:Lcom/android/tools/r8/internal/xw0;

    if-eq v3, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eq v4, v1, :cond_5

    .line 86
    sget-boolean p1, Lcom/android/tools/r8/internal/qq0;->e:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/tools/r8/internal/d61;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/d61;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 89
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    .line 90
    :cond_7
    iget-object v1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 91
    sget-object v4, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v1, v4, :cond_8

    sget-object v4, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq v1, v4, :cond_8

    return v2

    .line 92
    :cond_8
    :try_start_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->l0()I

    move-result v1

    if-ne v1, p2, :cond_9

    .line 94
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, v0, p3}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/gd0;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_9

    return v2

    .line 96
    :cond_9
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/qq0;->a:Lcom/android/tools/r8/internal/W5;

    if-ne p1, v0, :cond_a

    return v3

    .line 98
    :cond_a
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/W5;ILcom/android/tools/r8/internal/gd0;Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_b
    return v2

    .line 100
    :catch_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_c
    :goto_2
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/gd0;)Z
    .locals 4

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/qq0;->c:Lcom/android/tools/r8/internal/f60;

    .line 104
    iget-object v3, v3, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    if-eq v1, v3, :cond_0

    return v2

    .line 105
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 106
    iget-object v1, p0, Lcom/android/tools/r8/internal/qq0;->c:Lcom/android/tools/r8/internal/f60;

    .line 107
    iget-object v1, v1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 109
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    sget-boolean v1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/android/tools/r8/internal/qq0;->c:Lcom/android/tools/r8/internal/f60;

    .line 113
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/qq0;->a:Lcom/android/tools/r8/internal/W5;

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;
    .locals 5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/qq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/qq0;->d:Lcom/android/tools/r8/internal/xw0;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return-object p1

    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p2

    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    :cond_7
    xor-int/lit8 v1, v1, 0x1

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;

    move-result-object p1

    return-object p1
.end method
