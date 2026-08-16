.class public final Lcom/android/tools/r8/internal/ks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/on0;


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/J0;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/android/tools/r8/internal/fr0;

.field public final e:Lcom/android/tools/r8/internal/M3;

.field public f:Lcom/android/tools/r8/graph/J0$a;

.field public g:Lcom/android/tools/r8/internal/N8;

.field public h:Lcom/android/tools/r8/internal/Np;

.field public i:Z

.field public j:Lcom/android/tools/r8/internal/B60;

.field public final k:Lcom/android/tools/r8/internal/J8;

.field public final l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/u1;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/android/tools/r8/internal/fr0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fr0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    new-instance v0, Lcom/android/tools/r8/internal/M3;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/M3;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->f:Lcom/android/tools/r8/graph/J0$a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->g:Lcom/android/tools/r8/internal/N8;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->h:Lcom/android/tools/r8/internal/Np;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->j:Lcom/android/tools/r8/internal/B60;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ks;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    invoke-static {p1, p4}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p4, Lcom/android/tools/r8/graph/M0;

    iget v0, p1, Lcom/android/tools/r8/graph/W0$a;->e:I

    invoke-direct {p4, v0, v4, v5}, Lcom/android/tools/r8/graph/M0;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v0

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p4}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/V0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M0;->a()Ljava/util/List;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    :cond_1
    new-instance p4, Lcom/android/tools/r8/internal/J8;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    if-nez v0, :cond_2

    :goto_1
    move v3, p2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :goto_2
    invoke-static {v4, v5, p1}, Lcom/android/tools/r8/internal/to;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/W0$a;)Lcom/android/tools/r8/internal/so;

    move-result-object p1

    iget-object v6, p1, Lcom/android/tools/r8/internal/so;->a:Lcom/android/tools/r8/internal/B60;

    move-object v1, p4

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/J8;-><init>(Lcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    return-void
.end method

.method public static a(Ljava/lang/Integer;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Ljava/lang/Integer;)V
    .locals 0

    .line 113
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Ljava/lang/Integer;)V
    .locals 0

    .line 105
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/aB;)I
    .locals 11

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object v0, v0, p1

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    .line 51
    sget-boolean v2, Lcom/android/tools/r8/internal/ks;->m:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->L()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->A()[I

    move-result-object v3

    .line 53
    sget-object v4, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_3
    :goto_1
    array-length v0, v3

    :goto_2
    if-ge v4, v0, :cond_14

    aget v2, v3, v4

    add-int/2addr v2, v1

    .line 56
    invoke-virtual {p2, v1, v2, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_16

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 59
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    move-object v6, v0

    check-cast v6, Lcom/android/tools/r8/internal/Jo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    .line 61
    iget v6, v6, Lcom/android/tools/r8/internal/jp;->g:I

    add-int/2addr v7, v6

    .line 62
    sget-boolean v6, Lcom/android/tools/r8/internal/M3;->c:Z

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_6
    :goto_3
    iget-object v6, v2, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/L3;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/L3;-><init>()V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v6, v2, Lcom/android/tools/r8/internal/M3;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 65
    iget-object v6, v2, Lcom/android/tools/r8/internal/M3;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Ko;

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    .line 67
    iget-object v8, v2, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/L3;

    if-nez v8, :cond_7

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/internal/M3;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 69
    :cond_7
    iget v2, v6, Lcom/android/tools/r8/internal/Ko;->g:I

    iput v2, v8, Lcom/android/tools/r8/internal/L3;->a:I

    .line 70
    iget-wide v9, v6, Lcom/android/tools/r8/internal/Ko;->h:J

    iput-wide v9, v8, Lcom/android/tools/r8/internal/L3;->b:J

    .line 71
    iget-object v2, v6, Lcom/android/tools/r8/internal/Ko;->i:[S

    iput-object v2, v8, Lcom/android/tools/r8/internal/L3;->c:[S

    .line 72
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v6, v2

    move v7, v4

    :goto_5
    if-ge v7, v6, :cond_a

    aget-object v8, v2, v7

    .line 73
    iget v9, v8, Lcom/android/tools/r8/graph/J0$a;->c:I

    if-gt v9, v1, :cond_9

    iget v10, v8, Lcom/android/tools/r8/graph/J0$a;->d:I

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_13

    .line 74
    iget v2, v8, Lcom/android/tools/r8/graph/J0$a;->c:I

    .line 75
    iget-object v3, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    iget-object v6, p0, Lcom/android/tools/r8/internal/ks;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v3, v3, v6

    .line 76
    instance-of v6, v3, Lcom/android/tools/r8/internal/Nq;

    if-nez v6, :cond_b

    instance-of v6, v3, Lcom/android/tools/r8/internal/Oq;

    if-nez v6, :cond_b

    instance-of v3, v3, Lcom/android/tools/r8/internal/Pq;

    if-eqz v3, :cond_c

    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_c
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/aB;->f(I)Lcom/android/tools/r8/internal/VA;

    .line 78
    iget-object v2, p2, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p0, v8, v2}, Lcom/android/tools/r8/internal/ks;->b(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    invoke-virtual {p2, v1, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    goto :goto_7

    :cond_d
    add-int/lit8 v2, p1, 0x1

    .line 83
    iget-object v3, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v4, v3

    if-ge v2, v4, :cond_11

    aget-object v3, v3, v2

    .line 84
    instance-of v4, v3, Lcom/android/tools/r8/internal/Nq;

    if-nez v4, :cond_e

    instance-of v4, v3, Lcom/android/tools/r8/internal/Oq;

    if-nez v4, :cond_e

    instance-of v4, v3, Lcom/android/tools/r8/internal/Pq;

    if-eqz v4, :cond_11

    .line 85
    :cond_e
    sget-boolean p1, Lcom/android/tools/r8/internal/ks;->m:Z

    if-nez p1, :cond_10

    .line 86
    instance-of p1, v0, Lcom/android/tools/r8/internal/Wp;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/Xp;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/Yp;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/Zp;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/lq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/mq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/aq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/bq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/hq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/iq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/jq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/kq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/fq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/gq;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/Lo;

    if-nez p1, :cond_10

    instance-of p1, v0, Lcom/android/tools/r8/internal/Mo;

    if-eqz p1, :cond_f

    goto :goto_8

    .line 87
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_8
    move p1, v2

    move-object v0, v3

    .line 88
    :cond_11
    instance-of v2, v0, Lcom/android/tools/r8/internal/Ds;

    if-nez v2, :cond_12

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    add-int/2addr v0, v2

    .line 90
    invoke-virtual {p2, v1, v0, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    :cond_12
    return p1

    .line 91
    :cond_13
    instance-of p2, v0, Lcom/android/tools/r8/internal/Ds;

    if-eqz p2, :cond_15

    :cond_14
    return p1

    :cond_15
    return v3

    .line 92
    :cond_16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->J()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 93
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/fr0;->a(Lcom/android/tools/r8/internal/Np;)V

    .line 94
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-boolean v3, Lcom/android/tools/r8/internal/fr0;->c:Z

    if-nez v3, :cond_18

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->J()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_18
    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/fr0;->a(I)[I

    move-result-object v2

    .line 97
    array-length v3, v2

    :goto_a
    if-ge v4, v3, :cond_19

    aget v6, v2, v4

    .line 98
    invoke-virtual {p2, v1, v6, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 99
    :cond_19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    add-int/2addr v0, v1

    .line 100
    invoke-virtual {p2, v1, v0, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    return p1

    :cond_1a
    return v3
.end method

.method public final a(II)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/B60;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/K0;

    .line 29
    iget v3, v2, Lcom/android/tools/r8/graph/K0;->b:I

    if-le v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    return-object p1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/K0;->b()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/J8;->b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/N8;
    .locals 3

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v2, Lcom/android/tools/r8/internal/Wh1;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Wh1;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/internal/ks;->a(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V

    .line 104
    new-instance p1, Lcom/android/tools/r8/internal/N8;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(IIILcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/fr0;->b(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    .line 34
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/fr0;->a(I)[I

    move-result-object p3

    .line 35
    invoke-virtual {p4, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(I[II[I)V

    return-void
.end method

.method public final a(IILcom/android/tools/r8/internal/aB;)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/L3;

    iget v3, v0, Lcom/android/tools/r8/internal/L3;->a:I

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/L3;

    iget-wide v4, v0, Lcom/android/tools/r8/internal/L3;->b:J

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/L3;

    iget-object v6, p2, Lcom/android/tools/r8/internal/L3;->c:[S

    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance p2, Lcom/android/tools/r8/internal/rZ;

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 47
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/rZ;-><init>(Lcom/android/tools/r8/internal/xw0;IJ[S)V

    .line 48
    iget-object p1, p3, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    iget p1, p1, Lcom/android/tools/r8/graph/J0$a;->e:I

    aget-object p1, v0, p1

    .line 108
    iget-object v0, p1, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/J0$b$a;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget v5, v3, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/J0$b$a;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, p2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget p1, p1, Lcom/android/tools/r8/graph/J0$b;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 112
    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IIZ)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IZ)V
    .locals 8

    .line 5
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 8
    iget v6, v5, Lcom/android/tools/r8/graph/J0$a;->c:I

    if-gt v6, v0, :cond_0

    iget v7, v5, Lcom/android/tools/r8/graph/J0$a;->d:I

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->f:Lcom/android/tools/r8/graph/J0$a;

    if-ne v5, v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iput-object v5, p0, Lcom/android/tools/r8/internal/ks;->f:Lcom/android/tools/r8/graph/J0$a;

    if-nez v5, :cond_3

    .line 11
    iput-object v4, p0, Lcom/android/tools/r8/internal/ks;->g:Lcom/android/tools/r8/internal/N8;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v5, p3}, Lcom/android/tools/r8/internal/ks;->a(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/N8;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/ks;->g:Lcom/android/tools/r8/internal/N8;

    .line 13
    :goto_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_5

    .line 14
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->l:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/K0;

    .line 17
    iget v2, v1, Lcom/android/tools/r8/graph/K0;->b:I

    if-le v2, p3, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, v1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    .line 18
    iget-object p3, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    .line 19
    iget-object p3, p3, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    .line 20
    iput-object p3, p0, Lcom/android/tools/r8/internal/ks;->j:Lcom/android/tools/r8/internal/B60;

    goto :goto_5

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/K0;->b()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/J8;->b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->j:Lcom/android/tools/r8/internal/B60;

    .line 23
    iget-boolean v1, v4, Lcom/android/tools/r8/graph/K0;->a:Z

    if-eqz v1, :cond_8

    iget v1, v4, Lcom/android/tools/r8/graph/K0;->b:I

    if-ne v1, p3, :cond_8

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;)V

    .line 25
    :cond_8
    :goto_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object p2, p3, p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/ks;->h:Lcom/android/tools/r8/internal/Np;

    .line 26
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/aB;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;)Ljava/util/ArrayList;
    .locals 2

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/Vh1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Vh1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/internal/ks;->a(Lcom/android/tools/r8/graph/J0$a;Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/ks;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ks;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/ks;->i:Z

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->k:Lcom/android/tools/r8/internal/J8;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/ks;->j:Lcom/android/tools/r8/internal/B60;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget v1, v0, Lcom/android/tools/r8/graph/J0;->f:I

    if-lez v1, :cond_2

    .line 8
    iget v0, v0, Lcom/android/tools/r8/graph/J0;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ks;->b:Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    new-instance v2, Lcom/android/tools/r8/internal/Uh1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Uh1;-><init>()V

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j1;Ljava/util/function/BiConsumer;)V

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/ks;->i:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ks;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->h:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget v0, v0, Lcom/android/tools/r8/graph/J0;->e:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final d(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 3
    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->L()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->d:Lcom/android/tools/r8/internal/fr0;

    check-cast v1, Lcom/android/tools/r8/internal/Cs;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/fr0;->a(Lcom/android/tools/r8/internal/Cs;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ks;->e:Lcom/android/tools/r8/internal/M3;

    check-cast v1, Lcom/android/tools/r8/internal/Ko;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    .line 10
    iget-object v4, v2, Lcom/android/tools/r8/internal/M3;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/L3;

    if-nez v4, :cond_1

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/internal/M3;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    iget v2, v1, Lcom/android/tools/r8/internal/Ko;->g:I

    iput v2, v4, Lcom/android/tools/r8/internal/L3;->a:I

    .line 13
    iget-wide v2, v1, Lcom/android/tools/r8/internal/Ko;->h:J

    iput-wide v2, v4, Lcom/android/tools/r8/internal/L3;->b:J

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ko;->i:[S

    iput-object v1, v4, Lcom/android/tools/r8/internal/L3;->c:[S

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/N8;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->g:Lcom/android/tools/r8/internal/N8;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v0, v0

    return v0
.end method

.method public final f(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object p1, v0, p1

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/internal/Iq;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/Iq;

    .line 5
    iget-short p1, p1, Lcom/android/tools/r8/internal/To;->f:S

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->a:Lcom/android/tools/r8/graph/J0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/B60;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ks;->j:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method
