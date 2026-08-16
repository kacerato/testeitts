.class public abstract Lcom/android/tools/r8/internal/ey0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;
    .locals 10

    .line 56
    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 57
    new-instance v0, Lcom/android/tools/r8/internal/L90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L90;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->c()Lcom/android/tools/r8/internal/cQ;

    move-result-object v1

    .line 59
    instance-of v2, v1, Lcom/android/tools/r8/internal/cQ$a;

    const-string v3, "name"

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/tools/r8/internal/cQ$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/cQ$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v1

    .line 62
    iget v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 63
    iput v1, v0, Lcom/android/tools/r8/internal/L90;->k:I

    goto :goto_0

    .line 64
    :cond_0
    instance-of v2, v1, Lcom/android/tools/r8/internal/cQ$b;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/tools/r8/internal/cQ$b;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/cQ$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v1

    .line 67
    iget v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 68
    iput v1, v0, Lcom/android/tools/r8/internal/L90;->n:I

    goto :goto_0

    .line 69
    :cond_1
    instance-of v2, v1, Lcom/android/tools/r8/internal/cQ$c;

    if-eqz v2, :cond_15

    check-cast v1, Lcom/android/tools/r8/internal/cQ$c;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/cQ$c;->a()I

    move-result v1

    .line 70
    iget v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 71
    iput v1, v0, Lcom/android/tools/r8/internal/L90;->l:I

    .line 72
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/DQ;

    .line 74
    sget-object v4, Lcom/android/tools/r8/internal/K90;->i:Lcom/android/tools/r8/internal/K90;

    .line 75
    new-instance v4, Lcom/android/tools/r8/internal/I90;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/I90;-><init>()V

    .line 76
    sget-object v5, Lcom/android/tools/r8/internal/DQ;->c:Lcom/android/tools/r8/internal/DQ;

    invoke-static {v2, v5}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    sget-object v2, Lcom/android/tools/r8/internal/J90;->f:Lcom/android/tools/r8/internal/J90;

    .line 78
    iget v5, v4, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v5, v3

    iput v5, v4, Lcom/android/tools/r8/internal/I90;->c:I

    .line 79
    iput-object v2, v4, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    goto :goto_3

    .line 80
    :cond_2
    iget-object v5, v2, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    .line 81
    iget-object v2, v2, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    .line 82
    sget-object v6, Lcom/android/tools/r8/internal/FQ;->c:Lcom/android/tools/r8/internal/FQ;

    if-ne v5, v6, :cond_3

    .line 83
    sget-object v5, Lcom/android/tools/r8/internal/J90;->c:Lcom/android/tools/r8/internal/J90;

    .line 84
    iget v6, v4, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v6, v3

    iput v6, v4, Lcom/android/tools/r8/internal/I90;->c:I

    .line 85
    iput-object v5, v4, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    goto :goto_2

    .line 86
    :cond_3
    sget-object v6, Lcom/android/tools/r8/internal/FQ;->d:Lcom/android/tools/r8/internal/FQ;

    if-ne v5, v6, :cond_4

    .line 87
    sget-object v5, Lcom/android/tools/r8/internal/J90;->d:Lcom/android/tools/r8/internal/J90;

    .line 88
    iget v6, v4, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v6, v3

    iput v6, v4, Lcom/android/tools/r8/internal/I90;->c:I

    .line 89
    iput-object v5, v4, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    .line 90
    :cond_4
    :goto_2
    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v2

    .line 91
    iput-object v2, v4, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    .line 92
    iget v2, v4, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v4, Lcom/android/tools/r8/internal/I90;->c:I

    .line 93
    :goto_3
    iget v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_5

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    .line 95
    iget v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 96
    :cond_5
    iget-object v2, v0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    .line 97
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/I90;->c()Lcom/android/tools/r8/internal/K90;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/K90;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 101
    throw p0

    .line 102
    :cond_7
    new-instance p0, Lcom/android/tools/r8/internal/lD;

    const-string p1, "Variance and type must be set for non-star type projection"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    .line 105
    iget v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 106
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->e()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 107
    iput-object v1, v0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    .line 108
    iget v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 109
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->d()Lcom/android/tools/r8/internal/oQ;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 110
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/oQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    .line 111
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/oQ;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 112
    iget-object v4, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v1

    .line 113
    iget v4, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 114
    iput v1, v0, Lcom/android/tools/r8/internal/L90;->h:I

    .line 115
    :cond_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 116
    iput-object v1, v0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    .line 117
    iget v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 118
    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 119
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 120
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/sM;

    move-result-object v2

    .line 122
    iget-boolean v4, v2, Lcom/android/tools/r8/internal/sM;->a:Z

    if-eqz v4, :cond_e

    .line 123
    sget-object v4, Lcom/android/tools/r8/internal/oM;->g:Lcom/android/tools/r8/internal/Wy;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    .line 124
    :cond_e
    iget-object v2, v2, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/GP;

    .line 126
    sget-object v7, Lcom/android/tools/r8/internal/oM;->f:Lcom/android/tools/r8/internal/Wy;

    .line 127
    iget-object v8, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    .line 128
    invoke-static {v6, v8}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/GP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/N80;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 131
    iget-object v8, v7, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    .line 132
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->b()Lcom/android/tools/r8/internal/Yy;

    move-result-object v9

    if-ne v8, v9, :cond_10

    .line 133
    iget-boolean v8, v0, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v8, :cond_f

    .line 134
    iget-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v8

    iput-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    .line 135
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Ry;->d:Z

    .line 136
    :cond_f
    iget-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v9, v7, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_4

    .line 137
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_11
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 139
    throw p0

    .line 140
    :cond_12
    sget-object p0, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 141
    sget-object v1, Lcom/android/tools/r8/internal/i5;->V:Lcom/android/tools/r8/internal/Y6;

    const/16 v2, 0x2e

    aget-object p0, p0, v2

    invoke-virtual {v1, p1, p0}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 142
    iget p0, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 143
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/L90;->g:Z

    .line 144
    :cond_13
    iget p0, p1, Lcom/android/tools/r8/internal/yQ;->a:I

    shr-int/2addr p0, v3

    .line 145
    sget-object p1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 146
    iget p1, p1, Lcom/android/tools/r8/internal/M90;->r:I

    if-eq p0, p1, :cond_14

    .line 147
    iget p1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, v0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 148
    iput p0, v0, Lcom/android/tools/r8/internal/L90;->s:I

    :cond_14
    return-object v0

    .line 149
    :cond_15
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/zQ;)Lcom/android/tools/r8/internal/O90;
    .locals 6

    .line 427
    sget-object v0, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    .line 428
    new-instance v0, Lcom/android/tools/r8/internal/O90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O90;-><init>()V

    .line 429
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->c()Ljava/util/List;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 432
    check-cast v3, Lcom/android/tools/r8/internal/BQ;

    .line 433
    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/BQ;)Lcom/android/tools/r8/internal/R90;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 438
    throw p0

    .line 439
    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_2

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    .line 441
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 442
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 443
    iget-object v1, p1, Lcom/android/tools/r8/internal/zQ;->d:Lcom/android/tools/r8/internal/yQ;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 444
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 445
    iput-object v1, v0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    .line 446
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 447
    iget-object v1, p1, Lcom/android/tools/r8/internal/zQ;->e:Lcom/android/tools/r8/internal/yQ;

    if-eqz v1, :cond_b

    .line 448
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 449
    iput-object v1, v0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    .line 450
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 451
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->a()Ljava/util/List;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 454
    check-cast v3, Lcom/android/tools/r8/internal/GP;

    .line 455
    iget-object v4, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    .line 456
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/GP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/N80;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 460
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 461
    throw p0

    .line 462
    :cond_4
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_5

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    .line 464
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 465
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 466
    iget-object v1, p1, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-ge v4, v3, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 469
    check-cast v5, Lcom/android/tools/r8/internal/HQ;

    .line 470
    invoke-static {p0, v5}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 471
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 472
    :cond_7
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_8

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    .line 474
    iget v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 475
    :cond_8
    iget-object v1, v0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 476
    iget-object v1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 477
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 478
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    .line 479
    :cond_9
    iget v1, p1, Lcom/android/tools/r8/internal/zQ;->a:I

    .line 480
    sget-object v2, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    .line 481
    iget v2, v2, Lcom/android/tools/r8/internal/P90;->e:I

    if-eq v1, v2, :cond_a

    .line 482
    iget v2, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 483
    iput v1, v0, Lcom/android/tools/r8/internal/O90;->f:I

    .line 484
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->b()Ljava/lang/String;

    move-result-object p1

    .line 485
    const-string v1, "string"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object p0, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 487
    iget p1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 488
    iput p0, v0, Lcom/android/tools/r8/internal/O90;->g:I

    return-object v0

    .line 489
    :cond_b
    const-string p0, "expandedType"

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_c
    const-string p0, "underlyingType"

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v2
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/BQ;)Lcom/android/tools/r8/internal/R90;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/R90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/R90;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yQ;

    .line 5
    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v2

    .line 6
    iget v3, v0, Lcom/android/tools/r8/internal/R90;->e:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    .line 8
    iget v3, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 9
    :cond_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 12
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v2, Lcom/android/tools/r8/internal/tM;->b:Lcom/android/tools/r8/internal/nQ;

    .line 14
    const-string v4, "type"

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v4, p1, Lcom/android/tools/r8/internal/BQ;->f:Ljava/util/ArrayList;

    .line 16
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/tv;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/nQ;)Lcom/android/tools/r8/internal/mQ;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/CQ;

    .line 17
    check-cast v2, Lcom/android/tools/r8/internal/tM;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/tM;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/GP;

    .line 20
    sget-object v7, Lcom/android/tools/r8/internal/oM;->h:Lcom/android/tools/r8/internal/Wy;

    .line 21
    iget-object v8, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    .line 22
    invoke-static {v6, v8}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/GP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/N80;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 25
    iget-object v8, v7, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R90;->b()Lcom/android/tools/r8/internal/Yy;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 27
    iget-boolean v8, v0, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v8, :cond_3

    .line 28
    iget-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v8

    iput-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    .line 29
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Ry;->d:Z

    .line 30
    :cond_3
    iget-object v8, v0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v9, v7, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_1

    .line 31
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 33
    throw p0

    .line 34
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->b()Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 37
    iget v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 38
    iput p0, v0, Lcom/android/tools/r8/internal/R90;->g:I

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->a()I

    move-result p0

    .line 40
    iget v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 41
    iput p0, v0, Lcom/android/tools/r8/internal/R90;->f:I

    .line 42
    sget-object p0, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 43
    sget-object v1, Lcom/android/tools/r8/internal/i5;->Y:Lcom/android/tools/r8/internal/Y6;

    const/16 v2, 0x31

    aget-object p0, p0, v2

    invoke-virtual {v1, p1, p0}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p0

    .line 44
    sget-object v1, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    .line 45
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/T90;->g:Z

    if-eq p0, v1, :cond_7

    .line 46
    iget v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 47
    iput-boolean p0, v0, Lcom/android/tools/r8/internal/R90;->h:Z

    .line 48
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->d()Lcom/android/tools/r8/internal/FQ;

    move-result-object p0

    sget-object v1, Lcom/android/tools/r8/internal/FQ;->c:Lcom/android/tools/r8/internal/FQ;

    if-ne p0, v1, :cond_8

    .line 49
    sget-object p0, Lcom/android/tools/r8/internal/S90;->c:Lcom/android/tools/r8/internal/S90;

    .line 50
    iget p1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 51
    iput-object p0, v0, Lcom/android/tools/r8/internal/R90;->i:Lcom/android/tools/r8/internal/S90;

    return-object v0

    .line 52
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->d()Lcom/android/tools/r8/internal/FQ;

    move-result-object p0

    sget-object p1, Lcom/android/tools/r8/internal/FQ;->d:Lcom/android/tools/r8/internal/FQ;

    if-ne p0, p1, :cond_9

    .line 53
    sget-object p0, Lcom/android/tools/r8/internal/S90;->d:Lcom/android/tools/r8/internal/S90;

    .line 54
    iget p1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 55
    iput-object p0, v0, Lcom/android/tools/r8/internal/R90;->i:Lcom/android/tools/r8/internal/S90;

    :cond_9
    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/EQ;)Lcom/android/tools/r8/internal/Y90;
    .locals 3

    .line 406
    sget-object v0, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    .line 407
    new-instance v0, Lcom/android/tools/r8/internal/Y90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y90;-><init>()V

    .line 408
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 409
    iput-object v1, v0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    .line 410
    iget v1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 411
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 412
    iput-object v1, v0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    .line 413
    iget v1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 416
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 417
    :cond_1
    iget v1, p1, Lcom/android/tools/r8/internal/EQ;->a:I

    .line 418
    sget-object v2, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    .line 419
    iget v2, v2, Lcom/android/tools/r8/internal/Z90;->e:I

    if-eq v1, v2, :cond_2

    .line 420
    iget v2, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 421
    iput v1, v0, Lcom/android/tools/r8/internal/Y90;->f:I

    .line 422
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/EQ;->b:Ljava/lang/String;

    .line 423
    const-string v1, "string"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 425
    iget p1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 426
    iput p0, v0, Lcom/android/tools/r8/internal/Y90;->g:I

    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/ba0;I)Lcom/android/tools/r8/internal/iv0;
    .locals 1

    .line 491
    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 492
    iget v0, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 493
    iput p1, p0, Lcom/android/tools/r8/internal/ba0;->d:I

    .line 494
    sget-object p0, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/jQ;)Lcom/android/tools/r8/internal/k90;
    .locals 7

    .line 495
    sget-object v0, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    .line 496
    new-instance v1, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/i90;-><init>()V

    .line 497
    iget v2, p1, Lcom/android/tools/r8/internal/jQ;->a:I

    .line 498
    iget v0, v0, Lcom/android/tools/r8/internal/k90;->d:I

    if-eq v2, v0, :cond_0

    .line 499
    iget v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 500
    iput v2, v1, Lcom/android/tools/r8/internal/i90;->d:I

    .line 501
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/jQ;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 503
    iget v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 504
    iput v0, v1, Lcom/android/tools/r8/internal/i90;->e:I

    .line 505
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/jQ;->c:Lcom/android/tools/r8/internal/dQ;

    if-eqz v0, :cond_5

    .line 506
    iget-object v0, v0, Lcom/android/tools/r8/internal/dQ;->a:Ljava/lang/Boolean;

    .line 507
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/j90;->c:Lcom/android/tools/r8/internal/j90;

    .line 508
    iget v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 509
    iput-object v0, v1, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    goto :goto_0

    .line 510
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/j90;->d:Lcom/android/tools/r8/internal/j90;

    .line 511
    iget v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 512
    iput-object v0, v1, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 513
    sget-object v0, Lcom/android/tools/r8/internal/j90;->e:Lcom/android/tools/r8/internal/j90;

    .line 514
    iget v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 515
    iput-object v0, v1, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    goto :goto_0

    .line 516
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Only true, false or null constant values are allowed for effects (was="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 517
    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/jQ;->d:Lcom/android/tools/r8/internal/yQ;

    if-eqz v0, :cond_6

    .line 518
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    .line 519
    iput-object v0, v1, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    .line 520
    iget v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 521
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/jQ;->e:Ljava/util/ArrayList;

    .line 522
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 524
    check-cast v6, Lcom/android/tools/r8/internal/jQ;

    .line 525
    invoke-static {p0, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/jQ;)Lcom/android/tools/r8/internal/k90;

    move-result-object v6

    .line 526
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_7
    iget v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_8

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    .line 529
    iget v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v0, v3

    iput v0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 530
    :cond_8
    iget-object v0, v1, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 531
    iget-object p1, p1, Lcom/android/tools/r8/internal/jQ;->f:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    .line 534
    check-cast v3, Lcom/android/tools/r8/internal/jQ;

    .line 535
    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/jQ;)Lcom/android/tools/r8/internal/k90;

    move-result-object v3

    .line 536
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 537
    :cond_9
    iget p0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    const/16 p1, 0x40

    and-int/2addr p0, p1

    if-eq p0, p1, :cond_a

    .line 538
    new-instance p0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p0, v1, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    .line 539
    iget p0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr p0, p1

    iput p0, v1, Lcom/android/tools/r8/internal/i90;->c:I

    .line 540
    :cond_a
    iget-object p0, v1, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 541
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i90;->c()Lcom/android/tools/r8/internal/k90;

    move-result-object p0

    .line 542
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    .line 543
    :cond_b
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 544
    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/m90;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 150
    sget-object v2, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    .line 151
    new-instance v2, Lcom/android/tools/r8/internal/m90;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/m90;-><init>()V

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/pQ;->d()Ljava/util/List;

    move-result-object v3

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 155
    check-cast v5, Lcom/android/tools/r8/internal/BQ;

    .line 156
    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/BQ;)Lcom/android/tools/r8/internal/R90;

    move-result-object v5

    .line 157
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 161
    throw v0

    .line 162
    :cond_1
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v5, 0x20

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_2

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    .line 164
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 165
    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/pQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v3

    .line 167
    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    .line 168
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 169
    :cond_3
    iget-object v3, v1, Lcom/android/tools/r8/internal/pQ;->e:Ljava/util/ArrayList;

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 172
    check-cast v8, Lcom/android/tools/r8/internal/yQ;

    .line 173
    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v8

    .line 174
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_4
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v5, 0x100

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_5

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    .line 177
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 178
    :cond_5
    iget-object v3, v2, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/pQ;->e()Ljava/util/List;

    move-result-object v3

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 182
    check-cast v5, Lcom/android/tools/r8/internal/EQ;

    .line 183
    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/EQ;)Lcom/android/tools/r8/internal/Y90;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Y90;->c()Lcom/android/tools/r8/internal/Z90;

    move-result-object v5

    .line 185
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 186
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 188
    throw v0

    .line 189
    :cond_7
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v5, 0x400

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_8

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    .line 191
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 192
    :cond_8
    iget-object v3, v2, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/pQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v3

    .line 194
    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    .line 195
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 196
    iget-object v3, v1, Lcom/android/tools/r8/internal/pQ;->h:Ljava/util/ArrayList;

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :cond_9
    :goto_3
    if-ge v7, v5, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 199
    check-cast v8, Lcom/android/tools/r8/internal/HQ;

    .line 200
    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 201
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_a
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v5, 0x1000

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_b

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    .line 204
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 205
    :cond_b
    iget-object v3, v2, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 206
    iget-object v3, v1, Lcom/android/tools/r8/internal/pQ;->i:Lcom/android/tools/r8/internal/gQ;

    if-eqz v3, :cond_1b

    .line 207
    sget-object v4, Lcom/android/tools/r8/internal/Y80;->f:Lcom/android/tools/r8/internal/Y80;

    .line 208
    new-instance v4, Lcom/android/tools/r8/internal/X80;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/X80;-><init>()V

    .line 209
    iget-object v3, v3, Lcom/android/tools/r8/internal/gQ;->a:Ljava/util/ArrayList;

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x1

    if-ge v8, v7, :cond_18

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    .line 212
    check-cast v10, Lcom/android/tools/r8/internal/iQ;

    .line 213
    sget-object v11, Lcom/android/tools/r8/internal/d90;->j:Lcom/android/tools/r8/internal/d90;

    .line 214
    new-instance v11, Lcom/android/tools/r8/internal/a90;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/a90;-><init>()V

    .line 215
    iget-object v12, v10, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    .line 216
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_c

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    .line 218
    move-object/from16 v6, v16

    check-cast v6, Lcom/android/tools/r8/internal/jQ;

    .line 219
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/jQ;)Lcom/android/tools/r8/internal/k90;

    move-result-object v6

    .line 220
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 221
    :cond_c
    iget v6, v11, Lcom/android/tools/r8/internal/a90;->c:I

    const/4 v12, 0x2

    and-int/2addr v6, v12

    if-eq v6, v12, :cond_d

    .line 222
    new-instance v6, Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    .line 223
    iget v6, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v6, v12

    iput v6, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 224
    :cond_d
    iget-object v6, v11, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    invoke-static {v13, v6}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 225
    iget-object v6, v10, Lcom/android/tools/r8/internal/iQ;->d:Lcom/android/tools/r8/internal/jQ;

    if-eqz v6, :cond_e

    .line 226
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/jQ;)Lcom/android/tools/r8/internal/k90;

    move-result-object v6

    .line 227
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    .line 228
    iget v6, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 229
    :cond_e
    iget v6, v10, Lcom/android/tools/r8/internal/iQ;->a:I

    .line 230
    invoke-static {v6}, Lcom/android/tools/r8/c;->b(I)I

    move-result v6

    if-eqz v6, :cond_11

    if-eq v6, v9, :cond_10

    if-ne v6, v12, :cond_f

    .line 231
    sget-object v6, Lcom/android/tools/r8/internal/b90;->e:Lcom/android/tools/r8/internal/b90;

    .line 232
    iget v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v13, v9

    iput v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 233
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    goto :goto_6

    .line 234
    :cond_f
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    .line 235
    :cond_10
    sget-object v6, Lcom/android/tools/r8/internal/b90;->d:Lcom/android/tools/r8/internal/b90;

    .line 236
    iget v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v13, v9

    iput v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 237
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    goto :goto_6

    .line 238
    :cond_11
    sget-object v6, Lcom/android/tools/r8/internal/b90;->c:Lcom/android/tools/r8/internal/b90;

    .line 239
    iget v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v13, v9

    iput v13, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 240
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    .line 241
    :goto_6
    iget v6, v10, Lcom/android/tools/r8/internal/iQ;->b:I

    const/4 v10, -0x1

    if-nez v6, :cond_12

    move v6, v10

    goto :goto_7

    .line 242
    :cond_12
    sget-object v13, Lcom/android/tools/r8/internal/dy0;->a:[I

    invoke-static {v6}, Lcom/android/tools/r8/c;->b(I)I

    move-result v6

    aget v6, v13, v6

    :goto_7
    if-eq v6, v10, :cond_16

    if-eq v6, v9, :cond_15

    if-eq v6, v12, :cond_14

    const/4 v9, 0x3

    if-ne v6, v9, :cond_13

    .line 243
    sget-object v6, Lcom/android/tools/r8/internal/c90;->e:Lcom/android/tools/r8/internal/c90;

    .line 244
    iget v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 245
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    goto :goto_8

    .line 246
    :cond_13
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    .line 247
    :cond_14
    sget-object v6, Lcom/android/tools/r8/internal/c90;->d:Lcom/android/tools/r8/internal/c90;

    .line 248
    iget v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 249
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    goto :goto_8

    .line 250
    :cond_15
    sget-object v6, Lcom/android/tools/r8/internal/c90;->c:Lcom/android/tools/r8/internal/c90;

    .line 251
    iget v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v11, Lcom/android/tools/r8/internal/a90;->c:I

    .line 252
    iput-object v6, v11, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    .line 253
    :cond_16
    :goto_8
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/a90;->c()Lcom/android/tools/r8/internal/d90;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/d90;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 255
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 256
    :cond_17
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 257
    throw v0

    .line 258
    :cond_18
    iget v3, v4, Lcom/android/tools/r8/internal/X80;->c:I

    and-int/2addr v3, v9

    if-eq v3, v9, :cond_19

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/tools/r8/internal/X80;->d:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v4, Lcom/android/tools/r8/internal/X80;->d:Ljava/util/List;

    .line 260
    iget v3, v4, Lcom/android/tools/r8/internal/X80;->c:I

    or-int/2addr v3, v9

    iput v3, v4, Lcom/android/tools/r8/internal/X80;->c:I

    .line 261
    :cond_19
    iget-object v3, v4, Lcom/android/tools/r8/internal/X80;->d:Ljava/util/List;

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 262
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/X80;->c()Lcom/android/tools/r8/internal/Y80;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y80;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 264
    iput-object v3, v2, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 265
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_9

    .line 266
    :cond_1a
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 267
    throw v0

    .line 268
    :cond_1b
    :goto_9
    iget-object v3, v0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 269
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/yW;

    .line 270
    check-cast v4, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object v4

    .line 272
    iget-object v5, v4, Lcom/android/tools/r8/internal/EL;->a:Lcom/android/tools/r8/internal/OL;

    if-eqz v5, :cond_1d

    .line 273
    sget-object v6, Lcom/android/tools/r8/internal/oM;->b:Lcom/android/tools/r8/internal/Wy;

    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/m90;

    .line 274
    :cond_1d
    iget-object v4, v4, Lcom/android/tools/r8/internal/EL;->b:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 275
    sget-object v5, Lcom/android/tools/r8/internal/oM;->c:Lcom/android/tools/r8/internal/Wy;

    .line 276
    iget-object v6, v0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v4

    .line 277
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/m90;

    goto :goto_a

    .line 278
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/pQ;->a()Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v4, "string"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, v0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v0

    .line 281
    iget v3, v2, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/lit8 v4, v3, 0x4

    iput v4, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 282
    iput v0, v2, Lcom/android/tools/r8/internal/m90;->h:I

    .line 283
    iget v0, v1, Lcom/android/tools/r8/internal/pQ;->a:I

    .line 284
    sget-object v1, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    .line 285
    iget v1, v1, Lcom/android/tools/r8/internal/n90;->e:I

    if-eq v0, v1, :cond_1f

    or-int/lit8 v1, v3, 0x5

    .line 286
    iput v1, v2, Lcom/android/tools/r8/internal/m90;->e:I

    .line 287
    iput v0, v2, Lcom/android/tools/r8/internal/m90;->f:I

    :cond_1f
    return-object v2
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/u90;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kmProperty"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/android/tools/r8/internal/v90;->v:Lcom/android/tools/r8/internal/v90;

    .line 289
    new-instance v0, Lcom/android/tools/r8/internal/u90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/u90;-><init>()V

    .line 290
    iget-object v1, p1, Lcom/android/tools/r8/internal/vQ;->f:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/BQ;

    .line 292
    invoke-static {p0, v5}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/BQ;)Lcom/android/tools/r8/internal/R90;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v5

    .line 294
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    iget v6, v0, Lcom/android/tools/r8/internal/u90;->e:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_0

    .line 296
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/tools/r8/internal/u90;->k:Ljava/util/List;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/android/tools/r8/internal/u90;->k:Ljava/util/List;

    .line 297
    iget v6, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 298
    :cond_0
    iget-object v6, v0, Lcom/android/tools/r8/internal/u90;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 300
    throw p0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 302
    iput-object v1, v0, Lcom/android/tools/r8/internal/u90;->l:Lcom/android/tools/r8/internal/M90;

    .line 303
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 304
    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/vQ;->h:Ljava/util/ArrayList;

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 307
    check-cast v6, Lcom/android/tools/r8/internal/yQ;

    .line 308
    invoke-static {p0, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v6

    .line 309
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_4
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    const/16 v4, 0x100

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_5

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/u90;->n:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/u90;->n:Ljava/util/List;

    .line 312
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/2addr v1, v4

    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 313
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/internal/u90;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 314
    iget-object v1, p1, Lcom/android/tools/r8/internal/vQ;->i:Lcom/android/tools/r8/internal/EQ;

    if-eqz v1, :cond_7

    .line 315
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/EQ;)Lcom/android/tools/r8/internal/Y90;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Y90;->c()Lcom/android/tools/r8/internal/Z90;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 318
    iput-object v1, v0, Lcom/android/tools/r8/internal/u90;->p:Lcom/android/tools/r8/internal/Z90;

    .line 319
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    goto :goto_2

    .line 320
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 321
    throw p0

    .line 322
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vQ;->d()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    .line 323
    iput-object v1, v0, Lcom/android/tools/r8/internal/u90;->i:Lcom/android/tools/r8/internal/M90;

    .line 324
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 325
    iget-object v1, p1, Lcom/android/tools/r8/internal/vQ;->k:Ljava/util/ArrayList;

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :cond_8
    :goto_3
    if-ge v5, v4, :cond_9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 328
    check-cast v6, Lcom/android/tools/r8/internal/HQ;

    .line 329
    invoke-static {p0, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 330
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 331
    :cond_9
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    const/16 v4, 0x2000

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_a

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/u90;->s:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/u90;->s:Ljava/util/List;

    .line 333
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/2addr v1, v4

    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 334
    :cond_a
    iget-object v1, v0, Lcom/android/tools/r8/internal/u90;->s:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 335
    iget-object v1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    .line 336
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "string"

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 337
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v2

    .line 339
    sget-object v5, Lcom/android/tools/r8/internal/gM;->k:Lcom/android/tools/r8/internal/gM;

    .line 340
    new-instance v5, Lcom/android/tools/r8/internal/fM;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/fM;-><init>()V

    .line 341
    iget-object v6, v2, Lcom/android/tools/r8/internal/XL;->b:Lcom/android/tools/r8/internal/CL;

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    .line 342
    new-instance v8, Lcom/android/tools/r8/internal/ZL;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ZL;-><init>()V

    .line 343
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CL;->a()Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v9, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v9, v6}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v6

    .line 346
    iget v9, v8, Lcom/android/tools/r8/internal/ZL;->c:I

    or-int/2addr v9, v7

    iput v9, v8, Lcom/android/tools/r8/internal/ZL;->c:I

    .line 347
    iput v6, v8, Lcom/android/tools/r8/internal/ZL;->d:I

    .line 348
    iget-object v6, v2, Lcom/android/tools/r8/internal/XL;->b:Lcom/android/tools/r8/internal/CL;

    .line 349
    invoke-static {v6}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 350
    iget-object v6, v6, Lcom/android/tools/r8/internal/CL;->b:Ljava/lang/String;

    .line 351
    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v4

    .line 353
    iget v6, v8, Lcom/android/tools/r8/internal/ZL;->c:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v8, Lcom/android/tools/r8/internal/ZL;->c:I

    .line 354
    iput v4, v8, Lcom/android/tools/r8/internal/ZL;->e:I

    .line 355
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ZL;->c()Lcom/android/tools/r8/internal/aM;

    move-result-object v4

    .line 356
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/aM;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 357
    iput-object v4, v5, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    .line 358
    iget v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v4, v7

    iput v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    move v4, v7

    goto :goto_5

    .line 359
    :cond_c
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 360
    throw p0

    :cond_d
    move v4, v3

    .line 361
    :goto_5
    iget-object v6, v2, Lcom/android/tools/r8/internal/XL;->c:Lcom/android/tools/r8/internal/OL;

    if-eqz v6, :cond_e

    .line 362
    invoke-static {v6, p0}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    .line 363
    iput-object v4, v5, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    .line 364
    iget v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    move v4, v7

    .line 365
    :cond_e
    iget-object v6, v2, Lcom/android/tools/r8/internal/XL;->d:Lcom/android/tools/r8/internal/OL;

    if-eqz v6, :cond_f

    .line 366
    invoke-static {v6, p0}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    .line 367
    iput-object v4, v5, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    .line 368
    iget v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    goto :goto_6

    :cond_f
    move v7, v4

    :goto_6
    if-eqz v7, :cond_10

    .line 369
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 370
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v4, p0}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    .line 371
    iput-object v4, v5, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    .line 372
    iget v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    :cond_10
    if-eqz v7, :cond_11

    .line 373
    iget-object v4, v2, Lcom/android/tools/r8/internal/XL;->f:Lcom/android/tools/r8/internal/OL;

    if-eqz v4, :cond_11

    .line 374
    invoke-static {v4, p0}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    .line 375
    iput-object v4, v5, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    .line 376
    iget v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Lcom/android/tools/r8/internal/fM;->c:I

    .line 377
    :cond_11
    iget v4, v2, Lcom/android/tools/r8/internal/XL;->a:I

    .line 378
    sget-object v6, Lcom/android/tools/r8/internal/v90;->v:Lcom/android/tools/r8/internal/v90;

    .line 379
    sget-object v8, Lcom/android/tools/r8/internal/oM;->e:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_13

    .line 380
    :goto_7
    iget v2, v2, Lcom/android/tools/r8/internal/XL;->a:I

    .line 381
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    :cond_13
    if-eqz v7, :cond_b

    .line 382
    sget-object v2, Lcom/android/tools/r8/internal/oM;->d:Lcom/android/tools/r8/internal/Wy;

    .line 383
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fM;->c()Lcom/android/tools/r8/internal/gM;

    move-result-object v4

    .line 384
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gM;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 385
    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    goto/16 :goto_4

    .line 386
    :cond_14
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 387
    throw p0

    .line 388
    :cond_15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vQ;->b()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 391
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/lit8 v2, v1, 0x4

    iput v2, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 392
    iput p0, v0, Lcom/android/tools/r8/internal/u90;->h:I

    .line 393
    iget p0, p1, Lcom/android/tools/r8/internal/vQ;->a:I

    .line 394
    sget-object v2, Lcom/android/tools/r8/internal/v90;->v:Lcom/android/tools/r8/internal/v90;

    .line 395
    iget v2, v2, Lcom/android/tools/r8/internal/v90;->e:I

    if-eq p0, v2, :cond_16

    or-int/lit8 v1, v1, 0x5

    .line 396
    iput v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 397
    iput p0, v0, Lcom/android/tools/r8/internal/u90;->f:I

    .line 398
    :cond_16
    iget-object p0, p1, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 399
    iget p0, p0, Lcom/android/tools/r8/internal/wQ;->a:I

    .line 400
    iget v1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    or-int/lit16 v2, v1, 0x800

    iput v2, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 401
    iput p0, v0, Lcom/android/tools/r8/internal/u90;->q:I

    .line 402
    iget-object p0, p1, Lcom/android/tools/r8/internal/vQ;->e:Lcom/android/tools/r8/internal/wQ;

    if-eqz p0, :cond_17

    .line 403
    iget p0, p0, Lcom/android/tools/r8/internal/wQ;->a:I

    or-int/lit16 p1, v1, 0x1800

    .line 404
    iput p1, v0, Lcom/android/tools/r8/internal/u90;->e:I

    .line 405
    iput p0, v0, Lcom/android/tools/r8/internal/u90;->r:I

    :cond_17
    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;
    .locals 11

    .line 545
    iget v0, p1, Lcom/android/tools/r8/internal/HQ;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 546
    iget v2, p1, Lcom/android/tools/r8/internal/HQ;->b:I

    if-eqz v2, :cond_10

    .line 547
    iget-object v3, p1, Lcom/android/tools/r8/internal/HQ;->c:Ljava/lang/Integer;

    .line 548
    iget-object v4, p1, Lcom/android/tools/r8/internal/HQ;->d:Ljava/lang/String;

    .line 549
    sget-object v5, Lcom/android/tools/r8/internal/ea0;->l:Lcom/android/tools/r8/internal/ea0;

    .line 550
    new-instance v6, Lcom/android/tools/r8/internal/ba0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ba0;-><init>()V

    .line 551
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_1

    if-ne v0, v7, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 552
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/da0;->e:Lcom/android/tools/r8/internal/da0;

    goto :goto_0

    .line 553
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/da0;->d:Lcom/android/tools/r8/internal/da0;

    goto :goto_0

    .line 554
    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/da0;->c:Lcom/android/tools/r8/internal/da0;

    .line 555
    :goto_0
    iget-object v10, v5, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    if-eq v0, v10, :cond_4

    .line 556
    iget v10, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 557
    iput-object v0, v6, Lcom/android/tools/r8/internal/ba0;->i:Lcom/android/tools/r8/internal/da0;

    .line 558
    :cond_4
    invoke-static {v2}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_6

    if-ne v0, v8, :cond_5

    .line 559
    sget-object v0, Lcom/android/tools/r8/internal/ca0;->e:Lcom/android/tools/r8/internal/ca0;

    goto :goto_1

    .line 560
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 561
    :cond_6
    sget-object v0, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    goto :goto_1

    .line 562
    :cond_7
    sget-object v0, Lcom/android/tools/r8/internal/ca0;->c:Lcom/android/tools/r8/internal/ca0;

    .line 563
    :goto_1
    iget-object v2, v5, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    if-eq v0, v2, :cond_8

    .line 564
    iget v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 565
    iput-object v0, v6, Lcom/android/tools/r8/internal/ba0;->f:Lcom/android/tools/r8/internal/ca0;

    :cond_8
    if-eqz v3, :cond_9

    .line 566
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 567
    iget v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 568
    iput v0, v6, Lcom/android/tools/r8/internal/ba0;->g:I

    :cond_9
    if-eqz v4, :cond_a

    .line 569
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    iget-object v0, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v0

    .line 571
    iget v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v6, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 572
    iput v0, v6, Lcom/android/tools/r8/internal/ba0;->h:I

    .line 573
    :cond_a
    iget-object p1, p1, Lcom/android/tools/r8/internal/HQ;->e:Lcom/android/tools/r8/internal/GQ;

    if-eqz p1, :cond_f

    .line 574
    iget v0, p1, Lcom/android/tools/r8/internal/GQ;->a:I

    .line 575
    iget v1, p1, Lcom/android/tools/r8/internal/GQ;->b:I

    .line 576
    iget p1, p1, Lcom/android/tools/r8/internal/GQ;->c:I

    .line 577
    new-instance v2, Lcom/android/tools/r8/internal/Xw0;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/Xw0;-><init>(III)V

    new-instance v3, Lcom/android/tools/r8/internal/D91;

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/D91;-><init>(Lcom/android/tools/r8/internal/ba0;)V

    new-instance v4, Lcom/android/tools/r8/internal/E91;

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/E91;-><init>(Lcom/android/tools/r8/internal/ba0;)V

    .line 578
    const-string v5, "writeVersion"

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "writeVersionFull"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    sget-object v5, Lcom/android/tools/r8/internal/Xw0;->d:Lcom/android/tools/r8/internal/Xw0;

    .line 580
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/Xw0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x7

    if-gt v0, v2, :cond_c

    const/16 v5, 0xf

    if-gt v1, v5, :cond_c

    const/16 v5, 0x7f

    if-le p1, v5, :cond_b

    goto :goto_2

    :cond_b
    shl-int/2addr v1, v7

    or-int/2addr v0, v1

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 581
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    .line 582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/android/tools/r8/internal/by0;->b:Lcom/android/tools/r8/internal/YY;

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    iget-object p0, p0, Lcom/android/tools/r8/internal/YY;->a:Lcom/android/tools/r8/internal/xJ;

    new-instance p1, Lcom/android/tools/r8/internal/vr0;

    invoke-direct {p1, v6}, Lcom/android/tools/r8/internal/vr0;-><init>(Lcom/android/tools/r8/internal/ba0;)V

    .line 586
    iget-object v0, p0, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    .line 587
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 588
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/android/tools/r8/internal/xJ;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 589
    iget-object p0, p0, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v0

    .line 590
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 591
    :cond_f
    const-string p0, "version"

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_10
    const-string p0, "level"

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_11
    const-string p0, "kind"

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public static final b(Lcom/android/tools/r8/internal/ba0;I)Lcom/android/tools/r8/internal/iv0;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    iput p1, p0, Lcom/android/tools/r8/internal/ba0;->e:I

    sget-object p0, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p0
.end method
