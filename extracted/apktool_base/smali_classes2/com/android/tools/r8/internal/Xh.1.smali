.class public final Lcom/android/tools/r8/internal/Xh;
.super Lcom/android/tools/r8/internal/sr0;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final j:Lcom/android/tools/r8/graph/l1;

.field public final k:I

.field public final l:Lcom/android/tools/r8/graph/H5;

.field public final m:Lcom/android/tools/r8/internal/DG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0, p2, p5}, Lcom/android/tools/r8/internal/sr0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Xh;->j:Lcom/android/tools/r8/graph/l1;

    iput p4, p0, Lcom/android/tools/r8/internal/Xh;->k:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xh;->l:Lcom/android/tools/r8/graph/H5;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    return-void
.end method

.method public static synthetic a(I[ILcom/android/tools/r8/internal/IH;[ILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p2

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(I[II[I)V

    return-void
.end method

.method public static b(IILcom/android/tools/r8/internal/aB;)V
    .locals 4

    int-to-long v0, p1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/qh;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, p0, v3, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 7
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/k21;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/k21;-><init>(Lcom/android/tools/r8/internal/Xh;Lcom/android/tools/r8/graph/A2;)V

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/sr0;->g:Ljava/util/function/Predicate;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/aB;)V
    .locals 10

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p2, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    .line 15
    iget v3, v3, Lcom/android/tools/r8/internal/DG;->c:I

    if-le v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 16
    :goto_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/tools/r8/internal/Xh;->k:I

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 17
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    .line 18
    new-instance v8, Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    iget-object v4, p2, Lcom/android/tools/r8/internal/aB;->s:Lcom/android/tools/r8/internal/xw0;

    .line 20
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_8

    .line 21
    iget-object v2, p2, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_4
    if-ge v4, v0, :cond_5

    .line 23
    iget-object v5, p2, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 25
    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    .line 26
    iget v4, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/qh;

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v5

    invoke-virtual {p2, v4, v2, v5}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 30
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 31
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_8

    .line 32
    sget-boolean v2, Lcom/android/tools/r8/internal/Xh;->n:Z

    if-nez v2, :cond_7

    .line 33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 34
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v2, v4, :cond_6

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_7
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_8
    sget-boolean v0, Lcom/android/tools/r8/internal/Xh;->n:Z

    if-nez v0, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    if-ne v0, v1, :cond_9

    goto :goto_7

    .line 39
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_a
    :goto_7
    sget-object v5, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, p2

    move-object v6, p1

    .line 42
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/IH;[ILcom/android/tools/r8/internal/aB;)Z
    .locals 4

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p2

    .line 7
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    aget v3, p3, v1

    .line 8
    invoke-virtual {p4, p1, v3, v2}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p4, p1, p2, v2}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    return v2
.end method

.method public final b(ILcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/sr0;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/sr0;->b:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/sr0;->b:I

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh;->j:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->b(IILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final h()V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    .line 9
    iget v0, v0, Lcom/android/tools/r8/internal/DG;->c:I

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh;->l:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/tools/r8/internal/Xh;->k:I

    sub-int/2addr v1, v2

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/sr0;->i:Z

    if-nez v2, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/sr0;->c:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/sr0;->c:[I

    aget v1, v2, v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xh;->j:Lcom/android/tools/r8/graph/l1;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Xh;->h(I)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 16
    new-array v2, v0, [I

    .line 17
    new-array v0, v0, [I

    .line 18
    new-instance v3, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 20
    new-instance v5, Lcom/android/tools/r8/internal/h21;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/android/tools/r8/internal/h21;-><init>(I[ILcom/android/tools/r8/internal/IH;[I)V

    new-instance v1, Lcom/android/tools/r8/internal/i21;

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/android/tools/r8/internal/i21;-><init>(Lcom/android/tools/r8/internal/Xh;ILcom/android/tools/r8/internal/IH;[I)V

    .line 21
    iget-object v4, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v4, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/nG;

    .line 24
    new-instance v4, Lcom/android/tools/r8/internal/qG;

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    .line 26
    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    const/4 v1, 0x0

    .line 27
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v5

    .line 29
    invoke-interface {v5}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v6

    .line 30
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_5

    .line 31
    iget-object v6, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 32
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/IH;->d(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v1, -0x1

    .line 33
    aput v6, v2, v7

    .line 34
    iget-object v6, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 35
    aput v6, v0, v7

    .line 36
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Xh;->a(Lcom/android/tools/r8/graph/A2;)V

    .line 37
    new-instance v5, Lcom/android/tools/r8/graph/ye;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/ye;-><init>()V

    sget-object v6, Lcom/android/tools/r8/internal/sr0;->h:Ljava/util/function/Predicate;

    .line 38
    iget-object v7, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v5, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Xh;->n:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xh;->j:Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/l21;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/l21;-><init>(Lcom/android/tools/r8/internal/Xh;I)V

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/sr0;->g:Ljava/util/function/Predicate;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xh;->m:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh;->j:Lcom/android/tools/r8/graph/l1;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    iget v2, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/sr0;->a:I

    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v1

    new-instance v3, Lcom/android/tools/r8/internal/j21;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/j21;-><init>(II)V

    sget-object v1, Lcom/android/tools/r8/internal/sr0;->g:Ljava/util/function/Predicate;

    iget-object v4, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Xh;->h(I)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Xh;->a(Lcom/android/tools/r8/graph/A2;)V

    new-instance v0, Lcom/android/tools/r8/graph/ye;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ye;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/sr0;->h:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sr0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/sr0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
