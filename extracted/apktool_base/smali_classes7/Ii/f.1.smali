.class public LIi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:[LIi/e;

.field public i:LIi/e;

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LIi/f;->a:I

    iput v0, p0, LIi/f;->b:I

    iput v0, p0, LIi/f;->f:I

    const/16 v0, 0x8

    new-array v1, v0, [LIi/e;

    iput-object v1, p0, LIi/f;->h:[LIi/e;

    const/4 v1, 0x0

    iput-object v1, p0, LIi/f;->k:[B

    iput-object v1, p0, LIi/f;->m:[B

    const/16 v1, 0x40

    iput v1, p0, LIi/f;->n:I

    const/16 v1, 0x20

    iput v1, p0, LIi/f;->o:I

    iput v1, p0, LIi/f;->p:I

    iput v0, p0, LIi/f;->q:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, LIi/f;->r:[B

    new-array v0, v1, [B

    iput-object v0, p0, LIi/f;->l:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, LIi/f;->j:[B

    invoke-direct {p0, p1}, LIi/f;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 7

    const/16 v0, 0x20

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    iput v1, p0, LIi/f;->b:I

    if-gt v1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LIi/f;->m:[B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keys > 32 bytes are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, LIi/f;->a:I

    iput v0, p0, LIi/f;->c:I

    const/16 v2, 0x8

    iput v2, p0, LIi/f;->d:I

    const/4 v3, 0x2

    iput v3, p0, LIi/f;->e:I

    const-wide/16 v4, 0x20

    iput-wide v4, p0, LIi/f;->g:J

    iget-object v4, p0, LIi/f;->l:[B

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget v0, p0, LIi/f;->b:I

    int-to-byte v0, v0

    const/4 v5, 0x1

    aput-byte v0, v4, v5

    int-to-byte v0, v2

    aput-byte v0, v4, v3

    const/4 v0, 0x3

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget-object v0, p0, LIi/f;->l:[B

    const/16 v3, 0xe

    aput-byte v5, v0, v3

    iget-wide v4, p0, LIi/f;->g:J

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0xf

    aput-byte v4, v0, v5

    new-instance v0, LIi/e;

    iget-object v4, p0, LIi/f;->l:[B

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, LIi/e;-><init>([B[B)V

    iput-object v0, p0, LIi/f;->i:LIi/e;

    iget v0, p0, LIi/f;->f:I

    iget-object v4, p0, LIi/f;->l:[B

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget-object v0, p0, LIi/f;->l:[B

    aput-byte v1, v0, v3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, LIi/f;->l:[B

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget-object v3, p0, LIi/f;->h:[LIi/e;

    new-instance v4, LIi/e;

    iget-object v6, p0, LIi/f;->l:[B

    invoke-direct {v4, v5, v6}, LIi/e;-><init>([B[B)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LIi/f;->i:LIi/e;

    invoke-virtual {v0}, LIi/e;->m()V

    iget-object v0, p0, LIi/f;->h:[LIi/e;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-virtual {v0}, LIi/e;->m()V

    if-eqz p1, :cond_3

    iget v0, p0, LIi/f;->b:I

    if-lez v0, :cond_3

    const/16 v3, 0x40

    new-array v4, v3, [B

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    :goto_2
    if-ge p1, v2, :cond_3

    iget-object v0, p0, LIi/f;->h:[LIi/e;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4, v1, v3}, LIi/e;->update([BII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2sp"

    return-object v0
.end method

.method public c([BI)I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x0

    const/16 v3, 0x8

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    iget v5, p0, LIi/f;->a:I

    mul-int/lit8 v6, v4, 0x40

    if-le v5, v6, :cond_1

    sub-int/2addr v5, v6

    const/16 v7, 0x40

    if-le v5, v7, :cond_0

    move v5, v7

    :cond_0
    iget-object v7, p0, LIi/f;->h:[LIi/e;

    aget-object v7, v7, v4

    iget-object v8, p0, LIi/f;->j:[B

    invoke-virtual {v7, v8, v6, v5}, LIi/e;->update([BII)V

    :cond_1
    iget-object v5, p0, LIi/f;->h:[LIi/e;

    aget-object v5, v5, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1}, LIi/e;->c([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, LIi/f;->i:LIi/e;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1, v2}, LIi/e;->update([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LIi/f;->i:LIi/e;

    invoke-virtual {v0, p1, p2}, LIi/e;->c([BI)I

    move-result p1

    invoke-virtual {p0}, LIi/f;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/f;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, LIi/f;->a:I

    const/16 v1, 0x20

    iput v1, p0, LIi/f;->c:I

    iget-object v1, p0, LIi/f;->i:LIi/e;

    invoke-virtual {v1}, LIi/e;->reset()V

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LIi/f;->h:[LIi/e;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LIi/e;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LIi/f;->i:LIi/e;

    invoke-virtual {v1}, LIi/e;->m()V

    iget-object v1, p0, LIi/f;->h:[LIi/e;

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-virtual {v1}, LIi/e;->m()V

    iget-object v1, p0, LIi/f;->m:[B

    if-eqz v1, :cond_1

    const/16 v3, 0x40

    new-array v4, v3, [B

    iget v5, p0, LIi/f;->b:I

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v5, p0, LIi/f;->h:[LIi/e;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4, v0, v3}, LIi/e;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2

    .line 1
    iget-object v0, p0, LIi/f;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LIi/f;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 2
    iget v0, p0, LIi/f;->a:I

    rsub-int v1, v0, 0x200

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x40

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    iget-object v5, p0, LIi/f;->j:[B

    invoke-static {p1, p2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, LIi/f;->h:[LIi/e;

    aget-object v5, v5, v0

    iget-object v6, p0, LIi/f;->j:[B

    mul-int/lit8 v7, v0, 0x40

    invoke-virtual {v5, v6, v7, v4}, LIi/e;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    move v0, v3

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_3

    mul-int/lit8 v1, v3, 0x40

    add-int/2addr v1, p2

    move v5, p3

    :goto_2
    const/16 v6, 0x200

    if-lt v5, v6, :cond_2

    iget-object v7, p0, LIi/f;->h:[LIi/e;

    aget-object v7, v7, v3

    invoke-virtual {v7, p1, v1, v4}, LIi/e;->update([BII)V

    add-int/2addr v1, v6

    add-int/lit16 v5, v5, -0x200

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    rem-int/lit16 v1, p3, 0x200

    sub-int/2addr p3, v1

    add-int/2addr p2, p3

    if-lez v1, :cond_4

    iget-object p3, p0, LIi/f;->j:[B

    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v0, v1

    iput v0, p0, LIi/f;->a:I

    return-void
.end method
