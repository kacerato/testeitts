.class public Lge/g;
.super LWd/e;
.source "SourceFile"

# interfaces
.implements Lee/g;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/g$e;,
        Lge/g$d;,
        Lge/g$f;,
        Lge/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "LWd/e;",
        "Lee/g<",
        "TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final x:J = 0x1L


# instance fields
.field public final u:Lhe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/g<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient v:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public w:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LWd/e;-><init>()V

    .line 2
    new-instance v0, Lge/g$a;

    invoke-direct {v0, p0}, Lge/g$a;-><init>(Lge/g;)V

    iput-object v0, p0, Lge/g;->u:Lhe/g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LWd/e;-><init>(I)V

    .line 4
    new-instance p1, Lge/g$a;

    invoke-direct {p1, p0}, Lge/g$a;-><init>(Lge/g;)V

    iput-object p1, p0, Lge/g;->u:Lhe/g;

    .line 5
    sget-byte p1, LVd/a;->d:B

    iput-byte p1, p0, Lge/g;->w:B

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, LWd/e;-><init>(IF)V

    .line 7
    new-instance p1, Lge/g$a;

    invoke-direct {p1, p0}, Lge/g$a;-><init>(Lge/g;)V

    iput-object p1, p0, Lge/g;->u:Lhe/g;

    .line 8
    sget-byte p1, LVd/a;->d:B

    iput-byte p1, p0, Lge/g;->w:B

    return-void
.end method

.method public constructor <init>(IFB)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, LWd/e;-><init>(IF)V

    .line 10
    new-instance p1, Lge/g$a;

    invoke-direct {p1, p0}, Lge/g$a;-><init>(Lge/g;)V

    iput-object p1, p0, Lge/g;->u:Lhe/g;

    .line 11
    iput-byte p3, p0, Lge/g;->w:B

    return-void
.end method

