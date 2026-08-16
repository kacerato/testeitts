.class public final Lcom/android/tools/r8/internal/mq0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;
    .locals 4

    .line 14
    iget-object v0, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v0, v1, :cond_0

    sget-object v2, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_d

    .line 16
    iput-object p3, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    return-object p1

    .line 17
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 18
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v3, v3, Lcom/android/tools/r8/internal/uI;

    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz p1, :cond_3

    .line 27
    iget-object v3, p1, Lcom/android/tools/r8/internal/nq0;->b:Lcom/android/tools/r8/internal/f60;

    if-eq v0, v3, :cond_3

    goto/16 :goto_6

    .line 28
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    iget-object v3, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    if-ne v0, v3, :cond_5

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    goto :goto_1

    .line 31
    :cond_5
    iget-object v3, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 32
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 34
    :cond_6
    iget-object p3, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p3

    .line 35
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    :goto_2
    if-nez p1, :cond_7

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/nq0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/nq0;-><init>(Lcom/android/tools/r8/internal/f60;)V

    .line 37
    :cond_7
    iget-object p3, p1, Lcom/android/tools/r8/internal/nq0;->c:Lcom/android/tools/r8/internal/dH;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 38
    sget-boolean v2, Lcom/android/tools/r8/internal/sq0;->a:Z

    if-nez v2, :cond_9

    .line 39
    iget-object v2, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-eq v2, v1, :cond_9

    .line 40
    sget-object v3, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_9
    :goto_3
    iget-object v2, p2, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne v2, v1, :cond_a

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 43
    :goto_4
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Lcom/android/tools/r8/internal/sq0;->a(Lcom/android/tools/r8/internal/sL;)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_5
    if-eqz p1, :cond_d

    .line 45
    iput-object p3, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    return-object p1

    :cond_c
    :goto_6
    if-eqz p1, :cond_d

    .line 46
    iput-object p3, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    :cond_d
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;
    .locals 4

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_4

    .line 48
    iput-object p2, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object p1

    return-object p1

    .line 53
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/tI;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 55
    iget-object v1, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 59
    iput-object p2, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    :cond_4
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/tI;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 3
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/nq0;->b:Lcom/android/tools/r8/internal/f60;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p3

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/nq0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/nq0;-><init>(Lcom/android/tools/r8/internal/f60;)V

    .line 8
    :cond_1
    iget-object p3, p1, Lcom/android/tools/r8/internal/nq0;->c:Lcom/android/tools/r8/internal/dH;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/Pl1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Pl1;-><init>(Lcom/android/tools/r8/internal/SG;)V

    .line 9
    :goto_0
    iget-object p3, p2, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 10
    aget p3, p3, v1

    .line 11
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 13
    iput-object p3, p1, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    :cond_4
    return-object p1
.end method
