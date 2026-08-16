.class public abstract Lcom/android/tools/r8/shaking/B3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/K3;
    .locals 3

    .line 80
    invoke-static {}, Lcom/android/tools/r8/shaking/K3;->E()Lcom/android/tools/r8/shaking/K3$a;

    move-result-object v0

    .line 81
    sget-boolean v1, Lcom/android/tools/r8/shaking/i4;->a:Z

    .line 82
    sget-object v1, Lcom/android/tools/r8/shaking/m4;->d:Lcom/android/tools/r8/shaking/m4;

    .line 83
    invoke-static {v1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/K3$a;

    sget-object v1, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/K3$a;

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    .line 86
    iput-object v1, v0, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 88
    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    .line 89
    invoke-static {}, Lcom/android/tools/r8/shaking/R3;->a()Lcom/android/tools/r8/shaking/R3$a;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/shaking/U3;->g:Lcom/android/tools/r8/shaking/U3;

    .line 90
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    move-result-object v1

    .line 91
    const-string v2, "<init>"

    invoke-static {v2}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {v2}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 94
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 95
    iput-object v2, v1, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    .line 96
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 97
    invoke-static {p0}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p0

    .line 98
    iput-object p0, v1, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 99
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object p0

    .line 100
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    new-instance v0, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    const/16 v1, 0x400

    .line 102
    iput v1, v0, Lcom/android/tools/r8/shaking/S2;->a:I

    .line 103
    iput-object v0, p0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    .line 104
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 105
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 106
    sget-object p1, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    new-instance p1, Lcom/android/tools/r8/shaking/e5;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/e5;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/L3$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/L3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "SDK_INT"

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/v3;

    .line 7
    instance-of v6, v4, Lcom/android/tools/r8/shaking/Y2;

    if-nez v6, :cond_1

    instance-of v6, v4, Lcom/android/tools/r8/shaking/W2;

    if-nez v6, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    if-eq v6, v7, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    iget-object v6, v4, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 11
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v6

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/c3;->d()Ljava/lang/Iterable;

    move-result-object v6

    .line 16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v6

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->e4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/R3;

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    if-eq v7, v8, :cond_e

    .line 20
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/shaking/U3;->c:Lcom/android/tools/r8/shaking/U3;

    if-ne v7, v8, :cond_7

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/shaking/U3;->b:Lcom/android/tools/r8/shaking/U3;

    if-eq v7, v8, :cond_8

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    .line 23
    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/S2;->h()Z

    move-result v7

    if-nez v7, :cond_6

    .line 24
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    const/4 v8, 0x2

    .line 25
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 26
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    const/16 v8, 0x400

    .line 27
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    const/16 v8, 0x80

    .line 29
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 30
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    const/16 v8, 0x40

    .line 31
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_1

    .line 32
    :cond_a
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/S2;->i()Z

    move-result v7

    if-nez v7, :cond_6

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    const/16 v8, 0x8

    .line 34
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/S2;->e()Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_1

    .line 36
    :cond_b
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v7

    iget-object v8, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_1

    .line 37
    :cond_c
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_1

    .line 38
    :cond_d
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/android/tools/r8/shaking/A3;

    .line 40
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/shaking/A3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/C2;)V

    .line 41
    new-instance v4, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    const/16 v6, 0x19

    .line 42
    iput v6, v4, Lcom/android/tools/r8/shaking/S2;->a:I

    .line 43
    sget v6, Lcom/android/tools/r8/shaking/W2;->r:I

    .line 44
    new-instance v6, Lcom/android/tools/r8/shaking/V2;

    invoke-direct {v6}, Lcom/android/tools/r8/shaking/V2;-><init>()V

    .line 45
    iput-object v3, v6, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 46
    sget-object v3, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    .line 47
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/V2;

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->e4:Lcom/android/tools/r8/graph/M2;

    .line 48
    invoke-static {v6}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v6

    .line 49
    invoke-static {v6}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3;

    move-result-object v6

    .line 50
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/V2;

    .line 51
    invoke-static {}, Lcom/android/tools/r8/shaking/R3;->a()Lcom/android/tools/r8/shaking/R3$a;

    move-result-object v6

    .line 52
    iput-object v4, v6, Lcom/android/tools/r8/shaking/R3$a;->b:Lcom/android/tools/r8/shaking/S2;

    .line 53
    sget-object v4, Lcom/android/tools/r8/shaking/U3;->b:Lcom/android/tools/r8/shaking/U3;

    .line 54
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    move-result-object v4

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 55
    invoke-static {v6}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v6

    .line 56
    iput-object v6, v4, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 57
    invoke-static {v5}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v5

    .line 58
    invoke-static {v5}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v5

    iput-object v5, v4, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 59
    new-instance v5, Lcom/android/tools/r8/shaking/T3;

    new-instance v6, Lcom/android/tools/r8/internal/kU;

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    const v7, 0x7fffffff

    invoke-direct {v6, v2, v7}, Lcom/android/tools/r8/internal/kU;-><init>(II)V

    invoke-direct {v5, v6}, Lcom/android/tools/r8/shaking/T3;-><init>(Lcom/android/tools/r8/internal/kU;)V

    .line 61
    iput-object v5, v4, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    .line 62
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object v2

    .line 63
    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/V2;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/V2;->d()Lcom/android/tools/r8/shaking/W2;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->b4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 68
    invoke-static {v1, v2}, Lcom/android/tools/r8/shaking/B3;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_f
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->c4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 71
    invoke-static {v1, p0}, Lcom/android/tools/r8/shaking/B3;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/shaking/M3$a;)V
    .locals 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    return-void
.end method
