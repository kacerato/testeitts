.class public LIi/q;
.super LIi/s;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public e:I

.field public final f:LBi/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/q;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LIi/s;-><init>()V

    iput-object p1, p0, LIi/q;->f:LBi/o;

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, LIi/q;->d:[B

    invoke-virtual {p0}, LIi/s;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0, p1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public constructor <init>(LIi/q;)V
    .locals 2

    .line 3
    invoke-direct {p0}, LIi/s;-><init>()V

    iget-object v0, p1, LIi/q;->f:LBi/o;

    iput-object v0, p0, LIi/q;->f:LBi/o;

    iget-object v1, p1, LIi/q;->d:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LIi/q;->d:[B

    iget p1, p1, LIi/q;->e:I

    iput p1, p0, LIi/q;->e:I

    invoke-virtual {p0}, LIi/s;->f()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1, v0}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Haraka-256"

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    iget v0, p0, LIi/q;->e:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LIi/q;->d:[B

    invoke-virtual {p0, v0, p1, p2}, LIi/q;->m([B[BI)I

    move-result p1

    invoke-virtual {p0}, LIi/q;->reset()V

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output too short to receive digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "input must be exactly 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m([B[BI)I
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v7, 0x1

    const/16 v8, 0x10

    aput v8, v1, v7

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    new-array v4, v0, [I

    aput v8, v4, v7

    aput v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [[B

    aget-object v3, v1, v2

    invoke-static {p1, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v1, v7

    invoke-static {p1, v8, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v1, v2

    sget-object v4, LIi/s;->b:[[B

    aget-object v5, v4, v2

    invoke-static {v3, v5}, LIi/s;->a([B[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v1, v7

    aget-object v5, v4, v7

    invoke-static {v3, v5}, LIi/s;->a([B[B)[B

    move-result-object v3

    aput-object v3, v1, v7

    aget-object v3, v1, v2

    aget-object v0, v4, v0

    invoke-static {v3, v0}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v1, v7

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1, v9}, LIi/q;->n([[B[[B)V

    aget-object v0, v9, v2

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v9, v7

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    aget-object v0, v1, v2

    const/4 v3, 0x6

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v1, v7

    const/4 v3, 0x7

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1, v9}, LIi/q;->n([[B[[B)V

    aget-object v0, v9, v2

    const/16 v3, 0x8

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v9, v7

    const/16 v3, 0x9

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    aget-object v0, v1, v2

    const/16 v3, 0xa

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v1, v7

    const/16 v3, 0xb

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1, v9}, LIi/q;->n([[B[[B)V

    aget-object v0, v9, v2

    const/16 v3, 0xc

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v9, v7

    const/16 v3, 0xd

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    aget-object v0, v1, v2

    const/16 v3, 0xe

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v1, v7

    const/16 v3, 0xf

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1, v9}, LIi/q;->n([[B[[B)V

    aget-object v0, v9, v2

    aget-object v3, v4, v8

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v9, v7

    const/16 v3, 0x11

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    aget-object v0, v1, v2

    const/16 v3, 0x12

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    aget-object v0, v1, v7

    const/16 v3, 0x13

    aget-object v3, v4, v3

    invoke-static {v0, v3}, LIi/s;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1, v9}, LIi/q;->n([[B[[B)V

    aget-object v1, v9, v2

    const/4 v4, 0x0

    const/16 v0, 0x10

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/c;->a(I[BI[BI[BI)V

    aget-object v1, v9, v7

    const/16 v4, 0x10

    add-int/lit8 v6, p3, 0x10

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/c;->a(I[BI[BI[BI)V

    const/16 v0, 0x20

    return v0
.end method

.method public final n([[B[[B)V
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    invoke-static {v2, v0, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v0

    aget-object v4, p2, v0

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    const/16 v6, 0xc

    invoke-static {v2, v3, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v0

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v0

    aget-object v2, p2, v1

    invoke-static {v0, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-static {p1, v6, p2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LIi/q;->e:I

    iget-object v0, p0, LIi/q;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, LIi/q;->e:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, LIi/q;->d:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LIi/q;->e:I

    aput-byte p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 32 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    .line 2
    iget v0, p0, LIi/q;->e:I

    rsub-int/lit8 v1, p3, 0x20

    if-gt v0, v1, :cond_0

    iget-object v1, p0, LIi/q;->d:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LIi/q;->e:I

    add-int/2addr p1, p3

    iput p1, p0, LIi/q;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
