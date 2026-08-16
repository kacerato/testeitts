.class public final Lcom/android/tools/r8/internal/rn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fB;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Lcom/android/tools/r8/internal/Yx0;

.field public final d:Lcom/android/tools/r8/internal/Yx0;

.field public final e:[Ljava/util/BitSet;

.field public final f:Ljava/util/BitSet;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final synthetic i:Lcom/android/tools/r8/internal/sn0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/sn0;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->b:Ljava/util/IdentityHashMap;

    new-instance p1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    new-instance p1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->g:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rn0;->h:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    iget-object p1, p2, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p2, p1, [Ljava/util/BitSet;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/rn0;->f:Ljava/util/BitSet;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    instance-of p0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    instance-of p0, p0, Lcom/android/tools/r8/internal/bY;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->b:Ljava/util/IdentityHashMap;

    sget v1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/F1;

    return-object p1
.end method

.method public final a(II)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 170
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aput-object v0, v1, p2

    .line 171
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;)V
    .locals 9

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    .line 4
    sget v2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v6

    .line 9
    iget-object v7, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v7, v7, v1

    if-nez v7, :cond_0

    move v6, v4

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_1

    .line 11
    iget-object v6, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/sn0;->e:Lcom/android/tools/r8/internal/H1;

    .line 12
    iget-object v7, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 13
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/android/tools/r8/internal/rn0;->j:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/sn0;->e:Lcom/android/tools/r8/internal/H1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_4
    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sL;)V
    .locals 9

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 93
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    iget-object v4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 98
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 100
    iget-wide v4, v0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v4

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    .line 103
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_14

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void

    .line 107
    :cond_1
    iget-object v4, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    sget-object v5, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v6

    :goto_2
    if-eqz v4, :cond_11

    .line 110
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 111
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v2

    if-eqz v2, :cond_11

    .line 112
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v0, v2, v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_14

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void

    .line 118
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    .line 119
    iget-object v5, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 120
    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 121
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 122
    iget-wide v5, v0, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 123
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 124
    iget-wide v7, v0, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 125
    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    sub-long/2addr v5, v7

    .line 126
    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    .line 128
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v0, v2, v0

    if-nez v0, :cond_8

    goto :goto_5

    .line 129
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    :goto_5
    if-nez v3, :cond_14

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 131
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void

    .line 132
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object p1

    .line 134
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 137
    iget-object v4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 138
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 139
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 140
    iget-wide v2, v0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v2

    .line 141
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->g:Ljava/util/IdentityHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/ls1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ls1;-><init>()V

    .line 142
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/wH;

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 144
    sget-boolean v0, Lcom/android/tools/r8/internal/rn0;->j:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 145
    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void

    .line 147
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 148
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O0()Lcom/android/tools/r8/internal/lq0;

    move-result-object p1

    .line 149
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 153
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->P()Lcom/android/tools/r8/internal/Om0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Om0;->j0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 154
    iget-object v4, p0, Lcom/android/tools/r8/internal/rn0;->h:Ljava/util/IdentityHashMap;

    new-instance v5, Lcom/android/tools/r8/internal/ms1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ms1;-><init>()V

    .line 155
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 156
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    goto :goto_7

    .line 157
    :cond_d
    instance-of v2, v2, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v2, :cond_e

    .line 158
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    goto :goto_7

    :cond_e
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_11

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 160
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    return-void

    .line 161
    :cond_f
    sget-boolean v2, Lcom/android/tools/r8/internal/rn0;->j:Z

    if-nez v2, :cond_11

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_11
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 163
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    .line 164
    iget-object v4, p0, Lcom/android/tools/r8/internal/rn0;->e:[Ljava/util/BitSet;

    aget-object v2, v4, v2

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_a

    .line 165
    :cond_13
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    :goto_a
    if-nez v2, :cond_12

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/rn0;->a(II)V

    .line 167
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/U6;Ljava/util/Map$Entry;)V
    .locals 7

    .line 41
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p4

    .line 44
    iget-wide v1, p4, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 45
    new-instance p4, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 46
    sget-boolean p1, Lcom/android/tools/r8/internal/rn0;->j:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 48
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p4

    .line 49
    iget-object p4, p4, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 50
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 52
    new-instance p4, Lcom/android/tools/r8/internal/is1;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/is1;-><init>()V

    invoke-interface {p1, p4}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/zE;

    .line 53
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    instance-of v3, p4, Lcom/android/tools/r8/internal/hj;

    if-nez v3, :cond_3

    .line 55
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 56
    :cond_3
    sget-boolean v3, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 57
    new-instance v3, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 58
    iget-object v4, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v6

    .line 60
    invoke-interface {v4, v5, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 61
    iput-object v4, v3, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 62
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    .line 63
    iput-object p4, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 64
    iput-wide v1, v3, Lcom/android/tools/r8/internal/ph;->d:J

    .line 65
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p4

    .line 66
    invoke-interface {p1, p4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 68
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/U6;->e()V

    return-void

    .line 69
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p4

    .line 71
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p4

    .line 72
    new-instance v3, Lcom/android/tools/r8/internal/js1;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/js1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p4, v3}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    .line 74
    iget-object v3, v3, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    iget-object v4, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ks1;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/ks1;-><init>(Lcom/android/tools/r8/internal/rn0;)V

    .line 76
    sget-object v6, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 77
    sget-boolean p1, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 78
    new-instance p1, Lcom/android/tools/r8/internal/ph;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 79
    iput-object v0, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 80
    iput-wide v1, p1, Lcom/android/tools/r8/internal/ph;->d:J

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 82
    invoke-interface {p4, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 83
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/U6;->e()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 6

    .line 23
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/U6;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 26
    iget-object v4, p0, Lcom/android/tools/r8/internal/rn0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ns1;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/ns1;-><init>(Lcom/android/tools/r8/internal/rn0;)V

    .line 27
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/os1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/os1;-><init>()V

    .line 28
    invoke-static {v5}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ps1;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/android/tools/r8/internal/ps1;-><init>(Lcom/android/tools/r8/internal/rn0;Ljava/util/List;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/U6;)V

    .line 29
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->e()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    .line 33
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 34
    iget-object v3, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_1
    return v0
.end method

.method public final synthetic a(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 40
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/F1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/internal/dj;

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/F8;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ks1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/ks1;-><init>(Lcom/android/tools/r8/internal/rn0;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/rn0;->j:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->i:Lcom/android/tools/r8/internal/sn0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/sn0;->e:Lcom/android/tools/r8/internal/H1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/rn0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->l0()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/sL;)V

    :cond_4
    return-void
.end method
