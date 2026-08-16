.class public Lcom/android/tools/r8/internal/tI;
.super Lcom/android/tools/r8/internal/ar0;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;[I[II)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/ar0;-><init>(Lcom/android/tools/r8/internal/xw0;[II)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    sget-boolean p1, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez p1, :cond_b

    if-nez p1, :cond_2

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result p4

    if-ge p3, p4, :cond_2

    sget-boolean p4, Lcom/android/tools/r8/internal/ar0;->n:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget p4, p4, p3

    iget v0, p0, Lcom/android/tools/r8/internal/ar0;->m:I

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    if-nez p1, :cond_4

    array-length p4, p2

    if-lt p4, p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-nez p1, :cond_6

    array-length p4, p2

    const v0, 0xffff

    if-gt p4, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez p1, :cond_8

    array-length p1, p2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result p2

    if-ne p1, p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length p2, p1

    if-ge p3, p2, :cond_b

    sget-boolean p2, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez p2, :cond_a

    add-int/lit8 p2, p3, -0x1

    aget p2, p1, p2

    aget p1, p1, p3

    if-ge p2, p1, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_b
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/uJ;[I)J
    .locals 10

    .line 28
    array-length v0, p1

    int-to-long v0, v0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x4

    if-eqz v2, :cond_0

    const-wide/16 v7, 0x8

    mul-long/2addr v0, v7

    goto :goto_0

    :cond_0
    mul-long/2addr v0, v5

    add-long/2addr v0, v3

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const/4 v7, 0x3

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto :goto_1

    :cond_1
    move v2, v7

    :goto_1
    int-to-long v8, v2

    add-long/2addr v0, v8

    .line 31
    invoke-static {p1}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 32
    sget-boolean v2, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez v2, :cond_3

    .line 33
    invoke-static {p1}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;J)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v8

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v2, :cond_5

    const-wide v2, 0xffffffffL

    cmp-long p1, v8, v2

    if-gtz p1, :cond_4

    goto :goto_3

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_3
    mul-long/2addr v8, v5

    goto :goto_4

    :cond_6
    mul-long/2addr v8, v3

    add-long/2addr v8, v5

    .line 38
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 v7, 0x10

    :cond_7
    int-to-long p0, v7

    add-long/2addr p0, v8

    cmp-long v2, p0, v8

    if-gez v2, :cond_9

    const-wide/32 p0, 0x7fffffff

    goto :goto_5

    :cond_8
    const-wide p0, 0x7fffffffffffffffL

    .line 39
    :cond_9
    :goto_5
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a([I)J
    .locals 4

    .line 26
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const/4 v2, 0x0

    aget p0, p0, v2

    int-to-long v2, p0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/android/tools/r8/internal/uJ;J)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0xffffffffL

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xffff

    :goto_0
    cmp-long p0, p1, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final M1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Z()Lcom/android/tools/r8/internal/tI;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/uJ;->b:Lcom/android/tools/r8/internal/uJ;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/tr;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/tr;-><init>(I)V

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/In;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/In;-><init>(Lcom/android/tools/r8/internal/tI;Lcom/android/tools/r8/internal/jp;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 11
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/ls;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ls;-><init>(I)V

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/In;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/In;-><init>(Lcom/android/tools/r8/internal/tI;Lcom/android/tools/r8/internal/jp;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tI;->x2()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tI;->w2()Lcom/android/tools/r8/internal/wH;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    array-length v4, v2

    new-array v4, v4, [I

    .line 18
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 19
    aget v5, v2, v1

    move-object v6, v3

    check-cast v6, Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 20
    iget-object v6, p1, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v5

    .line 21
    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/LS;

    invoke-direct {v1, v2, v4}, Lcom/android/tools/r8/internal/LS;-><init>([I[I)V

    .line 23
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xaa

    .line 25
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 10

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/android/tools/r8/internal/uJ;->d:Lcom/android/tools/r8/internal/uJ;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 57
    iget-object v3, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v5, v3, v4

    .line 58
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v3, v3, v6

    int-to-long v6, v5

    :goto_0
    int-to-long v8, v3

    cmp-long v8, v6, v8

    if-gtz v8, :cond_1

    .line 59
    iget-object v8, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v8, v8, v4

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 60
    iget-object v8, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v8, v8, v4

    .line 61
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_0

    .line 63
    :cond_1
    sget-boolean v2, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    if-ne v4, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_3
    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/Bb;

    sget-object v3, Lcom/android/tools/r8/internal/Bb$a;->c:Lcom/android/tools/r8/internal/Bb$a;

    filled-new-array {v5}, [I

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/android/tools/r8/internal/Bb;-><init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V

    invoke-virtual {p1, v2, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    .line 66
    array-length v5, v3

    :goto_3
    if-ge v4, v5, :cond_5

    aget v6, v3, v4

    .line 67
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 68
    :cond_5
    new-instance v2, Lcom/android/tools/r8/internal/Bb;

    sget-object v3, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    iget-object v4, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/android/tools/r8/internal/Bb;-><init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V

    invoke-virtual {p1, v2, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/uJ;)Z
    .locals 8

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    .line 41
    invoke-static {v0}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    .line 43
    sget-boolean v1, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez v1, :cond_1

    .line 44
    invoke-static {v0}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v2

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v0

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x4

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    const-wide v0, 0xffffffffL

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    mul-long/2addr v2, v6

    goto :goto_2

    :cond_4
    mul-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 49
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    .line 50
    array-length v0, v0

    int-to-long v0, v0

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    goto :goto_3

    :cond_5
    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    :goto_3
    cmp-long p1, v2, v0

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "          "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "          F -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/wH;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DG;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public x2()[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    return-object v0
.end method
