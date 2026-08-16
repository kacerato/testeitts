.class public Lge/d;
.super LWd/d;
.source "SourceFile"

# interfaces
.implements Lee/d;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/d$b;,
        Lge/d$d;,
        Lge/d$c;,
        Lge/d$f;,
        Lge/d$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWd/d;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LWd/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LWd/d;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFBF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LWd/d;-><init>(IFBF)V

    return-void
.end method

.method public constructor <init>(Lee/d;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Lee/d;->size()I

    move-result v0

    invoke-direct {p0, v0}, LWd/d;-><init>(I)V

    .line 9
    instance-of v0, p1, Lge/d;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lge/d;

    .line 11
    iget v1, v0, LWd/H;->d:F

    iput v1, p0, LWd/H;->d:F

    .line 12
    iget-byte v1, v0, LWd/d;->r:B

    iput-byte v1, p0, LWd/d;->r:B

    .line 13
    iget v0, v0, LWd/d;->s:F

    iput v0, p0, LWd/d;->s:F

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, LWd/d;->q:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 15
    :cond_0
    iget v0, p0, LWd/d;->s:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lge/d;->v:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, LWd/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lge/d;->jf(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lge/d;->d9(Lee/d;)V

    return-void
.end method

.method public constructor <init>([B[F)V
    .locals 4

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LWd/d;-><init>(I)V

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

    aget v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lge/d;->V3(BF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic sf(Lge/d;)B
    .locals 0

    iget-byte p0, p0, LWd/d;->r:B

    return p0
.end method

.method public static synthetic tf(Lge/d;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic uf(Lge/d;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic vf(Lge/d;)F
    .locals 0

    iget p0, p0, LWd/d;->s:F

    return p0
.end method

.method public static synthetic wf(Lge/d;)F
    .locals 0

    iget p0, p0, LWd/d;->s:F

    return p0
.end method

.method public static synthetic xf(Lge/d;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic yf(Lge/d;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/d;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

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

.method public D(B)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/d;->a1(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lge/d;->he(BF)Z

    move-result p1

    return p1
.end method

.method public U(F)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/d;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public V3(BF)F
    .locals 1

    invoke-virtual {p0, p1}, LWd/d;->pf(B)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lge/d;->zf(BFI)F

    move-result p1

    return p1
.end method

.method public X([B)[B
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, LWd/d;->q:[B

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

.method public X9(BF)F
    .locals 1

    invoke-virtual {p0, p1}, LWd/d;->pf(B)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lge/d;->v:[F

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lge/d;->zf(BFI)F

    move-result p1

    return p1
.end method

.method public c0([F)[F
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [F

    :cond_0
    iget-object v0, p0, Lge/d;->v:[F

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

    aget v5, v0, v4

    aput v5, p1, v3

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

    iget-object v0, p0, LWd/d;->q:[B

    array-length v1, v0

    iget-byte v2, p0, LWd/d;->r:B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lge/d;->v:[F

    array-length v1, v0

    iget v2, p0, LWd/d;->s:F

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public d9(Lee/d;)V
    .locals 2

    invoke-interface {p1}, Lee/d;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->cf(I)V

    invoke-interface {p1}, Lee/d;->iterator()LZd/e;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LZd/a;->g()V

    invoke-interface {p1}, LZd/e;->key()B

    move-result v0

    invoke-interface {p1}, LZd/e;->value()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lge/d;->V3(BF)F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Lee/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/d;

    invoke-interface {p1}, Lee/d;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/d;->v:[F

    iget-object v2, p0, LWd/c0;->l:[B

    invoke-virtual {p0}, LWd/d;->i()F

    move-result v3

    invoke-interface {p1}, Lee/d;->i()F

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, LWd/d;->q:[B

    aget-byte v5, v5, v6

    invoke-interface {p1, v5}, Lee/d;->s0(B)F

    move-result v5

    aget v7, v0, v6

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_2

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_2

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    return v1

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    return v7
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/d;->q:[B

    array-length v1, v0

    iget-object v2, p0, Lge/d;->v:[F

    iget-object v3, p0, LWd/c0;->l:[B

    new-array v4, p1, [B

    iput-object v4, p0, LWd/d;->q:[B

    new-array v4, p1, [F

    iput-object v4, p0, Lge/d;->v:[F

    new-array p1, p1, [B

    iput-object p1, p0, LWd/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-byte v1, v0, p1

    invoke-virtual {p0, v1}, LWd/d;->pf(B)I

    move-result v1

    iget-object v4, p0, Lge/d;->v:[F

    aget v5, v2, p1

    aput v5, v4, v1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/d;->v:[F

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, LWd/d;->q:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, LVd/b;->d(I)I

    move-result v1

    iget-object v4, p0, Lge/d;->v:[F

    aget v4, v4, v3

    invoke-static {v4}, LVd/b;->c(F)I

    move-result v4

    xor-int/2addr v1, v4

    add-int/2addr v2, v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public he(BF)Z
    .locals 2

    invoke-virtual {p0, p1}, LWd/d;->nf(B)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lge/d;->v:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, Lge/d;->v:[F

    iget v1, p0, LWd/d;->s:F

    aput v1, v0, p1

    invoke-super {p0, p1}, LWd/d;->hf(I)V

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

.method public iterator()LZd/e;
    .locals 1

    new-instance v0, Lge/d$b;

    invoke-direct {v0, p0, p0}, Lge/d$b;-><init>(Lge/d;Lge/d;)V

    return-object v0
.end method

.method public j()[B
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LWd/d;->q:[B

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

    invoke-super {p0, p1}, LWd/d;->jf(I)I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Lge/d;->v:[F

    return p1
.end method

.method public k()LSd/f;
    .locals 1

    new-instance v0, Lge/d$f;

    invoke-direct {v0, p0}, Lge/d$f;-><init>(Lge/d;)V

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    new-instance v0, Lge/d$e;

    invoke-direct {v0, p0}, Lge/d$e;-><init>(Lge/d;)V

    return-object v0
.end method

.method public m(B)F
    .locals 1

    iget v0, p0, LWd/d;->s:F

    invoke-virtual {p0, p1}, LWd/d;->nf(B)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/d;->v:[F

    aget v0, v0, p1

    invoke-virtual {p0, p1}, Lge/d;->hf(I)V

    :cond_0
    return v0
.end method

.method public n(LUd/d;)V
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/d;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, LUd/d;->a(F)F

    move-result v2

    aput v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n4(BFF)F
    .locals 1

    invoke-virtual {p0, p1}, LWd/d;->pf(B)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lge/d;->v:[F

    aget v0, p3, p1

    add-float/2addr p2, v0

    aput p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lge/d;->v:[F

    aput p3, p2, p1

    :goto_0
    iget-object p2, p0, LWd/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/d;->t:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return p3
.end method

.method public ob(Lhe/d;)Z
    .locals 6

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/d;->q:[B

    iget-object v2, p0, Lge/d;->v:[F

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, v1, v4

    aget v5, v2, v4

    invoke-interface {p1, v3, v5}, Lhe/d;->a(BF)Z

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Float;",
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

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lge/d;->V3(BF)F

    goto :goto_0

    :cond_0
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

    invoke-super {p0, p1}, LWd/d;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/d;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lge/d;->V3(BF)F

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s0(B)F
    .locals 1

    invoke-virtual {p0, p1}, LWd/d;->nf(B)I

    move-result p1

    if-gez p1, :cond_0

    iget p1, p0, LWd/d;->s:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/d;->v:[F

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public s3(Lhe/d;)Z
    .locals 8

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/d;->q:[B

    iget-object v2, p0, Lge/d;->v:[F

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

    aget v7, v2, v6

    invoke-interface {p1, v4, v7}, Lhe/d;->a(BF)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lge/d;->hf(I)V
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/d$a;

    invoke-direct {v1, p0, v0}, Lge/d$a;-><init>(Lge/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/d;->ob(Lhe/d;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lge/d;->v:[F

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

    aget v6, v1, v5

    aput v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/d;->V0(Lhe/h;)Z

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

    invoke-super {p0, p1}, LWd/d;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, LWd/d;->q:[B

    aget-byte v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lge/d;->v:[F

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zf(BFI)F
    .locals 2

    iget p1, p0, LWd/d;->s:F

    const/4 v0, 0x1

    if-gez p3, :cond_0

    neg-int p1, p3

    add-int/lit8 p3, p1, -0x1

    iget-object p1, p0, Lge/d;->v:[F

    aget p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lge/d;->v:[F

    aput p2, v1, p3

    if-eqz v0, :cond_1

    iget-boolean p2, p0, LWd/d;->t:Z

    invoke-virtual {p0, p2}, LWd/H;->ef(Z)V

    :cond_1
    return p1
.end method
