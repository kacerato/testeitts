.class public final Lcom/android/tools/r8/internal/cr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/W5;

.field public final b:Lcom/android/tools/r8/internal/ar0;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/W5;

.field public e:Z

.field public f:Z

.field public g:Lcom/android/tools/r8/internal/dI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ar0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cr0;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cr0;->f:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    iput-object p1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    return-void
.end method

.method public static synthetic a([II)Z
    .locals 0

    .line 23
    aget p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/function/IntPredicate;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/cr0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/internal/ar0;->l:[I

    .line 12
    aget v2, v2, v1

    .line 13
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    .line 16
    iget v1, v1, Lcom/android/tools/r8/internal/ar0;->m:I

    .line 17
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 21
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    goto :goto_1

    .line 22
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/O71;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/O71;-><init>([I)V

    return-object v1
.end method

.method public final a(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/cr0;->c:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 4
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez p1, :cond_4

    .line 5
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 11

    sget-boolean v0, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/cr0;->c:I

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cr0;->a()Ljava/util/function/IntPredicate;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/CH;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iget-object v7, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v8

    sget-object v9, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10, v8, v9}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v6, p0, Lcom/android/tools/r8/internal/cr0;->f:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/CH;)V

    iget v1, p0, Lcom/android/tools/r8/internal/cr0;->c:I

    if-ltz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-eqz v1, :cond_a

    iget v1, v1, Lcom/android/tools/r8/internal/dI;->g:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v4

    if-ne v1, v4, :cond_a

    :goto_3
    sget-boolean v0, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/tools/r8/internal/cr0;->c:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->d:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    new-instance v1, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    return-void

    :cond_a
    new-array v1, v0, [I

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v2

    check-cast v4, Lcom/android/tools/r8/internal/X;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v4

    aput v6, v1, v4

    goto :goto_5

    :cond_b
    move v2, v6

    :goto_6
    if-ge v2, v0, :cond_c

    aget v4, v1, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    add-int/2addr v4, v5

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_7
    if-ltz v2, :cond_e

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/cr0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v2

    goto :goto_8

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-eqz v2, :cond_f

    iget v2, v2, Lcom/android/tools/r8/internal/dI;->g:I

    goto :goto_9

    :cond_f
    move v2, v3

    :goto_9
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    sub-int/2addr v2, v4

    new-array v4, v2, [I

    move v5, v3

    move v6, v5

    :goto_a
    if-ge v5, v0, :cond_13

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/cr0;->a(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v7, v7, v5

    aget v8, v1, v7

    sub-int/2addr v7, v8

    aput v7, v4, v6

    sget-boolean v8, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/android/tools/r8/internal/cr0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_b
    add-int/lit8 v6, v6, 0x1

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_13
    iget-boolean v5, p0, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    iget v5, v5, Lcom/android/tools/r8/internal/ar0;->m:I

    aget v1, v1, v5

    :goto_c
    sub-int/2addr v5, v1

    goto :goto_d

    :cond_14
    iget-object v5, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v5, v5, v0

    aget v1, v1, v5

    goto :goto_c

    :goto_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v1

    new-array v2, v2, [I

    move v6, v3

    move v7, v6

    :goto_e
    if-ge v6, v0, :cond_16

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/cr0;->a(I)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v8, v8, v6

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    new-instance v0, Lcom/android/tools/r8/internal/tI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    goto :goto_11

    :cond_17
    sget-boolean v1, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_f

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    :goto_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->O0()Lcom/android/tools/r8/internal/lq0;

    move-result-object v1

    new-array v2, v2, [Lcom/android/tools/r8/graph/L2;

    move v6, v3

    move v7, v6

    :goto_10
    if-ge v6, v0, :cond_1b

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/cr0;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v1, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    aget-object v8, v8, v6

    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1b
    new-instance v0, Lcom/android/tools/r8/internal/lq0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/tools/r8/internal/lq0;-><init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/graph/L2;[II)V

    :goto_11
    iget-object v1, p0, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method