.method public constructor <init>(Lee/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/g<",
            "+TV;>;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Lee/g;->size()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1}, Lee/g;->l()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lge/g;-><init>(IFB)V

    .line 13
    invoke-virtual {p0, p1}, Lge/g;->t6(Lee/g;)V

    return-void
.end method

.method public static synthetic rf(Lge/g;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic sf(Lge/g;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method private tf(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lge/g;->v:[Ljava/lang/Object;

    aput-object p1, v2, p2

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/e;->s:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public D(B)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/e;->a1(B)Z

    move-result p1

    return p1
.end method

.method public S(Lhe/k0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/g;->v:[Ljava/lang/Object;

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-object v2, v1, v3

    invoke-interface {p1, v2}, Lhe/k0;->a(Ljava/lang/Object;)Z

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

.method public Tc(Lhe/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/e;->q:[B

    iget-object v2, p0, Lge/g;->v:[Ljava/lang/Object;

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, v1, v4

    aget-object v5, v2, v4

    invoke-interface {p1, v3, v5}, Lhe/g;->a(BLjava/lang/Object;)Z

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

.method public X([B)[B
    .locals 6

    array-length v0, p1

    iget v1, p0, LWd/H;->b:I

    if-ge v0, v1, :cond_0

    new-array p1, v1, [B

    :cond_0
    iget-object v0, p0, LWd/e;->q:[B

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

.method public ab(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/e;->of(B)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lge/g;->v:[Ljava/lang/Object;

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2, p1}, Lge/g;->tf(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/e;->q:[B

    array-length v1, v0

    iget-byte v2, p0, Lge/g;->w:B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/g;->v:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    array-length p1, v1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-lez p1, :cond_4

    aget-byte p1, v0, v3

    if-ne p1, v2, :cond_0

    aget-object p1, v1, v3

    if-nez p1, :cond_0

    return v2

    :cond_0
    move p1, v3

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_4

    aget-byte v3, v0, v4

    if-ne v3, v2, :cond_3

    aget-object v3, v1, v4

    if-eq p1, v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v2

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lee/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/g;

    invoke-interface {p1}, Lee/g;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lge/g;->iterator()LZd/i;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, LZd/a;->g()V

    invoke-interface {v0}, LZd/i;->key()B

    move-result v2

    invoke-interface {v0}, LZd/i;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {p1, v2}, Lee/g;->s0(B)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Lee/g;->D(B)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lee/g;->s0(B)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    return v1

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/e;->q:[B

    array-length v1, v0

    iget-object v2, p0, Lge/g;->v:[Ljava/lang/Object;

    iget-object v3, p0, LWd/c0;->l:[B

    new-array v4, p1, [B

    iput-object v4, p0, LWd/e;->q:[B

    new-array v4, p1, [Ljava/lang/Object;

    iput-object v4, p0, Lge/g;->v:[Ljava/lang/Object;

    new-array p1, p1, [B

    iput-object p1, p0, LWd/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-byte v1, v0, p1

    invoke-virtual {p0, v1}, LWd/e;->of(B)I

    move-result v1

    iget-object v4, p0, Lge/g;->v:[Ljava/lang/Object;

    aget-object v5, v2, p1

    aput-object v5, v4, v1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    iget-object v1, p0, LWd/c0;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v1, v5

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    iget-object v2, p0, LWd/e;->q:[B

    aget-byte v2, v2, v5

    invoke-static {v2}, LVd/b;->d(I)I

    move-result v2

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    xor-int/2addr v2, v6

    add-int/2addr v4, v2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    return v4
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    invoke-super {p0, p1}, LWd/e;->hf(I)V

    return-void
.end method

.method public iterator()LZd/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/i<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lge/g$e;

    invoke-direct {v0, p0, p0}, Lge/g$e;-><init>(Lge/g;Lge/g;)V

    return-object v0
.end method

.method public j()[B
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LWd/e;->q:[B

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

    invoke-super {p0, p1}, LWd/e;->jf(I)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    return p1
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lge/g$f;

    invoke-direct {v0, p0}, Lge/g$f;-><init>(Lge/g;)V

    return-object v0
.end method

.method public k4(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/e;->of(B)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lge/g;->tf(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Lke/a;
    .locals 1

    new-instance v0, Lge/g$c;

    invoke-direct {v0, p0}, Lge/g$c;-><init>(Lge/g;)V

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-byte v0, p0, Lge/g;->w:B

    return v0
.end method

.method public m(B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/e;->mf(B)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lge/g;->hf(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Byte;",
            "+TV;>;)V"
        }
    .end annotation

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

    invoke-virtual {p0, v1, v0}, Lge/g;->k4(BLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r0(LUd/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUd/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, Lge/g;->v:[Ljava/lang/Object;

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v2, v1, v3

    invoke-interface {p1, v2}, LUd/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

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

    invoke-super {p0, p1}, LWd/H;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lge/g;->w:B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/g;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lge/g;->k4(BLjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s0(B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/e;->mf(B)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public t6(Lee/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/g<",
            "+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lge/g;->u:Lhe/g;

    invoke-interface {p1, v0}, Lee/g;->Tc(Lhe/g;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/g$b;

    invoke-direct {v1, p0, v0}, Lge/g$b;-><init>(Lge/g;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/g;->Tc(Lhe/g;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, LWd/H;->b:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, LWd/H;->b:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

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

    aget-object v5, v0, v4

    aput-object v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public v4(Lhe/g;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/e;->q:[B

    iget-object v2, p0, Lge/g;->v:[Ljava/lang/Object;

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

    aget-object v7, v2, v6

    invoke-interface {p1, v4, v7}, Lhe/g;->a(BLjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lge/g;->hf(I)V
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

.method public values()[Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lge/g;->v:[Ljava/lang/Object;

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

    aget-object v6, v1, v5

    aput-object v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/e;->V0(Lhe/h;)Z

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

    invoke-super {p0, p1}, LWd/H;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-byte v0, p0, Lge/g;->w:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

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

    iget-object v0, p0, LWd/e;->q:[B

    aget-byte v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lge/g;->v:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
