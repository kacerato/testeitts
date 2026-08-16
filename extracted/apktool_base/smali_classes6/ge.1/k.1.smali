.class public Lge/k;
.super LWd/k;
.source "SourceFile"

# interfaces
.implements Lee/k;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/k$b;,
        Lge/k$d;,
        Lge/k$c;,
        Lge/k$f;,
        Lge/k$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWd/k;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LWd/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LWd/k;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFCD)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, LWd/k;-><init>(IFCD)V

    return-void
.end method

.method public constructor <init>(Lee/k;)V
    .locals 4

    .line 8
    invoke-interface {p1}, Lee/k;->size()I

    move-result v0

    invoke-direct {p0, v0}, LWd/k;-><init>(I)V

    .line 9
    instance-of v0, p1, Lge/k;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lge/k;

    .line 11
    iget v1, v0, LWd/H;->d:F

    iput v1, p0, LWd/H;->d:F

    .line 12
    iget-char v1, v0, LWd/k;->r:C

    iput-char v1, p0, LWd/k;->r:C

    .line 13
    iget-wide v2, v0, LWd/k;->s:D

    iput-wide v2, p0, LWd/k;->s:D

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, LWd/k;->q:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 15
    :cond_0
    iget-wide v0, p0, LWd/k;->s:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Lge/k;->v:[D

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, LWd/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lge/k;->jf(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lge/k;->l6(Lee/k;)V

    return-void
.end method

.method public constructor <init>([C[D)V
    .locals 5

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LWd/k;-><init>(I)V

    .line 6
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget-char v2, p1, v1

    aget-wide v3, p2, v1

    invoke-virtual {p0, v2, v3, v4}, Lge/k;->B4(CD)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic sf(Lge/k;)C
    .locals 0

    iget-char p0, p0, LWd/k;->r:C

    return p0
.end method

.method public static synthetic tf(Lge/k;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic uf(Lge/k;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic vf(Lge/k;)D
    .locals 2

    iget-wide v0, p0, LWd/k;->s:D

    return-wide v0
.end method

.method public static synthetic wf(Lge/k;)D
    .locals 2

    iget-wide v0, p0, LWd/k;->s:D

    return-wide v0
.end method

.method public static synthetic xf(Lge/k;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic yf(Lge/k;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method


# virtual methods
.method public A9(CD)D
    .locals 1

    invoke-virtual {p0, p1}, LWd/k;->pf(C)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lge/k;->v:[D

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lge/k;->zf(CDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public B4(CD)D
    .locals 1

    invoke-virtual {p0, p1}, LWd/k;->pf(C)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lge/k;->zf(CDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public C(C)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/k;->b1(C)Z

    move-result p1

    return p1
.end method

.method public C5(CDD)D
    .locals 2

    invoke-virtual {p0, p1}, LWd/k;->pf(C)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p4, p0, Lge/k;->v:[D

    aget-wide v0, p4, p1

    add-double/2addr p2, v0

    aput-wide p2, p4, p1

    const/4 v0, 0x0

    move-wide p4, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lge/k;->v:[D

    aput-wide p4, p2, p1

    :goto_0
    iget-object p2, p0, LWd/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/k;->t:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-wide p4
.end method

.method public D0(C)Z
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, v0, v1}, Lge/k;->Ud(CD)Z

    move-result p1

    return p1
.end method

.method public Hd(Lhe/l;)Z
    .locals 7

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/k;->q:[C

    iget-object v2, p0, Lge/k;->v:[D

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-char v3, v1, v4

    aget-wide v5, v2, v4

    invoke-interface {p1, v3, v5, v6}, Lhe/l;->a(CD)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    return v5
.end method

.method public I(Lhe/z;)Z
    .locals 6

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/k;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, Lhe/z;->a(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v4
.end method

.method public M8(Lhe/l;)Z
    .locals 9

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/k;->q:[C

    iget-object v2, p0, Lge/k;->v:[D

    invoke-virtual {p0}, LWd/H;->kf()V

    const/4 v3, 0x1

    :try_start_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_1

    aget-byte v4, v0, v6

    if-ne v4, v3, :cond_0

    aget-char v4, v1, v6

    aget-wide v7, v2, v6

    invoke-interface {p1, v4, v7, v8}, Lhe/l;->a(CD)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lge/k;->hf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    :cond_0
    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, LWd/H;->ff(Z)V

    return v5

    :goto_1
    invoke-virtual {p0, v3}, LWd/H;->ff(Z)V

    throw p1
.end method

.method public T(D)Z
    .locals 7

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/k;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-wide v5, v1, v3

    cmpl-double v2, p1, v5

    if-nez v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public Ud(CD)Z
    .locals 3

    invoke-virtual {p0, p1}, LWd/k;->nf(C)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lge/k;->v:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public V([C)[C
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [C

    :cond_0
    iget-object v0, p0, LWd/k;->q:[C

    iget-object v1, p0, LWd/c0;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v1, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-char v5, v0, v4

    aput-char v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public b(C)D
    .locals 3

    iget-wide v0, p0, LWd/k;->s:D

    invoke-virtual {p0, p1}, LWd/k;->nf(C)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/k;->v:[D

    aget-wide v1, v0, p1

    invoke-virtual {p0, p1}, Lge/k;->hf(I)V

    move-wide v0, v1

    :cond_0
    return-wide v0
.end method

.method public b0([D)[D
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [D

    :cond_0
    iget-object v0, p0, Lge/k;->v:[D

    iget-object v1, p0, LWd/c0;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v1, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public clear()V
    .locals 6

    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/k;->q:[C

    array-length v1, v0

    iget-char v2, p0, LWd/k;->r:C

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    iget-object v0, p0, Lge/k;->v:[D

    array-length v1, v0

    iget-wide v4, p0, LWd/k;->s:D

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    instance-of v0, p1, Lee/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/k;

    invoke-interface {p1}, Lee/k;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/k;->v:[D

    iget-object v2, p0, LWd/c0;->l:[B

    invoke-virtual {p0}, LWd/k;->i()D

    move-result-wide v3

    invoke-interface {p1}, Lee/k;->i()D

    move-result-wide v5

    array-length v7, v0

    :goto_0
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x1

    if-lez v7, :cond_3

    aget-byte v7, v2, v8

    if-ne v7, v9, :cond_2

    iget-object v7, p0, LWd/k;->q:[C

    aget-char v7, v7, v8

    invoke-interface {p1, v7}, Lee/k;->o0(C)D

    move-result-wide v9

    aget-wide v11, v0, v8

    cmpl-double v7, v11, v9

    if-eqz v7, :cond_2

    cmpl-double v7, v11, v3

    if-eqz v7, :cond_2

    cmpl-double v7, v9, v5

    if-eqz v7, :cond_2

    return v1

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    return v9
.end method

.method public gf(I)V
    .locals 7

    iget-object v0, p0, LWd/k;->q:[C

    array-length v1, v0

    iget-object v2, p0, Lge/k;->v:[D

    iget-object v3, p0, LWd/c0;->l:[B

    new-array v4, p1, [C

    iput-object v4, p0, LWd/k;->q:[C

    new-array v4, p1, [D

    iput-object v4, p0, Lge/k;->v:[D

    new-array p1, p1, [B

    iput-object p1, p0, LWd/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-char v1, v0, p1

    invoke-virtual {p0, v1}, LWd/k;->pf(C)I

    move-result v1

    iget-object v4, p0, Lge/k;->v:[D

    aget-wide v5, v2, p1

    aput-wide v5, v4, v1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/k;->v:[D

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, LWd/k;->q:[C

    aget-char v1, v1, v3

    invoke-static {v1}, LVd/b;->d(I)I

    move-result v1

    iget-object v4, p0, Lge/k;->v:[D

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, LVd/b;->b(D)I

    move-result v4

    xor-int/2addr v1, v4

    add-int/2addr v2, v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hf(I)V
    .locals 3

    iget-object v0, p0, Lge/k;->v:[D

    iget-wide v1, p0, LWd/k;->s:D

    aput-wide v1, v0, p1

    invoke-super {p0, p1}, LWd/k;->hf(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, LWd/H;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/m;
    .locals 1

    new-instance v0, Lge/k$b;

    invoke-direct {v0, p0, p0}, Lge/k$b;-><init>(Lge/k;Lge/k;)V

    return-object v0
.end method

.method public j()[C
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, LWd/k;->q:[C

    iget-object v2, p0, LWd/c0;->l:[B

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-byte v3, v2, v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-char v6, v1, v5

    aput-char v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/k;->jf(I)I

    move-result p1

    new-array v0, p1, [D

    iput-object v0, p0, Lge/k;->v:[D

    return p1
.end method

.method public k()LSd/e;
    .locals 1

    new-instance v0, Lge/k$f;

    invoke-direct {v0, p0}, Lge/k$f;-><init>(Lge/k;)V

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    new-instance v0, Lge/k$e;

    invoke-direct {v0, p0}, Lge/k$e;-><init>(Lge/k;)V

    return-object v0
.end method

.method public l6(Lee/k;)V
    .locals 3

    invoke-interface {p1}, Lee/k;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->cf(I)V

    invoke-interface {p1}, Lee/k;->iterator()LZd/m;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LZd/a;->g()V

    invoke-interface {p1}, LZd/m;->key()C

    move-result v0

    invoke-interface {p1}, LZd/m;->value()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lge/k;->B4(CD)D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o0(C)D
    .locals 3

    invoke-virtual {p0, p1}, LWd/k;->nf(C)I

    move-result p1

    if-gez p1, :cond_0

    iget-wide v0, p0, LWd/k;->s:D

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/k;->v:[D

    aget-wide v1, v0, p1

    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method public p(LUd/c;)V
    .locals 6

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/k;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, LUd/c;->a(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->cf(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lge/k;->B4(CD)D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, LWd/k;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/k;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lge/k;->B4(CD)D

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/k$a;

    invoke-direct {v1, p0, v0}, Lge/k$a;-><init>(Lge/k;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/k;->Hd(Lhe/l;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 8

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lge/k;->v:[D

    iget-object v2, p0, LWd/c0;->l:[B

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-byte v3, v2, v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-wide v6, v1, v5

    aput-wide v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, LWd/k;->writeExternal(Ljava/io/ObjectOutput;)V

    iget v0, p0, LWd/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, LWd/c0;->l:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LWd/k;->q:[C

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

    iget-object v0, p0, Lge/k;->v:[D

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y(Lhe/q;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/k;->g1(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public final zf(CDI)D
    .locals 3

    iget-wide v0, p0, LWd/k;->s:D

    const/4 p1, 0x1

    if-gez p4, :cond_0

    neg-int p4, p4

    sub-int/2addr p4, p1

    iget-object p1, p0, Lge/k;->v:[D

    aget-wide v0, p1, p4

    const/4 p1, 0x0

    :cond_0
    iget-object v2, p0, Lge/k;->v:[D

    aput-wide p2, v2, p4

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LWd/k;->t:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-wide v0
.end method
