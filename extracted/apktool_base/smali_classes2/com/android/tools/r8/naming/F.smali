.class public abstract Lcom/android/tools/r8/naming/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/J2;
    .locals 7

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    .line 126
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    goto/16 :goto_2

    .line 128
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    .line 129
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_2

    .line 133
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v6

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v3

    move-object v1, v0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_2

    .line 135
    :cond_3
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 139
    :cond_6
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    if-nez v2, :cond_9

    .line 140
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 142
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    goto :goto_3

    :cond_8
    :goto_2
    move-object v2, v3

    :cond_9
    :goto_3
    if-nez v2, :cond_c

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    move-object p1, v3

    :goto_4
    if-eqz p1, :cond_b

    .line 146
    invoke-interface {p0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v3

    :cond_c
    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 151
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 155
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 156
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    instance-of v0, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_2

    .line 158
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->Y4:Lcom/android/tools/r8/graph/l2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 160
    iget-object p0, p0, Lcom/android/tools/r8/graph/l2;->a:Lcom/android/tools/r8/internal/nC;

    .line 161
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/oZ;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/O2;
    .locals 9

    .line 162
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 163
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    new-array v2, v0, [Lcom/android/tools/r8/graph/M2;

    .line 165
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 166
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/jc;

    .line 168
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v5

    .line 171
    new-instance v6, Lcom/android/tools/r8/naming/r1;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/naming/r1;-><init>(Lcom/android/tools/r8/internal/oZ;)V

    invoke-interface {v5, v6}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    :goto_1
    move p0, v0

    .line 172
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 173
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 174
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    if-ne v6, p2, :cond_6

    if-nez p0, :cond_5

    .line 175
    new-instance p0, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p0, v2}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    :cond_5
    return-object v1

    .line 176
    :cond_6
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v7

    if-nez v7, :cond_8

    .line 177
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 178
    :cond_7
    new-array v2, v0, [Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    .line 179
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    .line 180
    array-length v7, v2

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v7

    if-gez v7, :cond_9

    return-object v1

    .line 181
    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-nez v6, :cond_a

    return-object v1

    .line 182
    :cond_a
    aget-object v8, v2, v7

    if-nez v8, :cond_b

    add-int/lit8 p0, p0, -0x1

    .line 183
    :cond_b
    aput-object v6, v2, v7

    goto :goto_2

    .line 184
    :cond_c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v5

    if-nez v5, :cond_d

    return-object v1

    .line 185
    :cond_d
    invoke-static {v4}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    return-object v1

    .line 187
    :cond_e
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 148
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p2, :cond_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/wB;
    .locals 10

    .line 24
    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v2

    .line 28
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 29
    iget-object v5, v3, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v4, v5, :cond_0

    .line 30
    iget-object v3, v3, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v3, :cond_1

    .line 31
    :cond_0
    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lcom/android/tools/r8/internal/wB;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kc;

    move-result-object p0

    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v7, :cond_d

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 37
    iget-object v6, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, v6}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 39
    :cond_2
    iget-object v6, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    move v7, v3

    .line 40
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 41
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 42
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, -0x1

    :cond_5
    :goto_1
    if-ltz v7, :cond_d

    .line 43
    iget-object p0, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 46
    sget-boolean p2, Lcom/android/tools/r8/naming/F;->a:Z

    if-nez p2, :cond_7

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    if-nez p2, :cond_9

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 48
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 49
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 52
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    move-object p0, v5

    :goto_4
    if-eqz p0, :cond_c

    .line 53
    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    goto :goto_5

    .line 54
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 55
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p0

    .line 56
    iget-object p0, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    instance-of p1, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_c

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 60
    :cond_c
    :goto_5
    invoke-static {v5}, Lcom/android/tools/r8/internal/wB;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ud;

    move-result-object p0

    return-object p0

    .line 61
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_e

    return-object v5

    .line 62
    :cond_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->g1:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v6, :cond_f

    move v2, v4

    goto :goto_6

    :cond_f
    move v2, v3

    :goto_6
    const/4 v6, 0x2

    if-eqz v2, :cond_10

    move v7, v6

    goto :goto_7

    :cond_10
    move v7, v4

    .line 63
    :goto_7
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 64
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 66
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v9

    if-nez v9, :cond_11

    return-object v5

    .line 67
    :cond_11
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v8

    .line 68
    iget-object v8, v8, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 69
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v9

    if-eqz v9, :cond_12

    return-object v5

    .line 70
    :cond_12
    invoke-interface {p1, v8, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v5

    .line 71
    :cond_13
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v2, :cond_15

    .line 73
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v5

    .line 75
    :cond_14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 76
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/android/tools/r8/internal/wB;->b(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Tu0;

    move-result-object p0

    return-object p0

    :cond_15
    if-ne v7, v6, :cond_16

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v5}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/android/tools/r8/internal/wB;->b(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Tu0;

    move-result-object p0

    return-object p0

    .line 81
    :cond_16
    sget-boolean v2, Lcom/android/tools/r8/naming/F;->a:Z

    if-nez v2, :cond_18

    const/4 v2, 0x3

    if-ne v7, v2, :cond_17

    goto :goto_8

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 82
    :cond_18
    :goto_8
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 85
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 86
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v4

    .line 87
    iget-object v4, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 88
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v6, :cond_19

    .line 89
    :goto_9
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 90
    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    goto :goto_9

    .line 92
    :cond_19
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_b

    .line 93
    :cond_1a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 94
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    goto :goto_c

    .line 95
    :cond_1b
    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    instance-of v4, v4, Lcom/android/tools/r8/internal/oZ;

    if-eqz v4, :cond_1c

    .line 97
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 98
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v1

    .line 99
    invoke-static {v1, v2, p0, v0}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/internal/oZ;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    goto :goto_c

    .line 100
    :cond_1c
    iget-object p0, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 101
    iget-object p0, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object p0

    .line 102
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 104
    new-array v2, v1, [Lcom/android/tools/r8/graph/M2;

    :goto_a
    if-ge v3, v1, :cond_1e

    .line 105
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, v4}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-nez v4, :cond_1d

    goto :goto_b

    .line 106
    :cond_1d
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 107
    :cond_1e
    new-instance p0, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p0, v2}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    goto :goto_c

    :cond_1f
    :goto_b
    move-object p0, v5

    :goto_c
    if-nez p0, :cond_20

    return-object v5

    .line 108
    :cond_20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 110
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 111
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/O2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 113
    :cond_22
    invoke-static {v5}, Lcom/android/tools/r8/internal/wB;->b(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Tu0;

    move-result-object p0

    return-object p0

    .line 114
    :cond_23
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 115
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p0

    .line 116
    iget-object p1, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    instance-of p1, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_24

    .line 119
    iget-object p0, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 120
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/android/tools/r8/internal/wB;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Es;

    move-result-object p0

    return-object p0

    .line 122
    :cond_24
    iget-object p0, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 124
    invoke-static {p0}, Lcom/android/tools/r8/internal/wB;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Aq;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v5
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_6

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->A2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_3

    return v6

    :cond_1
    if-ne v0, v5, :cond_2

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->B2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_3

    return v6

    .line 6
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_3

    return v6

    .line 7
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v1, p1, v6

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_4

    return v6

    :cond_4
    if-ne v0, v5, :cond_5

    .line 8
    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_5

    return v6

    :cond_5
    if-ne v0, v3, :cond_17

    .line 9
    aget-object v0, p1, v4

    iget-object v1, p0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_17

    aget-object p1, p1, v5

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->y2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_17

    :cond_6
    :goto_0
    return v6

    .line 10
    :cond_7
    iget-object v7, v1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p0, Lcom/android/tools/r8/graph/u1;->e1:Lcom/android/tools/r8/graph/L2;

    if-eq v7, v8, :cond_13

    iget-object v8, p0, Lcom/android/tools/r8/graph/u1;->f1:Lcom/android/tools/r8/graph/L2;

    if-ne v7, v8, :cond_8

    goto :goto_1

    .line 11
    :cond_8
    iget-object v8, p0, Lcom/android/tools/r8/graph/u1;->g1:Lcom/android/tools/r8/graph/L2;

    if-ne v7, v8, :cond_d

    if-eq v0, v3, :cond_9

    return v6

    .line 12
    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_a

    return v6

    .line 13
    :cond_a
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v0, p1, v6

    if-eq v0, v2, :cond_b

    return v6

    .line 14
    :cond_b
    aget-object v0, p1, v4

    if-eq v0, v2, :cond_c

    return v6

    .line 15
    :cond_c
    aget-object p1, p1, v5

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_17

    return v6

    :cond_d
    if-eq v0, v5, :cond_e

    if-eq v0, v3, :cond_e

    return v6

    :cond_e
    if-ne v0, v5, :cond_f

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p0, Lcom/android/tools/r8/graph/u1;->A2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v7, :cond_10

    return v6

    .line 17
    :cond_f
    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p0, Lcom/android/tools/r8/graph/u1;->B2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v7, :cond_10

    return v6

    .line 18
    :cond_10
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v1, p1, v6

    if-eq v1, v2, :cond_11

    return v6

    .line 19
    :cond_11
    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_12

    return v6

    :cond_12
    if-ne v0, v3, :cond_17

    .line 20
    aget-object p1, p1, v5

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_17

    return v6

    :cond_13
    :goto_1
    if-eq v0, v5, :cond_14

    return v6

    .line 21
    :cond_14
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_15

    return v6

    .line 22
    :cond_15
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v0, p1, v6

    if-eq v0, v2, :cond_16

    return v6

    .line 23
    :cond_16
    aget-object p1, p1, v4

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_17

    return v6

    :cond_17
    return v4
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/oZ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/XC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XC0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
