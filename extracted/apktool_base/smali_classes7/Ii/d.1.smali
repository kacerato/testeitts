.class public LIi/d;
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

.field public h:[LIi/c;

.field public i:LIi/c;

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

    iput v0, p0, LIi/d;->a:I

    iput v0, p0, LIi/d;->b:I

    iput v0, p0, LIi/d;->f:I

    const/4 v0, 0x4

    new-array v1, v0, [LIi/c;

    iput-object v1, p0, LIi/d;->h:[LIi/c;

    const/4 v1, 0x0

    iput-object v1, p0, LIi/d;->k:[B

    iput-object v1, p0, LIi/d;->m:[B

    const/16 v1, 0x80

    iput v1, p0, LIi/d;->n:I

    const/16 v1, 0x40

    iput v1, p0, LIi/d;->o:I

    iput v1, p0, LIi/d;->p:I

    iput v0, p0, LIi/d;->q:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, LIi/d;->r:[B

    new-array v0, v1, [B

    iput-object v0, p0, LIi/d;->l:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, LIi/d;->j:[B

    invoke-virtual {p0, p1}, LIi/d;->a([B)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 9

    const/16 v0, 0x40

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    iput v1, p0, LIi/d;->b:I

    if-gt v1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LIi/d;->m:[B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keys > 64 bytes are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, LIi/d;->a:I

    iput v0, p0, LIi/d;->c:I

    const/4 v2, 0x4

    iput v2, p0, LIi/d;->d:I

    const/4 v3, 0x2

    iput v3, p0, LIi/d;->e:I

    const-wide/16 v4, 0x40

    iput-wide v4, p0, LIi/d;->g:J

    iget-object v6, p0, LIi/d;->l:[B

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    iget v0, p0, LIi/d;->b:I

    int-to-byte v0, v0

    const/4 v7, 0x1

    aput-byte v0, v6, v7

    int-to-byte v0, v2

    aput-byte v0, v6, v3

    int-to-byte v0, v3

    const/4 v3, 0x3

    aput-byte v0, v6, v3

    const/16 v0, 0x10

    aput-byte v7, v6, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x11

    aput-byte v4, v6, v5

    new-instance v4, LIi/c;

    iget-object v5, p0, LIi/d;->l:[B

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, LIi/c;-><init>([B[B)V

    iput-object v4, p0, LIi/d;->i:LIi/c;

    iget v4, p0, LIi/d;->f:I

    iget-object v5, p0, LIi/d;->l:[B

    const/16 v7, 0x8

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget-object v4, p0, LIi/d;->l:[B

    aput-byte v1, v4, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, LIi/d;->l:[B

    invoke-static {v0, v4, v7}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget-object v4, p0, LIi/d;->h:[LIi/c;

    new-instance v5, LIi/c;

    iget-object v8, p0, LIi/d;->l:[B

    invoke-direct {v5, v6, v8}, LIi/c;-><init>([B[B)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LIi/d;->i:LIi/c;

    invoke-virtual {v0}, LIi/c;->m()V

    iget-object v0, p0, LIi/d;->h:[LIi/c;

    aget-object v0, v0, v3

    invoke-virtual {v0}, LIi/c;->m()V

    if-eqz p1, :cond_3

    iget v0, p0, LIi/d;->b:I

    if-lez v0, :cond_3

    const/16 v3, 0x80

    new-array v4, v3, [B

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    :goto_2
    if-ge p1, v2, :cond_3

    iget-object v0, p0, LIi/d;->h:[LIi/c;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4, v1, v3}, LIi/c;->update([BII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2bp"

    return-object v0
.end method

.method public c([BI)I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    iget v5, p0, LIi/d;->a:I

    mul-int/lit16 v6, v4, 0x80

    if-le v5, v6, :cond_1

    sub-int/2addr v5, v6

    const/16 v7, 0x80

    if-le v5, v7, :cond_0

    move v5, v7

    :cond_0
    iget-object v7, p0, LIi/d;->h:[LIi/c;

    aget-object v7, v7, v4

    iget-object v8, p0, LIi/d;->j:[B

    invoke-virtual {v7, v8, v6, v5}, LIi/c;->update([BII)V

    :cond_1
    iget-object v5, p0, LIi/d;->h:[LIi/c;

    aget-object v5, v5, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1}, LIi/c;->c([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, LIi/d;->i:LIi/c;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1, v2}, LIi/c;->update([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LIi/d;->i:LIi/c;

    invoke-virtual {v0, p1, p2}, LIi/c;->c([BI)I

    move-result p1

    invoke-virtual {p0}, LIi/d;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/d;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, LIi/d;->a:I

    const/16 v1, 0x40

    iput v1, p0, LIi/d;->c:I

    iget-object v1, p0, LIi/d;->i:LIi/c;

    invoke-virtual {v1}, LIi/c;->reset()V

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LIi/d;->h:[LIi/c;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LIi/c;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LIi/d;->i:LIi/c;

    invoke-virtual {v1}, LIi/c;->m()V

    iget-object v1, p0, LIi/d;->h:[LIi/c;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, LIi/c;->m()V

    iget-object v1, p0, LIi/d;->m:[B

    if-eqz v1, :cond_1

    const/16 v3, 0x80

    new-array v4, v3, [B

    iget v5, p0, LIi/d;->b:I

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v5, p0, LIi/d;->h:[LIi/c;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4, v0, v3}, LIi/c;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2

    .line 1
    iget-object v0, p0, LIi/d;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LIi/d;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 2
    iget v0, p0, LIi/d;->a:I

    rsub-int v1, v0, 0x400

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    iget-object v5, p0, LIi/d;->j:[B

    invoke-static {p1, p2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, LIi/d;->h:[LIi/c;

    aget-object v5, v5, v0

    iget-object v6, p0, LIi/d;->j:[B

    mul-int/lit16 v7, v0, 0x80

    invoke-virtual {v5, v6, v7, v4}, LIi/c;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    move v0, v3

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_3

    mul-int/lit16 v1, v3, 0x80

    add-int/2addr v1, p2

    move v5, p3

    :goto_2
    const/16 v6, 0x200

    if-lt v5, v6, :cond_2

    iget-object v7, p0, LIi/d;->h:[LIi/c;

    aget-object v7, v7, v3

    invoke-virtual {v7, p1, v1, v4}, LIi/c;->update([BII)V

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

    iget-object p3, p0, LIi/d;->j:[B

    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v0, v1

    iput v0, p0, LIi/d;->a:I

    return-void
.end method
