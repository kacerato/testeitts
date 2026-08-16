.class public final Lcom/android/tools/r8/internal/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public b:Lcom/android/tools/r8/graph/A2;

.field public c:Lcom/android/tools/r8/graph/A2;

.field public d:Z

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/ay;

.field public g:Ljava/lang/Boolean;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/android/tools/r8/graph/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->d:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    iput-object v0, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->h:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->i:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/G;
    .locals 13

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cy;->c()V

    .line 7
    :cond_0
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 9
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 10
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    if-nez v0, :cond_2

    .line 11
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v2, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/wa;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/kb;

    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    const/4 v0, 0x2

    move v2, v4

    goto :goto_3

    .line 16
    :cond_5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    if-nez v0, :cond_6

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v2, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/cy;->a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V

    move v0, v3

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_2

    .line 19
    :goto_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    move v9, v2

    .line 20
    :goto_4
    array-length v2, v5

    if-ge v4, v2, :cond_9

    .line 21
    aget-object v2, v5, v4

    .line 22
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    .line 23
    iget-boolean v7, p0, Lcom/android/tools/r8/internal/cy;->d:Z

    if-eqz v7, :cond_7

    array-length v7, v5

    sub-int/2addr v7, v3

    if-eq v4, v7, :cond_8

    .line 24
    :cond_7
    new-instance v7, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v7, v6, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 25
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/tools/r8/internal/cy;->a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V

    .line 26
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v2

    add-int/2addr v0, v2

    .line 27
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v2

    add-int/2addr v9, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 28
    :cond_9
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cy;->b()I

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-nez v2, :cond_a

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v2

    .line 32
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_a
    move v8, v0

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_c
    :goto_5
    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_8

    .line 36
    :cond_d
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->h:Z

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/i9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 43
    :cond_10
    new-instance v0, Lcom/android/tools/r8/internal/ab;

    .line 44
    sget-boolean v2, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v2, :cond_12

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    .line 46
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 48
    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 49
    :goto_8
    new-instance v0, Lcom/android/tools/r8/graph/G;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v7, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    .line 50
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v6, v0

    move-object v11, v12

    .line 51
    invoke-direct/range {v6 .. v12}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/WS;
    .locals 8

    .line 52
    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cy;->c()V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->h:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->d:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    if-nez v0, :cond_b

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v1, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1

    .line 56
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 58
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1

    .line 59
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v0, v2}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 63
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_6

    .line 64
    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    invoke-virtual {v4, v3, v6}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-nez v3, :cond_5

    .line 65
    iget-boolean v6, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    .line 66
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v4, v6, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 68
    new-instance v7, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v7, v3, v6, v5}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 69
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v5

    .line 71
    iget-object v6, v0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v6, v5, v7}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 72
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 73
    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v6, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    if-ne v4, v6, :cond_8

    .line 74
    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_7

    const/16 v6, 0xcc

    goto :goto_4

    :cond_7
    const/16 v6, 0xb8

    .line 75
    :goto_4
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v6, v4, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    goto :goto_6

    .line 76
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_9

    const/16 v6, 0xd0

    goto :goto_5

    :cond_9
    const/16 v6, 0xcf

    .line 77
    :goto_5
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v6, v4, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 78
    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    goto :goto_7

    .line 80
    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 81
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 82
    new-instance v2, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v2, v3, p1, v5}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 83
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p1

    .line 84
    iget-object v0, v0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xb0

    .line 87
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 88
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    return-object p1

    .line 89
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/cy;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    if-nez v0, :cond_0

    goto :goto_3

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 92
    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v2, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    add-int/2addr p1, v3

    :cond_3
    if-ne p1, v2, :cond_4

    .line 93
    iget-object p1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object p1, v0, p1

    .line 95
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_6
    :goto_2
    new-instance p2, Lcom/android/tools/r8/internal/i9;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_7
    :goto_3
    return-void
.end method

.method public final b()I
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb7

    return v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected invoke type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xb9

    return v0

    :cond_2
    const/16 v0, 0xb6

    return v0

    :cond_3
    const/16 v0, 0xb8

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/ay;->d:Lcom/android/tools/r8/internal/ay;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/ay;->c:Lcom/android/tools/r8/internal/ay;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c()V
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cy;->d:Z

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    iget-object v4, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v5, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    if-ne v4, v5, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    if-eqz v4, :cond_9

    :goto_4
    const/4 v3, 0x0

    :cond_9
    add-int/2addr v2, v3

    if-ne v1, v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->j:Z

    if-eqz v1, :cond_13

    if-nez v0, :cond_d

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_7
    if-nez v0, :cond_11

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_8
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    sget-object v1, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    if-ne v0, v1, :cond_12

    goto/16 :goto_a

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->h:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_15

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    if-ne v0, v1, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/cy;->i:Z

    if-eqz v1, :cond_19

    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_9
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_a
    return-void
.end method
