.class public abstract Lcom/android/tools/r8/internal/e50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Ljava/util/List;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:Lcom/android/tools/r8/graph/M2;

.field public k:Lcom/android/tools/r8/internal/xw0;

.field public l:I

.field public m:I

.field public final synthetic n:Lcom/android/tools/r8/internal/f50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/e50;->m:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e50;->a(I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    instance-of v0, p0, Lcom/android/tools/r8/internal/YJ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 135
    :cond_2
    instance-of v1, p0, Lcom/android/tools/r8/internal/YJ;

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->h0()Lcom/android/tools/r8/internal/YJ;

    move-result-object p0

    .line 137
    iget-object p0, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 139
    :goto_2
    iget-object p0, p0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 140
    sget-boolean v0, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e50;->b(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 143
    :cond_2
    instance-of p1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p1, :cond_3

    .line 144
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v0, :cond_5

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 146
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    instance-of v2, p1, Lcom/android/tools/r8/internal/n7;

    if-nez v2, :cond_7

    .line 148
    instance-of v2, p1, Lcom/android/tools/r8/internal/n8;

    if-nez v2, :cond_7

    .line 149
    instance-of v2, p1, Lcom/android/tools/r8/internal/Rl0;

    if-nez v2, :cond_7

    .line 150
    instance-of v2, p1, Lcom/android/tools/r8/internal/bc;

    if-nez v2, :cond_7

    .line 151
    instance-of v2, p1, Lcom/android/tools/r8/internal/uI;

    if-nez v2, :cond_7

    .line 152
    instance-of v2, p1, Lcom/android/tools/r8/internal/Fx;

    if-nez v2, :cond_7

    .line 153
    instance-of v2, p1, Lcom/android/tools/r8/internal/tU;

    if-nez v2, :cond_7

    .line 154
    instance-of p1, p1, Lcom/android/tools/r8/internal/kt;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 155
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 156
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v2, v2, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 157
    instance-of v1, v1, Lcom/android/tools/r8/internal/uI;

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 159
    :cond_9
    :goto_3
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez v0, :cond_c

    .line 160
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-ne p1, p2, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    return-object p1

    .line 161
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object p2, p2, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 11

    .line 1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    iget v4, p0, Lcom/android/tools/r8/internal/e50;->c:I

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/e50;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/C4;

    if-eqz v1, :cond_2

    :cond_1
    move v4, v2

    move v1, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v1

    move v4, v3

    :goto_1
    if-eqz v1, :cond_1e

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/e50;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/tools/r8/internal/e50;->e:I

    .line 9
    instance-of v1, v0, Lcom/android/tools/r8/internal/C4;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v2, :cond_1c

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v0

    sub-int/2addr v0, v3

    .line 13
    iget v1, p0, Lcom/android/tools/r8/internal/e50;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/e50;->l:I

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v0, :cond_4

    if-ltz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    if-nez v1, :cond_1c

    .line 15
    iput-object v4, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto/16 :goto_c

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 18
    iget-object v5, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    .line 21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 22
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    const/4 v6, -0x1

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :cond_7
    :goto_3
    if-ge v8, v7, :cond_a

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 26
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-ne v9, v10, :cond_7

    .line 27
    iget v9, p0, Lcom/android/tools/r8/internal/e50;->l:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/tools/r8/internal/e50;->l:I

    .line 28
    sget-boolean v10, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v10, :cond_9

    if-ltz v9, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v9, :cond_7

    .line 29
    iput-object v4, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 30
    iget-object v9, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v9, v9, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v9, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto :goto_3

    .line 31
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 32
    sget-boolean v1, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/e50;->l:I

    if-nez v2, :cond_d

    .line 35
    iput-object v4, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto/16 :goto_c

    .line 37
    :cond_d
    iput-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 38
    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto/16 :goto_c

    .line 39
    :cond_e
    sget-boolean v7, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v7, :cond_10

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v7

    if-nez v7, :cond_10

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v7

    if-nez v7, :cond_10

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_6

    .line 42
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_10
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 44
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_16

    .line 45
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v7, v1, :cond_11

    .line 46
    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 47
    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v8

    if-nez v8, :cond_14

    .line 48
    instance-of v8, v0, Lcom/android/tools/r8/internal/YJ;

    if-eqz v8, :cond_12

    goto :goto_9

    .line 49
    :cond_12
    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget v8, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 51
    iget-object v9, v7, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 52
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v9

    add-int/2addr v9, v8

    .line 53
    iput v9, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 55
    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v9

    invoke-virtual {p0, v7, v9, v2}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 56
    :cond_13
    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v9, v9, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_8
    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 58
    :cond_14
    :goto_9
    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-nez v2, :cond_15

    if-eq v8, v6, :cond_15

    .line 59
    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 60
    :cond_15
    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget v8, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 62
    iget-object v9, v7, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 63
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v9

    add-int/2addr v9, v8

    .line 64
    iput v9, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 65
    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v9

    invoke-virtual {p0, v7, v9, v2}, Lcom/android/tools/r8/internal/e50;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 67
    :cond_16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 68
    sget-boolean v1, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_18
    :goto_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 72
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/e50;->l:I

    if-nez v2, :cond_19

    .line 73
    iput-object v4, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto :goto_c

    .line 75
    :cond_19
    iput-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 76
    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto :goto_c

    .line 77
    :cond_1a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v2, v2, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/e50;->l:I

    if-nez v2, :cond_1b

    .line 80
    iput-object v4, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    goto :goto_c

    .line 82
    :cond_1b
    iput-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 83
    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    .line 84
    :cond_1c
    :goto_c
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget v1, v1, Lcom/android/tools/r8/internal/nJ$l;->c:I

    if-lt v0, v1, :cond_1d

    .line 85
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/e50;->a(II)V

    goto/16 :goto_0

    .line 86
    :cond_1d
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/e50;->d:I

    goto/16 :goto_0

    .line 87
    :cond_1e
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/e50;->c:I

    if-le v0, v1, :cond_1f

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/e50;->a(II)V

    goto/16 :goto_0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/e50;->a(I)V

    goto/16 :goto_0

    .line 90
    :cond_20
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->e:I

    if-lez v0, :cond_21

    .line 91
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/e50;->a(II)V

    :cond_21
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 172
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->c:I

    .line 173
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->e:I

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->f:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    .line 178
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 179
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    .line 181
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->l:I

    const/4 p1, -0x1

    .line 182
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->m:I

    return-void
.end method

.method public final a(II)V
    .locals 10

    .line 162
    sget-boolean v0, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 163
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne v0, p1, :cond_2

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/e50;->a(I)V

    return-void

    .line 165
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/e50;->a(I)V

    return-void

    :cond_3
    move v0, p2

    .line 166
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 167
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/e50;->e:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v2, v2, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget v2, v2, Lcom/android/tools/r8/internal/nJ$l;->b:I

    if-ge v1, v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e50;->a(I)V

    return-void

    .line 169
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/W40;

    iget-object v3, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v4, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/android/tools/r8/internal/e50;->g:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/tools/r8/internal/e50;->h:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/e50;->j:Lcom/android/tools/r8/graph/M2;

    move-object v2, v1

    move v8, p1

    move v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/internal/W40;-><init>(Lcom/android/tools/r8/internal/f50;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;II)V

    .line 170
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/e50;->a(IILcom/android/tools/r8/internal/W40;)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/e50;->a(I)V

    return-void
.end method

.method public abstract a(IILcom/android/tools/r8/internal/W40;)V
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 131
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 7

    .line 92
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->l:I

    .line 93
    iget-object v1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 95
    new-instance v2, Lcom/android/tools/r8/internal/m91;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/m91;-><init>(Lcom/android/tools/r8/internal/e50;)V

    .line 96
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    return v2

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    iget p1, p0, Lcom/android/tools/r8/internal/e50;->d:I

    iput p1, p0, Lcom/android/tools/r8/internal/e50;->m:I

    :cond_2
    return v1

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 103
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    .line 105
    iget-object v3, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v3, v3, Lcom/android/tools/r8/internal/f50;->f:Lcom/android/tools/r8/ir/optimize/X;

    iget-object v4, p0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v3

    .line 106
    sget-object v4, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    if-eq v3, v4, :cond_6

    return v2

    .line 107
    :cond_6
    iget v3, p0, Lcom/android/tools/r8/internal/e50;->i:I

    .line 108
    iget-object v4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v2

    .line 110
    :goto_0
    iget-object v5, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 112
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 113
    iget-object v6, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-ne v5, v6, :cond_7

    goto :goto_2

    .line 114
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/e50;->b(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-nez v6, :cond_8

    return v2

    .line 115
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 116
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v5

    goto :goto_1

    .line 117
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v5, v6, :cond_a

    .line 118
    iget-object v6, p0, Lcom/android/tools/r8/internal/e50;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 119
    :cond_a
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v5

    :goto_1
    add-int/2addr v5, v3

    move v3, v5

    :cond_b
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_c
    const/4 v4, 0x5

    if-le v3, v4, :cond_d

    return v2

    :cond_d
    if-eqz v0, :cond_17

    .line 120
    iget v0, p0, Lcom/android/tools/r8/internal/e50;->c:I

    iget v3, p0, Lcom/android/tools/r8/internal/e50;->d:I

    if-ne v0, v3, :cond_e

    return v2

    .line 121
    :cond_e
    sget-boolean v0, Lcom/android/tools/r8/internal/e50;->o:Z

    if-nez v0, :cond_10

    if-lez v3, :cond_f

    goto :goto_3

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_3
    move v0, v2

    :cond_11
    add-int/2addr v0, v1

    .line 122
    iget-object v3, p0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/e50;->d:I

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 123
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v4

    if-nez v4, :cond_11

    .line 124
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v4, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v4, v4, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    .line 126
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 127
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    if-eq p1, v0, :cond_12

    goto :goto_5

    .line 128
    :cond_12
    iget-object p1, p0, Lcom/android/tools/r8/internal/e50;->k:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_14

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p1, v0, :cond_13

    goto :goto_4

    :cond_13
    const/4 p1, -0x1

    .line 129
    iput p1, p0, Lcom/android/tools/r8/internal/e50;->m:I

    goto :goto_6

    .line 130
    :cond_14
    :goto_4
    sget-boolean p1, Lcom/android/tools/r8/internal/e50;->o:Z

    if-eqz p1, :cond_15

    return v2

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_5
    return v2

    :cond_17
    :goto_6
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->X0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->n:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
