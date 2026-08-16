.class public Lge/h;
.super LWd/h;
.source "SourceFile"

# interfaces
.implements Lee/h;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/h$b;,
        Lge/h$d;,
        Lge/h$c;,
        Lge/h$f;,
        Lge/h$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWd/h;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LWd/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LWd/h;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFBS)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LWd/h;-><init>(IFBS)V

    return-void
.end method

.method public constructor <init>(Lee/h;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Lee/h;->size()I

    move-result v0

    invoke-direct {p0, v0}, LWd/h;-><init>(I)V

    .line 9
    instance-of v0, p1, Lge/h;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lge/h;

    .line 11
    iget v1, v0, LWd/H;->d:F

    iput v1, p0, LWd/H;->d:F

    .line 12
    iget-byte v1, v0, LWd/h;->r:B

    iput-byte v1, p0, LWd/h;->r:B

    .line 13
    iget-short v0, v0, LWd/h;->s:S

    iput-short v0, p0, LWd/h;->s:S

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, LWd/h;->q:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 15
    :cond_0
    iget-short v0, p0, LWd/h;->s:S

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lge/h;->v:[S

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([SS)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, LWd/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lge/h;->jf(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lge/h;->Lc(Lee/h;)V

    return-void
.end method

.method public constructor <init>([B[S)V
    .locals 4

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LWd/h;-><init>(I)V

    .line 6
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget-byte v2, p1, v1

    aget-short v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lge/h;->s4(BS)S

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic sf(Lge/h;)B
    .locals 0

    iget-byte p0, p0, LWd/h;->r:B

    return p0
.end method

.method public static synthetic tf(Lge/h;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic uf(Lge/h;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic vf(Lge/h;)S
    .locals 0

    iget-short p0, p0, LWd/h;->s:S

    return p0
.end method

.method public static synthetic wf(Lge/h;)S
    .locals 0

    iget-short p0, p0, LWd/h;->s:S

    return p0
.end method

.method public static synthetic xf(Lge/h;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic yf(Lge/h;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method


# virtual methods
.method public Cd(BS)Z
    .locals 2

    invoke-virtual {p0, p1}, LWd/h;->nf(B)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lge/h;->v:[S

    aget-short v1, v0, p1

    add-int/2addr v1, p2

    int-to-short p2, v1

    aput-short p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public D(B)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/h;->a1(B)Z

    move-result p1

    return p1
.end method

.method public Dd(Lhe/i;)Z
    .locals 6

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/h;->q:[B

    iget-object v2, p0, Lge/h;->v:[S

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, v1, v4

    aget-short v5, v2, v4

    invoke-interface {p1, v3, v5}, Lhe/i;->a(BS)Z

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

.method public E0(B)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lge/h;->Cd(BS)Z

    move-result p1

    return p1
.end method

.method public L(S)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/h;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    if-ne p1, v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public Lc(Lee/h;)V
    .locals 2

    invoke-interface {p1}, Lee/h;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->cf(I)V

    invoke-interface {p1}, Lee/h;->iterator()LZd/j;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LZd/a;->g()V

    invoke-interface {p1}, LZd/j;->key()B

    move-result v0

    invoke-interface {p1}, LZd/j;->value()S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lge/h;->s4(BS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N(Lhe/t0;)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/h;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    invoke-interface {p1, v2}, Lhe/t0;->a(S)Z

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

.method public P7(Lhe/i;)Z
    .locals 8

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/h;->q:[B

    iget-object v2, p0, Lge/h;->v:[S

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

    aget-byte v4, v1, v6

    aget-short v7, v2, v6

    invoke-interface {p1, v4, v7}, Lhe/i;->a(BS)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lge/h;->hf(I)V
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

.method public X([B)[B
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, LWd/h;->q:[B

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

    aget-byte v5, v0, v4

    aput-byte v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/h;->q:[B

    array-length v1, v0

    iget-byte v2, p0, LWd/h;->r:B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lge/h;->v:[S

    array-length v1, v0

    iget-short v2, p0, LWd/h;->s:S

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([SIIS)V

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lee/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/h;

    invoke-interface {p1}, Lee/h;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/h;->v:[S

    iget-object v2, p0, LWd/c0;->l:[B

    invoke-virtual {p0}, LWd/h;->i()S

    move-result v3

    invoke-interface {p1}, Lee/h;->i()S

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, LWd/h;->q:[B

    aget-byte v5, v5, v6

    invoke-interface {p1, v5}, Lee/h;->s0(B)S

    move-result v5

    aget-short v7, v0, v6

    if-eq v7, v5, :cond_2

    if-eq v7, v3, :cond_2

    if-eq v5, v4, :cond_2

    return v1

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    return v7
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/h;->q:[B

    array-length v1, v0

    iget-object v2, p0, Lge/h;->v:[S

    iget-object v3, p0, LWd/c0;->l:[B

    new-array v4, p1, [B

    iput-object v4, p0, LWd/h;->q:[B

    new-array v4, p1, [S

    iput-object v4, p0, Lge/h;->v:[S

    new-array p1, p1, [B

    iput-object p1, p0, LWd/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-byte v1, v0, p1

    invoke-virtual {p0, v1}, LWd/h;->pf(B)I

    move-result v1

    iget-object v4, p0, Lge/h;->v:[S

    aget-short v5, v2, p1

    aput-short v5, v4, v1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/h;->v:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, LWd/h;->q:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, LVd/b;->d(I)I

    move-result v1

    iget-object v4, p0, Lge/h;->v:[S

    aget-short v4, v4, v3

    invoke-static {v4}, LVd/b;->d(I)I

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
    .locals 2

    iget-object v0, p0, Lge/h;->v:[S

    iget-short v1, p0, LWd/h;->s:S

    aput-short v1, v0, p1

    invoke-super {p0, p1}, LWd/h;->hf(I)V

    return-void
.end method

.method public i0([S)[S
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [S

    :cond_0
    iget-object v0, p0, Lge/h;->v:[S

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

    aget-short v5, v0, v4

    aput-short v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public ia(BS)S
    .locals 1

    invoke-virtual {p0, p1}, LWd/h;->pf(B)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lge/h;->v:[S

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget-short p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lge/h;->zf(BSI)S

    move-result p1

    return p1
.end method

.method public ic(BSS)S
    .locals 1

    invoke-virtual {p0, p1}, LWd/h;->pf(B)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lge/h;->v:[S

    aget-short v0, p3, p1

    add-int/2addr v0, p2

    int-to-short p2, v0

    aput-short p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lge/h;->v:[S

    aput-short p3, p2, p1

    :goto_0
    iget-object p2, p0, LWd/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/h;->t:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return p3
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

.method public iterator()LZd/j;
    .locals 1

    new-instance v0, Lge/h$b;

    invoke-direct {v0, p0, p0}, Lge/h$b;-><init>(Lge/h;Lge/h;)V

    return-object v0
.end method

.method public j()[B
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LWd/h;->q:[B

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

    aget-byte v6, v1, v5

    aput-byte v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/h;->jf(I)I

    move-result p1

    new-array v0, p1, [S

    iput-object v0, p0, Lge/h;->v:[S

    return p1
.end method

.method public k()LSd/i;
    .locals 1

    new-instance v0, Lge/h$f;

    invoke-direct {v0, p0}, Lge/h$f;-><init>(Lge/h;)V

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    new-instance v0, Lge/h$e;

    invoke-direct {v0, p0}, Lge/h$e;-><init>(Lge/h;)V

    return-object v0
.end method

.method public m(B)S
    .locals 1

    iget-short v0, p0, LWd/h;->s:S

    invoke-virtual {p0, p1}, LWd/h;->nf(B)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/h;->v:[S

    aget-short v0, v0, p1

    invoke-virtual {p0, p1}, Lge/h;->hf(I)V

    :cond_0
    return v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Short;",
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

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v1, v0}, Lge/h;->s4(BS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(LUd/h;)V
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/h;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    invoke-interface {p1, v2}, LUd/h;->a(S)S

    move-result v2

    aput-short v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, LWd/h;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/h;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-virtual {p0, v0, v2}, Lge/h;->s4(BS)S

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s0(B)S
    .locals 1

    invoke-virtual {p0, p1}, LWd/h;->nf(B)I

    move-result p1

    if-gez p1, :cond_0

    iget-short p1, p0, LWd/h;->s:S

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/h;->v:[S

    aget-short p1, v0, p1

    :goto_0
    return p1
.end method

.method public s4(BS)S
    .locals 1

    invoke-virtual {p0, p1}, LWd/h;->pf(B)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lge/h;->zf(BSI)S

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/h$a;

    invoke-direct {v1, p0, v0}, Lge/h$a;-><init>(Lge/h;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/h;->Dd(Lhe/i;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [S

    iget-object v1, p0, Lge/h;->v:[S

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

    aget-short v6, v1, v5

    aput-short v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/h;->V0(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, LWd/h;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, LWd/h;->q:[B

    aget-byte v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lge/h;->v:[S

    aget-short v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zf(BSI)S
    .locals 2

    iget-short p1, p0, LWd/h;->s:S

    const/4 v0, 0x1

    if-gez p3, :cond_0

    neg-int p1, p3

    add-int/lit8 p3, p1, -0x1

    iget-object p1, p0, Lge/h;->v:[S

    aget-short p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lge/h;->v:[S

    aput-short p2, v1, p3

    if-eqz v0, :cond_1

    iget-boolean p2, p0, LWd/h;->t:Z

    invoke-virtual {p0, p2}, LWd/H;->ef(Z)V

    :cond_1
    return p1
.end method
